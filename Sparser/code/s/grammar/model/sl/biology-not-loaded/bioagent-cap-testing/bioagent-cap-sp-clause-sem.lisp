(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("What genes does mir-128 regulate?"
   (:var mv17239 :isa regulate :object mv17241 :agent mv17240 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17241 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17240 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv17247 :isa regulate :object mv17248 :agent mv17244 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17248 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17244 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv17250 :isa tell :theme mv17254 :theme mv17251 :present "PRESENT")
   (:var mv17254 :isa involve :theme mv17256 :participant mv17253)
   (:var mv17256 :isa apoptosis :raw-text "apoptosis")
   (:var mv17253 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17251 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv17261 :isa be :subject mv17260 :predicate mv17276 :present "PRESENT")
   (:var mv17260 :isa what)
   (:var mv17276 :isa gene :plural t :predication mv17266 :has-determiner "THE" :raw-text "genes")
   (:var mv17266 :isa have :possessor mv17276 :that-rel t :thing-possessed mv17268 :present
    "PRESENT")
   (:var mv17268 :isa evidence :fact mv17271 :predication mv17267)
   (:var mv17271 :isa regulate :agent mv17259 :progressive mv17270 :raw-text "regulated")
   (:var mv17259 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv17270 :isa be) (:var mv17267 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv17279 :isa be :subject mv17278 :predicate mv17281 :present "PRESENT")
   (:var mv17278 :isa what) (:var mv17281 :isa involve :theme mv17283 :participant mv17280)
   (:var mv17283 :isa apoptosis :raw-text "apoptosis")
   (:var mv17280 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv17287 :isa be :subject mv17286 :predicate mv17289 :present "PRESENT")
   (:var mv17286 :isa what) (:var mv17289 :isa role :process mv17291 :participant mv17288)
   (:var mv17291 :isa apoptosis :raw-text "apoptosis")
   (:var mv17288 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv17295 :isa be :subject mv17294 :predicate mv17297 :present "PRESENT")
   (:var mv17294 :isa what) (:var mv17297 :isa role :process mv17301 :participant mv17296)
   (:var mv17301 :isa regulate :cellular-process mv17299 :raw-text "regulation")
   (:var mv17299 :isa apoptosis :raw-text "apoptotic")
   (:var mv17296 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv17306 :isa be :subject mv17305 :predicate mv17313 :present "PRESENT")
   (:var mv17305 :isa what) (:var mv17313 :isa evidence :statement mv17312 :has-determiner "THE")
   (:var mv17312 :isa target :agent mv17303 :object mv17304 :present "PRESENT" :raw-text "targets")
   (:var mv17303 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid
    "MIMAT0000243")
   (:var mv17304 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv17319 :isa regulate :object mv17320 :agent mv17316 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17320 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17316 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid
    "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv17326 :isa regulate :object mv17327 :agent mv17323 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17327 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17323 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid
    "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv17331 :isa be :subject mv17330 :predicate mv17334 :present "PRESENT")
   (:var mv17330 :isa what)
   (:var mv17334 :isa significance :context mv17329 :agent mv17328 :has-determiner "THE" :modifier
    mv17333)
   (:var mv17329 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17328 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17333 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv17342 :isa be :subject mv17341 :predicate mv17345 :present "PRESENT")
   (:var mv17341 :isa what)
   (:var mv17345 :isa significance :context mv17340 :agent mv17339 :has-determiner "THE" :modifier
    mv17344)
   (:var mv17340 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17339 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17344 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv17351 :isa be :subject mv17350 :predicate mv17357 :present "PRESENT")
   (:var mv17350 :isa what) (:var mv17357 :isa has-synonym :plural t :item mv17355)
   (:var mv17355 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv17360 :isa be :subject mv17359 :predicate mv17371 :present "PRESENT")
   (:var mv17359 :isa what)
   (:var mv17371 :isa gene :plural t :predication mv17369 :quantifier mv17361 :raw-text "genes")
   (:var mv17369 :isa mutation :object mv17371 :that-rel t :context mv17358 :present "PRESENT"
    :raw-text "mutated")
   (:var mv17358 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv17361 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv17380 :isa mutation :object mv17379 :context mv17372 :present "PRESENT" :raw-text
    "mutated")
   (:var mv17379 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17372 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv17394 :isa polar-question :statement mv17392)
   (:var mv17392 :isa bio-activate :agent mv17384 :object mv17382 :raw-text "activate")
   (:var mv17384 :isa phosphorylate :site mv17391 :raw-text "phosphorylation")
   (:var mv17391 :isa residue-on-protein :raw-text "S221" :position mv17389 :amino-acid mv17387)
   (:var mv17389 :isa number :value 221) (:var mv17387 :isa amino-acid :name "serine" :letter "S")
   (:var mv17382 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv17407 :isa polar-question :statement mv17405)
   (:var mv17405 :isa bio-activate :agent mv17397 :object mv17395 :raw-text "activate")
   (:var mv17397 :isa phosphorylate :site mv17404 :raw-text "phosphorylation")
   (:var mv17404 :isa residue-on-protein :raw-text "S222" :position mv17402 :amino-acid mv17400)
   (:var mv17402 :isa number :value 222) (:var mv17400 :isa amino-acid :name "serine" :letter "S")
   (:var mv17395 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv17410 :isa simulate :object mv17414 :present "PRESENT" :raw-text "Simulate")
   (:var mv17414 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv17409
    :component mv17408)
   (:var mv17409 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17408 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv17416 :isa be :subject mv17415 :predicate mv17424 :present "PRESENT")
   (:var mv17415 :isa what) (:var mv17424 :isa member :plural t :set mv17421 :has-determiner "THE")
   (:var mv17421 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv17426 :isa be :subject mv17425 :predicate mv17434 :present "PRESENT")
   (:var mv17425 :isa what) (:var mv17434 :isa member :plural t :set mv17431 :has-determiner "THE")
   (:var mv17431 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv17436 :isa be :subject mv17435 :predicate mv17444 :present "PRESENT")
   (:var mv17435 :isa what) (:var mv17444 :isa member :plural t :set mv17441 :has-determiner "THE")
   (:var mv17441 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv17446 :isa be :subject mv17445 :predicate mv17458 :present "PRESENT")
   (:var mv17445 :isa what) (:var mv17458 :isa member :plural t :set mv17456 :has-determiner "THE")
   (:var mv17456 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv17461 :isa be :subject mv17460 :predicate mv17469 :present "PRESENT")
   (:var mv17460 :isa what) (:var mv17469 :isa member :plural t :set mv17459 :has-determiner "THE")
   (:var mv17459 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras"
    :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv17471 :isa be :subject mv17470 :predicate mv17474 :present "PRESENT")
   (:var mv17470 :isa what) (:var mv17474 :isa has-name :item mv17477 :quantifier mv17472)
   (:var mv17477 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17472 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv17481 :isa be :subject mv17480 :predicate mv17484 :present "PRESENT")
   (:var mv17480 :isa what) (:var mv17484 :isa has-name :item mv17479 :quantifier mv17482)
   (:var mv17479 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv17482 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv17492 :isa affect :manner mv17490 :agent mv17488 :object mv17489 :present "PRESENT"
    :raw-text "affect")
   (:var mv17490 :isa how)
   (:var mv17488 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17489 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv17494 :isa list :theme mv17500 :present "PRESENT")
   (:var mv17500 :isa gene :plural t :predication mv17498 :quantifier mv17495 :raw-text "genes")
   (:var mv17498 :isa regulate :object mv17500 :agent mv17493 :past "PAST" :raw-text "regulated")
   (:var mv17493 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17495 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv17504 :isa list :theme mv17515 :present "PRESENT")
   (:var mv17515 :isa gene :plural t :predication mv17510 :quantifier mv17505 :has-determiner "THE"
    :raw-text "genes")
   (:var mv17510 :isa regulate :object mv17515 :agent mv17503 :past "PAST" :raw-text "regulated")
   (:var mv17503 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17505 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv17519 :isa list :theme mv17525 :present "PRESENT")
   (:var mv17525 :isa gene :plural t :predication mv17523 :has-determiner "THE" :raw-text "genes")
   (:var mv17523 :isa regulate :object mv17525 :agent mv17518 :past "PAST" :raw-text "regulated")
   (:var mv17518 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv17530 :isa be :subject mv17529 :predicate mv17545 :present "PRESENT")
   (:var mv17529 :isa what)
   (:var mv17545 :isa regulator :plural t :theme mv17540 :has-determiner "THE" :predication mv17532
    :context mv17533 :raw-text "regulators")
   (:var mv17540 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17528 mv17539))
   (:var mv17528 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17539 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17532 :isa common) (:var mv17533 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv17547 :isa be :subject mv17546 :predicate mv17560 :present "PRESENT")
   (:var mv17546 :isa what)
   (:var mv17560 :isa upstream-segment :plural t :pathwaycomponent mv17556 :has-determiner "THE"
    :predication mv17549 :raw-text "upstreams")
   (:var mv17556 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv17553 mv17555))
   (:var mv17553 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv17555 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17549 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv17563 :isa be :subject mv17562 :predicate mv17575 :present "PRESENT")
   (:var mv17562 :isa what)
   (:var mv17575 :isa upstream-segment :plural t :pathwaycomponent mv17571 :has-determiner "THE"
    :predication mv17565 :raw-text "upstreams")
   (:var mv17571 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17561 mv17570))
   (:var mv17561 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17570 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17565 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv17578 :isa be :subject mv17577 :predicate mv17585 :present "PRESENT")
   (:var mv17577 :isa what)
   (:var mv17585 :isa gene :plural t :predication mv17583 :has-determiner "THE" :raw-text "genes")
   (:var mv17583 :isa regulate :object mv17585 :that-rel t :agent mv17576 :present "PRESENT"
    :raw-text "regulates")
   (:var mv17576 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv17590 :isa be :subject mv17589 :predicate mv17601 :present "PRESENT")
   (:var mv17589 :isa what)
   (:var mv17601 :isa micro-rna :plural t :predication mv17595 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv17595 :isa regulate :agent mv17601 :that-rel t :object mv17599 :present "PRESENT"
    :raw-text "regulate")
   (:var mv17599 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv17596 mv17597 mv17586 mv17587 mv17588))
   (:var mv17596 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17597 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17586 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17587 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv17588 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv17604 :isa be :subject mv17603 :predicate mv17615 :present "PRESENT")
   (:var mv17603 :isa what)
   (:var mv17615 :isa micro-rna :plural t :predication mv17609 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv17609 :isa regulate :agent mv17615 :that-rel t :object mv17613 :present "PRESENT"
    :raw-text "regulate")
   (:var mv17613 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv17610 mv17611 mv17602))
   (:var mv17610 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17611 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17602 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv17617 :isa be :subject mv17616 :predicate mv17625 :present "PRESENT")
   (:var mv17616 :isa what)
   (:var mv17625 :isa regulator :plural t :theme mv17622 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv17622 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv17629 :isa regulate :|affected-process-OR-object| mv17627 :agent mv17626 :organ mv17632
    :present "PRESENT" :raw-text "regulate")
   (:var mv17627 :isa what)
   (:var mv17626 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17632 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv17637 :isa regulate :|affected-process-OR-object| mv17634 :|agent-OR-cause| mv17636
    :organ mv17640 :present "PRESENT" :raw-text "regulate")
   (:var mv17634 :isa what) (:var mv17636 :isa pronoun/inanimate :word "it")
   (:var mv17640 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv17650 :isa regulate :object mv17649 :agent mv17642 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17649 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17642 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv17662 :isa regulate :object mv17661 :agent mv17660 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17661 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17660 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv17672 :isa regulate :object mv17671 :agent mv17670 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17671 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17670 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv17681 :isa regulate :|affected-process-OR-object| mv17677 :agent mv17674 :present
    "PRESENT" :raw-text "regulated")
   (:var mv17677 :isa these :quantifier mv17675 :word "these") (:var mv17675 :isa which)
   (:var mv17674 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv17691 :isa regulate :|affected-process-OR-object| mv17687 :agent mv17684 :present
    "PRESENT" :raw-text "regulated")
   (:var mv17687 :isa these :quantifier mv17685 :word "these") (:var mv17685 :isa which)
   (:var mv17684 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv17698 :isa bio-use :agent mv17700 :object mv17699 :present "PRESENT" :raw-text "use")
   (:var mv17700 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv17699 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv17705 :isa regulate :location mv17703 :agent mv17701 :affected-process mv17707 :present
    "PRESENT" :raw-text "regulate")
   (:var mv17703 :isa where)
   (:var mv17701 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17707 :isa gene-transcript-express :object mv17702 :has-determiner "THE" :raw-text
    "expression")
   (:var mv17702 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv17731 :isa polar-question :statement mv17715)
   (:var mv17715 :isa tell :agent mv17714 :theme mv17730 :beneficiary mv17716 :modal "CAN")
   (:var mv17714 :isa interlocutor :name "hearer")
   (:var mv17730 :isa transcription-factor :plural t :predication mv17728 :quantifier mv17717
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv17728 :isa share :object mv17730 :that-rel t :participant mv17725 :modal "CAN" :raw-text
    "shared")
   (:var mv17725 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv17712 mv17724))
   (:var mv17712 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17724 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17717 :isa all :word "all") (:var mv17716 :isa interlocutor :name "speaker"))
  ("can you tell me which transcription factors are shared by elk1 and srf"
   (:var mv17753 :isa polar-question :statement mv17737)
   (:var mv17737 :isa tell :agent mv17736 :theme mv17752 :beneficiary mv17738 :modal "CAN")
   (:var mv17736 :isa interlocutor :name "hearer")
   (:var mv17752 :isa transcription-factor :plural t :predication mv17750 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv17750 :isa share :wh-element mv17746 :wh-path nil :raw-text "shared" :modal mv17735
    :participant mv17745 :object mv17746)
   (:var mv17746 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv17735 :isa can)
   (:var mv17745 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv17734 mv17744))
   (:var mv17734 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17744 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17738 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv17755 :isa be :subject mv17754 :predicate mv17763 :present "PRESENT")
   (:var mv17754 :isa what)
   (:var mv17763 :isa regulator :plural t :theme mv17760 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv17760 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv17767 :isa regulate :|affected-process-OR-object| mv17764 :agent mv17766 :present
    "PRESENT" :raw-text "regulate")
   (:var mv17764 :isa what)
   (:var mv17766 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv17769 :isa be :subject mv17768 :predicate mv17770 :present "PRESENT")
   (:var mv17768 :isa what)
   (:var mv17770 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv17777 :isa polar-question :statement mv17773)
   (:var mv17773 :isa involve :object mv17771 :theme mv17775 :past "PAST")
   (:var mv17771 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17775 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?"
   (:var mv17786 :isa polar-question :statement mv17780)
   (:var mv17780 :isa involve :object mv17778 :theme mv17784 :past "PAST")
   (:var mv17778 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17784 :isa regulate :cellular-process mv17782 :raw-text "regulation")
   (:var mv17782 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?"
   (:var mv17794 :isa polar-question :statement mv17789)
   (:var mv17789 :isa involve :object mv17787 :theme mv17791 :past "PAST")
   (:var mv17787 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17791 :isa regulate :affected-process mv17792 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv17792 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv17806 :isa regulate :object mv17805 :agent mv17795 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17805 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv17797 :raw-text
    "genes")
   (:var mv17797 :isa apoptosis :raw-text "apoptotic")
   (:var mv17795 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv17808 :isa list :theme mv17815 :present "PRESENT")
   (:var mv17815 :isa gene :plural t :has-determiner "THE" :cellular-process mv17810 :raw-text
    "genes")
   (:var mv17810 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv17827 :isa involve :object mv17830 :theme mv17825 :present "PRESENT")
   (:var mv17830 :isa gene :plural t :predication mv17820 :has-determiner "WHAT" :raw-text "genes")
   (:var mv17820 :isa regulate :object mv17830 :agent mv17816 :past "PAST" :raw-text "regulated")
   (:var mv17816 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17825 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv17832 :isa list :theme mv17834 :present "PRESENT")
   (:var mv17834 :isa gene :plural t :predication mv17835 :raw-text "genes")
   (:var mv17835 :isa regulate :object mv17834 :agent mv17831 :past "PAST" :raw-text "regulated")
   (:var mv17831 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv17847 :isa involve :object mv17846 :theme mv17845 :present "PRESENT")
   (:var mv17846 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17845 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv17860 :isa involve :object mv17862 :theme mv17858 :present "PRESENT")
   (:var mv17862 :isa gene :plural t :predication mv17854 :has-determiner "WHAT" :raw-text "genes")
   (:var mv17854 :isa regulate :object mv17862 :that-rel t :agent mv17849 :present "PRESENT"
    :raw-text "regulates")
   (:var mv17849 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17858 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv17864 :isa list :theme mv17870 :present "PRESENT")
   (:var mv17870 :isa gene :plural t :predication mv17868 :has-determiner "THE" :raw-text "genes")
   (:var mv17868 :isa regulate :object mv17870 :agent mv17863 :past "PAST" :raw-text "regulated")
   (:var mv17863 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv17874 :isa list :theme mv17880 :present "PRESENT")
   (:var mv17880 :isa gene :plural t :has-determiner "THE" :predication mv17876 :raw-text "genes")
   (:var mv17876 :isa regulate :object mv17880 :agent mv17873 :raw-text "regulated")
   (:var mv17873 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv17889 :isa regulate :object mv17888 :agent mv17881 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17888 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv17881 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv17899 :isa involve :object mv17898 :theme mv17897 :present "PRESENT")
   (:var mv17898 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv17897 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv17912 :isa involve :object mv17911 :present "PRESENT")
   (:var mv17911 :isa gene :plural t :has-determiner "WHAT" :predication mv17903 :raw-text "genes")
   (:var mv17903 :isa regulate :object mv17911 :agent mv17901 :raw-text "regulated")
   (:var mv17901 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv17915 :isa let :complement mv17936 :present "PRESENT")
   (:var mv17936 :isa know :agent mv17916 :statement mv17935 :present "PRESENT")
   (:var mv17916 :isa interlocutor :name "speaker")
   (:var mv17935 :isa wh-question :statement mv17930 :wh if)
   (:var mv17930 :isa involve :object mv17934 :theme mv17928 :present "PRESENT")
   (:var mv17934 :isa gene :plural t :quantifier mv17919 :predication mv17924 :has-determiner "THE"
    :raw-text "genes")
   (:var mv17919 :isa any :word "any")
   (:var mv17924 :isa regulate :object mv17934 :agent mv17914 :present "PRESENT" :raw-text
    "regulates")
   (:var mv17914 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17928 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv17938 :isa let :complement mv17960 :present "PRESENT")
   (:var mv17960 :isa know :agent mv17939 :statement mv17959 :present "PRESENT")
   (:var mv17939 :isa interlocutor :name "speaker")
   (:var mv17959 :isa wh-question :statement mv17954 :wh whether)
   (:var mv17954 :isa involve :object mv17958 :theme mv17952 :present "PRESENT")
   (:var mv17958 :isa gene :plural t :quantifier mv17943 :predication mv17948 :has-determiner "THE"
    :raw-text "genes")
   (:var mv17943 :isa any :word "any")
   (:var mv17948 :isa regulate :object mv17958 :agent mv17937 :present "PRESENT" :raw-text
    "regulates")
   (:var mv17937 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17952 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv17979 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv17981 :isa tell :beneficiary mv17982 :present "PRESENT")
   (:var mv17982 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv17992 :isa tell :theme mv18001 :beneficiary mv17993 :present "PRESENT")
   (:var mv18001 :isa wh-question :statement mv17999 :wh if)
   (:var mv17999 :isa involve :object mv17991 :theme mv17998 :present "PRESENT")
   (:var mv17991 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17998 :isa apoptosis :raw-text "apoptosis")
   (:var mv17993 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv18003 :isa tell :theme mv18013 :theme mv18004 :present "PRESENT")
   (:var mv18013 :isa wh-question :statement mv18011 :wh whether)
   (:var mv18011 :isa involve :object mv18002 :theme mv18010 :present "PRESENT")
   (:var mv18002 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18010 :isa apoptosis :raw-text "apoptosis")
   (:var mv18004 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv18016 :isa be :subject mv18015 :predicate mv18028 :present "PRESENT")
   (:var mv18015 :isa what)
   (:var mv18028 :isa gene :plural t :predication mv18026 :predication mv18017 :raw-text "genes")
   (:var mv18026 :isa involve :object mv18028 :that-rel t :theme mv18024 :present "PRESENT")
   (:var mv18024 :isa apoptosis :raw-text "apoptosis")
   (:var mv18017 :isa regulate :object mv18028 :agent mv18014 :raw-text "regulated")
   (:var mv18014 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv18031 :isa be :subject mv18030 :predicate mv18043 :present "PRESENT")
   (:var mv18030 :isa what)
   (:var mv18043 :isa gene :plural t :predication mv18041 :predication mv18032 :raw-text "genes")
   (:var mv18041 :isa involve :object mv18043 :that-rel t :theme mv18039 :present "PRESENT")
   (:var mv18039 :isa apoptosis :raw-text "apoptosis")
   (:var mv18032 :isa regulate :object mv18043 :agent mv18029 :raw-text "regulated")
   (:var mv18029 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv18055 :isa involve :object mv18048 :theme mv18054 :present "PRESENT")
   (:var mv18048 :isa downstream-segment :pathwaycomponent mv18044 :has-determiner "WHAT" :modifier
    mv18047 :raw-text "downstream")
   (:var mv18044 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18047 :isa gene :plural t :raw-text "genes")
   (:var mv18054 :isa apoptosis :raw-text "apoptosis"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv18060 :isa be :subject mv18059 :predicate mv18062 :present "PRESENT")
   (:var mv18059 :isa what)
   (:var mv18062 :isa involve :theme mv18067 :participant mv18058 :has-determiner "THE")
   (:var mv18067 :isa regulate :cellular-process mv18065 :raw-text "regulation")
   (:var mv18065 :isa apoptosis :raw-text "apoptotic")
   (:var mv18058 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv18073 :isa involve :theme mv18075 :object mv18074 :present "PRESENT")
   (:var mv18075 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv18074 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv18081 :isa involve :theme mv18083 :object mv18082 :present "PRESENT")
   (:var mv18083 :isa bio-process :plural t :has-determiner "WHAT" :raw-text "processes")
   (:var mv18082 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv18095 :isa involve :object mv18094 :theme mv18092 :present "PRESENT")
   (:var mv18094 :isa gene :plural t :has-determiner "WHICH" :predication mv18086 :raw-text
    "genes")
   (:var mv18086 :isa regulate :object mv18094 :agent mv18084 :raw-text "regulated")
   (:var mv18084 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18092 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv18111 :isa involve :object mv18114 :theme mv18108 :present "PRESENT")
   (:var mv18114 :isa gene :plural t :organ mv18104 :has-determiner "WHICH" :predication mv18099
    :raw-text "genes")
   (:var mv18104 :isa liver :has-determiner "THE")
   (:var mv18099 :isa regulate :object mv18114 :agent mv18097 :raw-text "regulated")
   (:var mv18097 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18108 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv18126 :isa involve :object mv18125 :theme mv18123 :present "PRESENT")
   (:var mv18125 :isa gene :plural t :has-determiner "WHICH" :predication mv18117 :raw-text
    "genes")
   (:var mv18117 :isa regulate :object mv18125 :agent mv18115 :raw-text "regulated")
   (:var mv18115 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18123 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv18130 :isa bio-activate :agent mv18129 :object mv18128 :present "PRESENT" :raw-text
    "activates")
   (:var mv18129 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18128 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv18132 :isa bio-activate :agent mv18131 :object mv18133 :present "PRESENT" :raw-text
    "activates")
   (:var mv18131 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv18133 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv18136 :isa phosphorylate :agent mv18134 :substrate mv18135 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv18134 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18135 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv18139 :isa dephosphorylate :agent mv18137 :substrate mv18138 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv18137 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18138 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv18141 :isa upregulate :agent mv18140 :object mv18142 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv18140 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18142 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv18146 :isa binding :binder mv18145 :direct-bindee mv18149 :present "PRESENT" :raw-text
    "binds")
   (:var mv18145 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18149 :isa protein :has-determiner "THE" :modifier mv18144 :modifier mv18148 :raw-text
    "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18144 :isa growth-factor :raw-text "growth factor")
   (:var mv18148 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv18150 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv18156 :isa binding :binder mv18163 :direct-bindee mv18164 :present "PRESENT" :raw-text
    "binds")
   (:var mv18163 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv18154
    :component mv18153)
   (:var mv18154 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18153 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18164 :isa bio-complex :quantifier mv18157 :raw-text "EGFR-EGF" :component mv18159
    :component mv18158)
   (:var mv18157 :isa another :word "another")
   (:var mv18159 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18158 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv18170 :isa binding :binder mv18172 :direct-bindee mv18165 :present "PRESENT" :raw-text
    "binds")
   (:var mv18172 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv18167
    :component mv18167)
   (:var mv18167 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18165 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv18173 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv18179 :isa binding :binder mv18175 :direct-bindee mv18176 :present "PRESENT" :raw-text
    "binds")
   (:var mv18175 :isa protein :predication mv18178 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv18178 :isa binding :direct-bindee mv18175 :binder mv18177 :raw-text "bound")
   (:var mv18177 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18176 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv18183 :isa binding :binder mv18181 :direct-bindee mv18184 :present "PRESENT" :raw-text
    "binds")
   (:var mv18181 :isa protein :predication mv18182 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv18182 :isa binding :direct-bindee mv18181 :binder mv18180 :raw-text "bound")
   (:var mv18180 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv18184 :isa protein :predication mv18191 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv18191 :isa binding :direct-bindee mv18184 :that-rel t :bindee mv18190 :present "PRESENT"
    :negation mv18187 :raw-text "bound")
   (:var mv18190 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18187 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv18196 :isa binding :binder mv18195 :direct-bindee mv18197 :present "PRESENT" :raw-text
    "binds")
   (:var mv18195 :isa protein :predication mv18194 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv18194 :isa binding :direct-bindee mv18195 :binder mv18193 :raw-text "bound")
   (:var mv18193 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv18197 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv18207 :isa binding :binder mv18201 :direct-bindee mv18208 :present "PRESENT" :raw-text
    "binds")
   (:var mv18201 :isa protein :predication mv18209 :predication mv18200 :raw-text "NRAS" :uid
    "UP:P01111" :name "RASN_HUMAN")
   (:var mv18209 :isa binding :direct-bindee mv18201 :that-rel t :bindee mv18198 :present "PRESENT"
    :negation mv18204 :raw-text "bound")
   (:var mv18198 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv18204 :isa not :word "not")
   (:var mv18200 :isa binding :direct-bindee mv18201 :binder mv18199 :raw-text "bound")
   (:var mv18199 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv18208 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv18211 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv18216 :isa affect :manner mv18213 :agent mv18215 :object mv18212 :present "PRESENT"
    :raw-text "affect")
   (:var mv18213 :isa how)
   (:var mv18215 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18212 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv18225 :isa explicit-suggestion :suggestion mv18219 :marker let-as-directive)
   (:var mv18219 :isa highlight :theme mv18221 :present "PRESENT")
   (:var mv18221 :isa downstream-segment :pathwaycomponent mv18218 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv18218 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv18235 :isa explicit-suggestion :suggestion mv18229 :marker let-as-directive)
   (:var mv18229 :isa move-to :goal mv18233 :theme mv18227 :present "PRESENT")
   (:var mv18233 :isa bottom :has-determiner "THE")
   (:var mv18227 :isa protein :predication mv18230 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18230 :isa phosphorylate :substrate mv18227 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv18244 :isa explicit-suggestion :suggestion mv18240 :marker let-as-directive)
   (:var mv18240 :isa put-something-somewhere :theme mv18237 :present "PRESENT")
   (:var mv18237 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv18252 :isa explicit-suggestion :suggestion mv18247 :marker let-as-directive)
   (:var mv18247 :isa show :at-relative-location mv18250 :|statement-OR-theme| mv18246 :present
    "PRESENT")
   (:var mv18250 :isa top-qua-location :has-determiner "THE")
   (:var mv18246 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv18263 :isa polar-question :statement mv18261)
   (:var mv18261 :isa decrease :agent mv18253 :object mv18257 :raw-text "decrease")
   (:var mv18253 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18257 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv18278 :isa polar-question :statement mv18275)
   (:var mv18275 :isa decrease :agent mv18264 :|affected-process-OR-object| mv18269 :raw-text
    "decrease")
   (:var mv18264 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18269 :isa bio-amount :measured-item mv18271 :has-determiner "THE" :raw-text "amount")
   (:var mv18271 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS decrease ELK1 in the model?" (:var mv18289 :isa polar-question :statement mv18287)
   (:var mv18287 :isa decrease :agent mv18281 :object mv18279 :raw-text "decrease")
   (:var mv18281 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18279 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv18312 :isa polar-question :statement mv18311)
   (:var mv18311 :isa event-relation :subordinated-event mv18309 :event mv18306)
   (:var mv18309 :isa wh-question :statement mv18307 :wh if)
   (:var mv18307 :isa increase :|agent-OR-cause| mv18295 :level mv18305
    :|affected-process-OR-object| mv18299 :raw-text "increase")
   (:var mv18295 :isa interlocutor :name "person-and-machine")
   (:var mv18305 :isa measurement :number mv18302) (:var mv18302 :isa number :value 10)
   (:var mv18299 :isa bio-amount :measured-item mv18290 :has-determiner "THE" :raw-text "amount")
   (:var mv18290 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18306 :isa vanish :agent mv18292 :raw-text "vanish")
   (:var mv18292 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv18337 :isa polar-question :statement mv18336)
   (:var mv18336 :isa event-relation :subordinated-event mv18334 :event mv18330)
   (:var mv18334 :isa wh-question :statement mv18331 :wh if)
   (:var mv18331 :isa increase :|agent-OR-cause| mv18318 :|multiplier-OR-cause| mv18329
    :|affected-process-OR-object| mv18322 :raw-text "increase")
   (:var mv18318 :isa interlocutor :name "person-and-machine")
   (:var mv18329 :isa measurement :number mv18326) (:var mv18326 :isa number :value 10)
   (:var mv18322 :isa bio-amount :measured-item mv18313 :has-determiner "THE" :raw-text "amount")
   (:var mv18313 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18330 :isa vanish :agent mv18315 :raw-text "vanish")
   (:var mv18315 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv18359 :isa polar-question :statement mv18358)
   (:var mv18358 :isa event-relation :subordinated-event mv18356 :event mv18353)
   (:var mv18356 :isa wh-question :statement mv18354 :wh if)
   (:var mv18354 :isa increase :|agent-OR-cause| mv18344 :|multiplier-OR-cause| mv18352 :object
    mv18339 :raw-text "increase")
   (:var mv18344 :isa interlocutor :name "person-and-machine")
   (:var mv18352 :isa measurement :number mv18349) (:var mv18349 :isa number :value 10)
   (:var mv18339 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18353 :isa vanish :agent mv18338 :raw-text "vanish")
   (:var mv18338 :isa protein :predication mv18341 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18341 :isa phosphorylate :substrate mv18338 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv18385 :isa polar-question :statement mv18384)
   (:var mv18384 :isa event-relation :subordinated-event mv18382 :event mv18378)
   (:var mv18382 :isa wh-question :statement mv18379 :wh if)
   (:var mv18379 :isa increase :|agent-OR-cause| mv18366 :|multiplier-OR-cause| mv18377
    :|affected-process-OR-object| mv18370 :raw-text "increase")
   (:var mv18366 :isa interlocutor :name "person-and-machine")
   (:var mv18377 :isa measurement :number mv18374) (:var mv18374 :isa number :value 10)
   (:var mv18370 :isa bio-amount :measured-item mv18361 :has-determiner "THE" :raw-text "amount")
   (:var mv18361 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18378 :isa vanish :agent mv18360 :raw-text "vanish")
   (:var mv18360 :isa protein :predication mv18363 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18363 :isa phosphorylate :substrate mv18360 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv18397 :isa polar-question :statement mv18395)
   (:var mv18395 :isa increase :cause mv18389 :adverb mv18392 :raw-text "increase")
   (:var mv18389 :isa bio-amount :measured-item mv18386 :has-determiner "THE" :raw-text "amount")
   (:var mv18386 :isa protein :predication mv18391 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18391 :isa phosphorylate :substrate mv18386 :raw-text "phosphorylated")
   (:var mv18392 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?"
   (:var mv18407 :isa polar-question :statement mv18406)
   (:var mv18406 :isa copular-predication :item mv18398 :value mv18404 :predicate mv18400)
   (:var mv18398 :isa protein :predication mv18401 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv18401 :isa binding :direct-bindee mv18398 :bindee mv18399 :past "PAST" :raw-text
    "bound")
   (:var mv18399 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18404 :isa high :adverb mv18403) (:var mv18403 :isa eventually :name "eventually")
   (:var mv18400 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv18416 :isa polar-question :statement mv18415)
   (:var mv18415 :isa copular-predication :item mv18408 :value mv18413 :predicate mv18410)
   (:var mv18408 :isa protein :predication mv18411 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18411 :isa binding :direct-bindee mv18408 :bindee mv18409 :past "PAST" :raw-text
    "bound")
   (:var mv18409 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv18413 :isa transient) (:var mv18410 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv18423 :isa polar-question :statement mv18422)
   (:var mv18422 :isa sustained :theme mv18418 :past "PAST")
   (:var mv18418 :isa protein :predication mv18420 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv18420 :isa binding :direct-bindee mv18418 :binder mv18417 :raw-text "bound")
   (:var mv18417 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv18430 :isa polar-question :statement mv18429)
   (:var mv18429 :isa copular-predication :item mv18424 :value mv18428 :predicate mv18425)
   (:var mv18424 :isa protein :predication mv18426 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18426 :isa phosphorylate :substrate mv18424 :raw-text "phosphorylated")
   (:var mv18428 :isa high :adverb mv18427) (:var mv18427 :isa always :name "always")
   (:var mv18425 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv18437 :isa polar-question :statement mv18436)
   (:var mv18436 :isa copular-predication :item mv18431 :value mv18435 :predicate mv18432)
   (:var mv18431 :isa protein :predication mv18433 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18433 :isa phosphorylate :substrate mv18431 :raw-text "phosphorylated")
   (:var mv18435 :isa high :adverb mv18434) (:var mv18434 :isa eventually :name "eventually")
   (:var mv18432 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv18444 :isa polar-question :statement mv18443)
   (:var mv18443 :isa copular-predication :item mv18438 :value mv18442 :predicate mv18439)
   (:var mv18438 :isa protein :predication mv18440 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18440 :isa phosphorylate :substrate mv18438 :raw-text "phosphorylated")
   (:var mv18442 :isa high :adverb mv18441) (:var mv18441 :isa ever :name "ever")
   (:var mv18439 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv18454 :isa polar-question :statement mv18453)
   (:var mv18453 :isa copular-predication :item mv18445 :value mv18448 :predicate mv18446)
   (:var mv18445 :isa protein :predication mv18447 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18447 :isa phosphorylate :substrate mv18445 :raw-text "phosphorylated")
   (:var mv18448 :isa high) (:var mv18446 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv18460 :isa polar-question :statement mv18459)
   (:var mv18459 :isa copular-predication :item mv18455 :value mv18458 :predicate mv18456)
   (:var mv18455 :isa protein :predication mv18457 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18457 :isa phosphorylate :substrate mv18455 :raw-text "phosphorylated")
   (:var mv18458 :isa high) (:var mv18456 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv18471 :isa polar-question :statement mv18465)
   (:var mv18465 :isa sustained :theme mv18461 :level mv18469 :past "PAST")
   (:var mv18461 :isa protein :predication mv18463 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18463 :isa phosphorylate :substrate mv18461 :raw-text "phosphorylated")
   (:var mv18469 :isa level :has-determiner "A" :predication mv18468 :raw-text "level")
   (:var mv18468 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv18477 :isa polar-question :statement mv18476)
   (:var mv18476 :isa sustained :theme mv18472 :past "PAST")
   (:var mv18472 :isa protein :predication mv18474 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18474 :isa phosphorylate :substrate mv18472 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv18483 :isa polar-question :statement mv18482)
   (:var mv18482 :isa copular-predication :item mv18478 :value mv18481 :predicate mv18479)
   (:var mv18478 :isa protein :predication mv18480 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18480 :isa phosphorylate :substrate mv18478 :raw-text "phosphorylated")
   (:var mv18481 :isa transient) (:var mv18479 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv18494 :isa polar-question :statement mv18493)
   (:var mv18493 :isa copular-predication :item mv18492 :value mv18490 :predicate mv18486)
   (:var mv18492 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv18485
    :component mv18484)
   (:var mv18485 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18484 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv18490 :isa high :adverb mv18489) (:var mv18489 :isa ever :name "ever")
   (:var mv18486 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv18503 :isa polar-question :statement mv18500)
   (:var mv18500 :isa bio-form :object mv18502 :past "PAST" :raw-text "formed")
   (:var mv18502 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv18496
    :component mv18495)
   (:var mv18496 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18495 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv18526 :isa polar-question :statement mv18525)
   (:var mv18525 :isa event-relation :subordinated-event mv18521 :event mv18523)
   (:var mv18521 :isa wh-question :statement mv18515 :wh if)
   (:var mv18515 :isa increase :|agent-OR-cause| mv18513 :level mv18520 :object mv18504 :present
    "PRESENT" :raw-text "increase")
   (:var mv18513 :isa interlocutor :name "person-and-machine")
   (:var mv18520 :isa measurement :number mv18517) (:var mv18517 :isa number :value 10)
   (:var mv18504 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18523 :isa copular-predication :item mv18507 :value mv18511 :predicate mv18505)
   (:var mv18507 :isa bio-amount :measured-item mv18509 :has-determiner "THE" :raw-text "amount")
   (:var mv18509 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18511 :isa low :adverb mv18510) (:var mv18510 :isa always :name "always")
   (:var mv18505 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv18551 :isa polar-question :statement mv18550)
   (:var mv18550 :isa event-relation :subordinated-event mv18546 :event mv18548)
   (:var mv18546 :isa wh-question :statement mv18538 :wh if)
   (:var mv18538 :isa increase :|agent-OR-cause| mv18536 :|multiplier-OR-cause| mv18544 :object
    mv18527 :present "PRESENT" :raw-text "increase")
   (:var mv18536 :isa interlocutor :name "person-and-machine")
   (:var mv18544 :isa measurement :number mv18541) (:var mv18541 :isa number :value 100)
   (:var mv18527 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18548 :isa copular-predication :item mv18530 :value mv18534 :predicate mv18528)
   (:var mv18530 :isa bio-amount :measured-item mv18532 :has-determiner "THE" :raw-text "amount")
   (:var mv18532 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18534 :isa low :adverb mv18533) (:var mv18533 :isa always :name "always")
   (:var mv18528 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv18578 :isa polar-question :statement mv18577)
   (:var mv18577 :isa event-relation :subordinated-event mv18573 :event mv18575)
   (:var mv18573 :isa wh-question :statement mv18563 :wh if)
   (:var mv18563 :isa increase :|agent-OR-cause| mv18561 :level mv18571
    :|affected-process-OR-object| mv18565 :present "PRESENT" :raw-text "increase")
   (:var mv18561 :isa interlocutor :name "person-and-machine")
   (:var mv18571 :isa measurement :number mv18568) (:var mv18568 :isa number :value 100)
   (:var mv18565 :isa bio-amount :measured-item mv18552 :has-determiner "THE" :raw-text "amount")
   (:var mv18552 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18575 :isa copular-predication :item mv18555 :value mv18559 :predicate mv18553)
   (:var mv18555 :isa bio-amount :measured-item mv18557 :has-determiner "THE" :raw-text "amount")
   (:var mv18557 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18559 :isa high :adverb mv18558) (:var mv18558 :isa ever :name "ever")
   (:var mv18553 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv18607 :isa polar-question :statement mv18606)
   (:var mv18606 :isa event-relation :subordinated-event mv18602 :event mv18604)
   (:var mv18602 :isa wh-question :statement mv18590 :wh if)
   (:var mv18590 :isa increase :|agent-OR-cause| mv18588 :|multiplier-OR-cause| mv18599
    :|affected-process-OR-object| mv18592 :present "PRESENT" :raw-text "increase")
   (:var mv18588 :isa interlocutor :name "person-and-machine")
   (:var mv18599 :isa measurement :number mv18596) (:var mv18596 :isa number :value 100)
   (:var mv18592 :isa bio-amount :measured-item mv18579 :has-determiner "THE" :raw-text "amount")
   (:var mv18579 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18604 :isa copular-predication :item mv18582 :value mv18586 :predicate mv18580)
   (:var mv18582 :isa bio-amount :measured-item mv18584 :has-determiner "THE" :raw-text "amount")
   (:var mv18584 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18586 :isa high :adverb mv18585) (:var mv18585 :isa ever :name "ever")
   (:var mv18580 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?" (:var mv18609 :isa be))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv18627 :isa polar-question :statement mv18626)
   (:var mv18626 :isa copular-predication :item mv18620 :value mv18624 :predicate mv18618)
   (:var mv18620 :isa bio-amount :measured-item mv18617 :has-determiner "THE" :raw-text "amount")
   (:var mv18617 :isa protein :predication mv18622 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18622 :isa phosphorylate :substrate mv18617 :raw-text "phosphorylated")
   (:var mv18624 :isa high :adverb mv18623) (:var mv18623 :isa eventually :name "eventually")
   (:var mv18618 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv18638 :isa polar-question :statement mv18637)
   (:var mv18637 :isa copular-predication :item mv18631 :value mv18635 :predicate mv18629)
   (:var mv18631 :isa bio-amount :measured-item mv18628 :has-determiner "THE" :raw-text "amount")
   (:var mv18628 :isa protein :predication mv18633 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18633 :isa phosphorylate :substrate mv18628 :raw-text "phosphorylated")
   (:var mv18635 :isa high :adverb mv18634) (:var mv18634 :isa ever :name "ever")
   (:var mv18629 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv18649 :isa polar-question :statement mv18647)
   (:var mv18647 :isa increase :cause mv18642 :adverb mv18645 :raw-text "increasing")
   (:var mv18642 :isa bio-amount :measured-item mv18639 :has-determiner "THE" :raw-text "amount")
   (:var mv18639 :isa protein :predication mv18644 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18644 :isa phosphorylate :substrate mv18639 :raw-text "phosphorylated")
   (:var mv18645 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv18659 :isa polar-question :statement mv18658)
   (:var mv18658 :isa copular-predication :item mv18653 :value mv18656 :predicate mv18651)
   (:var mv18653 :isa bio-amount :measured-item mv18650 :has-determiner "THE" :raw-text "amount")
   (:var mv18650 :isa protein :predication mv18655 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18655 :isa phosphorylate :substrate mv18650 :raw-text "phosphorylated")
   (:var mv18656 :isa high) (:var mv18651 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv18670 :isa polar-question :statement mv18669)
   (:var mv18669 :isa copular-predication :item mv18663 :value mv18667 :predicate mv18661)
   (:var mv18663 :isa bio-amount :measured-item mv18660 :has-determiner "THE" :raw-text "amount")
   (:var mv18660 :isa protein :predication mv18665 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18665 :isa phosphorylate :substrate mv18660 :raw-text "phosphorylated")
   (:var mv18667 :isa high :adverb mv18666) (:var mv18666 :isa sometimes) (:var mv18661 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv18685 :isa polar-question :statement mv18678)
   (:var mv18678 :isa sustained :theme mv18674 :level mv18682 :past "PAST")
   (:var mv18674 :isa bio-amount :measured-item mv18671 :has-determiner "THE" :raw-text "amount")
   (:var mv18671 :isa protein :predication mv18676 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18676 :isa phosphorylate :substrate mv18671 :raw-text "phosphorylated")
   (:var mv18682 :isa level :has-determiner "A" :predication mv18681 :raw-text "level")
   (:var mv18681 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv18695 :isa polar-question :statement mv18693)
   (:var mv18693 :isa sustained :theme mv18689 :past "PAST")
   (:var mv18689 :isa bio-amount :measured-item mv18686 :has-determiner "THE" :raw-text "amount")
   (:var mv18686 :isa protein :predication mv18691 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18691 :isa phosphorylate :substrate mv18686 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv18705 :isa polar-question :statement mv18704)
   (:var mv18704 :isa copular-predication :item mv18699 :value mv18702 :predicate mv18697)
   (:var mv18699 :isa bio-amount :measured-item mv18696 :has-determiner "THE" :raw-text "amount")
   (:var mv18696 :isa protein :predication mv18701 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18701 :isa phosphorylate :substrate mv18696 :raw-text "phosphorylated")
   (:var mv18702 :isa transient) (:var mv18697 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv18716 :isa polar-question :statement mv18714)
   (:var mv18714 :isa copular-predication :item mv18709 :value mv18713 :predicate mv18712)
   (:var mv18709 :isa bio-amount :measured-item mv18706 :has-determiner "THE" :raw-text "amount")
   (:var mv18706 :isa protein :predication mv18711 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18711 :isa phosphorylate :substrate mv18706 :raw-text "phosphorylated")
   (:var mv18713 :isa high) (:var mv18712 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv18739 :isa polar-question :statement mv18738)
   (:var mv18738 :isa event-relation :subordinated-event mv18735 :event mv18736)
   (:var mv18735 :isa wh-question :statement mv18725 :wh if)
   (:var mv18725 :isa increase :|agent-OR-cause| mv18723 :level mv18733
    :|affected-process-OR-object| mv18727 :present "PRESENT" :raw-text "increase")
   (:var mv18723 :isa interlocutor :name "person-and-machine")
   (:var mv18733 :isa measurement :number mv18730) (:var mv18730 :isa number :value 100)
   (:var mv18727 :isa bio-amount :measured-item mv18718 :has-determiner "THE" :raw-text "amount")
   (:var mv18718 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv18736 :isa copular-predication :item mv18717 :value mv18721 :predicate mv18719)
   (:var mv18717 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv18721 :isa low :adverb mv18720) (:var mv18720 :isa eventually :name "eventually")
   (:var mv18719 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv18766 :isa polar-question :statement mv18765)
   (:var mv18765 :isa event-relation :subordinated-event mv18762 :event mv18763)
   (:var mv18762 :isa wh-question :statement mv18759 :wh if)
   (:var mv18759 :isa increase :|affected-process-OR-object| mv18748 :|multiplier-OR-cause| mv18757
    :raw-text "increased")
   (:var mv18748 :isa bio-amount :measured-item mv18741 :has-determiner "THE" :raw-text "amount")
   (:var mv18741 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv18757 :isa measurement :number mv18754) (:var mv18754 :isa number :value 100)
   (:var mv18763 :isa copular-predication :item mv18740 :value mv18745 :predicate mv18742)
   (:var mv18740 :isa protein :predication mv18743 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv18743 :isa active) (:var mv18745 :isa low :adverb mv18744)
   (:var mv18744 :isa eventually :name "eventually") (:var mv18742 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv18793 :isa polar-question :statement mv18792)
   (:var mv18792 :isa event-relation :subordinated-event mv18788 :event mv18790)
   (:var mv18788 :isa wh-question :statement mv18778 :wh if)
   (:var mv18778 :isa increase :|agent-OR-cause| mv18776 :level mv18786
    :|affected-process-OR-object| mv18780 :present "PRESENT" :raw-text "increase")
   (:var mv18776 :isa interlocutor :name "person-and-machine")
   (:var mv18786 :isa measurement :number mv18783) (:var mv18783 :isa number :value 100)
   (:var mv18780 :isa bio-amount :measured-item mv18768 :has-determiner "THE" :raw-text "amount")
   (:var mv18768 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv18790 :isa copular-predication :item mv18771 :value mv18774 :predicate mv18769)
   (:var mv18771 :isa bio-amount :measured-item mv18767 :has-determiner "THE" :raw-text "amount")
   (:var mv18767 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv18774 :isa low :adverb mv18773) (:var mv18773 :isa eventually :name "eventually")
   (:var mv18769 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv18821 :isa polar-question :statement mv18820)
   (:var mv18820 :isa event-relation :subordinated-event mv18816 :event mv18818)
   (:var mv18816 :isa wh-question :statement mv18806 :wh if)
   (:var mv18806 :isa increase :|agent-OR-cause| mv18804 :level mv18814
    :|affected-process-OR-object| mv18808 :present "PRESENT" :raw-text "increase")
   (:var mv18804 :isa interlocutor :name "person-and-machine")
   (:var mv18814 :isa measurement :number mv18811) (:var mv18811 :isa number :value 100)
   (:var mv18808 :isa bio-amount :measured-item mv18795 :has-determiner "THE" :raw-text "amount")
   (:var mv18795 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv18818 :isa copular-predication :item mv18798 :value mv18802 :predicate mv18796)
   (:var mv18798 :isa bio-amount :measured-item mv18794 :has-determiner "THE" :raw-text "amount")
   (:var mv18794 :isa protein :predication mv18800 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv18800 :isa active) (:var mv18802 :isa low :adverb mv18801)
   (:var mv18801 :isa always :name "always") (:var mv18796 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv18832 :isa explicit-suggestion :suggestion mv18826 :marker let-as-directive)
   (:var mv18826 :isa move-to :|at-relative-location-OR-goal| mv18829 :theme mv18830 :present
    "PRESENT")
   (:var mv18829 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv18830 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv18823 mv18824))
   (:var mv18823 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv18824 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv18835 :isa phosphorylate :agent mv18833 :substrate mv18834 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv18833 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv18834 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv18837 :isa move-to :|at-relative-location-OR-goal| mv18840 :theme mv18842 :present
    "PRESENT")
   (:var mv18840 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv18842 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv18845 :isa phosphorylate :agent mv18843 :substrate mv18844 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv18843 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv18844 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv18855 :isa explicit-suggestion :suggestion mv18848 :marker let-as-directive)
   (:var mv18848 :isa highlight :theme mv18850 :present "PRESENT")
   (:var mv18850 :isa upstream-segment :pathwaycomponent mv18847 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv18847 :isa protein :predication mv18853 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18853 :isa phosphorylate :substrate mv18847 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv18864 :isa explicit-suggestion :suggestion mv18858 :marker let-as-directive)
   (:var mv18858 :isa show :at-relative-location mv18862 :|statement-OR-theme| mv18857 :present
    "PRESENT")
   (:var mv18862 :isa top-qua-location :has-determiner "THE")
   (:var mv18857 :isa protein :predication mv18859 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18859 :isa phosphorylate :substrate mv18857 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv18877 :isa explicit-suggestion :suggestion mv18867 :marker let-as-directive)
   (:var mv18867 :isa show :at-relative-location mv18874 :|statement-OR-theme| mv18869 :present
    "PRESENT")
   (:var mv18874 :isa top-qua-location :has-determiner "THE")
   (:var mv18869 :isa downstream-segment :pathwaycomponent mv18866 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv18866 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv18889 :isa explicit-suggestion :suggestion mv18880 :marker let-as-directive)
   (:var mv18880 :isa move-to :goal mv18886 :theme mv18887 :present "PRESENT")
   (:var mv18886 :isa top-qua-location :has-determiner "THE")
   (:var mv18887 :isa element :plural t :modifier mv18881)
   (:var mv18881 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv18894 :isa affect :manner mv18891 :agent mv18893 :object mv18890 :present "PRESENT"
    :raw-text "affect")
   (:var mv18891 :isa how)
   (:var mv18893 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18890 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv18898 :isa affect :manner mv18896 :agent mv18895 :object mv18899 :present "PRESENT"
    :raw-text "affect")
   (:var mv18896 :isa how)
   (:var mv18895 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18899 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv18902 :isa be :subject mv18901 :predicate mv18904 :present "PRESENT")
   (:var mv18901 :isa what) (:var mv18904 :isa path :endpoints mv18908 :has-determiner "THE")
   (:var mv18908 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv18906 mv18900))
   (:var mv18906 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18900 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv18913 :isa affect :manner mv18911 :agent mv18910 :object mv18914 :present "PRESENT"
    :raw-text "affect")
   (:var mv18911 :isa how)
   (:var mv18910 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18914 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv18919 :isa affect :manner mv18917 :agent mv18915 :object mv18916 :present "PRESENT"
    :raw-text "affect")
   (:var mv18917 :isa how)
   (:var mv18915 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv18916 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv18924 :isa affect :manner mv18921 :agent mv18923 :object mv18920 :present "PRESENT"
    :raw-text "affect")
   (:var mv18921 :isa how)
   (:var mv18923 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv18920 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv18928 :isa affect :manner mv18925 :agent mv18927 :object mv18929 :present "PRESENT"
    :raw-text "affect")
   (:var mv18925 :isa how)
   (:var mv18927 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv18929 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv18936 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes"))
  ("What pathways affect BRAF?"
   (:var mv18940 :isa affect :agent mv18942 :object mv18941 :present "PRESENT" :raw-text "affect")
   (:var mv18942 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv18941 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv18946 :isa bio-activate :agent mv18948 :object mv18947 :present "PRESENT" :raw-text
    "activate")
   (:var mv18948 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv18947 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv18957 :isa explicit-suggestion :suggestion mv18952 :marker let-as-directive)
   (:var mv18952 :isa learning :context mv18951 :statement mv18950 :present "PRESENT")
   (:var mv18951 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv18950 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What is its relationship with BRAF?"
   (:var mv18959 :isa be :subject mv18958 :predicate mv18961 :present "PRESENT")
   (:var mv18958 :isa what) (:var mv18961 :isa relationship :patient mv18963 :modifier mv18960)
   (:var mv18963 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18960 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv18967 :isa be :subject mv18966 :predicate mv18969 :present "PRESENT")
   (:var mv18966 :isa what) (:var mv18969 :isa relationship :patient mv18965 :modifier mv18968)
   (:var mv18965 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv18968 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv18974 :isa phosphorylate :agent mv18972 :substrate mv18973 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv18972 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv18973 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv18976 :isa what))
  ("Let's stop learning about AKT1." (:var mv18984 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv18993 :isa be :subject mv18992 :predicate mv18996 :present "PRESENT")
   (:var mv18992 :isa what)
   (:var mv18996 :isa response :beneficiary mv19005 :has-determiner "THE" :drug mv18995 :raw-text
    "response")
   (:var mv19005 :isa cell-type :plural t :mutation mv19003)
   (:var mv19003 :isa alter :plural t :|agent-OR-object| mv18991 :raw-text "alterations")
   (:var mv18991 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv18995 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv19009 :isa be :subject mv19008 :predicate mv19012 :present "PRESENT")
   (:var mv19008 :isa what)
   (:var mv19012 :isa response :cell-type mv19021 :has-determiner "THE" :drug mv19011 :raw-text
    "response")
   (:var mv19021 :isa cell-type :plural t :mutation mv19019)
   (:var mv19019 :isa alter :plural t :|agent-OR-object| mv19007 :raw-text "alterations")
   (:var mv19007 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19011 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv19024 :isa be :subject mv19023 :predicate mv19027 :present "PRESENT")
   (:var mv19023 :isa what)
   (:var mv19027 :isa frequency :context mv19031 :measured-item mv19029 :has-determiner "THE"
    :measured-item mv19026 :raw-text "frequency")
   (:var mv19031 :isa glioblastoma)
   (:var mv19029 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv19026 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv19037 :isa be :subject mv19036 :predicate mv19040 :present "PRESENT")
   (:var mv19036 :isa what)
   (:var mv19040 :isa frequency :context mv19035 :measured-item mv19034 :has-determiner "THE"
    :measured-item mv19039 :raw-text "frequency")
   (:var mv19035 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv19034 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19039 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv19046 :isa show :|statement-OR-theme| mv19061 :beneficiary mv19047 :present "PRESENT")
   (:var mv19061 :isa mutation :plural t :context mv19045 :object mv19056 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19045 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19056 :isa collection :raw-text "PTEN and BRAF" :type protein :number 2 :items
    (mv19052 mv19054))
   (:var mv19052 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19054 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19047 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv19063 :isa show :|statement-OR-theme| mv19075 :beneficiary mv19064 :present "PRESENT")
   (:var mv19075 :isa mutation :plural t :context mv19062 :object mv19069 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19062 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19069 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19064 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv19078 :isa be :subject mv19077 :predicate mv19089 :present "PRESENT")
   (:var mv19077 :isa what)
   (:var mv19089 :isa mutation :plural t :context mv19076 :object mv19083 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19076 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19083 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv19092 :isa be :subject mv19091 :predicate mv19104 :present "PRESENT")
   (:var mv19091 :isa what) (:var mv19104 :isa quality-predicate :item mv19102 :attribute mv19098)
   (:var mv19102 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv19090 mv19101))
   (:var mv19090 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19101 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19098 :isa location-of :has-determiner "THE" :predication mv19096 :modifier mv19097)
   (:var mv19096 :isa likely :comparative mv19094)
   (:var mv19094 :isa superlative-quantifier :name "most")
   (:var mv19097 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv19120 :isa polar-question :statement mv19115)
   (:var mv19115 :isa there-exists :value mv19119 :predicate mv19107)
   (:var mv19119 :isa upstream-segment :plural t :pathwaycomponent mv19116 :predication mv19109
    :raw-text "upstreams")
   (:var mv19116 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv19105 mv19114))
   (:var mv19105 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19114 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19109 :isa common) (:var mv19107 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv19124 :isa be :subject mv19123 :predicate mv19136 :present "PRESENT")
   (:var mv19123 :isa what)
   (:var mv19136 :isa upstream-segment :plural t :pathwaycomponent mv19132 :has-determiner "THE"
    :predication mv19126 :raw-text "upstreams")
   (:var mv19132 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv19121 mv19130 mv19122))
   (:var mv19121 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19130 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19122 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19126 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv19149 :isa copular-predication :item mv19146 :value mv19137 :predicate mv19143)
   (:var mv19146 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19137 :isa mutual-exclusivity :disease mv19139 :alternative mv19138)
   (:var mv19139 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv19138 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv19143 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv19154 :isa be :subject mv19153 :predicate mv19164 :present "PRESENT")
   (:var mv19153 :isa what)
   (:var mv19164 :isa gene :disease mv19152 :has-determiner "THE" :predication mv19150 :raw-text
    "genes")
   (:var mv19152 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv19150 :isa mutual-exclusivity :alternative mv19151)
   (:var mv19151 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv19168 :isa be :subject mv19167 :predicate mv19171 :present "PRESENT")
   (:var mv19167 :isa what)
   (:var mv19171 :isa significance :context mv19166 :agent mv19165 :has-determiner "THE" :modifier
    mv19170)
   (:var mv19166 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv19165 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19170 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv19179 :isa be :subject mv19178 :predicate mv19182 :present "PRESENT")
   (:var mv19178 :isa what)
   (:var mv19182 :isa significance :context mv19177 :agent mv19176 :has-determiner "THE" :modifier
    mv19181)
   (:var mv19177 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv19176 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19181 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv19188 :isa be :subject mv19187 :predicate mv19191 :present "PRESENT")
   (:var mv19187 :isa what)
   (:var mv19191 :isa significance :context mv19196 :agent mv19193 :has-determiner "THE" :modifier
    mv19190)
   (:var mv19196 :isa cancer :organ mv19195 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv19195 :isa pancreas)
   (:var mv19193 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19190 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv19200 :isa be :subject mv19199 :predicate mv19203 :present "PRESENT")
   (:var mv19199 :isa what)
   (:var mv19203 :isa significance :context mv19208 :agent mv19205 :has-determiner "THE" :modifier
    mv19202)
   (:var mv19208 :isa cancer :modifier mv19207 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv19207 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv19205 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19202 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv19212 :isa phosphorylate :agent mv19211 :substrate mv19213 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19211 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19213 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv19215 :isa binding :binder mv19214 :direct-bindee mv19216 :present "PRESENT" :raw-text
    "binds")
   (:var mv19214 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv19216 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv19222 :isa binding :binder mv19218 :direct-bindee mv19217 :present "PRESENT" :raw-text
    "binds")
   (:var mv19218 :isa protein :predication mv19219 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv19219 :isa binding :direct-bindee mv19218 :bindee mv19221 :past "PAST" :raw-text
    "bound")
   (:var mv19221 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv19217 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv19228 :isa copular-predication :item mv19225 :value mv19227 :predicate mv19226)
   (:var mv19225 :isa protein-family :predication mv19224 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv19224 :isa phosphorylate :substrate mv19225 :raw-text "Phosphorylated")
   (:var mv19227 :isa active) (:var mv19226 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv19229 :isa protein :predication mv19231 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv19231 :isa phosphorylate :substrate mv19229 :target mv19230 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv19230 :isa protein :site mv19236 :modifier mv19237 :raw-text "MAPK1" :uid "UP:P28482"
    :name "MK01_HUMAN")
   (:var mv19236 :isa residue-on-protein :raw-text "S220" :position mv19235 :amino-acid mv19234)
   (:var mv19235 :isa number :value 220) (:var mv19234 :isa amino-acid :name "serine" :letter "S")
   (:var mv19237 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv19242 :isa transcribe :agent mv19239 :object mv19240 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv19239 :isa protein :predication mv19241 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv19241 :isa active)
   (:var mv19240 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv19271 :isa polar-question :statement mv19270)
   (:var mv19270 :isa event-relation :subordinated-event mv19266 :event mv19268)
   (:var mv19266 :isa wh-question :statement mv19254 :wh if)
   (:var mv19254 :isa increase :|agent-OR-cause| mv19252 :|multiplier-OR-cause| mv19263
    :|affected-process-OR-object| mv19256 :present "PRESENT" :raw-text "increase")
   (:var mv19252 :isa interlocutor :name "person-and-machine")
   (:var mv19263 :isa measurement :number mv19260) (:var mv19260 :isa number :value 10)
   (:var mv19256 :isa bio-amount :measured-item mv19243 :has-determiner "THE" :raw-text "amount")
   (:var mv19243 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19268 :isa copular-predication :item mv19246 :value mv19250 :predicate mv19244)
   (:var mv19246 :isa bio-amount :measured-item mv19248 :has-determiner "THE" :raw-text "amount")
   (:var mv19248 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19250 :isa high :adverb mv19249) (:var mv19249 :isa ever :name "ever")
   (:var mv19244 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv19283 :isa polar-question :statement mv19281)
   (:var mv19281 :isa decrease :agent mv19273 :object mv19277 :raw-text "decrease")
   (:var mv19273 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19277 :isa protein-family :predication mv19276 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv19276 :isa phosphorylate :substrate mv19277 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv19294 :isa polar-question :statement mv19292)
   (:var mv19292 :isa decrease :agent mv19285 :object mv19288 :raw-text "decrease")
   (:var mv19285 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv19288 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv19299 :isa regulate :manner mv19296 :agent mv19298 :object mv19295 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19296 :isa how)
   (:var mv19298 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19295 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv19304 :isa bio-activate :manner mv19301 :agent mv19303 :object mv19300 :present
    "PRESENT" :raw-text "activate")
   (:var mv19301 :isa how)
   (:var mv19303 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv19300 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv19310 :isa polar-question :statement mv19309)
   (:var mv19309 :isa inhibit :agent mv19306 :object mv19308 :raw-text "inhibit")
   (:var mv19306 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19308 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv19323 :isa share :object mv19322 :participant mv19321 :present "PRESENT" :raw-text
    "shared")
   (:var mv19322 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv19321 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv19318 mv19319 mv19313))
   (:var mv19318 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19319 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv19313 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv19326 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv19335 :isa be :subject mv19334 :predicate mv19336 :present "PRESENT")
   (:var mv19334 :isa what)
   (:var mv19336 :isa upstream-segment :pathwaycomponent mv19333 :raw-text "upstream")
   (:var mv19333 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv19344 :isa want :agent mv19341 :theme mv19352 :present "PRESENT")
   (:var mv19341 :isa interlocutor :name "speaker")
   (:var mv19352 :isa bio-find :agent mv19341 :object mv19349 :present "PRESENT" :raw-text "find")
   (:var mv19349 :isa treatment :disease mv19340 :has-determiner "A" :raw-text "treatment")
   (:var mv19340 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv19361 :isa bio-use :object mv19354 :modal mv19355 :agent mv19356 :present "PRESENT"
    :raw-text "use")
   (:var mv19354 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv19355 :isa could)
   (:var mv19356 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv19374 :isa polar-question :statement mv19370)
   (:var mv19370 :isa there-exists :value mv19373 :predicate mv19363)
   (:var mv19373 :isa drug :plural t :target mv19369 :quantifier mv19365 :raw-text "drugs")
   (:var mv19369 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19365 :isa any :word "any") (:var mv19363 :isa syntactic-there))
  ("Are they kinases?" (:var mv19379 :isa polar-question :statement mv19375)
   (:var mv19375 :isa be :subject mv19376 :predicate mv19378)
   (:var mv19376 :isa pronoun/plural :word "they")
   (:var mv19378 :isa kinase :plural t :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv19389 :isa polar-question :statement mv19383)
   (:var mv19383 :isa bio-find :agent mv19381 :object mv19385 :modal "CAN" :raw-text "find")
   (:var mv19381 :isa interlocutor :name "hearer")
   (:var mv19385 :isa drug :target mv19387 :has-determiner "A" :raw-text "drug")
   (:var mv19387 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv19411 :isa polar-question :statement mv19395)
   (:var mv19395 :isa tell :agent mv19394 :theme mv19410 :beneficiary mv19396 :modal "CAN")
   (:var mv19394 :isa interlocutor :name "hearer")
   (:var mv19410 :isa transcription-factor :plural t :predication mv19408 :quantifier mv19397
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv19408 :isa share :object mv19410 :that-rel t :participant mv19405 :modal "CAN" :raw-text
    "shared")
   (:var mv19405 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19392 mv19404))
   (:var mv19392 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19404 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19397 :isa all :word "all") (:var mv19396 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv19433 :isa polar-question :statement mv19417)
   (:var mv19417 :isa tell :agent mv19416 :theme mv19432 :beneficiary mv19418 :modal "CAN")
   (:var mv19416 :isa interlocutor :name "hearer")
   (:var mv19432 :isa transcription-factor :plural t :predication mv19430 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv19430 :isa share :wh-element mv19426 :wh-path nil :raw-text "shared" :modal mv19415
    :participant mv19425 :object mv19426)
   (:var mv19426 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv19415 :isa can)
   (:var mv19425 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19414 mv19424))
   (:var mv19414 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19424 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19418 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv19447 :isa polar-question :statement mv19446)
   (:var mv19446 :isa know :agent mv19435 :statement mv19445)
   (:var mv19435 :isa interlocutor :name "hearer")
   (:var mv19445 :isa drug :plural t :target mv19441 :quantifier mv19437 :raw-text "drugs")
   (:var mv19441 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19437 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv19459 :isa polar-question :statement mv19457)
   (:var mv19457 :isa regulate :agent mv19448 :object mv19453 :raw-text "regulate")
   (:var mv19448 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19453 :isa gene :organ mv19456 :has-determiner "THE" :expresses mv19452 :raw-text
    "gene")
   (:var mv19456 :isa lung :has-determiner "THE")
   (:var mv19452 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv19470 :isa polar-question :statement mv19468)
   (:var mv19468 :isa regulate :agent mv19460 :object mv19465 :raw-text "regulate")
   (:var mv19460 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19465 :isa gene :organ mv19467 :has-determiner "THE" :expresses mv19461 :raw-text
    "gene")
   (:var mv19467 :isa liver)
   (:var mv19461 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv19478 :isa polar-question :statement mv19477)
   (:var mv19477 :isa regulate :agent mv19471 :object mv19476 :raw-text "regulate")
   (:var mv19471 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19476 :isa gene :has-determiner "THE" :expresses mv19472 :raw-text "gene")
   (:var mv19472 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv19490 :isa polar-question :statement mv19488)
   (:var mv19488 :isa regulate :agent mv19479 :object mv19484 :raw-text "regulate")
   (:var mv19479 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19484 :isa gene :organ mv19487 :has-determiner "THE" :expresses mv19483 :raw-text
    "gene")
   (:var mv19487 :isa lung :has-determiner "THE")
   (:var mv19483 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv19497 :isa polar-question :statement mv19496)
   (:var mv19496 :isa target :agent mv19491 :object mv19492 :raw-text "target")
   (:var mv19491 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19492 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv19504 :isa polar-question :statement mv19503)
   (:var mv19503 :isa target :agent mv19498 :object mv19499 :raw-text "target")
   (:var mv19498 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv19499 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv19511 :isa polar-question :statement mv19510)
   (:var mv19510 :isa target :agent mv19505 :object mv19506 :raw-text "target")
   (:var mv19505 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv19506 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv19518 :isa polar-question :statement mv19517)
   (:var mv19517 :isa target :agent mv19512 :object mv19513 :raw-text "target")
   (:var mv19512 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv19513 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv19527 :isa polar-question :statement mv19525)
   (:var mv19525 :isa regulate :agent mv19519 :object mv19524 :raw-text "regulate")
   (:var mv19519 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19524 :isa bio-entity :organ mv19523 :name "cfors") (:var mv19523 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv19536 :isa polar-question :statement mv19534)
   (:var mv19534 :isa regulate :agent mv19528 :object mv19531 :raw-text "regulate")
   (:var mv19528 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19531 :isa protein :organ mv19533 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19533 :isa liver))
  ("Does it regulate cfos in brain" (:var mv19545 :isa polar-question :statement mv19543)
   (:var mv19543 :isa regulate :|agent-OR-cause| mv19538 :object mv19540 :raw-text "regulate")
   (:var mv19538 :isa pronoun/inanimate :word "it")
   (:var mv19540 :isa protein :organ mv19542 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19542 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv19551 :isa polar-question :statement mv19550)
   (:var mv19550 :isa regulate :agent mv19546 :object mv19549 :raw-text "regulate")
   (:var mv19546 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19549 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv19565 :isa polar-question :statement mv19562)
   (:var mv19562 :isa regulate :agent mv19552 :object mv19557 :raw-text "regulate")
   (:var mv19552 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19557 :isa gene :cell-type mv19563 :has-determiner "THE" :expresses mv19556 :raw-text
    "gene")
   (:var mv19563 :isa cell-type :plural t :non-cellular-location mv19559)
   (:var mv19559 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv19556 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv19573 :isa polar-question :statement mv19572)
   (:var mv19572 :isa bio-utilize :agent mv19570 :object mv19567 :raw-text "utilize")
   (:var mv19570 :isa pathway :has-determiner "THE" :modifier mv19566 :raw-text "pathway")
   (:var mv19566 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv19567 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv19583 :isa polar-question :statement mv19582)
   (:var mv19582 :isa bio-utilize :agent mv19580 :object mv19574 :raw-text "utilize")
   (:var mv19580 :isa pathway :has-determiner "THE" :modifier mv19577 :raw-text "pathway")
   (:var mv19577 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv19574 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv19585 :isa give :theme mv19592 :beneficiary mv19586 :present "PRESENT")
   (:var mv19592 :isa evidence :statement mv19591 :has-determiner "THE")
   (:var mv19591 :isa decrease :agent mv19590 :object mv19584 :present "PRESENT" :raw-text
    "decreases")
   (:var mv19590 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19584 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv19586 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv19594 :isa give :theme mv19601 :beneficiary mv19595 :present "PRESENT")
   (:var mv19601 :isa evidence :statement mv19600 :has-determiner "THE")
   (:var mv19600 :isa regulate :agent mv19599 :object mv19593 :present "PRESENT" :raw-text
    "regulates")
   (:var mv19599 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19593 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv19595 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv19606 :isa polar-question :statement mv19602)
   (:var mv19602 :isa be :subject mv19603 :predicate mv19605)
   (:var mv19603 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19605 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv19613 :isa polar-question :statement mv19609)
   (:var mv19609 :isa inhibit :object mv19607 :agent mv19611 :past "PAST" :raw-text "inhibited")
   (:var mv19607 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv19611 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv19622 :isa polar-question :statement mv19617)
   (:var mv19617 :isa be :subject mv19614 :predicate mv19615)
   (:var mv19614 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19615 :isa transcription-factor :controlled-gene mv19620 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv19620 :isa gene :expresses mv19616 :raw-text "gene")
   (:var mv19616 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv19641 :isa polar-question :statement mv19625)
   (:var mv19625 :isa be :subject mv19623 :predicate mv19640)
   (:var mv19623 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19640 :isa regulator :plural t :quantifier mv19628 :theme mv19635 :has-determiner "THE"
    :raw-text "regulators")
   (:var mv19628 :isa number :value 1)
   (:var mv19635 :isa gene :has-determiner "THE" :expresses mv19624 :raw-text "gene")
   (:var mv19624 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv19649 :isa polar-question :statement mv19643)
   (:var mv19643 :isa be :subject mv19644 :predicate mv19646)
   (:var mv19644 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv19646 :isa inhibitor :protein mv19642 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv19642 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv19657 :isa polar-question :statement mv19650)
   (:var mv19650 :isa be :subject mv19651 :predicate mv19653)
   (:var mv19651 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19653 :isa inhibitor :|target-OR-protein| mv19655 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv19655 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv19662 :isa polar-question :statement mv19658)
   (:var mv19658 :isa be :subject mv19661 :predicate mv19660)
   (:var mv19661 :isa bio-entity :name "fakeprotein")
   (:var mv19660 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv19667 :isa polar-question :statement mv19664)
   (:var mv19664 :isa be :subject mv19663 :predicate mv19666)
   (:var mv19663 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv19666 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv19674 :isa polar-question :statement mv19669)
   (:var mv19669 :isa be :subject mv19668 :predicate mv19673)
   (:var mv19668 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19673 :isa regulator :has-determiner "AN" :cellular-process mv19671 :raw-text
    "regulator")
   (:var mv19671 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv19687 :isa polar-question :statement mv19677)
   (:var mv19677 :isa involve :object mv19675 :|context-OR-theme| mv19685 :past "PAST")
   (:var mv19675 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19685 :isa pathway :plural t :quantifier mv19679 :cellular-process mv19680 :raw-text
    "pathways")
   (:var mv19679 :isa any :word "any") (:var mv19680 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?"
   (:var mv19696 :isa polar-question :statement mv19690)
   (:var mv19690 :isa involve :object mv19688 :theme mv19694 :past "PAST")
   (:var mv19688 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19694 :isa regulate :cellular-process mv19692 :raw-text "regulation")
   (:var mv19692 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?"
   (:var mv19704 :isa polar-question :statement mv19699)
   (:var mv19699 :isa involve :object mv19697 :theme mv19701 :past "PAST")
   (:var mv19697 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19701 :isa regulate :affected-process mv19702 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv19702 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv19710 :isa phosphorylate :substrate mv19711 :agent mv19709 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv19711 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv19709 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv19721 :isa polar-question :statement mv19712)
   (:var mv19712 :isa be :subject mv19720 :predicate mv19719)
   (:var mv19720 :isa indefinite-pronoun :has-determiner "THE" :ordinal mv19717 :word "one")
   (:var mv19717 :isa number :value 1)
   (:var mv19719 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv19733 :isa polar-question :statement mv19732)
   (:var mv19732 :isa there-exists :value mv19726 :predicate mv19723)
   (:var mv19726 :isa drug :predication mv19730 :has-determiner "A" :raw-text "drug")
   (:var mv19730 :isa target :agent mv19726 :that-rel t :object mv19731 :present "PRESENT"
    :raw-text "targets")
   (:var mv19731 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19723 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv19746 :isa polar-question :statement mv19744)
   (:var mv19744 :isa there-exists :value mv19741 :predicate mv19736)
   (:var mv19741 :isa pathway :predication mv19742 :has-determiner "AN" :cellular-process mv19739
    :raw-text "pathway")
   (:var mv19742 :isa regulate :affected-process mv19741 :agent mv19734 :past "PAST" :raw-text
    "regulated")
   (:var mv19734 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19739 :isa apoptosis :raw-text "apoptotic") (:var mv19736 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv19762 :isa polar-question :statement mv19759)
   (:var mv19759 :isa there-exists :value mv19754 :predicate mv19749)
   (:var mv19754 :isa pathway :predication mv19760 :has-determiner "AN" :cellular-process mv19752
    :raw-text "pathway")
   (:var mv19760 :isa regulate :affected-process mv19754 :that-rel t :agent mv19747 :present
    "PRESENT" :raw-text "regulated")
   (:var mv19747 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19752 :isa apoptosis :raw-text "apoptotic") (:var mv19749 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv19764 :isa let :complement mv19782 :present "PRESENT")
   (:var mv19782 :isa know :agent mv19765 :statement mv19781 :present "PRESENT")
   (:var mv19765 :isa interlocutor :name "speaker")
   (:var mv19781 :isa wh-question :statement mv19777 :wh if)
   (:var mv19777 :isa there-exists :value mv19780 :predicate mv19770)
   (:var mv19780 :isa gene :plural t :predication mv19776 :quantifier mv19771 :cellular-process
    mv19772 :raw-text "genes")
   (:var mv19776 :isa regulate :object mv19780 :agent mv19763 :present "PRESENT" :raw-text
    "regulates")
   (:var mv19763 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19771 :isa any :word "any") (:var mv19772 :isa apoptosis :raw-text "apoptotic")
   (:var mv19770 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv19784 :isa let :complement mv19793 :present "PRESENT")
   (:var mv19793 :isa know :agent mv19785 :statement mv19792 :present "PRESENT")
   (:var mv19785 :isa interlocutor :name "speaker")
   (:var mv19792 :isa gene :plural t :predication mv19790 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv19790 :isa regulate :object mv19792 :agent mv19783 :present "PRESENT" :raw-text
    "regulates")
   (:var mv19783 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv19795 :isa list :theme mv19806 :present "PRESENT")
   (:var mv19806 :isa gene :plural t :predication mv19800 :quantifier mv19796 :has-determiner "THE"
    :raw-text "genes")
   (:var mv19800 :isa regulate :object mv19806 :agent mv19804 :past "PAST" :raw-text "regulated")
   (:var mv19804 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19794 mv19803))
   (:var mv19794 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19803 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19796 :isa all :word "all"))
  ("List genes regulated by elk1 and srf"
   (:var mv19810 :isa list :theme mv19812 :present "PRESENT")
   (:var mv19812 :isa gene :plural t :predication mv19813 :raw-text "genes")
   (:var mv19813 :isa regulate :object mv19812 :agent mv19817 :past "PAST" :raw-text "regulated")
   (:var mv19817 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19809 mv19816))
   (:var mv19809 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19816 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv19821 :isa list :theme mv19835 :present "PRESENT")
   (:var mv19835 :isa gene :plural t :predication mv19833 :quantifier mv19822 :raw-text "genes")
   (:var mv19833 :isa regulate :object mv19835 :that-rel t :agent mv19831 :present "PRESENT"
    :raw-text "regulated")
   (:var mv19831 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19820 mv19830))
   (:var mv19820 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19830 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19822 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv19837 :isa list :theme mv19843 :present "PRESENT")
   (:var mv19843 :isa evidence :statement mv19842 :has-determiner "THE")
   (:var mv19842 :isa decrease :agent mv19841 :object mv19836 :present "PRESENT" :raw-text
    "decreases")
   (:var mv19841 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19836 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv19845 :isa name-something :patient mv19849 :present "PRESENT")
   (:var mv19849 :isa gene :plural t :predication mv19850 :raw-text "genes")
   (:var mv19850 :isa regulate :object mv19849 :agent mv19854 :past "PAST" :raw-text "regulated")
   (:var mv19854 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19844 mv19853))
   (:var mv19844 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19853 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv19875 :isa copular-predication :item mv19878 :value mv19868 :predicate mv19867)
   (:var mv19878 :isa gene :plural t :has-determiner "WHICH" :predication mv19864 :has-determiner
    "THE" :cellular-process mv19860 :raw-text "genes")
   (:var mv19864 :isa regulate :object mv19878 :agent mv19857 :past "PAST" :raw-text "regulated")
   (:var mv19857 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19860 :isa apoptosis :raw-text "apoptotic") (:var mv19868 :isa active :organ mv19871)
   (:var mv19871 :isa liver :has-determiner "THE") (:var mv19867 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv19897 :isa copular-predication :item mv19899 :value mv19890 :predicate mv19889)
   (:var mv19899 :isa gene :plural t :has-determiner "WHICH" :predication mv19887 :has-determiner
    "THE" :cellular-process mv19883 :raw-text "genes")
   (:var mv19887 :isa regulate :object mv19899 :agent mv19880 :present "PRESENT" :raw-text
    "regulates")
   (:var mv19880 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19883 :isa apoptosis :raw-text "apoptotic") (:var mv19890 :isa active :organ mv19893)
   (:var mv19893 :isa liver :has-determiner "THE") (:var mv19889 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv19915 :isa copular-predication :item mv19918 :value mv19912 :predicate mv19911)
   (:var mv19918 :isa gene :plural t :has-determiner "WHICH" :predication mv19906 :has-determiner
    "THE" :raw-text "genes")
   (:var mv19906 :isa regulate :object mv19918 :agent mv19901 :organ mv19909 :present "PRESENT"
    :raw-text "regulates")
   (:var mv19901 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19909 :isa liver :has-determiner "THE")
   (:var mv19912 :isa apoptosis :raw-text "apoptotic") (:var mv19911 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv19933 :isa copular-predication :item mv19935 :value mv19929 :predicate mv19928)
   (:var mv19935 :isa gene :plural t :has-determiner "WHICH" :predication mv19926 :has-determiner
    "THE" :non-cellular-location mv19923 :raw-text "genes")
   (:var mv19926 :isa regulate :object mv19935 :agent mv19920 :present "PRESENT" :raw-text
    "regulates")
   (:var mv19920 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19923 :isa liver) (:var mv19929 :isa apoptosis :raw-text "apoptotic")
   (:var mv19928 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv19950 :isa copular-predication :item mv19952 :value mv19946 :predicate mv19945)
   (:var mv19952 :isa gene :plural t :has-determiner "WHICH" :predication mv19943 :has-determiner
    "THE" :non-cellular-location mv19940 :raw-text "genes")
   (:var mv19943 :isa regulate :object mv19952 :agent mv19937 :present "PRESENT" :raw-text
    "regulates")
   (:var mv19937 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19940 :isa liver) (:var mv19946 :isa apoptosis :raw-text "apoptotic")
   (:var mv19945 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv19956 :isa bio-find :object mv19958 :present "PRESENT" :adverb mv19954 :raw-text "find")
   (:var mv19958 :isa pathway :plural t :predication mv19959 :raw-text "pathways")
   (:var mv19959 :isa involve :theme mv19958 :object mv19960 :progressive "PROGRESSIVE")
   (:var mv19960 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19954 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv19963 :isa show :|statement-OR-theme| mv19971 :beneficiary mv19964 :present "PRESENT"
    :adverb mv19962)
   (:var mv19971 :isa pathway :plural t :predication mv19968 :modifier mv19965 :raw-text
    "pathways")
   (:var mv19968 :isa involve :theme mv19971 :object mv19969 :progressive "PROGRESSIVE")
   (:var mv19969 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19965 :isa database :name "KEGG" :uid "KEGG")
   (:var mv19964 :isa interlocutor :name "speaker") (:var mv19962 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv19973 :isa show :|statement-OR-theme| mv19979 :beneficiary mv19974 :present "PRESENT"
    :adverb mv19972)
   (:var mv19979 :isa pathway :plural t :predication mv19977 :raw-text "pathways")
   (:var mv19977 :isa involve :theme mv19979 :object mv19978 :progressive "PROGRESSIVE")
   (:var mv19978 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19974 :isa interlocutor :name "speaker") (:var mv19972 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv19981 :isa bio-activate :agent mv19980 :object mv19982 :present "PRESENT" :raw-text
    "activates")
   (:var mv19980 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19982 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv19983 :isa remove :object mv19990 :present "PRESENT" :raw-text "Remove")
   (:var mv19990 :isa fact :statement mv19988 :has-determiner "THE")
   (:var mv19988 :isa bio-activate :agent mv19987 :object mv19989 :present "PRESENT" :raw-text
    "activates")
   (:var mv19987 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19989 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv19993 :isa bio-activate :agent mv19992 :object mv19994 :present "PRESENT" :raw-text
    "activates")
   (:var mv19992 :isa protein-family :predication mv19991 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19991 :isa inactive)
   (:var mv19994 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv19995 :isa remove :object mv20003 :present "PRESENT" :raw-text "Remove")
   (:var mv20003 :isa fact :statement mv20001 :has-determiner "THE")
   (:var mv20001 :isa bio-activate :agent mv20000 :object mv20002 :present "PRESENT" :raw-text
    "activates")
   (:var mv20000 :isa protein-family :predication mv19999 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19999 :isa inactive)
   (:var mv20002 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv20005 :isa show :|statement-OR-theme| mv20008 :present "PRESENT")
   (:var mv20008 :isa pathway :plural t :non-cellular-location mv20004 :raw-text "pathways")
   (:var mv20004 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv20009 :isa show :|statement-OR-theme| mv20015 :beneficiary mv20010 :present "PRESENT")
   (:var mv20015 :isa pathway :plural t :predication mv20013 :raw-text "pathways")
   (:var mv20013 :isa involve :theme mv20015 :object mv20014 :progressive "PROGRESSIVE")
   (:var mv20014 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20010 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv20016 :isa show :|statement-OR-theme| mv20026 :beneficiary mv20017 :present "PRESENT")
   (:var mv20026 :isa pathway :plural t :pathwaycomponent mv20021 :raw-text "pathways")
   (:var mv20021 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway-OR-in-family|
    mv20023 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20023 :isa pronoun/plural :word "them")
   (:var mv20017 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv20027 :isa show :|statement-OR-theme| mv20034 :beneficiary mv20028 :present "PRESENT")
   (:var mv20034 :isa pathway :plural t :pathwaycomponent mv20032 :raw-text "pathways")
   (:var mv20032 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20028 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv20036 :isa show :|statement-OR-theme| mv20043 :beneficiary mv20037 :present "PRESENT")
   (:var mv20043 :isa evidence :statement mv20042 :has-determiner "THE")
   (:var mv20042 :isa decrease :agent mv20041 :object mv20035 :present "PRESENT" :raw-text
    "decreases")
   (:var mv20041 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20035 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20037 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv20045 :isa show :|statement-OR-theme| mv20056 :beneficiary mv20046 :present "PRESENT")
   (:var mv20056 :isa evidence :statement mv20051 :has-determiner "THE")
   (:var mv20051 :isa decrease :agent mv20050 :|affected-process-OR-object| mv20053 :present
    "PRESENT" :raw-text "decreases")
   (:var mv20050 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20053 :isa bio-amount :measured-item mv20044 :has-determiner "THE" :raw-text "amount")
   (:var mv20044 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20046 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv20058 :isa show :|statement-OR-theme| mv20065 :beneficiary mv20059 :present "PRESENT")
   (:var mv20065 :isa evidence :statement mv20064 :has-determiner "THE")
   (:var mv20064 :isa regulate :agent mv20063 :object mv20057 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20063 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20057 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20059 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv20069 :isa show :|statement-OR-theme| mv20067 :present "PRESENT")
   (:var mv20067 :isa transcription-factor :plural t :predication mv20070 :raw-text
    "transcription factors")
   (:var mv20070 :isa share :object mv20067 :participant mv20074 :past "PAST" :raw-text "shared")
   (:var mv20074 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20068 mv20073))
   (:var mv20068 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20073 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv20078 :isa tell :beneficiary mv20079 :present "PRESENT")
   (:var mv20079 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv20085 :isa tell :theme mv20106 :beneficiary mv20086 :present "PRESENT")
   (:var mv20106 :isa pathway :plural t :predication mv20104 :has-determiner "WHAT"
    :cellular-process mv20088 :raw-text "pathways")
   (:var mv20104 :isa regulate :wh-element mv20099 :wh-path nil :raw-text "regulated" :present
    "PRESENT" :agent mv20084 :affected-process mv20099)
   (:var mv20099 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv20088 :raw-text
    "pathways")
   (:var mv20088 :isa apoptosis :raw-text "apoptotic")
   (:var mv20084 :isa protein :organ mv20097 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv20097 :isa liver :has-determiner "THE")
   (:var mv20086 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv20108 :isa tell :theme mv20118 :beneficiary mv20109 :present "PRESENT")
   (:var mv20118 :isa gene :plural t :predication mv20115 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20115 :isa regulate :object mv20118 :agent mv20116 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20116 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20107 mv20114))
   (:var mv20107 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20114 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20109 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv20120 :isa tell :theme mv20138 :beneficiary mv20121 :present "PRESENT")
   (:var mv20138 :isa pathway :plural t :predication mv20136 :has-determiner "WHAT" :raw-text
    "pathways")
   (:var mv20136 :isa regulate :wh-element mv20131 :wh-path nil :raw-text "regulated" :present
    "PRESENT" :agent mv20119 :affected-process mv20131)
   (:var mv20131 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv20119 :isa protein :organ mv20130 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv20130 :isa liver :has-determiner "THE")
   (:var mv20121 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv20143 :isa involve :theme mv20147 :object mv20145 :present "PRESENT")
   (:var mv20147 :isa pathway :plural t :has-determiner "WHAT" :modifier mv20140 :raw-text
    "pathways")
   (:var mv20140 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20145 :isa signal :modifier mv20144 :raw-text "signaling")
   (:var mv20144 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv20158 :isa regulate :object mv20157 :agent mv20149 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20157 :isa phosphatase :plural t :has-determiner "WHAT" :enzyme mv20148 :raw-text
    "phosphatases")
   (:var mv20148 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv20149 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv20166 :isa be :subject mv20171 :predicate mv20167 :present "PRESENT")
   (:var mv20171 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20162 :raw-text
    "genes")
   (:var mv20162 :isa apoptosis :raw-text "apoptotic")
   (:var mv20167 :isa downstream-segment :pathwaycomponent mv20160 :raw-text "downstream")
   (:var mv20160 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv20180 :isa regulate :object mv20185 :agent mv20173 :organ mv20183 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20185 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20175 :raw-text
    "genes")
   (:var mv20175 :isa apoptosis :raw-text "apoptotic")
   (:var mv20173 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20183 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv20194 :isa regulate :object mv20196 :agent mv20187 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20196 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20189 :raw-text
    "genes")
   (:var mv20189 :isa apoptosis :raw-text "apoptotic")
   (:var mv20187 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv20203 :isa be :subject mv20208 :predicate mv20204 :present "PRESENT")
   (:var mv20208 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20199 :raw-text
    "genes")
   (:var mv20199 :isa apoptosis :raw-text "apoptotic")
   (:var mv20204 :isa upstream-segment :pathwaycomponent mv20208 :modifier mv20197 :raw-text
    "upstream")
   (:var mv20197 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv20215 :isa involve :theme mv20217 :object mv20209 :present "PRESENT")
   (:var mv20217 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv20211 :raw-text
    "pathways")
   (:var mv20211 :isa apoptosis :raw-text "apoptotic")
   (:var mv20209 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv20219 :isa be :subject mv20218 :predicate mv20225 :present "PRESENT")
   (:var mv20218 :isa what)
   (:var mv20225 :isa target-protein :plural t :treatment mv20221 :raw-text "targets")
   (:var mv20221 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv20228 :isa be :subject mv20227 :predicate mv20233 :present "PRESENT")
   (:var mv20227 :isa what)
   (:var mv20233 :isa inhibitor :plural t :quantifier mv20229 :protein mv20226 :raw-text
    "inhibitors")
   (:var mv20229 :isa some :word "some")
   (:var mv20226 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv20235 :isa be :subject mv20234 :predicate mv20243 :present "PRESENT")
   (:var mv20234 :isa what)
   (:var mv20243 :isa drug :plural t :predication mv20240 :quantifier mv20236 :raw-text "drugs")
   (:var mv20240 :isa inhibit :agent mv20243 :that-rel t :object mv20241 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv20241 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv20236 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv20246 :isa be :subject mv20245 :predicate mv20255 :present "PRESENT")
   (:var mv20245 :isa what)
   (:var mv20255 :isa gene :plural t :context mv20244 :quantifier mv20247 :raw-text "genes")
   (:var mv20244 :isa signaling-pathway :has-determiner "THE" :modifier mv20252 :raw-text
    "signaling pathway")
   (:var mv20252 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20247 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv20258 :isa be :subject mv20257 :predicate mv20267 :present "PRESENT")
   (:var mv20257 :isa what)
   (:var mv20267 :isa protein :plural t :in-pathway mv20256 :quantifier mv20259 :raw-text
    "proteins")
   (:var mv20256 :isa signaling-pathway :has-determiner "THE" :modifier mv20264 :raw-text
    "signaling pathway")
   (:var mv20264 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20259 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv20269 :isa be :subject mv20268 :predicate mv20277 :present "PRESENT")
   (:var mv20268 :isa what) (:var mv20277 :isa member :plural t :set mv20274 :has-determiner "THE")
   (:var mv20274 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv20282 :isa be :subject mv20281 :predicate mv20293 :present "PRESENT")
   (:var mv20281 :isa what)
   (:var mv20293 :isa micro-rna :plural t :predication mv20287 :has-determiner "THE" :raw-text
    "miRNAS")
   (:var mv20287 :isa regulate :agent mv20293 :that-rel t :object mv20291 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20291 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20288 mv20289 mv20278 mv20279 mv20280))
   (:var mv20288 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20289 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20278 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20279 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20280 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv20295 :isa be :subject mv20294 :predicate mv20308 :present "PRESENT")
   (:var mv20294 :isa what)
   (:var mv20308 :isa regulator :plural t :theme mv20304 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20304 :isa bio-entity :organ mv20303 :name "MAPPK14")
   (:var mv20303 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv20311 :isa be :subject mv20310 :predicate mv20321 :present "PRESENT")
   (:var mv20310 :isa what)
   (:var mv20321 :isa regulator :plural t :theme mv20309 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20309 :isa protein :organ mv20317 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv20317 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv20324 :isa be :subject mv20323 :predicate mv20331 :present "PRESENT")
   (:var mv20323 :isa what)
   (:var mv20331 :isa regulator :plural t :theme mv20322 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20322 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv20334 :isa be :subject mv20333 :predicate mv20344 :present "PRESENT")
   (:var mv20333 :isa what)
   (:var mv20344 :isa regulator :plural t :theme mv20332 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20332 :isa protein :organ mv20340 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv20340 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv20347 :isa be :subject mv20346 :predicate mv20357 :present "PRESENT")
   (:var mv20346 :isa what)
   (:var mv20357 :isa regulator :plural t :theme mv20345 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20345 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the regulators of mapk14"
   (:var mv20360 :isa be :subject mv20359 :predicate mv20367 :present "PRESENT")
   (:var mv20359 :isa what)
   (:var mv20367 :isa regulator :plural t :theme mv20358 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20358 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv20387 :isa copular-predication :item mv20372 :value mv20370 :predicate mv20373)
   (:var mv20372 :isa what) (:var mv20370 :isa in-common :theme mv20385)
   (:var mv20385 :isa gene :plural t :has-determiner "THE" :expresses mv20382 :raw-text "genes")
   (:var mv20382 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv20377 mv20378 mv20371))
   (:var mv20377 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20378 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv20371 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20373 :isa be :predicate mv20383 :present "PRESENT")
   (:var mv20383 :isa transcription-factor :plural t :has-determiner "THE" :raw-text
    "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv20391 :isa be :subject mv20390 :predicate mv20402 :present "PRESENT")
   (:var mv20390 :isa what)
   (:var mv20402 :isa transcription-factor :plural t :predication mv20394 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20394 :isa regulate :agent mv20402 :that-rel t :object mv20400 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20400 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv20399 mv20398))
   (:var mv20399 :isa bio-entity :name "EELK1")
   (:var mv20398 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv20408 :isa be :subject mv20407 :predicate mv20420 :present "PRESENT")
   (:var mv20407 :isa what)
   (:var mv20420 :isa transcription-factor :plural t :predication mv20411 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20411 :isa regulate :agent mv20420 :that-rel t :object mv20418 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20418 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20412 mv20413 mv20417 mv20405 mv20406))
   (:var mv20412 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20413 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20417 :isa bio-entity :name "STAAT3")
   (:var mv20405 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20406 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv20427 :isa be :subject mv20426 :predicate mv20436 :present "PRESENT")
   (:var mv20426 :isa what)
   (:var mv20436 :isa transcription-factor :plural t :predication mv20430 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20430 :isa regulate :agent mv20436 :that-rel t :object mv20434 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20434 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20431 mv20432 mv20423 mv20424 mv20425))
   (:var mv20431 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20432 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20423 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20424 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20425 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv20441 :isa be :subject mv20440 :predicate mv20454 :present "PRESENT")
   (:var mv20440 :isa what)
   (:var mv20454 :isa regulator :plural t :theme mv20450 :has-determiner "THE" :context mv20443
    :raw-text "regulators")
   (:var mv20450 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv20437 mv20438 mv20448 mv20439))
   (:var mv20437 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv20438 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv20448 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv20439 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv20443 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv20465 :isa regulate :object mv20464 :agent mv20462 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20464 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20455 :raw-text
    "genes")
   (:var mv20455 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv20462 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv20470 :isa regulate :|affected-process-OR-object| mv20467 :agent mv20469 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20467 :isa what)
   (:var mv20469 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv20474 :isa regulate :|affected-process-OR-object| mv20471 :|agent-OR-cause| mv20473
    :organ mv20476 :present "PRESENT" :raw-text "regulate")
   (:var mv20471 :isa what) (:var mv20473 :isa pronoun/inanimate :word "it")
   (:var mv20476 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv20482 :isa target :|affected-process-OR-object| mv20479 :agent mv20478 :present
    "PRESENT" :raw-text "target")
   (:var mv20479 :isa what)
   (:var mv20478 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv20486 :isa regulate :|affected-process-OR-object| mv20484 :agent mv20483 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20484 :isa what)
   (:var mv20483 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv20490 :isa regulate :|affected-process-OR-object| mv20488 :agent mv20487 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20488 :isa what)
   (:var mv20487 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv20494 :isa regulate :|affected-process-OR-object| mv20492 :agent mv20491 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20492 :isa what)
   (:var mv20491 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv20498 :isa regulate :|affected-process-OR-object| mv20495 :agent mv20497 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20495 :isa what)
   (:var mv20497 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv20501 :isa downregulate :|agent-OR-cause| mv20500 :object mv20499 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv20500 :isa what)
   (:var mv20499 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv20515 :isa bio-use :patient mv20504 :modal mv20505 :agent mv20506 :theme mv20514
    :present "PRESENT" :raw-text "use")
   (:var mv20504 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv20505 :isa could)
   (:var mv20506 :isa interlocutor :name "speaker")
   (:var mv20514 :isa target :object mv20502 :raw-text "target")
   (:var mv20502 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv20527 :isa bio-use :object mv20518 :modal mv20519 :agent mv20520 :purpose mv20516
    :present "PRESENT" :raw-text "use")
   (:var mv20518 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv20519 :isa should)
   (:var mv20520 :isa interlocutor :name "speaker")
   (:var mv20516 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv20532 :isa be :subject mv20536 :predicate mv20538 :present "PRESENT")
   (:var mv20536 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20538 :isa inhibitor :plural t :protein mv20528 :raw-text "inhibitors")
   (:var mv20528 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv20543 :isa inhibit :agent mv20544 :object mv20539 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv20544 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20539 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv20548 :isa regulate :agent mv20550 :object mv20549 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20550 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20549 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv20555 :isa target :agent mv20557 :object mv20556 :present "PRESENT" :raw-text "target")
   (:var mv20557 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20556 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv20562 :isa be :subject mv20566 :predicate mv20563 :present "PRESENT")
   (:var mv20566 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20563 :isa downstream-segment :pathwaycomponent mv20558 :raw-text "downstream")
   (:var mv20558 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv20581 :isa copular-predication-of-pp :item mv20576 :value mv20580 :prep "IN" :predicate
    mv20572)
   (:var mv20576 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20580 :isa gene :plural t :context mv20568 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20568 :isa signaling-pathway :has-determiner "THE" :modifier mv20575 :raw-text
    "signaling pathway")
   (:var mv20575 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20572 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv20599 :isa copular-predication-of-pp :item mv20592 :value mv20598 :prep "IN" :predicate
    mv20588)
   (:var mv20592 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20598 :isa gene :plural t :context mv20594 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20594 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv20591 :raw-text
    "signaling pathways")
   (:var mv20591 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20588 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv20614 :isa copular-predication-of-pp :item mv20609 :value mv20613 :prep "IN" :predicate
    mv20605)
   (:var mv20609 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20613 :isa gene :plural t :context mv20608 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20608 :isa pathway :has-determiner "THE" :non-cellular-location mv20601 :raw-text
    "pathway")
   (:var mv20601 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv20605 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv20629 :isa copular-predication-of-pp :item mv20624 :value mv20628 :prep "IN" :predicate
    mv20620)
   (:var mv20624 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20628 :isa gene :plural t :context mv20616 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20616 :isa signaling-pathway :has-determiner "THE" :modifier mv20623 :raw-text
    "signaling pathway")
   (:var mv20623 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv20620 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv20642 :isa involve :object mv20641 :|context-OR-theme| mv20640 :present "PRESENT")
   (:var mv20641 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20640 :isa pathway :has-determiner "THE" :modifier mv20632 :raw-text "pathway")
   (:var mv20632 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv20654 :isa involve :object mv20653 :|context-OR-theme| mv20652 :present "PRESENT")
   (:var mv20653 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20652 :isa pathway :has-determiner "THE" :modifier mv20651 :raw-text "pathway")
   (:var mv20651 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv20666 :isa involve :object mv20665 :|context-OR-theme| mv20664 :present "PRESENT")
   (:var mv20665 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20664 :isa pathway :has-determiner "THE" :modifier mv20656 :raw-text "pathway")
   (:var mv20656 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv20678 :isa involve :object mv20677 :|context-OR-theme| mv20676 :present "PRESENT")
   (:var mv20677 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20676 :isa pathway :has-determiner "THE" :non-cellular-location mv20668 :raw-text
    "pathway")
   (:var mv20668 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv20694 :isa regulate :object mv20693 :agent mv20692 :present "PRESENT" :superlative
    mv20687 :adverb mv20688 :raw-text "regulated")
   (:var mv20693 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20692 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv20680 mv20681 mv20682))
   (:var mv20680 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv20681 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv20682 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv20687 :isa superlative-quantifier :name "most")
   (:var mv20688 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv20711 :isa regulate :object mv20710 :agent mv20709 :present "PRESENT" :superlative
    mv20704 :adverb mv20705 :raw-text "regulated")
   (:var mv20710 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20709 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p"
    :type micro-rna :number 4 :items (mv20696 mv20697 mv20698 mv20699))
   (:var mv20696 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv20697 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv20698 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv20699 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv20704 :isa superlative-quantifier :name "most")
   (:var mv20705 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv20728 :isa regulate :object mv20727 :agent mv20726 :present "PRESENT" :superlative
    mv20721 :adverb mv20722 :raw-text "regulated")
   (:var mv20727 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20726 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv20713 mv20714 mv20715 mv20716))
   (:var mv20713 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv20714 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv20715 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv20716 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv20721 :isa superlative-quantifier :name "most")
   (:var mv20722 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv20738 :isa regulate :object mv20737 :agent mv20736 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20737 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20736 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv20751 :isa regulate :object mv20750 :agent mv20749 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20750 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20749 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20740 mv20748))
   (:var mv20740 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20748 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv20764 :isa regulate :object mv20763 :agent mv20762 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20763 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20762 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv20753 mv20754))
   (:var mv20753 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv20754 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv20776 :isa regulate :object mv20775 :agent mv20774 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20775 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20774 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv20786 :isa regulate :object mv20785 :agent mv20784 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20785 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20784 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv20799 :isa regulate :object mv20798 :agent mv20797 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20798 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20797 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv20788 mv20796))
   (:var mv20788 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20796 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv20809 :isa target :object mv20808 :cause mv20801 :present "PRESENT" :raw-text
    "targeted")
   (:var mv20808 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20801 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv20826 :isa copular-predication-of-pp :item mv20821 :value mv20825 :prep "IN" :predicate
    mv20815)
   (:var mv20821 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20825 :isa gene :plural t :context mv20811 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20811 :isa signaling-pathway :has-determiner "THE" :modifier mv20820 :raw-text
    "signaling pathway")
   (:var mv20820 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20815 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv20838 :isa bio-use :object mv20837 :context mv20828 :present "PRESENT" :raw-text "used")
   (:var mv20837 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20828 :isa signaling-pathway :has-determiner "THE" :modifier mv20836 :raw-text
    "signaling pathway")
   (:var mv20836 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20846 :isa target :object mv20847 :cause mv20840 :present "PRESENT" :raw-text "target")
   (:var mv20847 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20840 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv20854 :isa target :object mv20855 :agent mv20848 :present "PRESENT" :raw-text "target")
   (:var mv20855 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20848 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv20862 :isa target :object mv20863 :agent mv20856 :present "PRESENT" :raw-text "target")
   (:var mv20863 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20856 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv20869 :isa upregulate :object mv20870 :agent mv20864 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv20870 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20864 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv20876 :isa regulate :object mv20881 :agent mv20871 :cell-type mv20882 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20881 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20871 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20882 :isa cell-type :plural t :non-cellular-location mv20878)
   (:var mv20878 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv20889 :isa regulate :object mv20892 :agent mv20884 :organ mv20891 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20892 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20884 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20891 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv20899 :isa regulate :object mv20902 :agent mv20894 :organ mv20901 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20902 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20894 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20901 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv20909 :isa regulate :object mv20910 :agent mv20904 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20910 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20904 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv20919 :isa regulate :object mv20922 :agent mv20911 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20922 :isa gene :plural t :organ mv20917 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20917 :isa liver :has-determiner "THE")
   (:var mv20911 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv20927 :isa be :subject mv20931 :predicate mv20928 :present "PRESENT")
   (:var mv20931 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20928 :isa upstream-segment :modifier mv20923 :raw-text "upstream")
   (:var mv20923 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream of?"
   (:var mv20936 :isa be :subject mv20940 :predicate mv20937 :present "PRESENT")
   (:var mv20940 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20937 :isa upstream-segment :pathwaycomponent mv20940 :modifier mv20932 :raw-text
    "upstream")
   (:var mv20932 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv20947 :isa be :subject mv20952 :predicate mv20949 :present "PRESENT")
   (:var mv20952 :isa gene :plural t :predication mv20944 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20944 :isa regulate :object mv20952 :agent mv20946 :past "PAST" :raw-text "regulated")
   (:var mv20946 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv20949 :isa kinase :plural t :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv20959 :isa be :subject mv20964 :predicate mv20961 :present "PRESENT")
   (:var mv20964 :isa gene :plural t :predication mv20957 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20957 :isa regulate :object mv20964 :agent mv20953 :past "PAST" :raw-text "regulated")
   (:var mv20953 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20961 :isa kinase :plural t :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv20970 :isa involve :theme mv20975 :object mv20973 :present "PRESENT")
   (:var mv20975 :isa pathway :plural t :has-determiner "WHAT" :modifier mv20967 :raw-text
    "pathways")
   (:var mv20967 :isa immune :name "immune")
   (:var mv20973 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv20971 mv20965))
   (:var mv20971 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20965 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv20980 :isa involve :theme mv20983 :object mv20981 :present "PRESENT")
   (:var mv20983 :isa pathway :plural t :has-determiner "WHAT" :modifier mv20977 :raw-text
    "pathways")
   (:var mv20977 :isa immune :name "immune")
   (:var mv20981 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv20989 :isa involve :theme mv20994 :object mv20992 :present "PRESENT")
   (:var mv20994 :isa pathway :plural t :has-determiner "WHAT" :modifier mv20986 :raw-text
    "pathways")
   (:var mv20986 :isa immune :name "immune")
   (:var mv20992 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv20990 mv20984))
   (:var mv20990 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20984 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv21001 :isa involve :theme mv21005 :object mv21003 :present "PRESENT")
   (:var mv21005 :isa pathway :plural t :has-determiner "WHAT" :modifier mv20998 :raw-text
    "pathways")
   (:var mv20998 :isa immune :name "immune")
   (:var mv21003 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv20995 mv20996))
   (:var mv20995 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv20996 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv21007 :isa inhibit :|agent-OR-cause| mv21006 :object mv21008 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv21006 :isa what)
   (:var mv21008 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv21011 :isa be :subject mv21010 :predicate mv21009 :present "PRESENT")
   (:var mv21010 :isa what)
   (:var mv21009 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv21013 :isa be :subject mv21012 :predicate mv21014 :present "PRESENT")
   (:var mv21012 :isa what)
   (:var mv21014 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv21017 :isa be :subject mv21016 :predicate mv21018 :present "PRESENT")
   (:var mv21016 :isa what)
   (:var mv21018 :isa downstream-segment :pathwaycomponent mv21015 :raw-text "downstream")
   (:var mv21015 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv21023 :isa be :subject mv21022 :predicate mv21024 :present "PRESENT")
   (:var mv21022 :isa what)
   (:var mv21024 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv21026 :isa be :subject mv21025 :predicate mv21027 :present "PRESENT")
   (:var mv21025 :isa what) (:var mv21027 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv21033 :isa regulate :|affected-process-OR-object| mv21029 :agent mv21028 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21029 :isa what)
   (:var mv21028 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv21037 :isa be :subject mv21036 :predicate mv21043 :present "PRESENT")
   (:var mv21036 :isa what) (:var mv21043 :isa evidence :statement mv21042 :has-determiner "THE")
   (:var mv21042 :isa decrease :agent mv21041 :object mv21035 :present "PRESENT" :raw-text
    "decreases")
   (:var mv21041 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21035 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv21046 :isa be :subject mv21045 :predicate mv21056 :present "PRESENT")
   (:var mv21045 :isa what) (:var mv21056 :isa evidence :statement mv21051 :has-determiner "THE")
   (:var mv21051 :isa decrease :agent mv21050 :|affected-process-OR-object| mv21053 :present
    "PRESENT" :raw-text "decreases")
   (:var mv21050 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21053 :isa bio-amount :measured-item mv21044 :has-determiner "THE" :raw-text "amount")
   (:var mv21044 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv21058 :isa be :subject mv21057 :predicate mv21060 :present "PRESENT")
   (:var mv21057 :isa what)
   (:var mv21060 :isa target-protein :treatment mv21063 :has-determiner "THE" :raw-text "target")
   (:var mv21063 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv21070 :isa regulate :object mv21071 :agent mv21065 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21071 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv21065 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv21080 :isa regulate :agent mv21085 :object mv21084 :present "PRESENT" :adverb mv21078
    :adverb mv21079 :raw-text "regulate")
   (:var mv21085 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv21084 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv21081 mv21082 mv21072 mv21073 mv21074))
   (:var mv21081 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21082 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21072 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21073 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21074 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv21078 :isa superlative-quantifier :name "most")
   (:var mv21079 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv21092 :isa regulate :agent mv21097 :object mv21096 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21097 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv21096 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv21093 mv21094 mv21086 mv21087 mv21088))
   (:var mv21093 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21094 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21086 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21087 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21088 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv21106 :isa regulate :object mv21105 :agent mv21098 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21105 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv21098 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv21113 :isa regulate :agent mv21119 :object mv21123 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21119 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv21123 :isa gene :plural t :context mv21121 :raw-text "genes")
   (:var mv21121 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv21118 :raw-text
    "signaling pathways")
   (:var mv21118 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv21127 :isa bio-entity :has-determiner "WHAT" :name "pahtways"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv21140 :isa copular-predication :item mv21138 :value mv21133 :predicate mv21132)
   (:var mv21138 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21133 :isa common :theme mv21137)
   (:var mv21137 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv21128 mv21136))
   (:var mv21128 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21136 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21132 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv21144 :isa involve :theme mv21146 :object mv21145 :present "PRESENT")
   (:var mv21146 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21145 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv21151 :isa involve :theme mv21155 :object mv21154 :present "PRESENT")
   (:var mv21155 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21154 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv21152 mv21147))
   (:var mv21152 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21147 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv21160 :isa involve :theme mv21163 :object mv21156 :present "PRESENT")
   (:var mv21163 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21156 :isa transcription-factor :has-determiner "THE" :modifier mv21162 :raw-text
    "transcription factor")
   (:var mv21162 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv21175 :isa collection :raw-text "What pathways utilize srf and is srf" :type bio-utilize
    :number 2 :items (mv21167 mv21170))
   (:var mv21167 :isa bio-utilize :agent mv21174 :object mv21168 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21174 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21168 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21170 :isa be :subject mv21174 :predicate mv21171 :present "PRESENT")
   (:var mv21171 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What proteins are in the MAPK family?"
   (:var mv21191 :isa copular-predication-of-pp :item mv21185 :value mv21190 :prep "IN" :predicate
    mv21179)
   (:var mv21185 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21190 :isa protein :plural t :in-family mv21186 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv21186 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
   (:var mv21179 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv21201 :isa target :object mv21200 :cause mv21193 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21200 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21193 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv21209 :isa target :object mv21210 :agent mv21203 :present "PRESENT" :raw-text "target")
   (:var mv21210 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21203 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv21217 :isa target :object mv21218 :cause mv21211 :present "PRESENT" :raw-text "target")
   (:var mv21218 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21211 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv21225 :isa target :object mv21226 :agent mv21223 :present "PRESENT" :raw-text "target")
   (:var mv21226 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21223 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv21232 :isa lead :agent mv21237 :theme mv21235 :modal mv21231 :raw-text "lead")
   (:var mv21237 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21235 :isa development :disease mv21227 :has-determiner "THE" :raw-text "development")
   (:var mv21227 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv21231 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv21245 :isa lead :agent mv21250 :theme mv21248 :modal mv21244 :raw-text "lead")
   (:var mv21250 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21248 :isa development :disease mv21240 :has-determiner "THE" :raw-text "development")
   (:var mv21240 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv21244 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv21257 :isa involve :theme mv21261 :object mv21259 :present "PRESENT")
   (:var mv21261 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21254 :raw-text
    "pathways")
   (:var mv21254 :isa database :name "Reactome" :uid "Reactome")
   (:var mv21259 :isa signal :modifier mv21258 :raw-text "signaling")
   (:var mv21258 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv21263 :isa regulate :|agent-OR-cause| mv21262 :object mv21264 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21262 :isa what)
   (:var mv21264 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv21267 :isa regulate :|agent-OR-cause| mv21266 :object mv21265 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21266 :isa what)
   (:var mv21265 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv21270 :isa regulate :|agent-OR-cause| mv21269 :object mv21268 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21269 :isa what)
   (:var mv21268 :isa protein :organ mv21272 :raw-text "smurf2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21272 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv21285 :isa share :object mv21284 :participant mv21283 :present "PRESENT" :raw-text
    "shared")
   (:var mv21284 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21283 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv21281 mv21276))
   (:var mv21281 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv21276 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv21298 :isa share :object mv21297 :participant mv21296 :present "PRESENT" :raw-text
    "shared")
   (:var mv21297 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21296 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv21289 mv21295))
   (:var mv21289 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21295 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv21312 :isa share :object mv21311 :participant mv21310 :present "PRESENT" :raw-text
    "shared")
   (:var mv21311 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21310 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv21302 mv21303 mv21309))
   (:var mv21302 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21303 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21309 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?"
   (:var mv21321 :isa tissue :plural t :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv21325 :isa bio-produce :agent mv21322 :object mv21323 :present "PRESENT" :raw-text
    "produces")
   (:var mv21322 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv21323 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv21329 :isa transcribe :agent mv21326 :object mv21327 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv21326 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv21327 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21350 :isa copular-predication :item mv21346 :value mv21338 :predicate mv21337)
   (:var mv21346 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21338 :isa common :theme mv21348)
   (:var mv21348 :isa gene :plural t :has-determiner "THE" :expresses mv21345 :raw-text "genes")
   (:var mv21345 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21332 mv21333 mv21341 mv21334 mv21335))
   (:var mv21332 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21333 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21341 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21334 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21335 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21337 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21369 :isa copular-predication :item mv21365 :value mv21358 :predicate mv21357)
   (:var mv21365 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21358 :isa common :theme mv21367)
   (:var mv21367 :isa gene :plural t :has-determiner "THE" :expresses mv21364 :raw-text "genes")
   (:var mv21364 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21353 mv21354 mv21355))
   (:var mv21353 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21354 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21355 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21357 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv21375 :isa regulate :object mv21376 :agent mv21370 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21376 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21370 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv21389 :isa copular-predication :item mv21386 :value mv21381 :predicate mv21380)
   (:var mv21386 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21381 :isa common :theme mv21387)
   (:var mv21387 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv21380 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21410 :isa copular-predication :item mv21406 :value mv21392 :predicate mv21398)
   (:var mv21406 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21392 :isa in-common :theme mv21408)
   (:var mv21408 :isa gene :plural t :has-determiner "THE" :expresses mv21405 :raw-text "genes")
   (:var mv21405 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21393 mv21394 mv21401 mv21395 mv21396))
   (:var mv21393 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21394 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21401 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21395 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21396 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21398 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21429 :isa copular-predication :item mv21425 :value mv21413 :predicate mv21418)
   (:var mv21425 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21413 :isa in-common :theme mv21427)
   (:var mv21427 :isa gene :plural t :has-determiner "THE" :expresses mv21424 :raw-text "genes")
   (:var mv21424 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21414 mv21415 mv21416))
   (:var mv21414 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21415 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21416 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21418 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv21434 :isa be :subject mv21440 :predicate mv21443 :present "PRESENT")
   (:var mv21440 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21443 :isa regulator :plural t :theme mv21432 :raw-text "regulators")
   (:var mv21432 :isa protein :organ mv21439 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21439 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv21448 :isa be :subject mv21452 :predicate mv21454 :present "PRESENT")
   (:var mv21452 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21454 :isa regulator :plural t :theme mv21446 :raw-text "regulators")
   (:var mv21446 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv21470 :isa share :object mv21469 :participant mv21472 :present "PRESENT" :raw-text
    "shared")
   (:var mv21469 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21472 :isa gene :plural t :has-determiner "THE" :expresses mv21468 :raw-text "genes")
   (:var mv21468 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv21463 mv21464 mv21457))
   (:var mv21463 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21464 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv21457 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv21478 :isa regulate :agent mv21481 :object mv21476 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21481 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21476 :isa protein :organ mv21480 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21480 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv21487 :isa regulate :agent mv21488 :object mv21485 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21488 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21485 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv21492 :isa regulate :agent mv21494 :object mv21493 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21494 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21493 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv21498 :isa regulate :agent mv21506 :theme mv21505 :object mv21500 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21506 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21505 :isa bio-entity :has-determiner "THE" :modifier mv21503 :cellular-process mv21504
    :name "pathwya")
   (:var mv21503 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv21504 :isa signal :raw-text "signaling")
   (:var mv21500 :isa gene :plural t :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv21512 :isa regulate :agent mv21513 :object mv21510 :past "PAST" :raw-text "regulated")
   (:var mv21513 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21510 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv21518 :isa transcribe :agent mv21519 :object mv21516 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv21519 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21516 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv21522 :isa upregulate :|agent-OR-cause| mv21521 :object mv21520 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv21521 :isa what)
   (:var mv21520 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv21528 :isa gene-transcript-express :location mv21524 :object mv21523 :past "PAST"
    :raw-text "expressed")
   (:var mv21524 :isa where)
   (:var mv21523 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv21533 :isa involve :theme mv21536 :object mv21534 :present "PRESENT")
   (:var mv21536 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21530 :raw-text
    "pathways")
   (:var mv21530 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21534 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv21542 :isa bio-use :agent mv21545 :object mv21543 :present "PRESENT" :raw-text "use")
   (:var mv21545 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21538 :raw-text
    "pathways")
   (:var mv21538 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21543 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv21550 :isa regulate :agent mv21551 :object mv21548 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21551 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21548 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv21555 :isa regulate :|agent-OR-cause| mv21552 :object mv21556 :present "PRESENT" :adverb
    mv21553 :raw-text "regulate")
   (:var mv21552 :isa which)
   (:var mv21556 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21553 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv21568 :isa regulate :object mv21567 :agent mv21557 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21567 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv21559 :raw-text
    "genes")
   (:var mv21559 :isa apoptosis :raw-text "apoptotic")
   (:var mv21557 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv21576 :isa be :subject mv21581 :predicate mv21577 :present "PRESENT")
   (:var mv21581 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv21572 :raw-text
    "genes")
   (:var mv21572 :isa apoptosis :raw-text "apoptotic")
   (:var mv21577 :isa upstream-segment :pathwaycomponent mv21581 :modifier mv21570 :raw-text
    "upstream")
   (:var mv21570 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv21590 :isa target :object mv21589 :agent mv21582 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21589 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv21582 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv21598 :isa be :subject mv21603 :predicate mv21600 :present "PRESENT")
   (:var mv21603 :isa gene :plural t :predication mv21596 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv21596 :isa regulate :object mv21603 :agent mv21592 :past "PAST" :raw-text "regulated")
   (:var mv21592 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21600 :isa kinase :plural t :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21622 :isa share :object mv21621 :participant mv21623 :present "PRESENT" :raw-text
    "shared")
   (:var mv21621 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21609 :raw-text
    "pathways")
   (:var mv21609 :isa immune :name "immune")
   (:var mv21623 :isa gene :plural t :expresses mv21619 :raw-text "genes")
   (:var mv21619 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21604 mv21605 mv21615 mv21606 mv21607))
   (:var mv21604 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21605 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21615 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21606 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21607 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21642 :isa share :object mv21641 :participant mv21644 :present "PRESENT" :raw-text
    "shared")
   (:var mv21641 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21629 :raw-text
    "pathways")
   (:var mv21629 :isa immune :name "immune")
   (:var mv21644 :isa gene :plural t :has-determiner "THE" :expresses mv21639 :raw-text "genes")
   (:var mv21639 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21625 mv21626 mv21627))
   (:var mv21625 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21626 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21627 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv21651 :isa bio-utilize :agent mv21657 :object mv21653 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21657 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21648 :raw-text
    "pathways")
   (:var mv21648 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21653 :isa gene :plural t :predication mv21654 :raw-text "genes")
   (:var mv21654 :isa regulate :object mv21653 :agent mv21646 :past "PAST" :raw-text "regulated")
   (:var mv21646 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv21664 :isa bio-utilize :agent mv21667 :object mv21665 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21667 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21661 :raw-text
    "pathways")
   (:var mv21661 :isa database :name "Reactome" :uid "Reactome")
   (:var mv21665 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv21672 :isa bio-utilize :agent mv21675 :object mv21673 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21675 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21669 :raw-text
    "pathways")
   (:var mv21669 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21673 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv21683 :isa regulate :|affected-process-OR-object| mv21679 :agent mv21676 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21679 :isa pronoun/plural :quantifier mv21677 :word "them") (:var mv21677 :isa which)
   (:var mv21676 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv21693 :isa gene-transcript-express :object mv21688 :organ mv21692 :present "PRESENT"
    :raw-text "expressed")
   (:var mv21688 :isa these :quantifier mv21686 :word "these") (:var mv21686 :isa which)
   (:var mv21692 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv21706 :isa copular-predication-of-pp :item mv21698 :value mv21704 :prep mv21700
    :predicate mv21699)
   (:var mv21698 :isa these :quantifier mv21696 :word "these") (:var mv21696 :isa which)
   (:var mv21704 :isa pathway :plural t :modifier mv21701 :raw-text "pathways")
   (:var mv21701 :isa immune :name "immune") (:var mv21700 :isa in :word "in")
   (:var mv21699 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv21713 :isa phosphorylate :substrate mv21714 :agent mv21712 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv21714 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21712 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv21718 :isa be :subject mv21717 :predicate mv21720 :present "PRESENT")
   (:var mv21717 :isa these :quantifier mv21715 :word "these") (:var mv21715 :isa which)
   (:var mv21720 :isa kinase :plural t :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv21729 :isa regulate :|affected-process-OR-object| mv21725 :agent mv21722 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21725 :isa those :quantifier mv21723 :word "those") (:var mv21723 :isa which)
   (:var mv21722 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv21739 :isa regulate :|affected-process-OR-object| mv21735 :agent mv21732 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21735 :isa these :quantifier mv21733 :word "these") (:var mv21733 :isa which)
   (:var mv21732 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv21749 :isa regulate :|affected-process-OR-object| mv21744 :agent mv21748 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21744 :isa these :quantifier mv21742 :word "these") (:var mv21742 :isa which)
   (:var mv21748 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21768 :isa share :object mv21767 :participant mv21769 :present "PRESENT" :raw-text
    "shared")
   (:var mv21767 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv21769 :isa gene :plural t :expresses mv21766 :raw-text "genes")
   (:var mv21766 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21752 mv21753 mv21762 mv21754 mv21755))
   (:var mv21752 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21753 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21762 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21754 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21755 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv21783 :isa share :object mv21782 :participant mv21781 :present "PRESENT" :raw-text
    "shared")
   (:var mv21782 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv21781 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv21771 mv21772 mv21773))
   (:var mv21771 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21772 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21773 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21802 :isa share :object mv21801 :participant mv21804 :present "PRESENT" :raw-text
    "shared")
   (:var mv21801 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv21804 :isa gene :plural t :has-determiner "THE" :expresses mv21800 :raw-text "genes")
   (:var mv21800 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21785 mv21786 mv21796 mv21787 mv21788))
   (:var mv21785 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21786 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21796 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21787 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21788 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv21811 :isa involve :theme mv21814 :object mv21813 :present "PRESENT")
   (:var mv21814 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv21813 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv21806 mv21807))
   (:var mv21806 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv21807 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv21818 :isa involve :theme mv21820 :object mv21819 :present "PRESENT")
   (:var mv21820 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv21819 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv21825 :isa bio-use :agent mv21827 :object mv21826 :present "PRESENT" :raw-text "use")
   (:var mv21827 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv21826 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv21832 :isa bio-use :agent mv21834 :object mv21833 :present "PRESENT" :raw-text "use")
   (:var mv21834 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv21833 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv21838 :isa bio-utilize :agent mv21840 :object mv21839 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21840 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv21839 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv21844 :isa bio-utilize :agent mv21848 :object mv21849 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21848 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv21849 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv21858 :isa target :object mv21857 :agent mv21850 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21857 :isa protein :plural t :has-determiner "WHICH" :raw-text "proteins")
   (:var mv21850 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv21864 :isa bio-utilize :agent mv21867 :object mv21865 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21867 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21861 :raw-text
    "pathways")
   (:var mv21861 :isa database :name "Reactome" :uid "Reactome")
   (:var mv21865 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv21881 :isa copular-predication-of-pp :item mv21876 :value mv21880 :prep "IN" :predicate
    mv21872)
   (:var mv21876 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv21880 :isa transcription-factor :plural t :in-pathway mv21870 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv21870 :isa signaling-pathway :has-determiner "THE" :modifier mv21875 :raw-text
    "signaling pathway")
   (:var mv21875 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv21872 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv21887 :isa regulate :agent mv21891 :object mv21885 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21891 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv21885 :isa protein :organ mv21890 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv21890 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv21897 :isa regulate :agent mv21898 :object mv21895 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21898 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv21895 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv21906 :isa explicit-suggestion :suggestion mv21902 :marker let-as-directive)
   (:var mv21902 :isa move-to :|at-relative-location-OR-goal| mv21904 :theme mv21900 :present
    "PRESENT")
   (:var mv21904 :isa top-qua-location)
   (:var mv21900 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv21915 :isa explicit-suggestion :suggestion mv21909 :marker let-as-directive)
   (:var mv21909 :isa show :at-relative-location mv21913 :|statement-OR-theme| mv21908 :present
    "PRESENT")
   (:var mv21913 :isa top-qua-location)
   (:var mv21908 :isa protein :has-determiner "THE" :predication mv21911 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv21911 :isa phosphorylate :substrate mv21908 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv21918 :isa be :subject mv21917 :predicate mv21930 :present "PRESENT")
   (:var mv21917 :isa what)
   (:var mv21930 :isa upstream-segment :plural t :pathwaycomponent mv21926 :has-determiner "THE"
    :predication mv21920 :raw-text "upstreams")
   (:var mv21926 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv21916 mv21925))
   (:var mv21916 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv21925 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv21920 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv21938 :isa polar-question :statement mv21933)
   (:var mv21933 :isa gene-transcript-express :object mv21931 :organ mv21936 :past "PAST" :raw-text
    "expressed")
   (:var mv21931 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21936 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv21945 :isa polar-question :statement mv21941)
   (:var mv21941 :isa gene-transcript-express :object mv21939 :organ mv21943 :past "PAST" :raw-text
    "expressed")
   (:var mv21939 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21943 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv21947 :isa show :at-relative-location mv21950 :|statement-OR-theme| mv21946 :present
    "PRESENT")
   (:var mv21950 :isa top-qua-location)
   (:var mv21946 :isa protein :predication mv21948 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv21948 :isa phosphorylate :substrate mv21946 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv21954 :isa be :subject mv21953 :predicate mv21966 :present "PRESENT")
   (:var mv21953 :isa what)
   (:var mv21966 :isa upstream-segment :plural t :pathwaycomponent mv21962 :has-determiner "THE"
    :predication mv21956 :raw-text "upstreams")
   (:var mv21962 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv21952 mv21961))
   (:var mv21952 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv21961 :isa bio-entity :name "BRA") (:var mv21956 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv21974 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv21968 mv21972))
   (:var mv21968 :isa bio-activate :agent mv21967 :object mv21969 :present "PRESENT" :raw-text
    "activates")
   (:var mv21967 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv21969 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv21972 :isa bio-activate :agent mv21971 :object mv21973 :present "PRESENT" :raw-text
    "activates")
   (:var mv21971 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv21973 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv21976 :isa be :subject mv21975 :predicate mv21978 :present "PRESENT")
   (:var mv21975 :isa what)
   (:var mv21978 :isa path :end mv21982 :start mv21980 :has-determiner "THE")
   (:var mv21982 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv21980 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv21985 :isa remove :object mv21992 :present "PRESENT" :raw-text "remove")
   (:var mv21992 :isa fact :statement mv21990 :has-determiner "THE")
   (:var mv21990 :isa bio-activate :agent mv21989 :object mv21991 :present "PRESENT" :raw-text
    "activates")
   (:var mv21989 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv21991 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv22000 :isa explicit-suggestion :suggestion mv21995 :marker let-as-directive)
   (:var mv21995 :isa show :at-relative-location mv21998 :|statement-OR-theme| mv21994 :present
    "PRESENT")
   (:var mv21998 :isa top-qua-location)
   (:var mv21994 :isa protein :predication mv21996 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv21996 :isa phosphorylate :substrate mv21994 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv22004 :isa be :subject mv22003 :predicate mv22010 :present "PRESENT")
   (:var mv22003 :isa what)
   (:var mv22010 :isa positive-regulator :plural t :theme mv22008 :raw-text "positive regulators")
   (:var mv22008 :isa gene :has-determiner "THE" :expresses mv22007 :raw-text "gene")
   (:var mv22007 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv22015 :isa regulate :agent mv22018 :object mv22016 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22018 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22016 :isa protein :organ mv22013 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv22013 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv22031 :isa polar-question :statement mv22028)
   (:var mv22028 :isa there-exists :value mv22030 :predicate mv22021)
   (:var mv22030 :isa drug :plural t :predication mv22026 :quantifier mv22023 :raw-text "drugs")
   (:var mv22026 :isa inhibit :agent mv22030 :object mv22027 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv22027 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22023 :isa any :word "any") (:var mv22021 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv22043 :isa polar-question :statement mv22040)
   (:var mv22040 :isa there-exists :value mv22042 :predicate mv22033)
   (:var mv22042 :isa drug :plural t :predication mv22038 :quantifier mv22035 :raw-text "drugs")
   (:var mv22038 :isa target :agent mv22042 :object mv22039 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv22039 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22035 :isa any :word "any") (:var mv22033 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv22065 :isa polar-question :statement mv22058)
   (:var mv22058 :isa there-exists :value mv22064 :predicate mv22046)
   (:var mv22064 :isa gene :plural t :predication mv22060 :organ mv22053 :quantifier mv22048
    :raw-text "genes")
   (:var mv22060 :isa regulate :object mv22064 :that-rel t :agent mv22044 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22044 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22053 :isa liver :has-determiner "THE") (:var mv22048 :isa any :word "any")
   (:var mv22046 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv22086 :isa polar-question :statement mv22080)
   (:var mv22080 :isa there-exists :value mv22085 :predicate mv22068)
   (:var mv22085 :isa gene :plural t :predication mv22073 :quantifier mv22070 :raw-text "genes")
   (:var mv22073 :isa involve :object mv22085 :theme mv22075 :past "PAST")
   (:var mv22075 :isa apoptosis :predication mv22082 :raw-text "apoptosis")
   (:var mv22082 :isa regulate :affected-process mv22075 :that-rel t :agent mv22066 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22066 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22070 :isa any :word "any") (:var mv22068 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv22098 :isa there-exists :predicate mv22089)
   (:var mv22089 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv22111 :isa polar-question :statement mv22107)
   (:var mv22107 :isa there-exists :value mv22110 :predicate mv22101)
   (:var mv22110 :isa inhibitor :plural t :|target-OR-protein| mv22099 :quantifier mv22103
    :raw-text "inhibitors")
   (:var mv22099 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv22103 :isa any :word "any") (:var mv22101 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf"
   (:var mv22126 :isa polar-question :statement mv22122)
   (:var mv22122 :isa there-exists :value mv22125 :predicate mv22114)
   (:var mv22125 :isa gene :plural t :predication mv22118 :raw-text "genes")
   (:var mv22118 :isa regulate :object mv22125 :agent mv22123 :past "PAST" :raw-text "regulated")
   (:var mv22123 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22112 mv22121))
   (:var mv22112 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22121 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22114 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv22141 :isa polar-question :statement mv22131)
   (:var mv22131 :isa bio-find :agent mv22129 :object mv22127 :modal "CAN" :raw-text "find")
   (:var mv22129 :isa interlocutor :name "hearer")
   (:var mv22127 :isa protein :quantifier mv22132 :cellular-process mv22133 :context mv22136
    :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22132 :isa any :word "any") (:var mv22133 :isa apoptosis :raw-text "apoptotic")
   (:var mv22136 :isa pathway :plural t :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?" (:var mv22143 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv22181 :isa polar-question :statement mv22180) (:var mv22180 :isa look-up :actor mv22162)
   (:var mv22162 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv22193 :isa polar-question :statement mv22185)
   (:var mv22185 :isa show :agent mv22184 :|statement-OR-theme| mv22192 :beneficiary mv22186 :modal
    "CAN")
   (:var mv22184 :isa interlocutor :name "hearer")
   (:var mv22192 :isa gene :plural t :predication mv22189 :raw-text "genes")
   (:var mv22189 :isa regulate :object mv22192 :agent mv22182 :past "PAST" :raw-text "regulated")
   (:var mv22182 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22186 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv22208 :isa polar-question :statement mv22197)
   (:var mv22197 :isa show :agent mv22196 :|statement-OR-theme| mv22207 :beneficiary mv22198 :modal
    "CAN")
   (:var mv22196 :isa interlocutor :name "hearer")
   (:var mv22207 :isa gene :plural t :predication mv22205 :raw-text "genes")
   (:var mv22205 :isa regulate :object mv22207 :that-rel t :agent mv22194 :modal "CAN" :raw-text
    "regulated")
   (:var mv22194 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22198 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv22218 :isa polar-question :statement mv22211)
   (:var mv22211 :isa show :agent mv22210 :|statement-OR-theme| mv22214 :beneficiary mv22212 :modal
    "CAN")
   (:var mv22210 :isa interlocutor :name "hearer")
   (:var mv22214 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv22212 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv22232 :isa polar-question :statement mv22222)
   (:var mv22222 :isa tell :agent mv22221 :theme mv22231 :beneficiary mv22223 :modal "CAN")
   (:var mv22221 :isa interlocutor :name "hearer")
   (:var mv22231 :isa gene :plural t :predication mv22227 :has-determiner "THE" :raw-text "genes")
   (:var mv22227 :isa regulate :object mv22231 :agent mv22219 :past "PAST" :raw-text "regulated")
   (:var mv22219 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22223 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv22245 :isa polar-question :statement mv22236)
   (:var mv22236 :isa tell :agent mv22235 :theme mv22244 :beneficiary mv22237 :modal "CAN")
   (:var mv22235 :isa interlocutor :name "hearer")
   (:var mv22244 :isa gene :plural t :predication mv22242 :has-determiner "THE" :raw-text "genes")
   (:var mv22242 :isa regulate :object mv22244 :that-rel t :agent mv22233 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22233 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22237 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv22262 :isa polar-question :statement mv22249)
   (:var mv22249 :isa tell :agent mv22248 :theme mv22261 :beneficiary mv22250 :modal "CAN")
   (:var mv22248 :isa interlocutor :name "hearer")
   (:var mv22261 :isa gene :plural t :predication mv22259 :has-determiner "THE" :raw-text "genes")
   (:var mv22259 :isa regulate :object mv22261 :that-rel t :agent mv22246 :modal "CAN" :raw-text
    "regulated")
   (:var mv22246 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22250 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv22280 :isa polar-question :statement mv22266)
   (:var mv22266 :isa tell :agent mv22265 :theme mv22279 :beneficiary mv22267 :modal "CAN")
   (:var mv22265 :isa interlocutor :name "hearer")
   (:var mv22279 :isa gene :plural t :predication mv22278 :has-determiner "THE" :raw-text "genes")
   (:var mv22278 :isa regulate :object mv22279 :agent mv22263 :modal mv22264 :raw-text "regulated")
   (:var mv22263 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22264 :isa can) (:var mv22267 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv22302 :isa polar-question :statement mv22286)
   (:var mv22286 :isa tell :agent mv22285 :theme mv22301 :beneficiary mv22287 :modal "CAN")
   (:var mv22285 :isa interlocutor :name "hearer")
   (:var mv22301 :isa transcription-factor :plural t :predication mv22299 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv22299 :isa share :wh-element mv22295 :wh-path nil :raw-text "shared" :modal mv22284
    :participant mv22294 :object mv22295)
   (:var mv22295 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22284 :isa can)
   (:var mv22294 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22283 mv22293))
   (:var mv22283 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22293 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22287 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv22321 :isa polar-question :statement mv22306)
   (:var mv22306 :isa tell :agent mv22305 :theme mv22320 :beneficiary mv22307 :modal "CAN")
   (:var mv22305 :isa interlocutor :name "hearer")
   (:var mv22320 :isa gene :plural t :predication mv22318 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv22318 :isa regulate :wh-element mv22314 :wh-path nil :raw-text "regulated" :modal
    mv22304 :agent mv22303 :object mv22314)
   (:var mv22314 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv22304 :isa can)
   (:var mv22303 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22307 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv22345 :isa polar-question :statement mv22325)
   (:var mv22325 :isa tell :agent mv22324 :theme mv22344 :beneficiary mv22326 :modal "CAN")
   (:var mv22324 :isa interlocutor :name "hearer")
   (:var mv22344 :isa gene :plural t :predication mv22342 :organ mv22332 :has-determiner "WHICH"
    :raw-text "genes")
   (:var mv22342 :isa regulate :wh-element mv22340 :wh-path nil :raw-text "regulated" :modal
    mv22323 :agent mv22322 :object mv22340)
   (:var mv22340 :isa gene :plural t :organ mv22332 :has-determiner "WHICH" :raw-text "genes")
   (:var mv22332 :isa liver :has-determiner "THE") (:var mv22323 :isa can)
   (:var mv22322 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22326 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv22357 :isa polar-question :statement mv22349)
   (:var mv22349 :isa tell :agent mv22348 :theme mv22356 :beneficiary mv22350 :modal "CAN")
   (:var mv22348 :isa interlocutor :name "hearer")
   (:var mv22356 :isa gene :plural t :predication mv22354 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv22354 :isa regulate :object mv22356 :agent mv22346 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22346 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22350 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?"
   (:var mv22367 :isa polar-question :statement mv22365)
   (:var mv22365 :isa affect :agent mv22358 :affected-process mv22363 :raw-text "affect")
   (:var mv22358 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22363 :isa gene-transcript-express :object mv22359 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22359 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv22379 :isa polar-question :statement mv22377)
   (:var mv22377 :isa affect :agent mv22368 :affected-process mv22373 :raw-text "affect")
   (:var mv22368 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22373 :isa gene-transcript-express :object mv22376 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22376 :isa gene :has-determiner "THE" :expresses mv22369 :raw-text "gene")
   (:var mv22369 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv22392 :isa polar-question :statement mv22390)
   (:var mv22390 :isa increase :agent mv22380 :affected-process mv22386 :raw-text "increase")
   (:var mv22380 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22386 :isa gene-transcript-express :object mv22389 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22389 :isa gene :has-determiner "THE" :expresses mv22381 :raw-text "gene")
   (:var mv22381 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv22404 :isa polar-question :statement mv22402)
   (:var mv22402 :isa increase :agent mv22393 :affected-process mv22398 :raw-text "increase")
   (:var mv22393 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22398 :isa transcribe :object mv22401 :raw-text "transcription")
   (:var mv22401 :isa gene :has-determiner "THE" :expresses mv22394 :raw-text "gene")
   (:var mv22394 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?"
   (:var mv22414 :isa polar-question :statement mv22412)
   (:var mv22412 :isa affect :agent mv22405 :affected-process mv22409 :raw-text "affect")
   (:var mv22405 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22409 :isa gene-transcript-express :object mv22411 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22411 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv22424 :isa polar-question :statement mv22423)
   (:var mv22423 :isa contain :theme mv22421 :patient mv22415)
   (:var mv22421 :isa pathway :has-determiner "THE" :modifier mv22418 :raw-text "pathway")
   (:var mv22418 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv22415 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv22427 :isa bio-find :object mv22429 :present "PRESENT" :raw-text "Find")
   (:var mv22429 :isa treatment :disease mv22425 :has-determiner "A" :raw-text "treatment")
   (:var mv22425 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv22434 :isa bio-find :object mv22444 :present "PRESENT" :raw-text "Find")
   (:var mv22444 :isa gene :plural t :predication mv22440 :organ mv22439 :raw-text "genes")
   (:var mv22440 :isa regulate :object mv22444 :agent mv22432 :past "PAST" :raw-text "regulated")
   (:var mv22432 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22439 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv22448 :isa bio-find :object mv22453 :present "PRESENT" :raw-text "Find")
   (:var mv22453 :isa gene :plural t :predication mv22452 :raw-text "genes")
   (:var mv22452 :isa regulate :object mv22453 :that-rel t :agent mv22446 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22446 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv22458 :isa bio-find :object mv22455 :present "PRESENT" :raw-text "Find")
   (:var mv22455 :isa transcription-factor :plural t :predication mv22459 :raw-text
    "transcription factors")
   (:var mv22459 :isa share :object mv22455 :participant mv22463 :past "PAST" :raw-text "shared")
   (:var mv22463 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22456 mv22462))
   (:var mv22456 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22462 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv22470 :isa bio-activate :manner mv22467 :agent mv22469 :object mv22466 :present
    "PRESENT" :raw-text "activate")
   (:var mv22467 :isa how)
   (:var mv22469 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22466 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv22475 :isa regulate :manner mv22473 :agent mv22471 :object mv22477 :present "PRESENT"
    :raw-text "regulate")
   (:var mv22473 :isa how)
   (:var mv22471 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22477 :isa gene :has-determiner "THE" :expresses mv22472 :raw-text "gene")
   (:var mv22472 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv22493 :isa knock-out :raw-text "knocking out" :|agent-OR-cause| mv22479 :object mv22497)
   (:var mv22479 :isa how) (:var mv22497 :isa cancer :modifier mv22483 :modifier mv22483)
   (:var mv22483 :isa cause :by-means-of mv22495 :raw-text "cause")
   (:var mv22495 :isa effect :object mv22492 :participant mv22487 :raw-text "effect")
   (:var mv22492 :isa micro-rna :plural t :raw-text "miRNAs")
   (:var mv22487 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv22501 :isa regulate :manner mv22499 :agent mv22498 :affected-process mv22502 :present
    "PRESENT" :raw-text "regulate")
   (:var mv22499 :isa how)
   (:var mv22498 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22502 :isa apoptosis :organ mv22505 :raw-text "apoptosis")
   (:var mv22505 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv22510 :isa regulate :manner mv22508 :agent mv22507 :affected-process mv22511 :present
    "PRESENT" :raw-text "regulate")
   (:var mv22508 :isa how)
   (:var mv22507 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22511 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv22515 :isa regulate :manner mv22513 :agent mv22512 :object mv22520 :present "PRESENT"
    :raw-text "regulate")
   (:var mv22513 :isa how)
   (:var mv22512 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22520 :isa gene :plural t :cellular-process mv22516 :raw-text "genes")
   (:var mv22516 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv22530 :isa wh-question :statement mv22523 :wh how)
   (:var mv22523 :isa be :predicate mv22521 :present "PRESENT")
   (:var mv22521 :isa protein :predication mv22524 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22524 :isa involve :object mv22521 :theme mv22528 :past "PAST")
   (:var mv22528 :isa regulate :cellular-process mv22526 :raw-text "regulation")
   (:var mv22526 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv22543 :isa wh-question :statement mv22533 :wh how)
   (:var mv22533 :isa be :predicate mv22531 :present "PRESENT")
   (:var mv22531 :isa protein :predication mv22534 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22534 :isa involve :object mv22531 :theme mv22536 :past "PAST")
   (:var mv22536 :isa regulate :organ mv22539 :|agent-OR-object| mv22540 :raw-text "regulation")
   (:var mv22539 :isa liver :has-determiner "THE")
   (:var mv22540 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv22552 :isa wh-question :statement mv22546 :wh how)
   (:var mv22546 :isa be :predicate mv22544 :present "PRESENT")
   (:var mv22544 :isa protein :predication mv22547 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22547 :isa involve :object mv22544 :theme mv22549 :past "PAST")
   (:var mv22549 :isa regulate :affected-process mv22550 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv22550 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv22561 :isa wh-question :statement mv22555 :wh how)
   (:var mv22555 :isa be :predicate mv22553 :present "PRESENT")
   (:var mv22553 :isa protein :predication mv22556 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22556 :isa bio-use :object mv22553 :theme mv22560 :past "PAST" :raw-text "used")
   (:var mv22560 :isa regulate :affected-process mv22559 :raw-text "regulate")
   (:var mv22559 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv22575 :isa copular-predication-of-pp :item mv22570 :value mv22574 :prep "IN" :predicate
    mv22566)
   (:var mv22570 :isa gene :plural t :quantifier how-many :raw-text "genes")
   (:var mv22574 :isa gene :plural t :context mv22563 :quantifier how-many :raw-text "genes")
   (:var mv22563 :isa signaling-pathway :has-determiner "THE" :modifier mv22569 :raw-text
    "signaling pathway")
   (:var mv22569 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv22566 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv22584 :isa affect :manner mv22579 :modal mv22580 :agent mv22582 :object mv22578 :present
    "PRESENT" :raw-text "affect")
   (:var mv22579 :isa how) (:var mv22580 :isa might)
   (:var mv22582 :isa mutation :has-determiner "A" :object mv22577 :raw-text "mutation")
   (:var mv22577 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22578 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv22592 :isa polar-question :statement mv22587)
   (:var mv22587 :isa be :subject mv22585 :predicate mv22589)
   (:var mv22585 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22589 :isa regulator :theme mv22586 :has-determiner "A" :raw-text "regulator")
   (:var mv22586 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv22600 :isa polar-question :statement mv22595)
   (:var mv22595 :isa be :subject mv22593 :predicate mv22597)
   (:var mv22593 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22597 :isa regulator :theme mv22594 :has-determiner "A" :raw-text "regulator")
   (:var mv22594 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv22610 :isa polar-question :statement mv22603)
   (:var mv22603 :isa be :subject mv22601 :predicate mv22605)
   (:var mv22601 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22605 :isa regulator :theme mv22608 :has-determiner "A" :raw-text "regulator")
   (:var mv22608 :isa gene :has-determiner "THE" :expresses mv22602 :raw-text "gene")
   (:var mv22602 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv22620 :isa polar-question :statement mv22613)
   (:var mv22613 :isa be :subject mv22611 :predicate mv22615)
   (:var mv22611 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22615 :isa regulator :theme mv22618 :has-determiner "A" :raw-text "regulator")
   (:var mv22618 :isa gene :has-determiner "THE" :expresses mv22612 :raw-text "gene")
   (:var mv22612 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv22629 :isa polar-question :statement mv22624)
   (:var mv22624 :isa be :subject mv22621 :predicate mv22622)
   (:var mv22621 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22622 :isa transcription-factor :controlled-gene mv22627 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22627 :isa gene :expresses mv22623 :raw-text "gene")
   (:var mv22623 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos"
   (:var mv22637 :isa polar-question :statement mv22633)
   (:var mv22633 :isa be :subject mv22630 :predicate mv22631)
   (:var mv22630 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22631 :isa transcription-factor :controlled-gene mv22632 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22632 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?"
   (:var mv22645 :isa polar-question :statement mv22641)
   (:var mv22641 :isa be :subject mv22638 :predicate mv22639)
   (:var mv22638 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22639 :isa transcription-factor :controlled-gene mv22640 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22640 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv22655 :isa polar-question :statement mv22649)
   (:var mv22649 :isa be :subject mv22646 :predicate mv22647)
   (:var mv22646 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22647 :isa transcription-factor :controlled-gene mv22653 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22653 :isa gene :has-determiner "THE" :expresses mv22648 :raw-text "gene")
   (:var mv22648 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv22662 :isa polar-question :statement mv22659)
   (:var mv22659 :isa regulate :object mv22656 :agent mv22657 :past "PAST" :raw-text "regulated")
   (:var mv22656 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22657 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv22672 :isa polar-question :statement mv22666)
   (:var mv22666 :isa be :subject mv22663 :predicate mv22664)
   (:var mv22663 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22664 :isa transcription-factor :controlled-gene mv22670 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22670 :isa gene :has-determiner "THE" :expresses mv22665 :raw-text "gene")
   (:var mv22665 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv22674 :isa list :theme mv22676 :present "PRESENT")
   (:var mv22676 :isa gene :plural t :predication mv22677 :raw-text "genes")
   (:var mv22677 :isa regulate :object mv22676 :agent mv22673 :past "PAST" :raw-text "regulated")
   (:var mv22673 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1"
   (:var mv22682 :isa list :theme mv22691 :present "PRESENT")
   (:var mv22691 :isa gene :plural t :predication mv22689 :raw-text "genes")
   (:var mv22689 :isa regulate :object mv22691 :that-rel t :agent mv22681 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22681 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates"
   (:var mv22693 :isa list :theme mv22700 :present "PRESENT")
   (:var mv22700 :isa gene :plural t :predication mv22698 :quantifier mv22694 :raw-text "genes")
   (:var mv22698 :isa regulate :object mv22700 :that-rel t :agent mv22692 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22692 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22694 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv22702 :isa list :theme mv22708 :present "PRESENT")
   (:var mv22708 :isa gene :plural t :predication mv22706 :has-determiner "THE" :raw-text "genes")
   (:var mv22706 :isa regulate :object mv22708 :agent mv22701 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22701 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv22710 :isa list :theme mv22721 :present "PRESENT")
   (:var mv22721 :isa gene :plural t :predication mv22719 :has-determiner "THE" :raw-text "genes")
   (:var mv22719 :isa regulate :object mv22721 :that-rel t :agent mv22709 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22709 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates"
   (:var mv22723 :isa list :theme mv22730 :present "PRESENT")
   (:var mv22730 :isa gene :plural t :predication mv22728 :has-determiner "THE" :raw-text "genes")
   (:var mv22728 :isa regulate :object mv22730 :agent mv22722 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22722 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv22731 :isa list :theme mv22733 :present "PRESENT")
   (:var mv22733 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv22738 :isa show :|statement-OR-theme| mv22745 :beneficiary mv22739 :present "PRESENT")
   (:var mv22745 :isa gene :plural t :predication mv22742 :raw-text "genes")
   (:var mv22742 :isa regulate :object mv22745 :agent mv22737 :past "PAST" :raw-text "regulated")
   (:var mv22737 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22739 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv22747 :isa show :|statement-OR-theme| mv22757 :beneficiary mv22748 :present "PRESENT")
   (:var mv22757 :isa gene :plural t :predication mv22755 :raw-text "genes")
   (:var mv22755 :isa regulate :object mv22757 :that-rel t :agent mv22746 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22746 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22748 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv22759 :isa show :|statement-OR-theme| mv22765 :beneficiary mv22760 :present "PRESENT")
   (:var mv22765 :isa gene :plural t :predication mv22764 :raw-text "genes")
   (:var mv22764 :isa regulate :object mv22765 :that-rel t :agent mv22758 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22758 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22760 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv22766 :isa show :|statement-OR-theme| mv22769 :beneficiary mv22767 :present "PRESENT")
   (:var mv22769 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv22767 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv22776 :isa show :|statement-OR-theme| mv22791 :beneficiary mv22777 :present "PRESENT")
   (:var mv22791 :isa transcription-factor :plural t :predication mv22789 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv22789 :isa share :wh-element mv22785 :wh-path nil :raw-text "shared" :present "PRESENT"
    :participant mv22784 :object mv22785)
   (:var mv22785 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22784 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22775 mv22783))
   (:var mv22775 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22783 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22777 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv22793 :isa show :|statement-OR-theme| mv22807 :beneficiary mv22794 :present "PRESENT")
   (:var mv22807 :isa gene :plural t :predication mv22805 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv22805 :isa regulate :wh-element mv22801 :wh-path nil :raw-text "regulated" :present
    "PRESENT" :agent mv22792 :object mv22801)
   (:var mv22801 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv22792 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22794 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv22809 :isa show :|statement-OR-theme| mv22816 :present "PRESENT")
   (:var mv22816 :isa gene :plural t :predication mv22814 :has-determiner "THE" :raw-text "genes")
   (:var mv22814 :isa regulate :object mv22816 :agent mv22808 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22808 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv22817 :isa show :|statement-OR-theme| mv22819 :present "PRESENT")
   (:var mv22819 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv22826 :isa show :|statement-OR-theme| mv22836 :present "PRESENT")
   (:var mv22836 :isa transcription-factor :plural t :predication mv22834 :raw-text
    "transcription factors")
   (:var mv22834 :isa share :object mv22836 :that-rel t :participant mv22833 :present "PRESENT"
    :raw-text "shared")
   (:var mv22833 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22825 mv22832))
   (:var mv22825 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22832 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv22838 :isa tell :theme mv22851 :beneficiary mv22839 :present "PRESENT")
   (:var mv22851 :isa gene :plural t :predication mv22850 :has-determiner "THE" :raw-text "genes")
   (:var mv22850 :isa regulate :object mv22851 :agent mv22837 :present "PRESENT" :raw-text
    "regulated")
   (:var mv22837 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22839 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv22853 :isa tell :theme mv22870 :beneficiary mv22854 :present "PRESENT")
   (:var mv22870 :isa gene :plural t :predication mv22868 :has-determiner "WHAT" :raw-text "genes")
   (:var mv22868 :isa regulate :wh-element mv22864 :wh-path nil :raw-text "regulated" :present
    "PRESENT" :agent mv22863 :object mv22864)
   (:var mv22864 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv22863 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22852 mv22862))
   (:var mv22852 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22862 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22854 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv22872 :isa tell :theme mv22886 :beneficiary mv22873 :present "PRESENT")
   (:var mv22886 :isa gene :plural t :predication mv22884 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv22884 :isa regulate :wh-element mv22880 :wh-path nil :raw-text "regulated" :present
    "PRESENT" :agent mv22871 :object mv22880)
   (:var mv22880 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv22871 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22873 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv22890 :isa be :subject mv22889 :predicate mv22894 :present "PRESENT")
   (:var mv22889 :isa what)
   (:var mv22894 :isa positive-regulator :plural t :theme mv22892 :raw-text "positive regulators")
   (:var mv22892 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv22897 :isa be :subject mv22896 :predicate mv22904 :present "PRESENT")
   (:var mv22896 :isa what)
   (:var mv22904 :isa regulator :plural t :theme mv22895 :quantifier mv22898 :raw-text
    "regulators")
   (:var mv22895 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv22898 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv22911 :isa be :subject mv22910 :predicate mv22923 :present "PRESENT")
   (:var mv22910 :isa what)
   (:var mv22923 :isa regulator :plural t :theme mv22919 :has-determiner "THE" :predication mv22913
    :raw-text "regulators")
   (:var mv22919 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv22905 mv22906 mv22917 mv22907 mv22908 mv22909))
   (:var mv22905 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv22906 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv22917 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv22907 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv22908 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv22909 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv22913 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv22926 :isa be :subject mv22925 :predicate mv22938 :present "PRESENT")
   (:var mv22925 :isa what)
   (:var mv22938 :isa regulator :plural t :theme mv22934 :has-determiner "THE" :predication mv22928
    :raw-text "regulators")
   (:var mv22934 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22924 mv22933))
   (:var mv22924 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22933 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22928 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv22941 :isa be :subject mv22940 :predicate mv22953 :present "PRESENT")
   (:var mv22940 :isa what)
   (:var mv22953 :isa regulator :plural t :theme mv22949 :has-determiner "THE" :predication mv22943
    :raw-text "regulators")
   (:var mv22949 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv22939 mv22948))
   (:var mv22939 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22948 :isa bio-entity :name "srg") (:var mv22943 :isa common))
  ("What are the common regulators of those genes"
   (:var mv22955 :isa be :subject mv22954 :predicate mv22968 :present "PRESENT")
   (:var mv22954 :isa what)
   (:var mv22968 :isa regulator :plural t :theme mv22966 :has-determiner "THE" :predication mv22957
    :raw-text "regulators")
   (:var mv22966 :isa gene :plural t :has-determiner "THOSE" :raw-text "genes")
   (:var mv22957 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv22971 :isa be :subject mv22970 :predicate mv22979 :present "PRESENT")
   (:var mv22970 :isa what)
   (:var mv22979 :isa gene :plural t :predication mv22975 :has-determiner "THE" :raw-text "genes")
   (:var mv22975 :isa regulate :object mv22979 :agent mv22969 :past "PAST" :raw-text "regulated")
   (:var mv22969 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv22982 :isa be :subject mv22981 :predicate mv22989 :present "PRESENT")
   (:var mv22981 :isa what)
   (:var mv22989 :isa gene :plural t :predication mv22987 :has-determiner "THE" :raw-text "genes")
   (:var mv22987 :isa regulate :object mv22989 :agent mv22980 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22980 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv22994 :isa be :subject mv22993 :predicate mv23008 :present "PRESENT")
   (:var mv22993 :isa what)
   (:var mv23008 :isa regulator :plural t :theme mv23004 :has-determiner "THE" :modifier mv22997
    :raw-text "regulators")
   (:var mv23004 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv23001 mv23002 mv22990 mv22991 mv22992))
   (:var mv23001 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv23002 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22990 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22991 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv22992 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv22997 :isa frequent :comparative mv22996 :name "frequent")
   (:var mv22996 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv23015 :isa be :subject mv23014 :predicate mv23024 :present "PRESENT")
   (:var mv23014 :isa what)
   (:var mv23024 :isa transcription-factor :plural t :predication mv23018 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv23018 :isa regulate :agent mv23024 :that-rel t :object mv23022 :present "PRESENT"
    :raw-text "regulate")
   (:var mv23022 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv23019 mv23020 mv23011 mv23012 mv23013))
   (:var mv23019 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv23020 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23011 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23012 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv23013 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv23040 :isa copular-predication-of-pp :item mv23035 :value mv23039 :prep "IN" :predicate
    mv23029)
   (:var mv23035 :isa gene :plural t :has-determiner "WHAT" :modifier mv23026 :raw-text "genes")
   (:var mv23026 :isa other :name "other")
   (:var mv23039 :isa gene :plural t :context mv23033 :has-determiner "WHAT" :modifier mv23026
    :raw-text "genes")
   (:var mv23033 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23029 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv23057 :isa copular-predication-of-pp :item mv23052 :value mv23056 :prep "IN" :predicate
    mv23046)
   (:var mv23052 :isa protein :plural t :has-determiner "WHAT" :modifier mv23043 :raw-text
    "proteins")
   (:var mv23043 :isa other :name "other")
   (:var mv23056 :isa protein :plural t :in-pathway mv23050 :has-determiner "WHAT" :modifier
    mv23043 :raw-text "proteins")
   (:var mv23050 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23046 :isa be :present "PRESENT"))
  ("What pathways are they in?"
   (:var mv23062 :isa be :subject mv23065 :predicate mv23063 :present "PRESENT")
   (:var mv23065 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23063 :isa pronoun/plural :word "they"))
  ("What pathways involve SOARING?"
   (:var mv23069 :isa involve :theme mv23071 :object mv23070 :present "PRESENT")
   (:var mv23071 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23070 :isa soar :progressive "PROGRESSIVE" :raw-text "SOARING"))
  ("What proteins are in the first pathway"
   (:var mv23085 :isa copular-predication-of-pp :item mv23080 :value mv23084 :prep "IN" :predicate
    mv23075)
   (:var mv23080 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv23084 :isa protein :plural t :in-pathway mv23079 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv23079 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23075 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv23091 :isa involve :theme mv23092 :object mv23087 :present "PRESENT")
   (:var mv23092 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23087 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv23106 :isa copular-predication-of-pp :item mv23101 :value mv23105 :prep "IN" :predicate
    mv23096)
   (:var mv23101 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23105 :isa gene :plural t :context mv23100 :has-determiner "WHAT" :raw-text "genes")
   (:var mv23100 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23096 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv23121 :isa answer :patient mv23119 :modal mv23112 :agent mv23113 :theme mv23118 :present
    "PRESENT")
   (:var mv23119 :isa bio-question :plural t :has-determiner "WHAT") (:var mv23112 :isa can)
   (:var mv23113 :isa interlocutor :name "hearer")
   (:var mv23118 :isa micro-rna :plural t :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv23126 :isa regulate :agent mv23127 :object mv23124 :present "PRESENT" :raw-text
    "regulate")
   (:var mv23127 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23124 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD"
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
   (:var mv23131 :isa regulate :location mv23129 :agent mv23128 :object mv23132 :present "PRESENT"
    :raw-text "regulate")
   (:var mv23129 :isa where)
   (:var mv23128 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23132 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv23137 :isa involve :theme mv23140 :object mv23138 :present "PRESENT")
   (:var mv23140 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23134 :raw-text
    "pathways")
   (:var mv23134 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23138 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv23154 :isa copular-predication-of-pp :item mv23149 :value mv23153 :prep "IN" :predicate
    mv23145)
   (:var mv23149 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23153 :isa gene :plural t :context mv23141 :has-determiner "WHICH" :raw-text "genes")
   (:var mv23141 :isa signaling-pathway :has-determiner "THE" :modifier mv23148 :raw-text
    "signaling pathway")
   (:var mv23148 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23145 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv23167 :isa involve :object mv23166 :|context-OR-theme| mv23156 :present "PRESENT")
   (:var mv23166 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23156 :isa signaling-pathway :has-determiner "THE" :predication mv23164 :modifier
    mv23165 :raw-text "signaling pathway")
   (:var mv23164 :isa oncogenic)
   (:var mv23165 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23172 :isa regulate :agent mv23174 :object mv23173 :present "PRESENT" :raw-text
    "regulate")
   (:var mv23174 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23173 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv23175 :isa downregulate :agent mv23180 :object mv23179 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv23180 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23179 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv23181 :isa upregulate :agent mv23186 :object mv23185 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv23186 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23185 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv23197 :isa copular-predication-of-pp :item mv23189 :value mv23195 :prep mv23191
    :predicate mv23190)
   (:var mv23189 :isa these :quantifier mv23187 :word "these") (:var mv23187 :isa which)
   (:var mv23195 :isa pathway :plural t :modifier mv23192 :raw-text "pathways")
   (:var mv23192 :isa immune :name "immune") (:var mv23191 :isa in :word "in")
   (:var mv23190 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv23209 :isa copular-predication-of-pp :item mv23202 :value mv23207 :prep mv23204
    :predicate mv23203)
   (:var mv23202 :isa these :quantifier mv23200 :word "these") (:var mv23200 :isa which)
   (:var mv23207 :isa pathway :plural t :non-cellular-location mv23199 :raw-text "pathways")
   (:var mv23199 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv23204 :isa in :word "in") (:var mv23203 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv23213 :isa be :subject mv23212 :predicate mv23219 :present "PRESENT")
   (:var mv23212 :isa what)
   (:var mv23219 :isa gene :plural t :predication mv23217 :has-determiner "THE" :raw-text "genes")
   (:var mv23217 :isa regulate :object mv23219 :agent mv23211 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23211 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv23229 :isa copular-predication-of-pp :item mv23222 :value mv23227 :prep mv23224
    :predicate mv23223)
   (:var mv23222 :isa those :quantifier mv23220 :word "those") (:var mv23220 :isa which)
   (:var mv23227 :isa pathway :has-determiner "THE" :modifier mv23226 :raw-text "pathway")
   (:var mv23226 :isa immune :name "immune") (:var mv23224 :isa in :word "in")
   (:var mv23223 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv23235 :isa involve :theme mv23236 :object mv23231 :present "PRESENT")
   (:var mv23236 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv23231 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv23246 :isa polar-question :statement mv23239)
   (:var mv23239 :isa show :agent mv23238 :|statement-OR-theme| mv23242 :beneficiary mv23240 :modal
    "CAN")
   (:var mv23238 :isa interlocutor :name "hearer")
   (:var mv23242 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv23240 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv23252 :isa polar-question :statement mv23251)
   (:var mv23251 :isa inhibit :agent mv23249 :object mv23247 :raw-text "inhibit")
   (:var mv23249 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv23247 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv23262 :isa explicit-suggestion :suggestion mv23254 :marker let-as-directive)
   (:var mv23254 :isa build :artifact mv23256 :present "PRESENT")
   (:var mv23256 :isa model :object mv23260 :has-determiner "A")
   (:var mv23260 :isa neighborhood :has-determiner "THE" :modifier mv23259)
   (:var mv23259 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv23280 :isa collection :type know :number 2 :items (mv23278 mv23279))
   (:var mv23278 :isa know :agent mv23263 :statement mv23269 :present "PRESENT")
   (:var mv23263 :isa interlocutor :name "speaker")
   (:var mv23269 :isa bio-activate :agent mv23268 :object mv23270 :present "PRESENT" :raw-text
    "activates")
   (:var mv23268 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv23270 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv23279 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv23272 mv23276))
   (:var mv23272 :isa bio-activate :agent mv23271 :object mv23273 :present "PRESENT" :raw-text
    "activates")
   (:var mv23271 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv23273 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23276 :isa bio-activate :agent mv23275 :object mv23277 :present "PRESENT" :raw-text
    "activates")
   (:var mv23275 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23277 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv23283 :isa phosphorylate :agent mv23281 :substrate mv23282 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv23281 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv23282 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv23286 :isa dephosphorylate :agent mv23284 :substrate mv23285 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv23284 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv23285 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv23297 :isa polar-question :statement mv23296)
   (:var mv23296 :isa copular-predication :item mv23290 :value mv23294 :predicate mv23288)
   (:var mv23290 :isa bio-amount :measured-item mv23287 :has-determiner "THE" :raw-text "amount")
   (:var mv23287 :isa protein :predication mv23292 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23292 :isa phosphorylate :substrate mv23287 :raw-text "phosphorylated")
   (:var mv23294 :isa high :adverb mv23293) (:var mv23293 :isa always :name "always")
   (:var mv23288 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv23308 :isa polar-question :statement mv23307)
   (:var mv23307 :isa copular-predication :item mv23301 :value mv23305 :predicate mv23299)
   (:var mv23301 :isa bio-amount :measured-item mv23298 :has-determiner "THE" :raw-text "amount")
   (:var mv23298 :isa protein :predication mv23303 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23303 :isa phosphorylate :substrate mv23298 :raw-text "phosphorylated")
   (:var mv23305 :isa low :adverb mv23304) (:var mv23304 :isa always :name "always")
   (:var mv23299 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv23318 :isa polar-question :statement mv23317)
   (:var mv23317 :isa vanish :agent mv23316 :raw-text "vanish")
   (:var mv23316 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv23310
    :component mv23309)
   (:var mv23310 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23309 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv23328 :isa polar-question :statement mv23327)
   (:var mv23327 :isa vanish :agent mv23326 :raw-text "vanish")
   (:var mv23326 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv23320
    :component mv23319)
   (:var mv23320 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23319 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv23358 :isa polar-question :statement mv23357)
   (:var mv23357 :isa event-relation :subordinated-event mv23354 :event mv23350)
   (:var mv23354 :isa wh-question :statement mv23351 :wh if)
   (:var mv23351 :isa increase :|agent-OR-cause| mv23338 :|multiplier-OR-cause| mv23349
    :|affected-process-OR-object| mv23342 :raw-text "increase")
   (:var mv23338 :isa interlocutor :name "person-and-machine")
   (:var mv23349 :isa measurement :number mv23346) (:var mv23346 :isa number :value 10)
   (:var mv23342 :isa bio-amount :measured-item mv23330 :has-determiner "THE" :raw-text "amount")
   (:var mv23330 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv23350 :isa vanish :cause mv23333 :raw-text "vanish")
   (:var mv23333 :isa bio-amount :measured-item mv23329 :has-determiner "THE" :raw-text "amount")
   (:var mv23329 :isa protein :predication mv23335 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23335 :isa phosphorylate :substrate mv23329 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv23360 :isa show :|statement-OR-theme| mv23367 :beneficiary mv23361 :present "PRESENT")
   (:var mv23367 :isa evidence :statement mv23366 :has-determiner "THE")
   (:var mv23366 :isa regulate :agent mv23365 :object mv23359 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23365 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv23359 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv23361 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv23372 :isa increase :|agent-OR-cause| mv23369 :|affected-process-OR-object| mv23374
    :present "PRESENT" :raw-text "increases")
   (:var mv23369 :isa what)
   (:var mv23374 :isa bio-amount :measured-item mv23368 :has-determiner "THE" :raw-text "amount")
   (:var mv23368 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv23390 :isa copular-predication-of-pp :item mv23385 :value mv23389 :prep "IN" :predicate
    mv23381)
   (:var mv23385 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23389 :isa kinase :plural t :in-pathway mv23377 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv23377 :isa signaling-pathway :has-determiner "THE" :modifier mv23384 :raw-text
    "signaling pathway")
   (:var mv23384 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23381 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv23403 :isa polar-question :statement mv23401)
   (:var mv23401 :isa regulate :agent mv23392 :object mv23397 :raw-text "regulate")
   (:var mv23392 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23397 :isa gene :organ mv23400 :has-determiner "THE" :expresses mv23393 :raw-text
    "gene")
   (:var mv23400 :isa liver :has-determiner "THE")
   (:var mv23393 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv23412 :isa regulate :object mv23411 :agent mv23404 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23411 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23404 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv23421 :isa regulate :|affected-process-OR-object| mv23417 :agent mv23414 :present
    "PRESENT" :raw-text "regulated")
   (:var mv23417 :isa these :quantifier mv23415 :word "these") (:var mv23415 :isa which)
   (:var mv23414 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv23429 :isa regulate :|agent-OR-cause| mv23426 :object mv23430 :present "PRESENT" :adverb
    mv23427 :raw-text "regulate")
   (:var mv23426 :isa these :quantifier mv23424 :word "these") (:var mv23424 :isa which)
   (:var mv23430 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv23427 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv23436 :isa transcribe :agent mv23437 :object mv23434 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv23437 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23434 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv23441 :isa transcribe :agent mv23438 :object mv23439 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv23438 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv23439 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv23446 :isa bio-utilize :agent mv23449 :object mv23447 :present "PRESENT" :raw-text
    "utilize")
   (:var mv23449 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23443 :raw-text
    "pathways")
   (:var mv23443 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23447 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv23467 :isa copular-predication-of-pp :item mv23460 :value mv23466 :prep "IN" :predicate
    mv23453)
   (:var mv23460 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23466 :isa transcription-factor :plural t :in-pathway mv23462 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv23462 :isa pathway :plural t :has-determiner "THE" :predication mv23457 :raw-text
    "pathways")
   (:var mv23457 :isa regulate :affected-process mv23462 :agent mv23456 :raw-text "regulated")
   (:var mv23456 :isa calcium :raw-text "calcium") (:var mv23453 :isa be :present "PRESENT"))
  ("What pathways involve the immune system?"
   (:var mv23473 :isa involve :theme mv23475 :object mv23469 :present "PRESENT")
   (:var mv23475 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23469 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv23482 :isa involve :theme mv23487 :object mv23485 :present "PRESENT")
   (:var mv23487 :isa pathway :plural t :has-determiner "WHAT" :modifier mv23479 :raw-text
    "pathways")
   (:var mv23479 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23485 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv23476 mv23483 mv23477))
   (:var mv23476 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv23483 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv23477 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv23498 :isa share :object mv23497 :participant mv23499 :present "PRESENT" :raw-text
    "shared")
   (:var mv23497 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23499 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv23509 :isa regulate :object mv23508 :agent mv23507 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23508 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23507 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv23512 :isa be :subject mv23511 :predicate mv23523 :present "PRESENT")
   (:var mv23511 :isa what)
   (:var mv23523 :isa pathway :plural t :pathwaycomponent mv23521 :predication mv23513 :raw-text
    "pathways")
   (:var mv23521 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv23513 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv23540 :isa share :object mv23539 :participant mv23541 :present "PRESENT" :raw-text
    "shared")
   (:var mv23539 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23528 :raw-text
    "pathways")
   (:var mv23528 :isa immune :name "immune")
   (:var mv23541 :isa gene :plural t :expresses mv23537 :raw-text "genes")
   (:var mv23537 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv23524 mv23525 mv23526))
   (:var mv23524 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23525 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv23526 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv23550 :isa regulate :object mv23546 :agent mv23544 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23546 :isa phosphatase :has-determiner "WHAT" :enzyme mv23543 :raw-text "phosphatase")
   (:var mv23543 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv23544 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv23557 :isa involve :theme mv23559 :object mv23552 :present "PRESENT")
   (:var mv23559 :isa pathway :plural t :has-determiner "WHAT" :modifier mv23554 :raw-text
    "pathways")
   (:var mv23554 :isa database :name "Reactome" :uid "Reactome")
   (:var mv23552 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv23564 :isa polar-question :statement mv23561)
   (:var mv23561 :isa be :subject mv23560 :predicate mv23563)
   (:var mv23560 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23563 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv23569 :isa polar-question :statement mv23567)
   (:var mv23567 :isa be :subject mv23565 :predicate mv23566)
   (:var mv23565 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23566 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv23573 :isa be :subject mv23572 :predicate mv23577 :present "PRESENT")
   (:var mv23572 :isa these :quantifier mv23570 :word "these") (:var mv23570 :isa which)
   (:var mv23577 :isa kinase :plural t :enzyme mv23574 :raw-text "kinases")
   (:var mv23574 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv23584 :isa be :subject mv23583 :predicate mv23580 :present "PRESENT")
   (:var mv23583 :isa these :quantifier mv23581 :word "these") (:var mv23581 :isa which)
   (:var mv23580 :isa protein-family :plural t :raw-text "tyrosine kinases" :uid "NCIT:C17020"
    :name "protein tyrosine kinase"))
  ("Which of these are serine/threonine kinases?"
   (:var mv23589 :isa be :subject mv23588 :predicate mv23595 :present "PRESENT")
   (:var mv23588 :isa these :quantifier mv23586 :word "these") (:var mv23586 :isa which)
   (:var mv23595 :isa kinase :plural t :amino-acid mv23594 :raw-text "kinases")
   (:var mv23594 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv23590 mv23591))
   (:var mv23590 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv23591 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv23600 :isa be :subject mv23599 :predicate mv23602 :present "PRESENT")
   (:var mv23599 :isa these :quantifier mv23597 :word "these") (:var mv23597 :isa which)
   (:var mv23602 :isa phosphatase :plural t :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv23607 :isa be :subject mv23606 :predicate mv23608 :present "PRESENT")
   (:var mv23606 :isa these :quantifier mv23604 :word "these") (:var mv23604 :isa which)
   (:var mv23608 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv23613 :isa be :subject mv23612 :predicate mv23615 :present "PRESENT")
   (:var mv23612 :isa these :quantifier mv23610 :word "these") (:var mv23610 :isa which)
   (:var mv23615 :isa receptor :plural t :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv23621 :isa be :subject mv23620 :predicate mv23624 :present "PRESENT")
   (:var mv23620 :isa these :quantifier mv23618 :word "these") (:var mv23618 :isa which)
   (:var mv23624 :isa receptor :plural t :modifier mv23617 :raw-text "receptors")
   (:var mv23617 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv23631 :isa be :subject mv23630 :predicate mv23627 :present "PRESENT")
   (:var mv23630 :isa these :quantifier mv23628 :word "these") (:var mv23628 :isa which)
   (:var mv23627 :isa protein-family :plural t :raw-text "histone demethylases" :uid "GO:0032452"
    :name "histone demethylase"))
  ("Which of these are histone methylases?"
   (:var mv23638 :isa be :subject mv23637 :predicate mv23634 :present "PRESENT")
   (:var mv23637 :isa these :quantifier mv23635 :word "these") (:var mv23635 :isa which)
   (:var mv23634 :isa protein-family :plural t :raw-text "histone methylases" :uid "GO:0042054"
    :name "histone methyltransferase"))
  ("Which of these are histone methyltransferases?"
   (:var mv23645 :isa be :subject mv23644 :predicate mv23641 :present "PRESENT")
   (:var mv23644 :isa these :quantifier mv23642 :word "these") (:var mv23642 :isa which)
   (:var mv23641 :isa protein-family :plural t :raw-text "histone methyltransferases" :uid
    "GO:0042054" :name "histone methyltransferase"))
  ("Which of these are demethylases?"
   (:var mv23650 :isa be :subject mv23649 :predicate mv23652 :present "PRESENT")
   (:var mv23649 :isa these :quantifier mv23647 :word "these") (:var mv23647 :isa which)
   (:var mv23652 :isa protein-family :plural t :raw-text "demethylases" :uid "GO:0032451" :name
    "demethylase"))
  ("Which of these are methylases?"
   (:var mv23657 :isa be :subject mv23656 :predicate mv23659 :present "PRESENT")
   (:var mv23656 :isa these :quantifier mv23654 :word "these") (:var mv23654 :isa which)
   (:var mv23659 :isa protein-family :plural t :raw-text "methylases" :uid "GO:0008168" :name
    "methyltransferase"))
  ("Which of these are methyltransferases?"
   (:var mv23664 :isa be :subject mv23663 :predicate mv23666 :present "PRESENT")
   (:var mv23663 :isa these :quantifier mv23661 :word "these") (:var mv23661 :isa which)
   (:var mv23666 :isa protein-family :plural t :raw-text "methyltransferases" :uid "GO:0008168"
    :name "methyltransferase"))
  ("Which of these are steroid receptors?"
   (:var mv23671 :isa be :subject mv23670 :predicate mv23675 :present "PRESENT")
   (:var mv23670 :isa these :quantifier mv23668 :word "these") (:var mv23668 :isa which)
   (:var mv23675 :isa receptor :plural t :modifier mv23672 :raw-text "receptors")
   (:var mv23672 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv23682 :isa be :subject mv23681 :predicate mv23678 :present "PRESENT")
   (:var mv23681 :isa these :quantifier mv23679 :word "these") (:var mv23679 :isa which)
   (:var mv23678 :isa protein-family :plural t :raw-text "receptor tyrosine kinases" :uid
    "NCIT:C17660" :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :count 2 :name "receptor tyrosine kinase"))
  ("Which of these are transcription factors?"
   (:var mv23689 :isa be :subject mv23688 :predicate mv23685 :present "PRESENT")
   (:var mv23688 :isa these :quantifier mv23686 :word "these") (:var mv23686 :isa which)
   (:var mv23685 :isa transcription-factor :plural t :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv23695 :isa be :subject mv23694 :predicate mv23698 :present "PRESENT")
   (:var mv23694 :isa these :quantifier mv23692 :word "these") (:var mv23692 :isa which)
   (:var mv23698 :isa protein :plural t :modifier mv23691 :raw-text "proteins")
   (:var mv23691 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv23703 :isa be :subject mv23702 :predicate mv23709 :present "PRESENT")
   (:var mv23702 :isa these :quantifier mv23700 :word "these") (:var mv23700 :isa which)
   (:var mv23709 :isa phosphatase :plural t :modifier mv23708 :raw-text "phosphatases")
   (:var mv23708 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv23704 mv23705))
   (:var mv23704 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv23705 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv23714 :isa be :subject mv23713 :predicate mv23718 :present "PRESENT")
   (:var mv23713 :isa these :quantifier mv23711 :word "these") (:var mv23711 :isa which)
   (:var mv23718 :isa phosphatase :plural t :modifier mv23715 :raw-text "phosphatases")
   (:var mv23715 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv23723 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv23720 :agent mv23722
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv23720 :isa what)
   (:var mv23722 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv23732 :isa gene-transcript-express :object mv23726 :organ mv23731 :present "PRESENT"
    :adverb mv23728 :raw-text "expressed")
   (:var mv23726 :isa these :quantifier mv23724 :word "these") (:var mv23724 :isa which)
   (:var mv23731 :isa liver) (:var mv23728 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv23737 :isa regulate :|agent-OR-cause| mv23736 :object mv23735 :present "PRESENT"
    :raw-text "regulates")
   (:var mv23736 :isa what)
   (:var mv23735 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv23741 :isa increase :|agent-OR-cause| mv23738 :|affected-process-OR-object| mv23743
    :present "PRESENT" :raw-text "increases")
   (:var mv23738 :isa what)
   (:var mv23743 :isa bio-amount :measured-item mv23745 :has-determiner "THE" :raw-text "amount")
   (:var mv23745 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv23748 :isa upregulate :|agent-OR-cause| mv23747 :object mv23749 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv23747 :isa what)
   (:var mv23749 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv23751 :isa downregulate :|agent-OR-cause| mv23750 :object mv23752 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv23750 :isa what)
   (:var mv23752 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv23754 :isa decrease :|agent-OR-cause| mv23753 :|affected-process-OR-object| mv23756
    :present "PRESENT" :raw-text "decreases")
   (:var mv23753 :isa what)
   (:var mv23756 :isa bio-amount :measured-item mv23758 :has-determiner "THE" :raw-text "amount")
   (:var mv23758 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv23761 :isa regulate :|agent-OR-cause| mv23760 :object mv23762 :present "PRESENT"
    :raw-text "regulates")
   (:var mv23760 :isa what)
   (:var mv23762 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv23764 :isa regulate :|agent-OR-cause| mv23763 :object mv23765 :present "PRESENT"
    :raw-text "regulates")
   (:var mv23763 :isa what)
   (:var mv23765 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv23772 :isa regulate :|agent-OR-cause| mv23771 :object mv23773 :present "PRESENT"
    :raw-text "regulates")
   (:var mv23771 :isa what)
   (:var mv23773 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("Which kinases regulate the cfos gene?"
   (:var mv23780 :isa regulate :agent mv23784 :object mv23783 :present "PRESENT" :raw-text
    "regulate")
   (:var mv23784 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23783 :isa gene :has-determiner "THE" :expresses mv23782 :raw-text "gene")
   (:var mv23782 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv23785 :isa downregulate :agent mv23792 :object mv23791 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv23792 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23791 :isa gene :has-determiner "THE" :expresses mv23790 :raw-text "gene")
   (:var mv23790 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv23796 :isa be :subject mv23795 :predicate mv23802 :present "PRESENT")
   (:var mv23795 :isa what)
   (:var mv23802 :isa positive-regulator :plural t :theme mv23800 :raw-text "positive regulators")
   (:var mv23800 :isa gene :has-determiner "THE" :expresses mv23799 :raw-text "gene")
   (:var mv23799 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv23805 :isa transcribe :|agent-OR-cause| mv23804 :object mv23803 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv23804 :isa what)
   (:var mv23803 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv23808 :isa show :|statement-OR-theme| mv23820 :beneficiary mv23809 :present "PRESENT")
   (:var mv23820 :isa evidence :statement mv23815 :has-determiner "THE")
   (:var mv23815 :isa increase :agent mv23806 :|affected-process-OR-object| mv23817 :present
    "PRESENT" :raw-text "increases")
   (:var mv23806 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv23817 :isa bio-amount :measured-item mv23807 :has-determiner "THE" :raw-text "amount")
   (:var mv23807 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv23809 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv23822 :isa show :|statement-OR-theme| mv23825 :beneficiary mv23823 :present "PRESENT")
   (:var mv23825 :isa evidence :has-determiner "THE")
   (:var mv23823 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv23835 :isa be :subject mv23834 :predicate mv23841 :present "PRESENT")
   (:var mv23834 :isa what) (:var mv23841 :isa evidence :statement mv23840 :has-determiner "THE")
   (:var mv23840 :isa regulate :agent mv23839 :object mv23833 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23839 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv23833 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv23843 :isa be :subject mv23842 :predicate mv23852 :present "PRESENT")
   (:var mv23842 :isa what) (:var mv23852 :isa evidence :statement mv23848 :has-determiner "THE")
   (:var mv23848 :isa binding :binder mv23847 :direct-bindee mv23851 :present "PRESENT" :raw-text
    "binds")
   (:var mv23847 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23851 :isa gene :has-determiner "THE" :expresses mv23850 :raw-text "gene")
   (:var mv23850 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv23862 :isa gene-transcript-express :object mv23861 :organ mv23860 :present "PRESENT"
    :adverb mv23857 :raw-text "expressed")
   (:var mv23861 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23860 :isa liver) (:var mv23857 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv23870 :isa polar-question :statement mv23866)
   (:var mv23866 :isa gene-transcript-express :object mv23864 :organ mv23868 :past "PAST" :raw-text
    "expressed")
   (:var mv23864 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23868 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv23879 :isa polar-question :statement mv23877)
   (:var mv23877 :isa gene-transcript-express :object mv23871 :organ mv23876 :adverb mv23873
    :raw-text "expressed")
   (:var mv23871 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23876 :isa liver) (:var mv23873 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv23884 :isa affect :manner mv23882 :agent mv23880 :object mv23881 :present "PRESENT"
    :raw-text "affect")
   (:var mv23882 :isa how)
   (:var mv23880 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv23881 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv23889 :isa affect :manner mv23886 :agent mv23888 :object mv23885 :present "PRESENT"
    :raw-text "affect")
   (:var mv23886 :isa how)
   (:var mv23888 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv23885 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv23893 :isa be :subject mv23892 :predicate mv23907 :present "PRESENT")
   (:var mv23892 :isa what)
   (:var mv23907 :isa regulator :plural t :theme mv23902 :has-determiner "THE" :predication mv23895
    :context mv23896 :raw-text "regulators")
   (:var mv23902 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv23890 mv23891))
   (:var mv23890 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv23891 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv23895 :isa common) (:var mv23896 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv23911 :isa be :subject mv23910 :predicate mv23920 :present "PRESENT")
   (:var mv23910 :isa what)
   (:var mv23920 :isa path :plural t :endpoints mv23917 :has-determiner "THE")
   (:var mv23917 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv23908 mv23909))
   (:var mv23908 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv23909 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv23926 :isa polar-question :statement mv23925)
   (:var mv23925 :isa affect :agent mv23921 :object mv23924 :raw-text "affect")
   (:var mv23921 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv23924 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv23928 :isa regulate :agent mv23927 :object mv23929 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23927 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv23929 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv23931 :isa upregulate :agent mv23930 :object mv23932 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv23930 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv23932 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv23933 :isa upregulate :agent mv23935 :object mv23934 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv23935 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv23934 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv23945 :isa polar-question :statement mv23944)
   (:var mv23944 :isa regulate :agent mv23939 :object mv23943 :raw-text "regulate")
   (:var mv23939 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv23943 :isa gene :has-determiner "THE" :expresses mv23937 :raw-text "gene")
   (:var mv23937 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv23947 :isa show :|statement-OR-theme| mv23955 :beneficiary mv23948 :present "PRESENT")
   (:var mv23955 :isa evidence :statement mv23954 :has-determiner "THE")
   (:var mv23954 :isa regulate :agent mv23952 :object mv23946 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23952 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv23946 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv23948 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv23963 :isa polar-question :statement mv23962)
   (:var mv23962 :isa regulate :agent mv23958 :object mv23961 :raw-text "regulate")
   (:var mv23958 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv23961 :isa gene :has-determiner "THE" :expresses mv23956 :raw-text "gene")
   (:var mv23956 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv23966 :isa decrease :agent mv23965 :|affected-process-OR-object| mv23968 :present
    "PRESENT" :raw-text "decreases")
   (:var mv23965 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv23968 :isa bio-amount :measured-item mv23964 :has-determiner "THE" :raw-text "amount")
   (:var mv23964 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv23976 :isa polar-question :statement mv23975)
   (:var mv23975 :isa regulate :agent mv23974 :object mv23973 :raw-text "regulate")
   (:var mv23974 :isa bio-entity :name "TNG")
   (:var mv23973 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv23984 :isa polar-question :statement mv23983)
   (:var mv23983 :isa regulate :agent mv23978 :object mv23982 :raw-text "regulate")
   (:var mv23978 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv23982 :isa gene :has-determiner "THE" :expresses mv23981 :raw-text "gene")
   (:var mv23981 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv23986 :isa be :subject mv23985 :predicate mv23997 :present "PRESENT")
   (:var mv23985 :isa what)
   (:var mv23997 :isa pathway :plural t :pathwaycomponent mv23994 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv23994 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv23991 mv23993))
   (:var mv23991 :isa bio-entity :name "TNG")
   (:var mv23993 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv23999 :isa be :subject mv23998 :predicate mv24010 :present "PRESENT")
   (:var mv23998 :isa what)
   (:var mv24010 :isa pathway :plural t :pathwaycomponent mv24007 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv24007 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv24004 mv24006))
   (:var mv24004 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24006 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv24017 :isa polar-question :statement mv24016)
   (:var mv24016 :isa regulate :agent mv24012 :object mv24015 :raw-text "regulate")
   (:var mv24012 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24015 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv24026 :isa polar-question :statement mv24025)
   (:var mv24025 :isa regulate :agent mv24019 :object mv24024 :raw-text "regulate")
   (:var mv24019 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24024 :isa gene :has-determiner "THE" :expresses mv24023 :raw-text "gene")
   (:var mv24023 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv24042 :isa copular-predication-of-pp :item mv24037 :value mv24041 :prep "BETWEEN"
    :predicate mv24030)
   (:var mv24037 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24041 :isa pathway :plural t :pathwaycomponent mv24036 :has-determiner "WHAT" :raw-text
    "pathways")
   (:var mv24036 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv24033 mv24035))
   (:var mv24033 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24035 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24030 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv24048 :isa affect :manner mv24044 :agent mv24046 :object mv24049 :present "PRESENT"
    :raw-text "affect")
   (:var mv24044 :isa how)
   (:var mv24046 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24049 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv24051 :isa bio-activate :agent mv24050 :object mv24052 :present "PRESENT" :raw-text
    "activates")
   (:var mv24050 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24052 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv24054 :isa bio-activate :agent mv24053 :object mv24055 :present "PRESENT" :raw-text
    "activates")
   (:var mv24053 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv24055 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv24057 :isa be :subject mv24056 :predicate mv24068 :present "PRESENT")
   (:var mv24056 :isa what)
   (:var mv24068 :isa path :plural t :endpoints mv24065 :has-determiner "THE")
   (:var mv24065 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv24062 mv24064))
   (:var mv24062 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24064 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv24074 :isa polar-question :statement mv24073)
   (:var mv24073 :isa regulate :agent mv24070 :object mv24072 :raw-text "regulate")
   (:var mv24070 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24072 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv24079 :isa affect :manner mv24077 :agent mv24075 :object mv24076 :present "PRESENT"
    :raw-text "affect")
   (:var mv24077 :isa how)
   (:var mv24075 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24076 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv24081 :isa bio-activate :agent mv24080 :object mv24082 :present "PRESENT" :raw-text
    "activates")
   (:var mv24080 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24082 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv24086 :isa decrease :agent mv24085 :|affected-process-OR-object| mv24088 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24085 :isa protein-family :predication mv24084 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24084 :isa active)
   (:var mv24088 :isa bio-amount :measured-item mv24083 :has-determiner "THE" :raw-text "amount")
   (:var mv24083 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv24094 :isa be :subject mv24093 :predicate mv24105 :present "PRESENT")
   (:var mv24093 :isa what)
   (:var mv24105 :isa upstream-segment :plural t :pathwaycomponent mv24101 :has-determiner "THE"
    :predication mv24096 :raw-text "upstreams")
   (:var mv24101 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24091 mv24092))
   (:var mv24091 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24092 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv24096 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv24110 :isa affect :manner mv24108 :agent mv24106 :object mv24107 :present "PRESENT"
    :raw-text "affect")
   (:var mv24108 :isa how)
   (:var mv24106 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24107 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv24116 :isa polar-question :statement mv24115)
   (:var mv24115 :isa regulate :agent mv24111 :object mv24112 :raw-text "regulate")
   (:var mv24111 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24112 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv24124 :isa polar-question :statement mv24123)
   (:var mv24123 :isa regulate :agent mv24117 :object mv24122 :raw-text "regulate")
   (:var mv24117 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24122 :isa gene :has-determiner "THE" :expresses mv24118 :raw-text "gene")
   (:var mv24118 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv24129 :isa affect :manner mv24127 :agent mv24125 :object mv24126 :present "PRESENT"
    :raw-text "affect")
   (:var mv24127 :isa how)
   (:var mv24125 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24126 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv24132 :isa be :subject mv24131 :predicate mv24142 :present "PRESENT")
   (:var mv24131 :isa what)
   (:var mv24142 :isa path :plural t :endpoints mv24139 :has-determiner "THE")
   (:var mv24139 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv24137 mv24130))
   (:var mv24137 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24130 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv24152 :isa polar-question :statement mv24150)
   (:var mv24150 :isa regulate :agent mv24145 :affected-process mv24148 :raw-text "regulate")
   (:var mv24145 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24148 :isa gene-transcript-express :object mv24143 :has-determiner "THE" :raw-text
    "expression")
   (:var mv24143 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv24156 :isa decrease :agent mv24155 :affected-process mv24158 :present "PRESENT"
    :raw-text "decreases")
   (:var mv24155 :isa protein-family :predication mv24154 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24154 :isa active)
   (:var mv24158 :isa gene-transcript-express :object mv24153 :has-determiner "THE" :raw-text
    "expression")
   (:var mv24153 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv24164 :isa decrease :agent mv24163 :|affected-process-OR-object| mv24166 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24163 :isa protein-family :predication mv24162 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24162 :isa active)
   (:var mv24166 :isa bio-amount :measured-item mv24161 :has-determiner "THE" :raw-text "amount")
   (:var mv24161 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv24172 :isa decrease :agent mv24171 :|affected-process-OR-object| mv24174 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24171 :isa protein-family :predication mv24170 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24170 :isa active)
   (:var mv24174 :isa bio-amount :measured-item mv24169 :has-determiner "THE" :raw-text "amount")
   (:var mv24169 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv24179 :isa inhibit :agent mv24177 :affected-process mv24181 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv24177 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24181 :isa bio-activity :participant mv24178 :has-determiner "THE" :raw-text "activity")
   (:var mv24178 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?"
   (:var mv24195 :isa polar-question :statement mv24193)
   (:var mv24193 :isa decrease :agent mv24184 :object mv24185 :raw-text "decrease")
   (:var mv24184 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24185 :isa protein :has-determiner "THE" :raw-text "CXCL8" :uid "UP:P10145" :name
    "IL8_HUMAN"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv24206 :isa polar-question :statement mv24204)
   (:var mv24204 :isa decrease :agent mv24196 :object mv24197 :raw-text "decrease")
   (:var mv24196 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24197 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("TNF activates NFkappaB"
   (:var mv24208 :isa bio-activate :agent mv24207 :object mv24209 :present "PRESENT" :raw-text
    "activates")
   (:var mv24207 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24209 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv24215 :isa want :agent mv24212 :theme mv24226 :present "PRESENT")
   (:var mv24212 :isa interlocutor :name "speaker")
   (:var mv24226 :isa find-out :agent mv24212 :statement mv24223)
   (:var mv24223 :isa wh-question :statement mv24222 :var nil :wh how)
   (:var mv24222 :isa decrease :agent mv24221 :object mv24211 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24221 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv24211 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv24231 :isa want :agent mv24228 :theme mv24248 :present "PRESENT")
   (:var mv24228 :isa interlocutor :name "speaker")
   (:var mv24248 :isa find-out :agent mv24228 :statement mv24245)
   (:var mv24245 :isa wh-question :statement mv24238 :var nil :wh how)
   (:var mv24238 :isa decrease :agent mv24237 :object mv24239 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24237 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24239 :isa protein :cell-type mv24243 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv24243 :isa cell-type :plural t :cell-line mv24227)
   (:var mv24227 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv24254 :isa want :agent mv24251 :theme mv24270 :present "PRESENT")
   (:var mv24251 :isa interlocutor :name "speaker")
   (:var mv24270 :isa find-out :agent mv24251 :statement mv24267)
   (:var mv24267 :isa wh-question :statement mv24260 :var nil :wh how)
   (:var mv24260 :isa bio-activate :agent mv24249 :object mv24261 :present "PRESENT" :raw-text
    "activates")
   (:var mv24249 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv24261 :isa protein :cell-type mv24265 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv24265 :isa cell-type :plural t :cell-line mv24250)
   (:var mv24250 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv24276 :isa polar-question :statement mv24275)
   (:var mv24275 :isa phosphorylate :agent mv24272 :substrate mv24274 :raw-text "phosphorylate")
   (:var mv24272 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24274 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv24284 :isa polar-question :statement mv24283)
   (:var mv24283 :isa inhibit :agent mv24277 :object mv24282 :raw-text "inhibit")
   (:var mv24277 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24282 :isa gene :has-determiner "THE" :expresses mv24278 :raw-text "gene")
   (:var mv24278 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv24292 :isa polar-question :statement mv24291)
   (:var mv24291 :isa stimulate :agent mv24285 :object mv24290 :raw-text "stimulate")
   (:var mv24285 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24290 :isa gene :has-determiner "THE" :expresses mv24286 :raw-text "gene")
   (:var mv24286 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv24297 :isa want :agent mv24294 :theme mv24316 :present "PRESENT")
   (:var mv24294 :isa interlocutor :name "speaker")
   (:var mv24316 :isa find-out :agent mv24294 :statement mv24313)
   (:var mv24313 :isa wh-question :statement mv24304 :var nil :wh how)
   (:var mv24304 :isa decrease :agent mv24303 :object mv24305 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24303 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24305 :isa protein :cell-type mv24311 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv24311 :isa cell-type :plural t :cell-line mv24293 :associated-disease mv24307)
   (:var mv24293 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv24307 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv24321 :isa polar-question :statement mv24318)
   (:var mv24318 :isa be :subject mv24319 :predicate mv24317)
   (:var mv24319 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24317 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv24323 :isa list :theme mv24334 :present "PRESENT")
   (:var mv24334 :isa gene :plural t :predication mv24328 :quantifier mv24324 :has-determiner "THE"
    :raw-text "genes")
   (:var mv24328 :isa regulate :object mv24334 :agent mv24332 :past "PAST" :raw-text "regulated")
   (:var mv24332 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv24322 mv24331))
   (:var mv24322 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24331 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24324 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv24338 :isa list :theme mv24352 :present "PRESENT")
   (:var mv24352 :isa gene :plural t :predication mv24344 :quantifier mv24339 :has-determiner "THE"
    :raw-text "genes")
   (:var mv24344 :isa regulate :object mv24352 :agent mv24348 :past "PAST" :raw-text "regulated")
   (:var mv24348 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv24337 mv24347))
   (:var mv24337 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24347 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24339 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv24357 :isa show :|statement-OR-theme| mv24371 :beneficiary mv24358 :present "PRESENT")
   (:var mv24371 :isa mutation :plural t :context mv24356 :object mv24366 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24356 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv24366 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv24355 mv24364))
   (:var mv24355 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24364 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24358 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv24375 :isa be :subject mv24374 :predicate mv24388 :present "PRESENT")
   (:var mv24374 :isa what)
   (:var mv24388 :isa mutation :plural t :context mv24373 :object mv24383 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24373 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv24383 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv24372 mv24381))
   (:var mv24372 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24381 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv24393 :isa be :subject mv24392 :predicate mv24403 :present "PRESENT")
   (:var mv24392 :isa what)
   (:var mv24403 :isa gene :disease mv24391 :has-determiner "THE" :predication mv24389 :raw-text
    "genes")
   (:var mv24391 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv24389 :isa mutual-exclusivity :alternative mv24390)
   (:var mv24390 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv24408 :isa be :subject mv24407 :predicate mv24418 :present "PRESENT")
   (:var mv24407 :isa what)
   (:var mv24418 :isa gene :disease mv24406 :has-determiner "THE" :predication mv24404 :raw-text
    "genes")
   (:var mv24406 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv24404 :isa mutual-exclusivity :alternative mv24405)
   (:var mv24405 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What downregulates it?"
   (:var mv24420 :isa downregulate :|agent-OR-cause| mv24419 :|affected-process-OR-object| mv24421
    :present "PRESENT" :raw-text "downregulates")
   (:var mv24419 :isa what) (:var mv24421 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv24426 :isa have :possessor mv24433 :thing-possessed mv24428 :present "PRESENT")
   (:var mv24433 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24428 :isa evidence :fact mv24431 :predication mv24427)
   (:var mv24431 :isa regulate :agent mv24422 :progressive mv24430 :raw-text "regulated")
   (:var mv24422 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv24430 :isa be) (:var mv24427 :isa strong))
  ("What increases the amount of myc"
   (:var mv24439 :isa increase :|agent-OR-cause| mv24436 :|affected-process-OR-object| mv24441
    :present "PRESENT" :raw-text "increases")
   (:var mv24436 :isa what)
   (:var mv24441 :isa bio-amount :measured-item mv24443 :has-determiner "THE" :raw-text "amount")
   (:var mv24443 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv24447 :isa inhibit :|agent-OR-cause| mv24446 :object mv24445 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv24446 :isa what)
   (:var mv24445 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv24451 :isa be :subject mv24450 :predicate mv24463 :present "PRESENT")
   (:var mv24450 :isa what) (:var mv24463 :isa quality-predicate :item mv24461 :attribute mv24457)
   (:var mv24461 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv24448 mv24459 mv24449))
   (:var mv24448 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24459 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24449 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv24457 :isa location-of :has-determiner "THE" :predication mv24455 :modifier mv24456)
   (:var mv24455 :isa likely :comparative mv24453)
   (:var mv24453 :isa superlative-quantifier :name "most")
   (:var mv24456 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv24466 :isa be :subject mv24465 :predicate mv24475 :present "PRESENT")
   (:var mv24465 :isa what) (:var mv24475 :isa quality-predicate :item mv24464 :attribute mv24472)
   (:var mv24464 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24472 :isa location-of :has-determiner "THE" :predication mv24470 :modifier mv24471)
   (:var mv24470 :isa likely :comparative mv24468)
   (:var mv24468 :isa superlative-quantifier :name "most")
   (:var mv24471 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv24479 :isa be :subject mv24478 :predicate mv24482 :present "PRESENT")
   (:var mv24478 :isa what)
   (:var mv24482 :isa significance :context mv24477 :agent mv24476 :has-determiner "THE" :modifier
    mv24481)
   (:var mv24477 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv24476 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24481 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv24494 :isa regulate :|affected-process-OR-object| mv24490 :agent mv24487 :present
    "PRESENT" :raw-text "regulated")
   (:var mv24490 :isa those :quantifier mv24488 :word "those") (:var mv24488 :isa which)
   (:var mv24487 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv24514 :isa copular-predication-of-pp :item mv24511 :value mv24513 :prep "IN" :predicate
    mv24503)
   (:var mv24511 :isa gene :plural t :quantifier mv24498 :has-determiner "THOSE" :raw-text "genes")
   (:var mv24498 :isa which)
   (:var mv24513 :isa gene :plural t :context mv24497 :quantifier mv24498 :has-determiner "THOSE"
    :raw-text "genes")
   (:var mv24497 :isa signaling-pathway :has-determiner "THE" :modifier mv24506 :raw-text
    "signaling pathway")
   (:var mv24506 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv24503 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv24525 :isa copular-predication-of-pp :item mv24519 :value mv24523 :prep mv24521
    :predicate mv24520)
   (:var mv24519 :isa these :quantifier mv24517 :word "these") (:var mv24517 :isa which)
   (:var mv24523 :isa pathway :has-determiner "THE" :modifier mv24516 :raw-text "pathway")
   (:var mv24516 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv24521 :isa in :word "in") (:var mv24520 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv24534 :isa gene-transcript-express :object mv24529 :organ mv24533 :present "PRESENT"
    :raw-text "expressed")
   (:var mv24529 :isa pronoun/plural :quantifier mv24527 :word "them") (:var mv24527 :isa which)
   (:var mv24533 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv24549 :isa regulate :|affected-process-OR-object| mv24541 :agent mv24548 :present
    "PRESENT" :superlative mv24543 :adverb mv24544 :raw-text "regulated")
   (:var mv24541 :isa pronoun/plural :quantifier mv24539 :word "them") (:var mv24539 :isa which)
   (:var mv24548 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv24537 mv24538))
   (:var mv24537 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv24538 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv24543 :isa superlative-quantifier :name "most")
   (:var mv24544 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv24557 :isa target :agent mv24558 :object mv24554 :present "PRESENT" :raw-text "target")
   (:var mv24558 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv24554 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv24564 :isa target :|agent-OR-cause| mv24562 :object mv24559 :present "PRESENT" :raw-text
    "target")
   (:var mv24562 :isa those :quantifier mv24560 :word "those") (:var mv24560 :isa which)
   (:var mv24559 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv24567 :isa be :subject mv24566 :predicate mv24568 :present "PRESENT")
   (:var mv24566 :isa what)
   (:var mv24568 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv24571 :isa be :subject mv24570 :predicate mv24569 :present "PRESENT")
   (:var mv24570 :isa what)
   (:var mv24569 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv24577 :isa do :patient mv24572 :present "PRESENT")
   (:var mv24572 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv24587 :isa polar-question :statement mv24585)
   (:var mv24585 :isa there-exists :value mv24583 :predicate mv24580)
   (:var mv24583 :isa inhibitor :protein mv24578 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv24578 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv24580 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv24589 :isa name-something :patient mv24598 :present "PRESENT")
   (:var mv24598 :isa drug :plural t :predication mv24596 :quantifier mv24592 :raw-text "drugs")
   (:var mv24596 :isa inhibit :agent mv24598 :that-rel t :object mv24588 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv24588 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24592 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv24609 :isa polar-question :statement mv24606)
   (:var mv24606 :isa there-exists :value mv24608 :predicate mv24601)
   (:var mv24608 :isa inhibitor :plural t :quantifier mv24603 :protein mv24599 :raw-text
    "inhibitors")
   (:var mv24603 :isa any :word "any")
   (:var mv24599 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv24601 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv24621 :isa polar-question :statement mv24618)
   (:var mv24618 :isa there-exists :value mv24620 :predicate mv24611)
   (:var mv24620 :isa target-protein :plural t :treatment mv24617 :raw-text "targets")
   (:var mv24617 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24611 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv24625 :isa inhibit :|affected-process-OR-object| mv24622 :agent mv24624 :present
    "PRESENT" :raw-text "inhibit")
   (:var mv24622 :isa what)
   (:var mv24624 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv24630 :isa target :|affected-process-OR-object| mv24626 :agent mv24628 :present
    "PRESENT" :raw-text "target")
   (:var mv24626 :isa what)
   (:var mv24628 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv24637 :isa polar-question :statement mv24636)
   (:var mv24636 :isa target :agent mv24632 :object mv24635 :raw-text "target")
   (:var mv24632 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv24635 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv24640 :isa be :subject mv24639 :predicate mv24649 :present "PRESENT")
   (:var mv24639 :isa what)
   (:var mv24649 :isa target-protein :plural t :quantifier mv24641 :treatment mv24646 :raw-text
    "targets")
   (:var mv24641 :isa some :word "some")
   (:var mv24646 :isa treatment :disease mv24638 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv24638 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv24652 :isa be :subject mv24651 :predicate mv24660 :present "PRESENT")
   (:var mv24651 :isa what)
   (:var mv24660 :isa target-protein :plural t :quantifier mv24653 :disease mv24650 :raw-text
    "targets")
   (:var mv24653 :isa some :word "some")
   (:var mv24650 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv24667 :isa lead :agent mv24672 :theme mv24670 :modal mv24666 :raw-text "lead")
   (:var mv24672 :isa target-protein :plural t :has-determiner "WHAT" :raw-text "targets")
   (:var mv24670 :isa development :disease mv24661 :has-determiner "THE" :raw-text "development")
   (:var mv24661 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv24666 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv24680 :isa lead :agent mv24685 :theme mv24683 :modal mv24679 :raw-text "lead")
   (:var mv24685 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv24683 :isa development :disease mv24675 :has-determiner "THE" :raw-text "development")
   (:var mv24675 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv24679 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv24694 :isa lead :agent mv24697 :theme mv24688 :modal mv24693 :raw-text "lead")
   (:var mv24697 :isa gene :plural t :has-determiner "WHAT" :predication mv24690 :raw-text "genes")
   (:var mv24690 :isa mutation :object mv24697 :raw-text "mutated")
   (:var mv24688 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv24693 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv24701 :isa be :subject mv24700 :predicate mv24705 :present "PRESENT")
   (:var mv24700 :isa what)
   (:var mv24705 :isa mutation :predication mv24707 :has-determiner "THE" :modifier mv24703 :object
    mv24704 :raw-text "mutation")
   (:var mv24707 :isa lead :agent mv24705 :that-rel t :theme mv24699 :present "PRESENT" :raw-text
    "leads")
   (:var mv24699 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv24703 :isa top-qua-location) (:var mv24704 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv24716 :isa like :agent mv24711 :modal mv24714)
   (:var mv24711 :isa interlocutor :name "speaker") (:var mv24714 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv24737 :isa bio-use :patient mv24727 :modal mv24728 :agent mv24729 :theme mv24736
    :present "PRESENT" :raw-text "use")
   (:var mv24727 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv24728 :isa could)
   (:var mv24729 :isa interlocutor :name "speaker")
   (:var mv24736 :isa treatment :disease mv24725 :raw-text "treat")
   (:var mv24725 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv24740 :isa be :subject mv24739 :predicate mv24748 :present "PRESENT")
   (:var mv24739 :isa what)
   (:var mv24748 :isa drug :plural t :treatment mv24745 :quantifier mv24741 :raw-text "drugs")
   (:var mv24745 :isa treatment :disease mv24738 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv24738 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv24741 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv24755 :isa like :agent mv24751 :modal mv24762)
   (:var mv24751 :isa interlocutor :name "speaker") (:var mv24762 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv24766 :isa how))
  ("Does MEK act on ERK?" (:var mv24776 :isa polar-question :statement mv24774)
   (:var mv24774 :isa bio-act :agent mv24770 :acted-on mv24773 :raw-text "act")
   (:var mv24770 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24773 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv24781 :isa explicit-suggestion :suggestion mv24778 :marker let-as-directive)
   (:var mv24778 :isa build :artifact mv24780 :present "PRESENT")
   (:var mv24780 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv24784 :isa bio-activate :agent mv24783 :object mv24782 :present "PRESENT" :raw-text
    "activates")
   (:var mv24783 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24782 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv24786 :isa bio-activate :agent mv24785 :object mv24787 :present "PRESENT" :raw-text
    "activates")
   (:var mv24785 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv24787 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv24788 :isa remove :object mv24795 :present "PRESENT" :raw-text "Remove")
   (:var mv24795 :isa fact :statement mv24793 :has-determiner "THE")
   (:var mv24793 :isa bio-activate :agent mv24792 :object mv24794 :present "PRESENT" :raw-text
    "activates")
   (:var mv24792 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv24794 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv24807 :isa polar-question :statement mv24798)
   (:var mv24798 :isa tell :agent mv24797 :theme mv24806 :theme mv24799 :modal "CAN")
   (:var mv24797 :isa interlocutor :name "hearer")
   (:var mv24806 :isa copular-predication-of-pp :item mv24800 :value mv24804 :prep mv24802
    :predicate mv24801)
   (:var mv24800 :isa what) (:var mv24804 :isa model :has-determiner "THE")
   (:var mv24802 :isa in :word "in") (:var mv24801 :isa be :modal "CAN")
   (:var mv24799 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv24811 :isa summarize :statement mv24810 :present "PRESENT")
   (:var mv24810 :isa model :has-determiner "THE"))
  ("Summarize the current model."
   (:var mv24816 :isa summarize :statement mv24815 :present "PRESENT")
   (:var mv24815 :isa model :has-determiner "THE" :predication mv24814)
   (:var mv24814 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv24818 :isa phosphorylate :|agent-OR-cause| mv24817 :substrate mv24819 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv24817 :isa what)
   (:var mv24819 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv24821 :isa binding :binder mv24820 :direct-bindee mv24822 :present "PRESENT" :raw-text
    "binds")
   (:var mv24820 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv24822 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv24827 :isa bio-activate :object mv24823 :present "PRESENT" :raw-text "activated")
   (:var mv24823 :isa protein :predication mv24824 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv24824 :isa phosphorylate :substrate mv24823 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv24831 :isa dephosphorylate :agent mv24828 :substrate mv24829 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv24828 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv24829 :isa protein :predication mv24837 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv24837 :isa binding :direct-bindee mv24829 :that-rel t :bindee mv24830 :present "PRESENT"
    :negation mv24834 :raw-text "bound")
   (:var mv24830 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv24834 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv24848 :isa phosphorylate :agent mv24839 :substrate mv24841 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv24839 :isa protein :predication mv24849 :predication mv24842 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv24849 :isa binding :direct-bindee mv24839 :that-rel t :bindee mv24840 :present "PRESENT"
    :negation mv24845 :raw-text "bound")
   (:var mv24840 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv24845 :isa not :word "not") (:var mv24842 :isa active)
   (:var mv24841 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv24855 :isa bio-activate :object mv24851 :present "PRESENT" :raw-text "activated")
   (:var mv24851 :isa protein :predication mv24852 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv24852 :isa phosphorylate :substrate mv24851 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv24859 :isa dephosphorylate :agent mv24856 :substrate mv24857 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv24856 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv24857 :isa protein :predication mv24865 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv24865 :isa binding :direct-bindee mv24857 :that-rel t :bindee mv24858 :present "PRESENT"
    :negation mv24862 :raw-text "bound")
   (:var mv24858 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv24862 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv24880 :isa phosphorylate :agent mv24868 :substrate mv24867 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv24868 :isa protein :predication mv24883 :mutation mv24882 :raw-text "BRAF" :uid
    "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24883 :isa binding :direct-bindee mv24868 :that-rel t :bindee mv24879 :present "PRESENT"
    :negation mv24876 :raw-text "bound")
   (:var mv24879 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv24876 :isa not :word "not")
   (:var mv24882 :isa point-mutated-protein :position mv24871 :new-amino-acid mv24873
    :original-amino-acid mv24869)
   (:var mv24871 :isa number :value 600)
   (:var mv24873 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv24869 :isa amino-acid :name "valine" :letter "V")
   (:var mv24867 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv24889 :isa copular-predication :item mv24885 :value mv24888 :predicate mv24887)
   (:var mv24885 :isa protein :predication mv24886 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv24886 :isa phosphorylate :substrate mv24885 :raw-text "Phosphorylated")
   (:var mv24888 :isa active) (:var mv24887 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv24892 :isa phosphorylate :agent mv24890 :substrate mv24891 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv24890 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv24891 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv24902 :isa explicit-suggestion :suggestion mv24896 :marker let-as-directive)
   (:var mv24896 :isa move-to :goal mv24900 :theme mv24894 :present "PRESENT")
   (:var mv24900 :isa top-qua-location :has-determiner "THE")
   (:var mv24894 :isa protein :predication mv24897 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv24897 :isa phosphorylate :substrate mv24894 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv24911 :isa explicit-suggestion :suggestion mv24906 :marker let-as-directive)
   (:var mv24906 :isa move-to :|at-relative-location-OR-goal| mv24909 :theme mv24904 :present
    "PRESENT")
   (:var mv24909 :isa top-qua-location)
   (:var mv24904 :isa protein :predication mv24907 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv24907 :isa phosphorylate :substrate mv24904 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv24913 :isa show :at-relative-location mv24915 :|statement-OR-theme| mv24912 :present
    "PRESENT")
   (:var mv24915 :isa top-qua-location)
   (:var mv24912 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv24924 :isa explicit-suggestion :suggestion mv24919 :marker let-as-directive)
   (:var mv24919 :isa highlight :theme mv24920 :present "PRESENT")
   (:var mv24920 :isa upstream-segment :pathwaycomponent mv24918 :raw-text "upstream")
   (:var mv24918 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv24936 :isa explicit-suggestion :suggestion mv24927 :marker let-as-directive)
   (:var mv24927 :isa move-to :goal mv24933 :theme mv24934 :present "PRESENT")
   (:var mv24933 :isa top-qua-location :has-determiner "THE")
   (:var mv24934 :isa element :plural t :modifier mv24928)
   (:var mv24928 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv24939 :isa be :subject mv24938 :predicate mv24951 :present "PRESENT")
   (:var mv24938 :isa what)
   (:var mv24951 :isa downstream-segment :plural t :pathwaycomponent mv24947 :has-determiner "THE"
    :predication mv24941 :raw-text "downstreams")
   (:var mv24947 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv24937 mv24946))
   (:var mv24937 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24946 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24941 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv24968 :isa polar-question :statement mv24963)
   (:var mv24963 :isa there-exists :value mv24967 :predicate mv24955)
   (:var mv24967 :isa upstream-segment :plural t :pathwaycomponent mv24964 :predication mv24957
    :raw-text "upstreams")
   (:var mv24964 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv24952 mv24961 mv24953))
   (:var mv24952 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24961 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24953 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv24957 :isa common) (:var mv24955 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv24973 :isa be :subject mv24972 :predicate mv24987 :present "PRESENT")
   (:var mv24972 :isa what)
   (:var mv24987 :isa regulator :plural t :theme mv24982 :has-determiner "THE" :predication mv24975
    :context mv24976 :raw-text "regulators")
   (:var mv24982 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv24969 mv24970 mv24971))
   (:var mv24969 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv24970 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv24971 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv24975 :isa common) (:var mv24976 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv24991 :isa be :subject mv24990 :predicate mv25003 :present "PRESENT")
   (:var mv24990 :isa what)
   (:var mv25003 :isa regulator :plural t :theme mv24999 :predication mv24992 :context mv24993
    :raw-text "regulators")
   (:var mv24999 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv24988 mv24989))
   (:var mv24988 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv24989 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv24992 :isa common) (:var mv24993 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv25010 :isa be :subject mv25009 :predicate mv25020 :present "PRESENT")
   (:var mv25009 :isa what)
   (:var mv25020 :isa protein-family :plural t :molecule-type mv25016 :predication mv25011 :context
    mv25012 :raw-text "transcriptional regulators" :uid "XFAM:PF02082" :name
    "transcriptional regulator")
   (:var mv25016 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25006 mv25007 mv25008))
   (:var mv25006 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25007 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25008 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25011 :isa common) (:var mv25012 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv25024 :isa be :subject mv25023 :predicate mv25038 :present "PRESENT")
   (:var mv25023 :isa what)
   (:var mv25038 :isa mutation :plural t :context mv25022 :object mv25033 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv25022 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25033 :isa collection :raw-text "PTEN, TP53 and BRAF" :type protein :number 3 :items
    (mv25029 mv25021 mv25031))
   (:var mv25029 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25021 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25031 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv25042 :isa be :subject mv25041 :predicate mv25045 :present "PRESENT")
   (:var mv25041 :isa what)
   (:var mv25045 :isa frequency :context mv25040 :measured-item mv25039 :has-determiner "THE"
    :measured-item mv25044 :raw-text "frequency")
   (:var mv25040 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25039 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25044 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv25062 :isa copular-predication :item mv25059 :value mv25050 :predicate mv25056)
   (:var mv25059 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv25050 :isa mutual-exclusivity :disease mv25052 :alternative mv25051)
   (:var mv25052 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv25051 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv25056 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv25075 :isa copular-predication :item mv25072 :value mv25063 :predicate mv25069)
   (:var mv25072 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv25063 :isa mutual-exclusivity :disease mv25065 :alternative mv25064)
   (:var mv25065 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv25064 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv25069 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv25078 :isa be :subject mv25077 :predicate mv25084 :present "PRESENT")
   (:var mv25077 :isa what) (:var mv25084 :isa quality-predicate :item mv25076 :attribute mv25081)
   (:var mv25076 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25081 :isa location-of :has-determiner "THE" :modifier mv25080)
   (:var mv25080 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv25088 :isa regulate :manner mv25085 :agent mv25087 :object mv25089 :present "PRESENT"
    :raw-text "regulate")
   (:var mv25085 :isa how)
   (:var mv25087 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv25089 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv25091 :isa be :subject mv25090 :predicate mv25092 :present "PRESENT")
   (:var mv25090 :isa what)
   (:var mv25092 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv25104 :isa polar-question :statement mv25093)
   (:var mv25093 :isa be :subject mv25094 :predicate mv25096)
   (:var mv25094 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25096 :isa member :set mv25102 :has-determiner "A")
   (:var mv25102 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv25116 :isa copular-predication-of-pp :item mv25111 :value mv25115 :prep "IN" :predicate
    mv25108)
   (:var mv25111 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25115 :isa gene :plural t :in-family mv25110 :has-determiner "WHAT" :raw-text "genes")
   (:var mv25110 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv25108 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv25133 :isa copular-predication-of-pp :item mv25127 :value mv25132 :prep "IN" :predicate
    mv25121)
   (:var mv25127 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25132 :isa gene :plural t :in-family mv25128 :has-determiner "WHAT" :raw-text "genes")
   (:var mv25128 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv25121 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv25136 :isa be :subject mv25135 :predicate mv25149 :present "PRESENT")
   (:var mv25135 :isa what)
   (:var mv25149 :isa has-name :plural t :item mv25145 :quantifier mv25137 :modifier mv25138)
   (:var mv25145 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25137 :isa some :word "some") (:var mv25138 :isa other :name "other"))
  ("What are synonyms for ERK?"
   (:var mv25151 :isa be :subject mv25150 :predicate mv25157 :present "PRESENT")
   (:var mv25150 :isa what) (:var mv25157 :isa has-synonym :plural t :item mv25155)
   (:var mv25155 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv25170 :isa share :object mv25169 :participant mv25168 :present "PRESENT" :raw-text
    "shared")
   (:var mv25169 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv25168 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv25160 mv25161 mv25162))
   (:var mv25160 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25161 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv25162 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv25174 :isa be :subject mv25173 :predicate mv25184 :present "PRESENT")
   (:var mv25173 :isa what)
   (:var mv25184 :isa path :plural t :endpoints mv25181 :has-determiner "THE")
   (:var mv25181 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv25179 mv25172))
   (:var mv25179 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25172 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv25189 :isa polar-question :statement mv25187)
   (:var mv25187 :isa be :subject mv25185 :predicate mv25186)
   (:var mv25185 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv25186 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv25190 :isa remove :object mv25202 :present "PRESENT" :raw-text "Remove")
   (:var mv25202 :isa fact :statement mv25196 :has-determiner "THE")
   (:var mv25196 :isa bio-activate :agent mv25195 :object mv25197 :present "PRESENT" :raw-text
    "activates")
   (:var mv25195 :isa protein-family :predication mv25194 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25194 :isa active)
   (:var mv25197 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv25205 :isa bio-activate :agent mv25204 :object mv25206 :present "PRESENT" :raw-text
    "activates")
   (:var mv25204 :isa protein-family :predication mv25203 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25203 :isa active)
   (:var mv25206 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv25213 :isa copular-predication-of-pp :item mv25207 :value mv25211 :prep mv25209
    :predicate mv25208)
   (:var mv25207 :isa what) (:var mv25211 :isa model :has-determiner "THE")
   (:var mv25209 :isa in :word "in") (:var mv25208 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv25224 :isa polar-question :statement mv25223)
   (:var mv25223 :isa copular-predication :item mv25216 :value mv25221 :predicate mv25214)
   (:var mv25216 :isa bio-amount :measured-item mv25219 :has-determiner "THE" :raw-text "amount")
   (:var mv25219 :isa protein-family :predication mv25218 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25218 :isa phosphorylate :substrate mv25219 :raw-text "phosphorylated")
   (:var mv25221 :isa high :adverb mv25220) (:var mv25220 :isa ever :name "ever")
   (:var mv25214 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv25237 :isa copular-predication :item mv25234 :value mv25225 :predicate mv25230)
   (:var mv25234 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25225 :isa mutual-exclusivity :disease mv25226 :alternative mv25232)
   (:var mv25226 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv25232 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25230 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv25249 :isa share :object mv25248 :participant mv25247 :present "PRESENT" :raw-text
    "shared")
   (:var mv25248 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv25247 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv25240 mv25241))
   (:var mv25240 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv25241 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv25259 :isa regulate :agent mv25262 :object mv25261 :present "PRESENT" :adverb mv25257
    :adverb mv25258 :raw-text "regulate")
   (:var mv25262 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv25261 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25251 mv25252 mv25253))
   (:var mv25251 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25252 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25253 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25257 :isa superlative-quantifier :name "most")
   (:var mv25258 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv25264 :isa be :subject mv25263 :predicate mv25274 :present "PRESENT")
   (:var mv25263 :isa what) (:var mv25274 :isa quality-predicate :item mv25272 :attribute mv25270)
   (:var mv25272 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25270 :isa location-of :has-determiner "THE" :predication mv25268 :modifier mv25269)
   (:var mv25268 :isa likely :comparative mv25266)
   (:var mv25266 :isa superlative-quantifier :name "most")
   (:var mv25269 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv25279 :isa polar-question :statement mv25275)
   (:var mv25275 :isa be :subject mv25276 :predicate mv25278)
   (:var mv25276 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25278 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?"
   (:var mv25291 :isa polar-question :statement mv25282)
   (:var mv25282 :isa tell :agent mv25281 :theme mv25290 :theme mv25283 :modal "CAN")
   (:var mv25281 :isa interlocutor :name "hearer")
   (:var mv25290 :isa wh-question :statement mv25287 :wh whether)
   (:var mv25287 :isa be :subject mv25286 :predicate mv25289 :modal "CAN")
   (:var mv25286 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25289 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv25283 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv25295 :isa want :agent mv25292 :theme mv25305 :present "PRESENT")
   (:var mv25292 :isa interlocutor :name "speaker")
   (:var mv25305 :isa know :agent mv25292 :statement mv25304)
   (:var mv25304 :isa wh-question :statement mv25300 :wh if)
   (:var mv25300 :isa be :subject mv25299 :predicate mv25302 :present "PRESENT")
   (:var mv25299 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25302 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv25306 :isa what))
  ("What type of protein is BRAF?"
   (:var mv25314 :isa be :subject mv25311 :predicate mv25315 :present "PRESENT")
   (:var mv25311 :isa type :molecule-type mv25313 :has-determiner "WHAT" :raw-text "type")
   (:var mv25313 :isa protein :raw-text "protein")
   (:var mv25315 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv25318 :isa be :subject mv25317 :predicate mv25320 :present "PRESENT")
   (:var mv25317 :isa what)
   (:var mv25320 :isa bio-activity :participant mv25325 :has-determiner "THE" :raw-text "activity")
   (:var mv25325 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv25335 :isa polar-question :statement mv25328)
   (:var mv25328 :isa be :subject mv25329 :predicate mv25334)
   (:var mv25329 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25334 :isa collection :raw-text "a kinase or a transcription factor" :type kinase
    :number 2 :items (mv25331 mv25327))
   (:var mv25331 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv25327 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv25344 :isa target :object mv25343 :agent mv25336 :present "PRESENT" :raw-text
    "targeted")
   (:var mv25343 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv25336 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv25351 :isa name-something :patient mv25347 :present "PRESENT")
   (:var mv25347 :isa transcription-factor :plural t :predication mv25354 :raw-text
    "transcription factors")
   (:var mv25354 :isa share :object mv25347 :participant mv25357 :past "PAST" :raw-text "shared")
   (:var mv25357 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25348 mv25349 mv25350))
   (:var mv25348 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25349 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25350 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv25362 :isa tell :theme mv25367 :beneficiary mv25363 :present "PRESENT")
   (:var mv25367 :isa wh-question :statement mv25365 :wh if)
   (:var mv25365 :isa be :subject mv25360 :predicate mv25361 :present "PRESENT")
   (:var mv25360 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25361 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv25363 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv25372 :isa show :|statement-OR-theme| mv25379 :beneficiary mv25373 :present "PRESENT")
   (:var mv25379 :isa signaling-pathway :plural t :predication mv25374 :raw-text
    "signaling pathways")
   (:var mv25374 :isa share :object mv25379 :participant mv25377 :past "PAST" :raw-text "shared")
   (:var mv25377 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv25370 mv25371))
   (:var mv25370 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv25371 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25373 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv25384 :isa give :theme mv25391 :beneficiary mv25385 :present "PRESENT")
   (:var mv25391 :isa signaling-pathway :plural t :predication mv25386 :raw-text
    "signaling pathways")
   (:var mv25386 :isa share :object mv25391 :participant mv25389 :past "PAST" :raw-text "shared")
   (:var mv25389 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv25382 mv25383))
   (:var mv25382 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv25383 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25385 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv25421 :isa polar-question :statement mv25420)
   (:var mv25420 :isa event-relation :subordinated-event mv25416 :event mv25418)
   (:var mv25416 :isa wh-question :statement mv25403 :wh if)
   (:var mv25403 :isa increase :|agent-OR-cause| mv25401 :|multiplier-OR-cause| mv25413
    :|affected-process-OR-object| mv25405 :present "PRESENT" :raw-text "increase")
   (:var mv25401 :isa interlocutor :name "person-and-machine")
   (:var mv25413 :isa measurement :number mv25410) (:var mv25410 :isa number :value 10)
   (:var mv25405 :isa bio-amount :measured-item mv25407 :has-determiner "THE" :raw-text "amount")
   (:var mv25407 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25418 :isa copular-predication :item mv25394 :value mv25399 :predicate mv25392)
   (:var mv25394 :isa bio-amount :measured-item mv25397 :has-determiner "THE" :raw-text "amount")
   (:var mv25397 :isa protein-family :predication mv25396 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25396 :isa phosphorylate :substrate mv25397 :raw-text "phosphorylated")
   (:var mv25399 :isa high :adverb mv25398) (:var mv25398 :isa ever :name "ever")
   (:var mv25392 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv25424 :isa phosphorylate :agent mv25423 :substrate mv25425 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25423 :isa protein-family :predication mv25422 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25422 :isa active)
   (:var mv25425 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv25453 :isa polar-question :statement mv25452)
   (:var mv25452 :isa event-relation :subordinated-event mv25448 :event mv25450)
   (:var mv25448 :isa wh-question :statement mv25437 :wh if)
   (:var mv25437 :isa increase :|agent-OR-cause| mv25435 :level mv25446
    :|affected-process-OR-object| mv25439 :present "PRESENT" :raw-text "increase")
   (:var mv25435 :isa interlocutor :name "person-and-machine")
   (:var mv25446 :isa measurement :number mv25443) (:var mv25443 :isa number :value 10)
   (:var mv25439 :isa bio-amount :measured-item mv25441 :has-determiner "THE" :raw-text "amount")
   (:var mv25441 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25450 :isa copular-predication :item mv25428 :value mv25433 :predicate mv25426)
   (:var mv25428 :isa bio-amount :measured-item mv25431 :has-determiner "THE" :raw-text "amount")
   (:var mv25431 :isa protein-family :predication mv25430 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25430 :isa phosphorylate :substrate mv25431 :raw-text "phosphorylated")
   (:var mv25433 :isa high :adverb mv25432) (:var mv25432 :isa ever :name "ever")
   (:var mv25426 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv25455 :isa be :subject mv25454 :predicate mv25463 :present "PRESENT")
   (:var mv25454 :isa what)
   (:var mv25463 :isa pathway :plural t :predication mv25460 :quantifier mv25456 :raw-text
    "pathways")
   (:var mv25460 :isa affect :agent mv25463 :that-rel t :object mv25461 :present "PRESENT"
    :raw-text "affect")
   (:var mv25461 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25456 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv25465 :isa be :subject mv25464 :predicate mv25473 :present "PRESENT")
   (:var mv25464 :isa what)
   (:var mv25473 :isa pathway :plural t :predication mv25470 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv25470 :isa affect :agent mv25473 :that-rel t :object mv25471 :present "PRESENT"
    :raw-text "affect")
   (:var mv25471 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv25485 :isa regulate :object mv25484 :agent mv25483 :present "PRESENT" :raw-text
    "regulated")
   (:var mv25484 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25483 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv25474 mv25475))
   (:var mv25474 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv25475 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
    "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv25489 :isa be :subject mv25488 :predicate mv25500 :present "PRESENT")
   (:var mv25488 :isa what)
   (:var mv25500 :isa gene :plural t :predication mv25498 :quantifier mv25490 :raw-text "genes")
   (:var mv25498 :isa regulate :object mv25500 :that-rel t :agent mv25487 :present "PRESENT"
    :raw-text "regulated")
   (:var mv25487 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv25490 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv25506 :isa contain :theme mv25509 :patient mv25508 :present "PRESENT")
   (:var mv25509 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv25508 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv25501 mv25502))
   (:var mv25501 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25502 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv25512 :isa remove :object mv25521 :present "PRESENT" :raw-text "Remove")
   (:var mv25521 :isa fact :statement mv25516 :has-determiner "THE")
   (:var mv25516 :isa bio-activate :agent mv25510 :object mv25511 :present "PRESENT" :raw-text
    "activates")
   (:var mv25510 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv25511 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv25524 :isa remove :object mv25522 :present "PRESENT" :raw-text "Remove")
   (:var mv25522 :isa protein :predication mv25525 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv25525 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv25533 :isa be :subject mv25532 :predicate mv25543 :present "PRESENT")
   (:var mv25532 :isa what)
   (:var mv25543 :isa path :plural t :endpoints mv25540 :quantifier mv25534)
   (:var mv25540 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv25538 mv25531))
   (:var mv25538 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25531 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25534 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv25549 :isa polar-question :statement mv25548)
   (:var mv25548 :isa bio-activate :agent mv25544 :object mv25545 :raw-text "activate")
   (:var mv25544 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25545 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv25553 :isa protein :has-determiner "WHAT" :modifier mv25552 :modifier mv25554 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25552 :isa drug :plural t :raw-text "drugs")
   (:var mv25554 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv25568 :isa copular-predication-of-pp :item mv25563 :value mv25567 :prep "IN" :predicate
    mv25559)
   (:var mv25563 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv25567 :isa kinase :plural t :in-pathway mv25555 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv25555 :isa signaling-pathway :has-determiner "THE" :modifier mv25562 :raw-text
    "signalling pathway")
   (:var mv25562 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv25559 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv25576 :isa target :agent mv25580 :object mv25577 :present "PRESENT" :raw-text "target")
   (:var mv25580 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv25577 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv25584 :isa bio-entity :has-determiner "WHAT" :modifier mv25585 :name "ELLK1")
   (:var mv25585 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv25598 :isa polar-question :statement mv25595)
   (:var mv25595 :isa increase :agent mv25586 :affected-process mv25591 :raw-text "increase")
   (:var mv25586 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25591 :isa gene-transcript-express :object mv25587 :raw-text "expression")
   (:var mv25587 :isa protein :organ mv25594 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv25594 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv25608 :isa polar-question :statement mv25606)
   (:var mv25606 :isa affect :agent mv25599 :affected-process mv25603 :raw-text "affect")
   (:var mv25599 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25603 :isa gene-transcript-express :organ mv25605 :object mv25600 :raw-text
    "expression")
   (:var mv25605 :isa liver)
   (:var mv25600 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv25615 :isa polar-question :statement mv25614)
   (:var mv25614 :isa alter :agent mv25609 :affected-process mv25613 :raw-text "alter")
   (:var mv25609 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25613 :isa gene-transcript-express :object mv25610 :raw-text "expression")
   (:var mv25610 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv25623 :isa polar-question :statement mv25619)
   (:var mv25619 :isa be :subject mv25616 :predicate mv25617)
   (:var mv25616 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25617 :isa protein-family :molecule-type mv25618 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv25618 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv25627 :isa inhibit :agent mv25629 :object mv25628 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv25629 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv25628 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv25632 :isa upregulate :agent mv25630 :object mv25631 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv25630 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25631 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv25636 :isa transcribe :object mv25634 :agent mv25633 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv25634 :isa what)
   (:var mv25633 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv25639 :isa be :subject mv25638 :predicate mv25637 :present "PRESENT")
   (:var mv25638 :isa what)
   (:var mv25637 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv25641 :isa be :subject mv25640 :predicate mv25642 :present "PRESENT")
   (:var mv25640 :isa what)
   (:var mv25642 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv25644 :isa phosphorylate :|agent-OR-cause| mv25643 :substrate mv25645 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv25643 :isa what)
   (:var mv25645 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv25650 :isa target :agent mv25652 :object mv25651 :present "PRESENT" :raw-text "target")
   (:var mv25652 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv25651 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv25655 :isa regulate :|agent-OR-cause| mv25654 :object mv25653 :present "PRESENT"
    :raw-text "regulates")
   (:var mv25654 :isa what) (:var mv25653 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv25658 :isa regulate :|agent-OR-cause| mv25657 :object mv25656 :present "PRESENT"
    :raw-text "regulates")
   (:var mv25657 :isa what)
   (:var mv25656 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv25669 :isa polar-question :statement mv25668)
   (:var mv25668 :isa target :agent mv25667 :object mv25660 :raw-text "target")
   (:var mv25667 :isa bio-entity :name "miR-20b-5pp")
   (:var mv25660 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv25672 :isa be :subject mv25671 :predicate mv25679 :present "PRESENT")
   (:var mv25671 :isa what)
   (:var mv25679 :isa mutation :plural t :has-determiner "THE" :raw-text "mutations"))
  ("What does selumitinibib target?"
   (:var mv25685 :isa target :|affected-process-OR-object| mv25682 :agent mv25686 :present
    "PRESENT" :raw-text "target")
   (:var mv25682 :isa what) (:var mv25686 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv25691 :isa polar-question :statement mv25688)
   (:var mv25688 :isa be :subject mv25687 :predicate mv25690)
   (:var mv25687 :isa bio-entity :name "ELLK1")
   (:var mv25690 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv25693 :isa regulate :|agent-OR-cause| mv25692 :object mv25694 :present "PRESENT"
    :raw-text "regulates")
   (:var mv25692 :isa what)
   (:var mv25694 :isa protein :variant-number mv25696 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv25696 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv25700 :isa target :|affected-process-OR-object| mv25697 :agent mv25701 :present
    "PRESENT" :raw-text "target")
   (:var mv25697 :isa what) (:var mv25701 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv25705 :isa be :subject mv25704 :predicate mv25710 :present "PRESENT")
   (:var mv25704 :isa what) (:var mv25710 :isa evidence :statement mv25709 :has-determiner "THE")
   (:var mv25709 :isa phosphorylate :agent mv25702 :substrate mv25703 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25702 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25703 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv25712 :isa remove :object mv25711 :present "PRESENT" :raw-text "Remove")
   (:var mv25711 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv25717 :isa remove :object mv25720 :present "PRESENT" :raw-text "Remove")
   (:var mv25720 :isa interact :has-determiner "THE" :predication mv25719 :raw-text "interaction")
   (:var mv25719 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv25727 :isa bio-activate :agent mv25725 :object mv25726 :present "PRESENT" :raw-text
    "activates")
   (:var mv25725 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv25726 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv25737 :isa copular-predication-of-pp :item mv25735 :value mv25734 :prep mv25732
    :predicate mv25731)
   (:var mv25735 :isa interact :plural t :quantifier how-many :raw-text "interactions")
   (:var mv25734 :isa model :has-determiner "THE") (:var mv25732 :isa in :word "in")
   (:var mv25731 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv25749 :isa polar-question :statement mv25747)
   (:var mv25747 :isa decrease :agent mv25740 :|affected-process-OR-object| mv25744 :raw-text
    "decrease")
   (:var mv25740 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv25744 :isa bio-amount :measured-item mv25738 :has-determiner "THE" :raw-text "amount")
   (:var mv25738 :isa protein :predication mv25746 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv25746 :isa phosphorylate :substrate mv25738 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv25755 :isa bio-activate :object mv25756 :agent mv25750 :present "PRESENT" :raw-text
    "activate")
   (:var mv25756 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv25750 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv25762 :isa bio-activate :object mv25763 :agent mv25757 :present "PRESENT" :raw-text
    "activate")
   (:var mv25763 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv25757 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv25767 :isa bio-activate :|affected-process-OR-object| mv25765 :agent mv25764 :present
    "PRESENT" :raw-text "activate")
   (:var mv25765 :isa what)
   (:var mv25764 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv25771 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv25769 :agent mv25768
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv25769 :isa what)
   (:var mv25768 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv25777 :isa regulate :object mv25778 :agent mv25772 :present "PRESENT" :raw-text
    "regulate")
   (:var mv25778 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv25772 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv25790 :isa collection :type involve :number 2 :items (mv25782 mv25788))
   (:var mv25782 :isa involve :theme mv25789 :object mv25783 :present "PRESENT")
   (:var mv25789 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv25783 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv25788 :isa binding :direct-bindee mv25785 :binder mv25787 :present "PRESENT" :raw-text
    "bind")
   (:var mv25785 :isa what)
   (:var mv25787 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv25794 :isa involve :theme mv25796 :object mv25795 :present "PRESENT")
   (:var mv25796 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv25795 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv25800 :isa binding :direct-bindee mv25797 :binder mv25799 :present "PRESENT" :raw-text
    "bind")
   (:var mv25797 :isa what)
   (:var mv25799 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv25812 :isa collection :type involve :number 2 :items (mv25804 mv25807))
   (:var mv25804 :isa involve :theme mv25811 :object mv25805 :present "PRESENT")
   (:var mv25811 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv25805 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv25807 :isa be :subject mv25811 :predicate mv25808 :present "PRESENT")
   (:var mv25808 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv25823 :isa polar-question :statement mv25822)
   (:var mv25822 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv25829 :isa polar-question :statement mv25828)
   (:var mv25828 :isa phosphorylate :agent mv25824 :substrate mv25825 :raw-text "phosphorylate")
   (:var mv25824 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25825 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv25834 :isa bio-activate :agent mv25835 :object mv25830 :present "PRESENT" :raw-text
    "activate")
   (:var mv25835 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv25830 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv25842 :isa target :agent mv25848 :affected-process mv25850 :present "PRESENT" :raw-text
    "target")
   (:var mv25848 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv25850 :isa upstream-segment :plural t :pathwaycomponent mv25847 :raw-text "upstreams")
   (:var mv25847 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv25836 mv25837))
   (:var mv25836 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25837 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv25856 :isa target :agent mv25857 :object mv25851 :present "PRESENT" :raw-text "target")
   (:var mv25857 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv25851 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv25863 :isa target :agent mv25864 :object mv25858 :present "PRESENT" :raw-text "target")
   (:var mv25864 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv25858 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv25873 :isa target :agent mv25878 :object mv25866 :present "PRESENT" :raw-text "target")
   (:var mv25878 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv25866 :isa transcription-factor :plural t :predication mv25874 :raw-text
    "transcription factors")
   (:var mv25874 :isa share :object mv25866 :participant mv25877 :past "PAST" :raw-text "shared")
   (:var mv25877 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv25867 mv25868))
   (:var mv25867 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25868 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv25887 :isa target :object mv25888 :agent mv25881 :present "PRESENT" :raw-text "target")
   (:var mv25888 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv25881 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv25895 :isa target :object mv25896 :agent mv25891 :present "PRESENT" :raw-text "target")
   (:var mv25896 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv25891 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv25909 :isa copular-predication :item mv25906 :value mv25897 :predicate mv25903)
   (:var mv25906 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv25897 :isa mutual-exclusivity :disease mv25899 :alternative mv25898)
   (:var mv25899 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv25898 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv25903 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv25914 :isa target :agent mv25916 :object mv25915 :present "PRESENT" :raw-text "target")
   (:var mv25916 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv25915 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv25930 :isa copular-predication-of-pp :item mv25925 :value mv25929 :prep "IN" :predicate
    mv25921)
   (:var mv25925 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv25929 :isa kinase :plural t :in-pathway mv25917 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv25917 :isa signaling-pathway :has-determiner "THE" :modifier mv25924 :raw-text
    "signaling pathway")
   (:var mv25924 :isa bio-entity :name "FAKE") (:var mv25921 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv25933 :isa be :subject mv25932 :predicate mv25946 :present "PRESENT")
   (:var mv25932 :isa what)
   (:var mv25946 :isa mutation :plural t :context mv25941 :object mv25938 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv25941 :isa cancer :predication mv25940) (:var mv25940 :isa fictional)
   (:var mv25938 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv25948 :isa be :subject mv25947 :predicate mv25961 :present "PRESENT")
   (:var mv25947 :isa what)
   (:var mv25961 :isa mutation :plural t :context mv25956 :object mv25953 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv25956 :isa cancer :organ mv25955) (:var mv25955 :isa liver)
   (:var mv25953 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv25963 :isa remove :object mv25973 :present "PRESENT" :raw-text "Remove")
   (:var mv25973 :isa fact :statement mv25967 :has-determiner "THE")
   (:var mv25967 :isa transcribe :agent mv25962 :object mv25968 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv25962 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv25968 :isa bio-entity :name "FAKE"))
  ("ELK1 transcribes FOS"
   (:var mv25975 :isa transcribe :agent mv25974 :object mv25976 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv25974 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv25976 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv25978 :isa remove :object mv25988 :present "PRESENT" :raw-text "Remove")
   (:var mv25988 :isa fact :statement mv25982 :has-determiner "THE")
   (:var mv25982 :isa transcribe :agent mv25977 :object mv25983 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv25977 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv25983 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv26003 :isa share :object mv26002 :participant mv26001 :present "PRESENT" :raw-text
    "shared")
   (:var mv26002 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26001 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv25991 mv26000))
   (:var mv25991 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26000 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv26016 :isa share :object mv26015 :participant mv26014 :present "PRESENT" :raw-text
    "shared")
   (:var mv26015 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26014 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26007 mv26008))
   (:var mv26007 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26008 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?" (:var mv26025 :isa database :plural t :has-determiner "WHAT"))
  ("What is the MSA?" (:var mv26027 :isa be :subject mv26026 :predicate mv26029 :present "PRESENT")
   (:var mv26026 :isa what)
   (:var mv26029 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv26040 :isa ask :patient mv26039 :modal mv26033 :agent mv26034 :present "PRESENT")
   (:var mv26039 :isa tissue :plural t :has-determiner "WHAT") (:var mv26033 :isa can)
   (:var mv26034 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv26051 :isa ask :patient mv26050 :modal mv26044 :agent mv26045 :present "PRESENT")
   (:var mv26050 :isa cancer :plural t :has-determiner "WHAT") (:var mv26044 :isa can)
   (:var mv26045 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv26062 :isa ask :patient mv26061 :modal mv26055 :agent mv26056 :present "PRESENT")
   (:var mv26061 :isa bio-mechanism :plural t :has-determiner "WHAT") (:var mv26055 :isa can)
   (:var mv26056 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv26066 :isa regulate :|affected-process-OR-object| mv26064 :agent mv26063 :present
    "PRESENT" :raw-text "regulate")
   (:var mv26064 :isa what)
   (:var mv26063 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv26070 :isa be :subject mv26069 :predicate mv26072 :present "PRESENT")
   (:var mv26069 :isa these :quantifier mv26067 :word "these") (:var mv26067 :isa which)
   (:var mv26072 :isa kinase :plural t :raw-text "kinases"))
  ("What pathways is ERK1 in?"
   (:var mv26078 :isa be :subject mv26080 :predicate mv26074 :present "PRESENT")
   (:var mv26080 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26074 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which of these is AKT1 in?"
   (:var mv26085 :isa be :subject mv26084 :predicate mv26081 :present "PRESENT")
   (:var mv26084 :isa these :quantifier mv26082 :word "these") (:var mv26082 :isa which)
   (:var mv26081 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv26093 :isa be :subject mv26097 :predicate mv26096 :present "PRESENT")
   (:var mv26097 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26096 :isa collection :raw-text "ERK1 and AKT1" :type protein :number 2 :items
    (mv26088 mv26089))
   (:var mv26088 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv26089 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What microRNAs target STAT3?"
   (:var mv26103 :isa target :agent mv26104 :object mv26098 :present "PRESENT" :raw-text "target")
   (:var mv26104 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv26098 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv26110 :isa target :|agent-OR-cause| mv26108 :object mv26105 :present "PRESENT" :raw-text
    "target")
   (:var mv26108 :isa these :quantifier mv26106 :word "these") (:var mv26106 :isa which)
   (:var mv26105 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv26120 :isa polar-question :statement mv26118)
   (:var mv26118 :isa regulate :|agent-OR-cause| mv26116 :object mv26112 :raw-text "regulate")
   (:var mv26116 :isa these :quantifier mv26114 :word "these") (:var mv26114 :isa any :word "any")
   (:var mv26112 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv26123 :isa regulate :|agent-OR-cause| mv26122 :object mv26121 :present "PRESENT"
    :raw-text "regulates")
   (:var mv26122 :isa what)
   (:var mv26121 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv26127 :isa involve :theme mv26129 :object mv26128 :present "PRESENT")
   (:var mv26129 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26128 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv26132 :isa be :subject mv26131 :predicate mv26140 :present "PRESENT")
   (:var mv26131 :isa what)
   (:var mv26140 :isa target-protein :plural t :treatment mv26130 :has-determiner "THE" :raw-text
    "targets")
   (:var mv26130 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv26142 :isa be :subject mv26141 :predicate mv26148 :present "PRESENT")
   (:var mv26141 :isa what)
   (:var mv26148 :isa location-of :theme mv26143 :predication mv26146 :modifier mv26147)
   (:var mv26143 :isa pronoun/plural :word "their") (:var mv26146 :isa likely :comparative mv26144)
   (:var mv26144 :isa superlative-quantifier :name "most")
   (:var mv26147 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv26153 :isa polar-question :statement mv26151)
   (:var mv26151 :isa be :subject mv26149 :predicate mv26150)
   (:var mv26149 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv26150 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv26158 :isa polar-question :statement mv26154)
   (:var mv26154 :isa be :subject mv26155 :predicate mv26157)
   (:var mv26155 :isa pronoun/inanimate :word "it")
   (:var mv26157 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?"
   (:var mv26161 :isa be :subject mv26160 :predicate mv26159 :present "PRESENT")
   (:var mv26160 :isa what)
   (:var mv26159 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv26166 :isa target :|affected-process-OR-object| mv26162 :|agent-OR-cause| mv26164
    :present "PRESENT" :raw-text "target")
   (:var mv26162 :isa what) (:var mv26164 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv26172 :isa regulate :object mv26173 :agent mv26167 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26173 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv26167 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?"
   (:var mv26177 :isa be :subject mv26180 :predicate mv26178 :present "PRESENT")
   (:var mv26180 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26178 :isa pronoun/inanimate :word "it"))
  ("What are the targets of PLX-4720?"
   (:var mv26183 :isa be :subject mv26182 :predicate mv26191 :present "PRESENT")
   (:var mv26182 :isa what)
   (:var mv26191 :isa target-protein :plural t :treatment mv26181 :has-determiner "THE" :raw-text
    "targets")
   (:var mv26181 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv26198 :isa polar-question :statement mv26197)
   (:var mv26197 :isa target :|agent-OR-cause| mv26193 :object mv26196 :raw-text "target")
   (:var mv26193 :isa pronoun/inanimate :word "it")
   (:var mv26196 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv26203 :isa inhibit :agent mv26202 :object mv26207 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv26202 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv26207 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv26199 mv26200))
   (:var mv26199 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26200 :isa protein :predication mv26205 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv26205 :isa active))
  ("JAK1 activates STAT3"
   (:var mv26210 :isa bio-activate :agent mv26208 :object mv26209 :present "PRESENT" :raw-text
    "activates")
   (:var mv26208 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26209 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv26216 :isa want :agent mv26213 :theme mv26226 :present "PRESENT")
   (:var mv26213 :isa interlocutor :name "speaker")
   (:var mv26226 :isa find-out :agent mv26213 :statement mv26223)
   (:var mv26223 :isa wh-question :statement mv26222 :var nil :wh how)
   (:var mv26222 :isa bio-activate :agent mv26211 :object mv26212 :present "PRESENT" :raw-text
    "activates")
   (:var mv26211 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26212 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv26232 :isa want :agent mv26229 :theme mv26248 :present "PRESENT")
   (:var mv26229 :isa interlocutor :name "speaker")
   (:var mv26248 :isa find-out :agent mv26229 :statement mv26245)
   (:var mv26245 :isa wh-question :statement mv26238 :var nil :wh how)
   (:var mv26238 :isa bio-activate :agent mv26227 :object mv26239 :present "PRESENT" :raw-text
    "activates")
   (:var mv26227 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv26239 :isa protein :cell-type mv26243 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv26243 :isa cell-type :plural t :cell-line mv26228)
   (:var mv26228 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv26253 :isa explicit-suggestion :suggestion mv26250 :marker let-as-directive)
   (:var mv26250 :isa build :artifact mv26252 :present "PRESENT")
   (:var mv26252 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv26255 :isa phosphorylate :agent mv26254 :substrate mv26256 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv26254 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv26256 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv26264 :isa regulate :agent mv26265 :object mv26260 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26265 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26260 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv26266 :isa upregulate :|agent-OR-cause| mv26268 :object mv26267 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv26268 :isa what)
   (:var mv26267 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv26272 :isa have :possessor mv26270 :thing-possessed mv26274 :modal mv26271)
   (:var mv26270 :isa what)
   (:var mv26274 :isa effect :object mv26269 :affected-process mv26277 :has-determiner "THE"
    :raw-text "effect")
   (:var mv26269 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26277 :isa bio-activate :raw-text "activation") (:var mv26271 :isa can))
  ("Are there any drugs for IL10?" (:var mv26293 :isa polar-question :statement mv26289)
   (:var mv26289 :isa there-exists :value mv26292 :predicate mv26283)
   (:var mv26292 :isa drug :plural t :target mv26281 :quantifier mv26285 :raw-text "drugs")
   (:var mv26281 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv26285 :isa any :word "any") (:var mv26283 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv26298 :isa gene-transcript-express :agent mv26299 :object mv26294 :present "PRESENT"
    :raw-text "express")
   (:var mv26299 :isa tissue :plural t :has-determiner "WHICH")
   (:var mv26294 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv26304 :isa regulate :manner mv26302 :agent mv26300 :object mv26301 :present "PRESENT"
    :raw-text "regulate")
   (:var mv26302 :isa how)
   (:var mv26300 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv26301 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv26310 :isa be :subject mv26309 :predicate mv26320 :present "PRESENT")
   (:var mv26309 :isa what)
   (:var mv26320 :isa transcription-factor :plural t :predication mv26312 :raw-text
    "transcription factors")
   (:var mv26312 :isa binding :binder mv26320 :that-rel t :direct-bindee mv26319 :present "PRESENT"
    :raw-text "bind")
   (:var mv26319 :isa gene :plural t :has-determiner "THE" :expresses mv26317 :raw-text "genes")
   (:var mv26317 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv26307 mv26308))
   (:var mv26307 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv26308 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv26326 :isa regulate :agent mv26330 :object mv26329 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26330 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26329 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv26321 mv26322))
   (:var mv26321 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv26322 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv26342 :isa factor :plural t :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv26355 :isa relation :plural t :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv26359 :isa be :subject mv26358 :predicate mv26357 :present "PRESENT")
   (:var mv26358 :isa what)
   (:var mv26357 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv26364 :isa polar-question :statement mv26361)
   (:var mv26361 :isa be :subject mv26360 :predicate mv26363)
   (:var mv26360 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv26363 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv26368 :isa transcribe :object mv26366 :agent mv26365 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv26366 :isa what)
   (:var mv26365 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv26379 :isa polar-question :statement mv26376)
   (:var mv26376 :isa there-exists :value mv26378 :predicate mv26371)
   (:var mv26378 :isa drug :plural t :target mv26369 :raw-text "drugs")
   (:var mv26369 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv26371 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv26389 :isa relation :plural t :has-determiner "WHAT"))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv26402 :isa relation :plural t :has-determiner "WHAT"))))