(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("What genes does mir-128 regulate?"
   (:var mv36 :isa regulate :object mv33 :agent mv37 :present "PRESENT" :raw-text "regulate")
   (:var mv33 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv37 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv42 :isa regulate :object mv38 :agent mv39 :present "PRESENT" :raw-text "regulate")
   (:var mv38 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv39 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv44 :isa tell :theme mv48 :theme mv45 :present "PRESENT")
   (:var mv48 :isa involve :theme mv50 :participant mv47)
   (:var mv50 :isa apoptosis :raw-text "apoptosis")
   (:var mv47 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv45 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv55 :isa be :subject mv54 :predicate mv57 :present "PRESENT") (:var mv54 :isa what)
   (:var mv57 :isa gene :predication mv59 :has-determiner "THE" :raw-text "genes")
   (:var mv59 :isa have :possessor mv57 :that-rel t :thing-possessed mv61 :present "PRESENT")
   (:var mv61 :isa evidence :fact mv64 :predication mv60)
   (:var mv64 :isa regulate :agent mv53 :progressive mv63 :raw-text "regulated")
   (:var mv53 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv63 :isa be) (:var mv60 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv70 :isa be :subject mv69 :predicate mv72 :present "PRESENT") (:var mv69 :isa what)
   (:var mv72 :isa involve :theme mv74 :participant mv71)
   (:var mv74 :isa apoptosis :raw-text "apoptosis")
   (:var mv71 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv78 :isa be :subject mv77 :predicate mv80 :present "PRESENT") (:var mv77 :isa what)
   (:var mv80 :isa role :process mv82 :participant mv79)
   (:var mv82 :isa apoptosis :raw-text "apoptosis")
   (:var mv79 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv86 :isa be :subject mv85 :predicate mv88 :present "PRESENT") (:var mv85 :isa what)
   (:var mv88 :isa role :process mv92 :participant mv87)
   (:var mv92 :isa regulate :|cellular-process-OR-agent| mv90 :raw-text "regulation")
   (:var mv90 :isa apoptosis :raw-text "apoptotic")
   (:var mv87 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv97 :isa be :subject mv96 :predicate mv103 :present "PRESENT") (:var mv96 :isa what)
   (:var mv103 :isa evidence :statement mv102 :has-determiner "THE")
   (:var mv102 :isa target :agent mv94 :object mv95 :present "PRESENT" :raw-text "targets")
   (:var mv94 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid "MIMAT0000243")
   (:var mv95 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv108 :isa regulate :object mv104 :agent mv105 :present "PRESENT" :raw-text "regulate")
   (:var mv104 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv105 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv113 :isa regulate :object mv109 :agent mv110 :present "PRESENT" :raw-text "regulate")
   (:var mv109 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv110 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid
    "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv117 :isa be :subject mv116 :predicate mv120 :present "PRESENT") (:var mv116 :isa what)
   (:var mv120 :isa significance :agent mv114 :has-determiner "THE" :modifier mv119)
   (:var mv114 :isa protein :context mv115 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv115 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv119 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv128 :isa be :subject mv127 :predicate mv131 :present "PRESENT") (:var mv127 :isa what)
   (:var mv131 :isa significance :result mv126 :agent mv125 :has-determiner "THE" :modifier mv130)
   (:var mv126 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv125 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv130 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv137 :isa be :subject mv136 :predicate mv138 :present "PRESENT") (:var mv136 :isa what)
   (:var mv138 :isa has-synonym :item mv140)
   (:var mv140 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv144 :isa be :subject mv143 :predicate mv146 :present "PRESENT") (:var mv143 :isa what)
   (:var mv146 :isa gene :predication mv151 :quantifier mv145 :raw-text "genes")
   (:var mv151 :isa mutation :object mv146 :that-rel t :context mv142 :present "PRESENT" :raw-text
    "mutated")
   (:var mv142 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv145 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv159 :isa mutation :object mv155 :context mv153 :present "PRESENT" :raw-text "mutated")
   (:var mv155 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv153 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv172 :isa polar-question :statement mv170)
   (:var mv170 :isa bio-activate :agent mv163 :object mv161 :raw-text "activate")
   (:var mv163 :isa phosphorylate :site mv169 :raw-text "phosphorylation")
   (:var mv169 :isa residue-on-protein :raw-text "S221" :position mv167 :amino-acid mv166)
   (:var mv167 :isa number :value 221) (:var mv166 :isa amino-acid :name "serine" :letter "S")
   (:var mv161 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv184 :isa polar-question :statement mv182)
   (:var mv182 :isa bio-activate :agent mv175 :object mv173 :raw-text "activate")
   (:var mv175 :isa phosphorylate :site mv181 :raw-text "phosphorylation")
   (:var mv181 :isa residue-on-protein :raw-text "S222" :position mv179 :amino-acid mv178)
   (:var mv179 :isa number :value 222) (:var mv178 :isa amino-acid :name "serine" :letter "S")
   (:var mv173 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv187 :isa simulate :object mv191 :present "PRESENT" :raw-text "Simulate")
   (:var mv191 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv186
    :component mv185)
   (:var mv186 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv185 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv193 :isa be :subject mv192 :predicate mv195 :present "PRESENT") (:var mv192 :isa what)
   (:var mv195 :isa member :set mv197 :has-determiner "THE")
   (:var mv197 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv200 :isa be :subject mv199 :predicate mv202 :present "PRESENT") (:var mv199 :isa what)
   (:var mv202 :isa member :set mv204 :has-determiner "THE")
   (:var mv204 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv207 :isa be :subject mv206 :predicate mv209 :present "PRESENT") (:var mv206 :isa what)
   (:var mv209 :isa member :set mv211 :has-determiner "THE")
   (:var mv211 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv214 :isa be :subject mv213 :predicate mv216 :present "PRESENT") (:var mv213 :isa what)
   (:var mv216 :isa member :set mv222 :has-determiner "THE")
   (:var mv222 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv226 :isa be :subject mv225 :predicate mv228 :present "PRESENT") (:var mv225 :isa what)
   (:var mv228 :isa member :set mv224 :has-determiner "THE")
   (:var mv224 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras" :count
    3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv233 :isa be :subject mv232 :predicate mv236 :present "PRESENT") (:var mv232 :isa what)
   (:var mv236 :isa has-name :item mv239 :quantifier mv234)
   (:var mv239 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv234 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv243 :isa be :subject mv242 :predicate mv246 :present "PRESENT") (:var mv242 :isa what)
   (:var mv246 :isa has-name :item mv241 :quantifier mv244)
   (:var mv241 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv244 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv254 :isa affect :manner mv252 :agent mv250 :object mv251 :present "PRESENT" :raw-text
    "affect")
   (:var mv252 :isa how)
   (:var mv250 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv251 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv256 :isa list :theme mv258 :present "PRESENT")
   (:var mv258 :isa gene :predication mv259 :quantifier mv257 :raw-text "genes")
   (:var mv259 :isa regulate :object mv258 :agent mv255 :past "PAST" :raw-text "regulated")
   (:var mv255 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv257 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv263 :isa list :theme mv267 :present "PRESENT")
   (:var mv267 :isa gene :predication mv268 :quantifier mv264 :has-determiner "THE" :raw-text
    "genes")
   (:var mv268 :isa regulate :object mv267 :agent mv262 :past "PAST" :raw-text "regulated")
   (:var mv262 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv264 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv274 :isa list :theme mv276 :present "PRESENT")
   (:var mv276 :isa gene :predication mv277 :has-determiner "THE" :raw-text "genes")
   (:var mv277 :isa regulate :object mv276 :agent mv273 :past "PAST" :raw-text "regulated")
   (:var mv273 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv282 :isa be :subject mv281 :predicate mv287 :present "PRESENT") (:var mv281 :isa what)
   (:var mv287 :isa regulator :theme mv291 :has-determiner "THE" :predication mv284 :context mv285
    :raw-text "regulators")
   (:var mv291 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv280 mv290))
   (:var mv280 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv290 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv284 :isa common) (:var mv285 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv294 :isa be :subject mv293 :predicate mv297 :present "PRESENT") (:var mv293 :isa what)
   (:var mv297 :isa upstream-segment :pathwaycomponent mv302 :has-determiner "THE" :predication
    mv296 :raw-text "upstreams")
   (:var mv302 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv299 mv301))
   (:var mv299 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv301 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv296 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv306 :isa be :subject mv305 :predicate mv309 :present "PRESENT") (:var mv305 :isa what)
   (:var mv309 :isa upstream-segment :pathwaycomponent mv313 :has-determiner "THE" :predication
    mv308 :raw-text "upstreams")
   (:var mv313 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv304 mv312))
   (:var mv304 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv312 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv308 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv317 :isa be :subject mv316 :predicate mv319 :present "PRESENT") (:var mv316 :isa what)
   (:var mv319 :isa gene :predication mv321 :has-determiner "THE" :raw-text "genes")
   (:var mv321 :isa regulate :object mv319 :that-rel t :agent mv315 :present "PRESENT" :raw-text
    "regulates")
   (:var mv315 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv326 :isa be :subject mv325 :predicate mv328 :present "PRESENT") (:var mv325 :isa what)
   (:var mv328 :isa micro-rna :predication mv330 :has-determiner "THE" :raw-text "miRNAs")
   (:var mv330 :isa regulate :agent mv328 :that-rel t :object mv334 :present "PRESENT" :raw-text
    "regulate")
   (:var mv334 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number 5
    :items (mv331 mv332 mv322 mv323 mv324))
   (:var mv331 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv332 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv322 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv323 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv324 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv337 :isa be :subject mv336 :predicate mv339 :present "PRESENT") (:var mv336 :isa what)
   (:var mv339 :isa micro-rna :predication mv341 :has-determiner "THE" :raw-text "miRNAs")
   (:var mv341 :isa regulate :agent mv339 :that-rel t :object mv345 :present "PRESENT" :raw-text
    "regulate")
   (:var mv345 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv342 mv343 mv335))
   (:var mv342 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv343 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv335 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv347 :isa be :subject mv346 :predicate mv349 :present "PRESENT") (:var mv346 :isa what)
   (:var mv349 :isa regulator :theme mv351 :has-determiner "THE" :raw-text "regulators")
   (:var mv351 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv356 :isa regulate :object mv354 :agent mv353 :organ mv359 :present "PRESENT" :raw-text
    "regulate")
   (:var mv354 :isa what)
   (:var mv353 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv359 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv364 :isa regulate :object mv361 :|agent-OR-cause| mv363 :organ mv367 :present "PRESENT"
    :raw-text "regulate")
   (:var mv361 :isa what) (:var mv363 :isa pronoun/inanimate :word "it")
   (:var mv367 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv375 :isa regulate :object mv371 :agent mv369 :present "PRESENT" :raw-text "regulated")
   (:var mv371 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv369 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv385 :isa regulate :object mv378 :agent mv384 :present "PRESENT" :raw-text "regulated")
   (:var mv378 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv384 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv393 :isa regulate :object mv388 :agent mv392 :present "PRESENT" :raw-text "regulated")
   (:var mv388 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv392 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv402 :isa regulate :|affected-process-OR-object| mv398 :agent mv395 :present "PRESENT"
    :raw-text "regulated")
   (:var mv398 :isa these :quantifier mv396 :word "these") (:var mv396 :isa which)
   (:var mv395 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv412 :isa regulate :|affected-process-OR-object| mv408 :agent mv405 :present "PRESENT"
    :raw-text "regulated")
   (:var mv408 :isa these :quantifier mv406 :word "these") (:var mv406 :isa which)
   (:var mv405 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv418 :isa bio-use :agent mv416 :object mv419 :present "PRESENT" :raw-text "use")
   (:var mv416 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv419 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv424 :isa regulate :location mv422 :agent mv420 :affected-process mv426 :present
    "PRESENT" :raw-text "regulate")
   (:var mv422 :isa where)
   (:var mv420 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv426 :isa gene-transcript-express :object mv421 :has-determiner "THE" :raw-text
    "expression")
   (:var mv421 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv446 :isa polar-question :statement mv433)
   (:var mv433 :isa tell :agent mv432 :theme mv429 :beneficiary mv434 :modal "CAN")
   (:var mv432 :isa interlocutor :name "hearer")
   (:var mv429 :isa transcription-factor :predication mv444 :quantifier mv435 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv444 :isa share :object mv429 :that-rel t :participant mv443 :modal "CAN" :raw-text
    "shared")
   (:var mv443 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv430 mv442))
   (:var mv430 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv442 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv435 :isa all :word "all") (:var mv434 :isa interlocutor :name "speaker"))
  ("can you tell me which transcription factors are shared by elk1 and srf"
   (:var mv462 :isa polar-question :statement mv451)
   (:var mv451 :isa tell :agent mv450 :theme mv460 :theme mv452 :modal "CAN")
   (:var mv450 :isa interlocutor :name "hearer")
   (:var mv460 :isa share :object mv447 :participant mv459 :modal "CAN" :raw-text "shared")
   (:var mv447 :isa transcription-factor :has-determiner "WHICH" :raw-text "transcription factors")
   (:var mv459 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv448 mv458))
   (:var mv448 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv458 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv452 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv464 :isa be :subject mv463 :predicate mv466 :present "PRESENT") (:var mv463 :isa what)
   (:var mv466 :isa regulator :theme mv468 :has-determiner "THE" :raw-text "regulators")
   (:var mv468 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv473 :isa regulate :object mv470 :agent mv472 :present "PRESENT" :raw-text "regulate")
   (:var mv470 :isa what)
   (:var mv472 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv475 :isa be :subject mv474 :predicate mv476 :present "PRESENT")
   (:var mv474 :isa what)
   (:var mv476 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv483 :isa polar-question :statement mv479)
   (:var mv479 :isa involve :object mv477 :theme mv481 :past "PAST")
   (:var mv477 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv481 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?" (:var mv492 :isa polar-question :statement mv486)
   (:var mv486 :isa involve :object mv484 :theme mv490 :past "PAST")
   (:var mv484 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv490 :isa regulate :|cellular-process-OR-agent| mv488 :raw-text "regulation")
   (:var mv488 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?" (:var mv500 :isa polar-question :statement mv495)
   (:var mv495 :isa involve :object mv493 :theme mv497 :past "PAST")
   (:var mv493 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv497 :isa regulate :affected-process mv498 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv498 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv509 :isa regulate :object mv505 :agent mv501 :present "PRESENT" :raw-text "regulated")
   (:var mv505 :isa gene :has-determiner "WHAT" :cellular-process mv503 :raw-text "genes")
   (:var mv503 :isa apoptosis :raw-text "apoptotic")
   (:var mv501 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv511 :isa list :theme mv515 :present "PRESENT")
   (:var mv515 :isa gene :has-determiner "THE" :cellular-process mv513 :raw-text "genes")
   (:var mv513 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv525 :isa involve :object mv518 :theme mv524 :present "PRESENT")
   (:var mv518 :isa gene :predication mv519 :has-determiner "WHAT" :raw-text "genes")
   (:var mv519 :isa regulate :object mv518 :agent mv516 :past "PAST" :raw-text "regulated")
   (:var mv516 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv524 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv529 :isa list :theme mv530 :present "PRESENT")
   (:var mv530 :isa gene :predication mv531 :raw-text "genes")
   (:var mv531 :isa regulate :object mv530 :agent mv528 :past "PAST" :raw-text "regulated")
   (:var mv528 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv540 :isa involve :object mv535 :theme mv539 :present "PRESENT")
   (:var mv535 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv539 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv551 :isa involve :object mv544 :theme mv550 :present "PRESENT")
   (:var mv544 :isa gene :predication mv546 :has-determiner "WHAT" :raw-text "genes")
   (:var mv546 :isa regulate :object mv544 :that-rel t :agent mv542 :present "PRESENT" :raw-text
    "regulates")
   (:var mv542 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv550 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv554 :isa list :theme mv556 :present "PRESENT")
   (:var mv556 :isa gene :predication mv557 :has-determiner "THE" :raw-text "genes")
   (:var mv557 :isa regulate :object mv556 :agent mv553 :past "PAST" :raw-text "regulated")
   (:var mv553 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv561 :isa list :theme mv564 :present "PRESENT")
   (:var mv564 :isa gene :has-determiner "THE" :predication mv563 :raw-text "genes")
   (:var mv563 :isa regulate :object mv564 :agent mv560 :raw-text "regulated")
   (:var mv560 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv571 :isa regulate :object mv567 :agent mv565 :present "PRESENT" :raw-text "regulated")
   (:var mv567 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv565 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv579 :isa involve :object mv574 :theme mv578 :present "PRESENT")
   (:var mv574 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv578 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv591 :isa wh-question :statement mv590 :var nil :wh what)
   (:var mv590 :isa prepositional-phrase :pobj mv588 :prep "IN") (:var mv588 :isa aptosis))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv593 :isa let :complement mv610 :present "PRESENT")
   (:var mv610 :isa know :agent mv594 :statement mv609 :present "PRESENT")
   (:var mv594 :isa interlocutor :name "speaker")
   (:var mv609 :isa wh-question :statement mv606 :wh if)
   (:var mv606 :isa involve :object mv600 :theme mv605 :present "PRESENT")
   (:var mv600 :isa gene :quantifier mv597 :predication mv601 :has-determiner "THE" :raw-text
    "genes")
   (:var mv597 :isa any :word "any")
   (:var mv601 :isa regulate :object mv600 :agent mv592 :present "PRESENT" :raw-text "regulates")
   (:var mv592 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv605 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv612 :isa let :complement mv630 :present "PRESENT")
   (:var mv630 :isa know :agent mv613 :statement mv629 :present "PRESENT")
   (:var mv613 :isa interlocutor :name "speaker")
   (:var mv629 :isa wh-question :statement mv626 :wh whether)
   (:var mv626 :isa involve :object mv620 :theme mv625 :present "PRESENT")
   (:var mv620 :isa gene :quantifier mv617 :predication mv621 :has-determiner "THE" :raw-text
    "genes")
   (:var mv617 :isa any :word "any")
   (:var mv621 :isa regulate :object mv620 :agent mv611 :present "PRESENT" :raw-text "regulates")
   (:var mv611 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv625 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv647 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv649 :isa tell :beneficiary mv650 :present "PRESENT")
   (:var mv650 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv660 :isa tell :theme mv669 :beneficiary mv661 :present "PRESENT")
   (:var mv669 :isa wh-question :statement mv667 :wh if)
   (:var mv667 :isa involve :object mv659 :theme mv666 :present "PRESENT")
   (:var mv659 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv666 :isa apoptosis :raw-text "apoptosis")
   (:var mv661 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv671 :isa tell :theme mv681 :theme mv672 :present "PRESENT")
   (:var mv681 :isa wh-question :statement mv679 :wh whether)
   (:var mv679 :isa involve :object mv670 :theme mv678 :present "PRESENT")
   (:var mv670 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv678 :isa apoptosis :raw-text "apoptosis")
   (:var mv672 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv684 :isa be :subject mv683 :predicate mv686 :present "PRESENT") (:var mv683 :isa what)
   (:var mv686 :isa gene :predication mv692 :predication mv685 :raw-text "genes")
   (:var mv692 :isa involve :object mv686 :that-rel t :theme mv691 :present "PRESENT")
   (:var mv691 :isa apoptosis :raw-text "apoptosis")
   (:var mv685 :isa regulate :object mv686 :agent mv682 :raw-text "regulated")
   (:var mv682 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv696 :isa be :subject mv695 :predicate mv698 :present "PRESENT") (:var mv695 :isa what)
   (:var mv698 :isa gene :predication mv704 :predication mv697 :raw-text "genes")
   (:var mv704 :isa involve :object mv698 :that-rel t :theme mv703 :present "PRESENT")
   (:var mv703 :isa apoptosis :raw-text "apoptosis")
   (:var mv697 :isa regulate :object mv698 :agent mv694 :raw-text "regulated")
   (:var mv694 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv719 :isa wh-question :statement mv716 :var nil :wh what)
   (:var mv716 :isa involve :theme mv715 :present "PRESENT")
   (:var mv715 :isa apoptosis :raw-text "apoptosis"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv722 :isa be :subject mv721 :predicate mv724 :present "PRESENT") (:var mv721 :isa what)
   (:var mv724 :isa involve :theme mv729 :participant mv720 :has-determiner "THE")
   (:var mv729 :isa regulate :|cellular-process-OR-agent| mv727 :raw-text "regulation")
   (:var mv727 :isa apoptosis :raw-text "apoptotic")
   (:var mv720 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv734 :isa involve :theme mv733 :object mv735 :present "PRESENT")
   (:var mv733 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv735 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv739 :isa involve :theme mv737 :object mv740 :present "PRESENT")
   (:var mv737 :isa bio-process :has-determiner "WHAT" :raw-text "processes")
   (:var mv740 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv749 :isa involve :object mv744 :theme mv748 :present "PRESENT")
   (:var mv744 :isa gene :has-determiner "WHICH" :predication mv743 :raw-text "genes")
   (:var mv743 :isa regulate :object mv744 :agent mv741 :raw-text "regulated")
   (:var mv741 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv748 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv762 :isa involve :object mv754 :theme mv761 :present "PRESENT")
   (:var mv754 :isa gene :organ mv757 :has-determiner "WHICH" :predication mv753 :raw-text "genes")
   (:var mv757 :isa liver :has-determiner "THE")
   (:var mv753 :isa regulate :object mv754 :agent mv751 :raw-text "regulated")
   (:var mv751 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv761 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv773 :isa involve :object mv768 :theme mv772 :present "PRESENT")
   (:var mv768 :isa gene :has-determiner "WHICH" :predication mv767 :raw-text "genes")
   (:var mv767 :isa regulate :object mv768 :agent mv765 :raw-text "regulated")
   (:var mv765 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv772 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv777 :isa bio-activate :agent mv776 :object mv775 :present "PRESENT" :raw-text
    "activates")
   (:var mv776 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv775 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv779 :isa bio-activate :agent mv778 :object mv780 :present "PRESENT" :raw-text
    "activates")
   (:var mv778 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv780 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv783 :isa phosphorylate :agent mv781 :substrate mv782 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv781 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv782 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv786 :isa dephosphorylate :agent mv784 :substrate mv785 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv784 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv785 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv788 :isa upregulate :agent mv787 :object mv789 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv787 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv789 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv793 :isa binding :binder mv792 :direct-bindee mv796 :present "PRESENT" :raw-text
    "binds")
   (:var mv792 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv796 :isa protein :has-determiner "THE" :modifier mv791 :modifier mv795 :raw-text "EGF"
    :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv791 :isa growth-factor :raw-text "growth factor")
   (:var mv795 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv797 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv803 :isa binding :binder mv810 :direct-bindee mv811 :present "PRESENT" :raw-text
    "binds")
   (:var mv810 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv801
    :component mv800)
   (:var mv801 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv800 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv811 :isa bio-complex :quantifier mv804 :raw-text "EGFR-EGF" :component mv806 :component
    mv805)
   (:var mv804 :isa another :word "another")
   (:var mv806 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv805 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv817 :isa binding :binder mv819 :direct-bindee mv812 :present "PRESENT" :raw-text
    "binds")
   (:var mv819 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv814
    :component mv814)
   (:var mv814 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv812 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv820 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv826 :isa binding :binder mv822 :direct-bindee mv823 :present "PRESENT" :raw-text
    "binds")
   (:var mv822 :isa protein :predication mv825 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv825 :isa binding :direct-bindee mv822 :binder mv824 :raw-text "bound")
   (:var mv824 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv823 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv830 :isa binding :binder mv828 :direct-bindee mv831 :present "PRESENT" :raw-text
    "binds")
   (:var mv828 :isa protein :predication mv829 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv829 :isa binding :direct-bindee mv828 :binder mv827 :raw-text "bound")
   (:var mv827 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv831 :isa protein :predication mv838 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv838 :isa binding :direct-bindee mv831 :that-rel t :bindee mv837 :present "PRESENT"
    :negation mv834 :raw-text "bound")
   (:var mv837 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv834 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv843 :isa binding :binder mv842 :direct-bindee mv844 :present "PRESENT" :raw-text
    "binds")
   (:var mv842 :isa protein :predication mv841 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv841 :isa binding :direct-bindee mv842 :binder mv840 :raw-text "bound")
   (:var mv840 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv844 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv854 :isa binding :binder mv848 :direct-bindee mv855 :present "PRESENT" :raw-text
    "binds")
   (:var mv848 :isa protein :predication mv856 :predication mv847 :raw-text "NRAS" :uid "UP:P01111"
    :name "RASN_HUMAN")
   (:var mv856 :isa binding :direct-bindee mv848 :that-rel t :bindee mv845 :present "PRESENT"
    :negation mv851 :raw-text "bound")
   (:var mv845 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv851 :isa not :word "not")
   (:var mv847 :isa binding :direct-bindee mv848 :binder mv846 :raw-text "bound")
   (:var mv846 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv855 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv858 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv863 :isa affect :manner mv860 :agent mv862 :object mv859 :present "PRESENT" :raw-text
    "affect")
   (:var mv860 :isa how)
   (:var mv862 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv859 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv872 :isa explicit-suggestion :suggestion mv866 :marker let-as-directive)
   (:var mv866 :isa highlight :theme mv868 :present "PRESENT")
   (:var mv868 :isa downstream-segment :pathwaycomponent mv865 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv865 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv881 :isa explicit-suggestion :suggestion mv875 :marker let-as-directive)
   (:var mv875 :isa move-something-somewhere :goal mv879 :theme mv874 :present "PRESENT")
   (:var mv879 :isa bottom :has-determiner "THE")
   (:var mv874 :isa protein :predication mv876 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv876 :isa phosphorylate :substrate mv874 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv890 :isa explicit-suggestion :suggestion mv886 :marker let-as-directive)
   (:var mv886 :isa put-something-somewhere :theme mv883 :present "PRESENT")
   (:var mv883 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv898 :isa explicit-suggestion :suggestion mv893 :marker let-as-directive)
   (:var mv893 :isa show :at-relative-location mv896 :|statement-OR-theme| mv892 :present
    "PRESENT")
   (:var mv896 :isa top-qua-location :has-determiner "THE")
   (:var mv892 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv909 :isa polar-question :statement mv907)
   (:var mv907 :isa decrease :agent mv899 :object mv903 :raw-text "decrease")
   (:var mv899 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv903 :isa protein :info-context mv906 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv906 :isa model :has-determiner "THE"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv924 :isa polar-question :statement mv921)
   (:var mv921 :isa decrease :agent mv910 :|affected-process-OR-object| mv915 :raw-text "decrease")
   (:var mv910 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv915 :isa bio-amount :measured-item mv917 :has-determiner "THE" :raw-text "amount")
   (:var mv917 :isa protein :info-context mv920 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv920 :isa model :has-determiner "THE"))
  ("Does FOS decrease ELK1 in the model?" (:var mv935 :isa polar-question :statement mv933)
   (:var mv933 :isa decrease :agent mv927 :object mv925 :raw-text "decrease")
   (:var mv927 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv925 :isa protein :info-context mv932 :raw-text "ELK1" :uid "UP:P19419" :name
    "ELK1_HUMAN")
   (:var mv932 :isa model :has-determiner "THE"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv958 :isa polar-question :statement mv957)
   (:var mv957 :isa event-relation :subordinated-event mv955 :event mv952)
   (:var mv955 :isa wh-question :statement mv953 :wh if)
   (:var mv953 :isa increase :|agent-OR-cause| mv941 :|affected-process-OR-object| mv945 :raw-text
    "increase")
   (:var mv941 :isa interlocutor :name "person-and-machine")
   (:var mv945 :isa bio-amount :measured-item mv936 :has-determiner "THE" :raw-text "amount")
   (:var mv936 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv952 :isa vanish :agent mv938 :raw-text "vanish")
   (:var mv938 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv983 :isa polar-question :statement mv982)
   (:var mv982 :isa event-relation :subordinated-event mv980 :event mv976)
   (:var mv980 :isa wh-question :statement mv977 :wh if)
   (:var mv977 :isa increase :|agent-OR-cause| mv964 :|multiplier-OR-cause| mv975
    :|affected-process-OR-object| mv968 :raw-text "increase")
   (:var mv964 :isa interlocutor :name "person-and-machine")
   (:var mv975 :isa measurement :number mv972) (:var mv972 :isa number :value 10)
   (:var mv968 :isa bio-amount :measured-item mv959 :has-determiner "THE" :raw-text "amount")
   (:var mv959 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv976 :isa vanish :agent mv961 :raw-text "vanish")
   (:var mv961 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv1005 :isa polar-question :statement mv1004)
   (:var mv1004 :isa event-relation :subordinated-event mv1002 :event mv999)
   (:var mv1002 :isa wh-question :statement mv1000 :wh if)
   (:var mv1000 :isa increase :|agent-OR-cause| mv990 :|multiplier-OR-cause| mv998 :object mv985
    :raw-text "increase")
   (:var mv990 :isa interlocutor :name "person-and-machine")
   (:var mv998 :isa measurement :number mv995) (:var mv995 :isa number :value 10)
   (:var mv985 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv999 :isa vanish :agent mv984 :raw-text "vanish")
   (:var mv984 :isa protein :predication mv987 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv987 :isa phosphorylate :substrate mv984 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv1031 :isa polar-question :statement mv1030)
   (:var mv1030 :isa event-relation :subordinated-event mv1028 :event mv1024)
   (:var mv1028 :isa wh-question :statement mv1025 :wh if)
   (:var mv1025 :isa increase :|agent-OR-cause| mv1012 :|multiplier-OR-cause| mv1023
    :|affected-process-OR-object| mv1016 :raw-text "increase")
   (:var mv1012 :isa interlocutor :name "person-and-machine")
   (:var mv1023 :isa measurement :number mv1020) (:var mv1020 :isa number :value 10)
   (:var mv1016 :isa bio-amount :measured-item mv1007 :has-determiner "THE" :raw-text "amount")
   (:var mv1007 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv1024 :isa vanish :agent mv1006 :raw-text "vanish")
   (:var mv1006 :isa protein :predication mv1009 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1009 :isa phosphorylate :substrate mv1006 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv1043 :isa polar-question :statement mv1041)
   (:var mv1041 :isa increase :cause mv1035 :adverb mv1038 :raw-text "increase")
   (:var mv1035 :isa bio-amount :measured-item mv1032 :has-determiner "THE" :raw-text "amount")
   (:var mv1032 :isa protein :predication mv1037 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1037 :isa phosphorylate :substrate mv1032 :raw-text "phosphorylated")
   (:var mv1038 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?" (:var mv1046 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv1054 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv1065 :isa polar-question :statement mv1064)
   (:var mv1064 :isa sustained :participant mv1060 :past "PAST")
   (:var mv1060 :isa protein :predication mv1062 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv1062 :isa binding :direct-bindee mv1060 :binder mv1059 :raw-text "bound")
   (:var mv1059 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv1072 :isa polar-question :statement mv1071)
   (:var mv1071 :isa copular-predication :item mv1066 :value mv1070 :predicate mv1067)
   (:var mv1066 :isa protein :predication mv1068 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1068 :isa phosphorylate :substrate mv1066 :raw-text "phosphorylated")
   (:var mv1070 :isa high :adverb mv1069) (:var mv1069 :isa always :name "always")
   (:var mv1067 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv1079 :isa polar-question :statement mv1078)
   (:var mv1078 :isa copular-predication :item mv1073 :value mv1077 :predicate mv1074)
   (:var mv1073 :isa protein :predication mv1075 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1075 :isa phosphorylate :substrate mv1073 :raw-text "phosphorylated")
   (:var mv1077 :isa high :adverb mv1076) (:var mv1076 :isa eventually :name "eventually")
   (:var mv1074 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv1086 :isa polar-question :statement mv1085)
   (:var mv1085 :isa copular-predication :item mv1080 :value mv1084 :predicate mv1081)
   (:var mv1080 :isa protein :predication mv1082 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1082 :isa phosphorylate :substrate mv1080 :raw-text "phosphorylated")
   (:var mv1084 :isa high :adverb mv1083) (:var mv1083 :isa ever :name "ever")
   (:var mv1081 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv1096 :isa polar-question :statement mv1095)
   (:var mv1095 :isa copular-predication :item mv1087 :value mv1090 :predicate mv1088)
   (:var mv1087 :isa protein :predication mv1089 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1089 :isa phosphorylate :substrate mv1087 :raw-text "phosphorylated")
   (:var mv1090 :isa high) (:var mv1088 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv1102 :isa polar-question :statement mv1101)
   (:var mv1101 :isa copular-predication :item mv1097 :value mv1100 :predicate mv1098)
   (:var mv1097 :isa protein :predication mv1099 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1099 :isa phosphorylate :substrate mv1097 :raw-text "phosphorylated")
   (:var mv1100 :isa high) (:var mv1098 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv1113 :isa polar-question :statement mv1107)
   (:var mv1107 :isa sustained :theme mv1103 :level mv1111 :past "PAST")
   (:var mv1103 :isa protein :predication mv1105 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1105 :isa phosphorylate :substrate mv1103 :raw-text "phosphorylated")
   (:var mv1111 :isa level :has-determiner "A" :predication mv1110 :raw-text "level")
   (:var mv1110 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv1119 :isa polar-question :statement mv1118)
   (:var mv1118 :isa sustained :participant mv1114 :past "PAST")
   (:var mv1114 :isa protein :predication mv1116 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1116 :isa phosphorylate :substrate mv1114 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv1125 :isa polar-question :statement mv1124)
   (:var mv1124 :isa copular-predication :item mv1120 :value mv1123 :predicate mv1121)
   (:var mv1120 :isa protein :predication mv1122 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1122 :isa phosphorylate :substrate mv1120 :raw-text "phosphorylated")
   (:var mv1123 :isa transient) (:var mv1121 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv1136 :isa polar-question :statement mv1135)
   (:var mv1135 :isa copular-predication :item mv1134 :value mv1132 :predicate mv1128)
   (:var mv1134 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv1127
    :component mv1126)
   (:var mv1127 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1126 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv1132 :isa high :adverb mv1131) (:var mv1131 :isa ever :name "ever")
   (:var mv1128 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv1145 :isa polar-question :statement mv1142)
   (:var mv1142 :isa bio-form :agent mv1144 :past "PAST" :raw-text "formed")
   (:var mv1144 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv1138
    :component mv1137)
   (:var mv1138 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1137 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv1168 :isa polar-question :statement mv1167)
   (:var mv1167 :isa event-relation :subordinated-event mv1163 :event mv1165)
   (:var mv1163 :isa wh-question :statement mv1157 :wh if)
   (:var mv1157 :isa increase :|agent-OR-cause| mv1155 :object mv1146 :present "PRESENT" :raw-text
    "increase")
   (:var mv1155 :isa interlocutor :name "person-and-machine")
   (:var mv1146 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1165 :isa copular-predication :item mv1149 :value mv1153 :predicate mv1147)
   (:var mv1149 :isa bio-amount :measured-item mv1151 :has-determiner "THE" :raw-text "amount")
   (:var mv1151 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1153 :isa low :adverb mv1152) (:var mv1152 :isa always :name "always")
   (:var mv1147 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv1193 :isa polar-question :statement mv1192)
   (:var mv1192 :isa event-relation :subordinated-event mv1188 :event mv1190)
   (:var mv1188 :isa wh-question :statement mv1180 :wh if)
   (:var mv1180 :isa increase :|agent-OR-cause| mv1178 :|multiplier-OR-cause| mv1186 :object mv1169
    :present "PRESENT" :raw-text "increase")
   (:var mv1178 :isa interlocutor :name "person-and-machine")
   (:var mv1186 :isa measurement :number mv1183) (:var mv1183 :isa number :value 100)
   (:var mv1169 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1190 :isa copular-predication :item mv1172 :value mv1176 :predicate mv1170)
   (:var mv1172 :isa bio-amount :measured-item mv1174 :has-determiner "THE" :raw-text "amount")
   (:var mv1174 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1176 :isa low :adverb mv1175) (:var mv1175 :isa always :name "always")
   (:var mv1170 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv1220 :isa polar-question :statement mv1219)
   (:var mv1219 :isa event-relation :subordinated-event mv1215 :event mv1217)
   (:var mv1215 :isa wh-question :statement mv1205 :wh if)
   (:var mv1205 :isa increase :|agent-OR-cause| mv1203 :|affected-process-OR-object| mv1207
    :present "PRESENT" :raw-text "increase")
   (:var mv1203 :isa interlocutor :name "person-and-machine")
   (:var mv1207 :isa bio-amount :measured-item mv1194 :has-determiner "THE" :raw-text "amount")
   (:var mv1194 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1217 :isa copular-predication :item mv1197 :value mv1201 :predicate mv1195)
   (:var mv1197 :isa bio-amount :measured-item mv1199 :has-determiner "THE" :raw-text "amount")
   (:var mv1199 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1201 :isa high :adverb mv1200) (:var mv1200 :isa ever :name "ever")
   (:var mv1195 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv1249 :isa polar-question :statement mv1248)
   (:var mv1248 :isa event-relation :subordinated-event mv1244 :event mv1246)
   (:var mv1244 :isa wh-question :statement mv1232 :wh if)
   (:var mv1232 :isa increase :|agent-OR-cause| mv1230 :|multiplier-OR-cause| mv1241
    :|affected-process-OR-object| mv1234 :present "PRESENT" :raw-text "increase")
   (:var mv1230 :isa interlocutor :name "person-and-machine")
   (:var mv1241 :isa measurement :number mv1238) (:var mv1238 :isa number :value 100)
   (:var mv1234 :isa bio-amount :measured-item mv1221 :has-determiner "THE" :raw-text "amount")
   (:var mv1221 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1246 :isa copular-predication :item mv1224 :value mv1228 :predicate mv1222)
   (:var mv1224 :isa bio-amount :measured-item mv1226 :has-determiner "THE" :raw-text "amount")
   (:var mv1226 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1228 :isa high :adverb mv1227) (:var mv1227 :isa ever :name "ever")
   (:var mv1222 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv1259 :isa polar-question :statement mv1255)
   (:var mv1255 :isa phosphorylate :cause mv1253 :past "PAST" :raw-text "phosphorylated")
   (:var mv1253 :isa bio-amount :measured-item mv1250 :has-determiner "THE" :raw-text "amount")
   (:var mv1250 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv1270 :isa polar-question :statement mv1269)
   (:var mv1269 :isa copular-predication :item mv1263 :value mv1267 :predicate mv1261)
   (:var mv1263 :isa bio-amount :measured-item mv1260 :has-determiner "THE" :raw-text "amount")
   (:var mv1260 :isa protein :predication mv1265 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1265 :isa phosphorylate :substrate mv1260 :raw-text "phosphorylated")
   (:var mv1267 :isa high :adverb mv1266) (:var mv1266 :isa eventually :name "eventually")
   (:var mv1261 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv1281 :isa polar-question :statement mv1280)
   (:var mv1280 :isa copular-predication :item mv1274 :value mv1278 :predicate mv1272)
   (:var mv1274 :isa bio-amount :measured-item mv1271 :has-determiner "THE" :raw-text "amount")
   (:var mv1271 :isa protein :predication mv1276 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1276 :isa phosphorylate :substrate mv1271 :raw-text "phosphorylated")
   (:var mv1278 :isa high :adverb mv1277) (:var mv1277 :isa ever :name "ever")
   (:var mv1272 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv1292 :isa polar-question :statement mv1290)
   (:var mv1290 :isa increase :cause mv1285 :adverb mv1288 :raw-text "increasing")
   (:var mv1285 :isa bio-amount :measured-item mv1282 :has-determiner "THE" :raw-text "amount")
   (:var mv1282 :isa protein :predication mv1287 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1287 :isa phosphorylate :substrate mv1282 :raw-text "phosphorylated")
   (:var mv1288 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv1302 :isa polar-question :statement mv1301)
   (:var mv1301 :isa copular-predication :item mv1296 :value mv1299 :predicate mv1294)
   (:var mv1296 :isa bio-amount :measured-item mv1293 :has-determiner "THE" :raw-text "amount")
   (:var mv1293 :isa protein :predication mv1298 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1298 :isa phosphorylate :substrate mv1293 :raw-text "phosphorylated")
   (:var mv1299 :isa high) (:var mv1294 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv1313 :isa polar-question :statement mv1312)
   (:var mv1312 :isa copular-predication :item mv1306 :value mv1310 :predicate mv1304)
   (:var mv1306 :isa bio-amount :measured-item mv1303 :has-determiner "THE" :raw-text "amount")
   (:var mv1303 :isa protein :predication mv1308 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1308 :isa phosphorylate :substrate mv1303 :raw-text "phosphorylated")
   (:var mv1310 :isa high :adverb mv1309) (:var mv1309 :isa sometimes) (:var mv1304 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv1328 :isa polar-question :statement mv1321)
   (:var mv1321 :isa sustained :theme mv1317 :level mv1325 :past "PAST")
   (:var mv1317 :isa bio-amount :measured-item mv1314 :has-determiner "THE" :raw-text "amount")
   (:var mv1314 :isa protein :predication mv1319 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1319 :isa phosphorylate :substrate mv1314 :raw-text "phosphorylated")
   (:var mv1325 :isa level :has-determiner "A" :predication mv1324 :raw-text "level")
   (:var mv1324 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv1338 :isa polar-question :statement mv1336)
   (:var mv1336 :isa sustained :participant mv1332 :past "PAST")
   (:var mv1332 :isa bio-amount :measured-item mv1329 :has-determiner "THE" :raw-text "amount")
   (:var mv1329 :isa protein :predication mv1334 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1334 :isa phosphorylate :substrate mv1329 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv1348 :isa polar-question :statement mv1347)
   (:var mv1347 :isa copular-predication :item mv1342 :value mv1345 :predicate mv1340)
   (:var mv1342 :isa bio-amount :measured-item mv1339 :has-determiner "THE" :raw-text "amount")
   (:var mv1339 :isa protein :predication mv1344 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1344 :isa phosphorylate :substrate mv1339 :raw-text "phosphorylated")
   (:var mv1345 :isa transient) (:var mv1340 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv1359 :isa polar-question :statement mv1357)
   (:var mv1357 :isa copular-predication :item mv1352 :value mv1356 :predicate mv1355)
   (:var mv1352 :isa bio-amount :measured-item mv1349 :has-determiner "THE" :raw-text "amount")
   (:var mv1349 :isa protein :predication mv1354 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1354 :isa phosphorylate :substrate mv1349 :raw-text "phosphorylated")
   (:var mv1356 :isa high) (:var mv1355 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv1382 :isa polar-question :statement mv1381)
   (:var mv1381 :isa event-relation :subordinated-event mv1378 :event mv1379)
   (:var mv1378 :isa wh-question :statement mv1368 :wh if)
   (:var mv1368 :isa increase :|agent-OR-cause| mv1366 :|affected-process-OR-object| mv1370
    :present "PRESENT" :raw-text "increase")
   (:var mv1366 :isa interlocutor :name "person-and-machine")
   (:var mv1370 :isa bio-amount :measured-item mv1361 :has-determiner "THE" :raw-text "amount")
   (:var mv1361 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv1379 :isa copular-predication :item mv1360 :value mv1364 :predicate mv1362)
   (:var mv1360 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv1364 :isa low :adverb mv1363) (:var mv1363 :isa eventually :name "eventually")
   (:var mv1362 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv1409 :isa polar-question :statement mv1408)
   (:var mv1408 :isa event-relation :subordinated-event mv1405 :event mv1406)
   (:var mv1405 :isa wh-question :statement mv1402 :wh if)
   (:var mv1402 :isa increase :|affected-process-OR-object| mv1391 :|multiplier-OR-cause| mv1400
    :raw-text "increased")
   (:var mv1391 :isa bio-amount :measured-item mv1384 :has-determiner "THE" :raw-text "amount")
   (:var mv1384 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv1400 :isa measurement :number mv1397) (:var mv1397 :isa number :value 100)
   (:var mv1406 :isa copular-predication :item mv1383 :value mv1388 :predicate mv1385)
   (:var mv1383 :isa protein :predication mv1386 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv1386 :isa active) (:var mv1388 :isa low :adverb mv1387)
   (:var mv1387 :isa eventually :name "eventually") (:var mv1385 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv1436 :isa polar-question :statement mv1435)
   (:var mv1435 :isa event-relation :subordinated-event mv1431 :event mv1433)
   (:var mv1431 :isa wh-question :statement mv1421 :wh if)
   (:var mv1421 :isa increase :|agent-OR-cause| mv1419 :|affected-process-OR-object| mv1423
    :present "PRESENT" :raw-text "increase")
   (:var mv1419 :isa interlocutor :name "person-and-machine")
   (:var mv1423 :isa bio-amount :measured-item mv1411 :has-determiner "THE" :raw-text "amount")
   (:var mv1411 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv1433 :isa copular-predication :item mv1414 :value mv1417 :predicate mv1412)
   (:var mv1414 :isa bio-amount :measured-item mv1410 :has-determiner "THE" :raw-text "amount")
   (:var mv1410 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv1417 :isa low :adverb mv1416) (:var mv1416 :isa eventually :name "eventually")
   (:var mv1412 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv1464 :isa polar-question :statement mv1463)
   (:var mv1463 :isa event-relation :subordinated-event mv1459 :event mv1461)
   (:var mv1459 :isa wh-question :statement mv1449 :wh if)
   (:var mv1449 :isa increase :|agent-OR-cause| mv1447 :|affected-process-OR-object| mv1451
    :present "PRESENT" :raw-text "increase")
   (:var mv1447 :isa interlocutor :name "person-and-machine")
   (:var mv1451 :isa bio-amount :measured-item mv1438 :has-determiner "THE" :raw-text "amount")
   (:var mv1438 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv1461 :isa copular-predication :item mv1441 :value mv1445 :predicate mv1439)
   (:var mv1441 :isa bio-amount :measured-item mv1437 :has-determiner "THE" :raw-text "amount")
   (:var mv1437 :isa protein :predication mv1443 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv1443 :isa active) (:var mv1445 :isa low :adverb mv1444)
   (:var mv1444 :isa always :name "always") (:var mv1439 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv1474 :isa explicit-suggestion :suggestion mv1468 :marker let-as-directive)
   (:var mv1468 :isa move-something-somewhere :at-relative-location mv1471 :theme mv1472 :present
    "PRESENT")
   (:var mv1471 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv1472 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv1466 mv1467))
   (:var mv1466 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1467 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv1477 :isa phosphorylate :agent mv1475 :substrate mv1476 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1475 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv1476 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv1478 :isa move-something-somewhere :at-relative-location mv1481 :theme mv1483 :present
    "PRESENT")
   (:var mv1481 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv1483 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv1486 :isa phosphorylate :agent mv1484 :substrate mv1485 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1484 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1485 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv1496 :isa explicit-suggestion :suggestion mv1489 :marker let-as-directive)
   (:var mv1489 :isa highlight :theme mv1491 :present "PRESENT")
   (:var mv1491 :isa upstream-segment :pathwaycomponent mv1488 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv1488 :isa protein :predication mv1494 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1494 :isa phosphorylate :substrate mv1488 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv1505 :isa explicit-suggestion :suggestion mv1499 :marker let-as-directive)
   (:var mv1499 :isa show :at-relative-location mv1503 :|statement-OR-theme| mv1498 :present
    "PRESENT")
   (:var mv1503 :isa top-qua-location :has-determiner "THE")
   (:var mv1498 :isa protein :predication mv1500 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1500 :isa phosphorylate :substrate mv1498 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv1518 :isa explicit-suggestion :suggestion mv1508 :marker let-as-directive)
   (:var mv1508 :isa show :at-relative-location mv1515 :|statement-OR-theme| mv1510 :present
    "PRESENT")
   (:var mv1515 :isa top-qua-location :has-determiner "THE")
   (:var mv1510 :isa downstream-segment :pathwaycomponent mv1507 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv1507 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv1527 :isa explicit-suggestion :suggestion mv1520 :marker let-as-directive)
   (:var mv1520 :isa move-something-somewhere :goal mv1525 :theme mv1522 :present "PRESENT")
   (:var mv1525 :isa top-qua-location :has-determiner "THE")
   (:var mv1522 :isa element :modifier mv1521)
   (:var mv1521 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv1532 :isa affect :manner mv1529 :agent mv1531 :object mv1528 :present "PRESENT"
    :raw-text "affect")
   (:var mv1529 :isa how)
   (:var mv1531 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1528 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv1536 :isa affect :manner mv1534 :agent mv1533 :object mv1537 :present "PRESENT"
    :raw-text "affect")
   (:var mv1534 :isa how)
   (:var mv1533 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1537 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv1540 :isa be :subject mv1539 :predicate mv1542 :present "PRESENT")
   (:var mv1539 :isa what) (:var mv1542 :isa path :endpoints mv1546 :has-determiner "THE")
   (:var mv1546 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv1544 mv1538))
   (:var mv1544 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1538 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv1551 :isa affect :manner mv1549 :agent mv1548 :object mv1552 :present "PRESENT"
    :raw-text "affect")
   (:var mv1549 :isa how)
   (:var mv1548 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1552 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv1557 :isa affect :manner mv1555 :agent mv1553 :object mv1554 :present "PRESENT"
    :raw-text "affect")
   (:var mv1555 :isa how)
   (:var mv1553 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv1554 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv1562 :isa affect :manner mv1559 :agent mv1561 :object mv1558 :present "PRESENT"
    :raw-text "affect")
   (:var mv1559 :isa how)
   (:var mv1561 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv1558 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv1566 :isa affect :manner mv1563 :agent mv1565 :object mv1567 :present "PRESENT"
    :raw-text "affect")
   (:var mv1563 :isa how)
   (:var mv1565 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv1567 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv1572 :isa phosphorylate :amino-acid mv1570 :agent mv1568 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv1570 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv1568 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What pathways affect BRAF?"
   (:var mv1575 :isa affect :agent mv1574 :object mv1576 :present "PRESENT" :raw-text "affect")
   (:var mv1574 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv1576 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv1579 :isa bio-activate :agent mv1578 :object mv1580 :present "PRESENT" :raw-text
    "activate")
   (:var mv1578 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv1580 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv1589 :isa explicit-suggestion :suggestion mv1584 :marker let-as-directive)
   (:var mv1584 :isa learning :statement mv1582 :present "PRESENT")
   (:var mv1582 :isa protein :context mv1583 :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1583 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is its relationship with BRAF?"
   (:var mv1591 :isa be :subject mv1590 :predicate mv1593 :present "PRESENT")
   (:var mv1590 :isa what) (:var mv1593 :isa relationship :patient mv1595 :modifier mv1592)
   (:var mv1595 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1592 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv1599 :isa be :subject mv1598 :predicate mv1601 :present "PRESENT")
   (:var mv1598 :isa what) (:var mv1601 :isa relationship :patient mv1597 :modifier mv1600)
   (:var mv1597 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv1600 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv1606 :isa phosphorylate :agent mv1604 :substrate mv1605 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1604 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1605 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv1608 :isa what))
  ("Let's stop learning about AKT1." (:var mv1616 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv1625 :isa be :subject mv1624 :predicate mv1628 :present "PRESENT")
   (:var mv1624 :isa what)
   (:var mv1628 :isa response :beneficiary mv1630 :has-determiner "THE" :modifier mv1627 :raw-text
    "response")
   (:var mv1630 :isa cell-type :mutation mv1632)
   (:var mv1632 :isa alter :|agent-OR-object| mv1623 :raw-text "alterations")
   (:var mv1623 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1627 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv1637 :isa be :subject mv1636 :predicate mv1640 :present "PRESENT")
   (:var mv1636 :isa what)
   (:var mv1640 :isa response :cell-type mv1642 :has-determiner "THE" :modifier mv1639 :raw-text
    "response")
   (:var mv1642 :isa cell-type :mutation mv1644)
   (:var mv1644 :isa alter :|agent-OR-object| mv1635 :raw-text "alterations")
   (:var mv1635 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1639 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv1648 :isa be :subject mv1647 :predicate mv1651 :present "PRESENT")
   (:var mv1647 :isa what)
   (:var mv1651 :isa frequency :measured-item mv1653 :has-determiner "THE" :measured-item mv1650
    :raw-text "frequency")
   (:var mv1653 :isa protein :context mv1655 :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv1655 :isa glioblastoma) (:var mv1650 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv1661 :isa be :subject mv1660 :predicate mv1664 :present "PRESENT")
   (:var mv1660 :isa what)
   (:var mv1664 :isa frequency :measured-item mv1658 :has-determiner "THE" :measured-item mv1663
    :raw-text "frequency")
   (:var mv1658 :isa protein :context mv1659 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1659 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv1663 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv1670 :isa show :|statement-OR-theme| mv1673 :beneficiary mv1671 :present "PRESENT")
   (:var mv1673 :isa mutation :object mv1679 :has-determiner "THE" :raw-text "mutations")
   (:var mv1679 :isa collection :context mv1669 :raw-text "PTEN and BRAF" :type protein :number 2
    :items (mv1675 mv1677))
   (:var mv1669 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv1675 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1677 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1671 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv1683 :isa show :|statement-OR-theme| mv1686 :beneficiary mv1684 :present "PRESENT")
   (:var mv1686 :isa mutation :object mv1688 :has-determiner "THE" :raw-text "mutations")
   (:var mv1688 :isa protein :context mv1682 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1682 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv1684 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv1694 :isa be :subject mv1693 :predicate mv1696 :present "PRESENT")
   (:var mv1693 :isa what)
   (:var mv1696 :isa mutation :object mv1698 :has-determiner "THE" :raw-text "mutations")
   (:var mv1698 :isa protein :context mv1692 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1692 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv1704 :isa be :subject mv1703 :predicate mv1716 :present "PRESENT")
   (:var mv1703 :isa what) (:var mv1716 :isa quality-predicate :item mv1714 :attribute mv1710)
   (:var mv1714 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv1702 mv1713))
   (:var mv1702 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1713 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1710 :isa location-of :has-determiner "THE" :predication mv1708 :modifier mv1709)
   (:var mv1708 :isa likely :comparative mv1706)
   (:var mv1706 :isa superlative-quantifier :name "most")
   (:var mv1709 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv1729 :isa polar-question :statement mv1726)
   (:var mv1726 :isa there-exists :value mv1722 :predicate mv1719)
   (:var mv1722 :isa upstream-segment :pathwaycomponent mv1727 :predication mv1721 :raw-text
    "upstreams")
   (:var mv1727 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv1717 mv1725))
   (:var mv1717 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1725 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1721 :isa common) (:var mv1719 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv1733 :isa be :subject mv1732 :predicate mv1736 :present "PRESENT")
   (:var mv1732 :isa what)
   (:var mv1736 :isa upstream-segment :pathwaycomponent mv1740 :has-determiner "THE" :predication
    mv1735 :raw-text "upstreams")
   (:var mv1740 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv1730 mv1738 mv1731))
   (:var mv1730 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1738 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1731 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1735 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv1752 :isa copular-predication :item mv1746 :value mv1742 :predicate mv1747)
   (:var mv1746 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv1742 :isa mutual-exclusivity :disease mv1744 :alternative mv1743)
   (:var mv1744 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv1743 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv1747 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv1757 :isa be :subject mv1756 :predicate mv1764 :present "PRESENT")
   (:var mv1756 :isa what)
   (:var mv1764 :isa gene :disease mv1755 :has-determiner "THE" :predication mv1753 :raw-text
    "genes")
   (:var mv1755 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv1753 :isa mutual-exclusivity :alternative mv1754)
   (:var mv1754 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv1768 :isa be :subject mv1767 :predicate mv1771 :present "PRESENT")
   (:var mv1767 :isa what)
   (:var mv1771 :isa significance :result mv1766 :agent mv1765 :has-determiner "THE" :modifier
    mv1770)
   (:var mv1766 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv1765 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1770 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv1779 :isa be :subject mv1778 :predicate mv1782 :present "PRESENT")
   (:var mv1778 :isa what)
   (:var mv1782 :isa significance :agent mv1776 :has-determiner "THE" :modifier mv1781)
   (:var mv1776 :isa protein :context mv1777 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1777 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv1781 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv1788 :isa be :subject mv1787 :predicate mv1791 :present "PRESENT")
   (:var mv1787 :isa what)
   (:var mv1791 :isa significance :agent mv1793 :has-determiner "THE" :modifier mv1790)
   (:var mv1793 :isa protein :context mv1796 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1796 :isa cancer :organ mv1795 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv1795 :isa pancreas) (:var mv1790 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv1800 :isa be :subject mv1799 :predicate mv1803 :present "PRESENT")
   (:var mv1799 :isa what)
   (:var mv1803 :isa significance :agent mv1805 :has-determiner "THE" :modifier mv1802)
   (:var mv1805 :isa protein :context mv1808 :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1808 :isa cancer :modifier mv1807 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv1807 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv1802 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv1812 :isa phosphorylate :agent mv1811 :substrate mv1813 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1811 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv1813 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv1815 :isa binding :binder mv1814 :direct-bindee mv1816 :present "PRESENT" :raw-text
    "binds")
   (:var mv1814 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv1816 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv1822 :isa binding :binder mv1818 :direct-bindee mv1817 :present "PRESENT" :raw-text
    "binds")
   (:var mv1818 :isa protein :predication mv1819 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv1819 :isa binding :direct-bindee mv1818 :bindee mv1821 :past "PAST" :raw-text "bound")
   (:var mv1821 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv1817 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv1828 :isa copular-predication :item mv1825 :value mv1827 :predicate mv1826)
   (:var mv1825 :isa protein-family :predication mv1824 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv1824 :isa phosphorylate :substrate mv1825 :raw-text "Phosphorylated")
   (:var mv1827 :isa active) (:var mv1826 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv1829 :isa protein :predication mv1831 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv1831 :isa phosphorylate :substrate mv1829 :target mv1830 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv1830 :isa protein :site mv1836 :modifier mv1837 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1836 :isa residue-on-protein :raw-text "S220" :position mv1835 :amino-acid mv1834)
   (:var mv1835 :isa number :value 220) (:var mv1834 :isa amino-acid :name "serine" :letter "S")
   (:var mv1837 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv1842 :isa transcribe :agent mv1839 :object mv1840 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv1839 :isa protein :predication mv1841 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv1841 :isa active)
   (:var mv1840 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv1871 :isa polar-question :statement mv1870)
   (:var mv1870 :isa event-relation :subordinated-event mv1866 :event mv1868)
   (:var mv1866 :isa wh-question :statement mv1854 :wh if)
   (:var mv1854 :isa increase :|agent-OR-cause| mv1852 :|multiplier-OR-cause| mv1863
    :|affected-process-OR-object| mv1856 :present "PRESENT" :raw-text "increase")
   (:var mv1852 :isa interlocutor :name "person-and-machine")
   (:var mv1863 :isa measurement :number mv1860) (:var mv1860 :isa number :value 10)
   (:var mv1856 :isa bio-amount :measured-item mv1843 :has-determiner "THE" :raw-text "amount")
   (:var mv1843 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1868 :isa copular-predication :item mv1846 :value mv1850 :predicate mv1844)
   (:var mv1846 :isa bio-amount :measured-item mv1848 :has-determiner "THE" :raw-text "amount")
   (:var mv1848 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1850 :isa high :adverb mv1849) (:var mv1849 :isa ever :name "ever")
   (:var mv1844 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv1883 :isa polar-question :statement mv1881)
   (:var mv1881 :isa decrease :agent mv1873 :object mv1877 :raw-text "decrease")
   (:var mv1873 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv1877 :isa protein-family :info-context mv1880 :predication mv1876 :raw-text "ERK" :name
    "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv1880 :isa model :has-determiner "THE")
   (:var mv1876 :isa phosphorylate :substrate mv1877 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv1894 :isa polar-question :statement mv1892)
   (:var mv1892 :isa decrease :agent mv1885 :object mv1888 :raw-text "decrease")
   (:var mv1885 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv1888 :isa protein :info-context mv1891 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv1891 :isa model :has-determiner "THE"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv1899 :isa regulate :manner mv1896 :agent mv1898 :object mv1895 :present "PRESENT"
    :raw-text "regulate")
   (:var mv1896 :isa how)
   (:var mv1898 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv1895 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv1904 :isa bio-activate :manner mv1901 :agent mv1903 :object mv1900 :present "PRESENT"
    :raw-text "activate")
   (:var mv1901 :isa how)
   (:var mv1903 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv1900 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv1910 :isa polar-question :statement mv1909)
   (:var mv1909 :isa inhibit :agent mv1906 :object mv1908 :raw-text "inhibit")
   (:var mv1906 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv1908 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv1921 :isa share :object mv1911 :participant mv1920 :present "PRESENT" :raw-text
    "shared")
   (:var mv1911 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv1920 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv1917 mv1918 mv1912))
   (:var mv1917 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv1918 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv1912 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv1924 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv1933 :isa be :subject mv1932 :predicate mv1934 :present "PRESENT")
   (:var mv1932 :isa what)
   (:var mv1934 :isa upstream-segment :pathwaycomponent mv1931 :raw-text "upstream")
   (:var mv1931 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv1942 :isa want :agent mv1939 :theme mv1950 :present "PRESENT")
   (:var mv1939 :isa interlocutor :name "speaker")
   (:var mv1950 :isa bio-find :agent mv1939 :object mv1947 :present "PRESENT" :raw-text "find")
   (:var mv1947 :isa treatment :disease mv1938 :has-determiner "A" :raw-text "treatment")
   (:var mv1938 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv1959 :isa bio-use :object mv1952 :modal mv1953 :agent mv1954 :present "PRESENT"
    :raw-text "use")
   (:var mv1952 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv1953 :isa could)
   (:var mv1954 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv1969 :isa polar-question :statement mv1967)
   (:var mv1967 :isa there-exists :value mv1964 :predicate mv1961)
   (:var mv1964 :isa drug :target mv1966 :quantifier mv1963 :raw-text "drugs")
   (:var mv1966 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1963 :isa any :word "any") (:var mv1961 :isa syntactic-there))
  ("Are they kinases?" (:var mv1973 :isa polar-question :statement mv1970)
   (:var mv1970 :isa be :subject mv1971 :predicate mv1972)
   (:var mv1971 :isa pronoun/plural :word "they") (:var mv1972 :isa kinase :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv1983 :isa polar-question :statement mv1977)
   (:var mv1977 :isa bio-find :agent mv1975 :object mv1979 :modal "CAN" :raw-text "find")
   (:var mv1975 :isa interlocutor :name "hearer")
   (:var mv1979 :isa drug :target mv1981 :has-determiner "A" :raw-text "drug")
   (:var mv1981 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv2001 :isa polar-question :statement mv1988)
   (:var mv1988 :isa tell :agent mv1987 :theme mv1984 :beneficiary mv1989 :modal "CAN")
   (:var mv1987 :isa interlocutor :name "hearer")
   (:var mv1984 :isa transcription-factor :predication mv1999 :quantifier mv1990 :has-determiner
    "THE" :raw-text "transcription factors")
   (:var mv1999 :isa share :object mv1984 :that-rel t :participant mv1998 :modal "CAN" :raw-text
    "shared")
   (:var mv1998 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv1985 mv1997))
   (:var mv1985 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1997 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv1990 :isa all :word "all") (:var mv1989 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv2017 :isa polar-question :statement mv2006)
   (:var mv2006 :isa tell :agent mv2005 :theme mv2015 :theme mv2007 :modal "CAN")
   (:var mv2005 :isa interlocutor :name "hearer")
   (:var mv2015 :isa share :object mv2002 :participant mv2014 :modal "CAN" :raw-text "shared")
   (:var mv2002 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv2014 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2003 mv2013))
   (:var mv2003 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2013 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2007 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv2028 :isa polar-question :statement mv2027)
   (:var mv2027 :isa know :agent mv2019 :statement mv2022)
   (:var mv2019 :isa interlocutor :name "hearer")
   (:var mv2022 :isa drug :target mv2024 :quantifier mv2021 :raw-text "drugs")
   (:var mv2024 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv2021 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv2040 :isa polar-question :statement mv2038)
   (:var mv2038 :isa regulate :agent mv2029 :object mv2034 :raw-text "regulate")
   (:var mv2029 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2034 :isa gene :organ mv2037 :has-determiner "THE" :expresses mv2033 :raw-text "gene")
   (:var mv2037 :isa lung :has-determiner "THE")
   (:var mv2033 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv2051 :isa polar-question :statement mv2049)
   (:var mv2049 :isa regulate :agent mv2041 :object mv2046 :raw-text "regulate")
   (:var mv2041 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2046 :isa gene :organ mv2048 :has-determiner "THE" :expresses mv2042 :raw-text "gene")
   (:var mv2048 :isa liver)
   (:var mv2042 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv2059 :isa polar-question :statement mv2058)
   (:var mv2058 :isa regulate :agent mv2052 :object mv2057 :raw-text "regulate")
   (:var mv2052 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2057 :isa gene :has-determiner "THE" :expresses mv2053 :raw-text "gene")
   (:var mv2053 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv2071 :isa polar-question :statement mv2069)
   (:var mv2069 :isa regulate :agent mv2060 :object mv2065 :raw-text "regulate")
   (:var mv2060 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2065 :isa gene :organ mv2068 :has-determiner "THE" :expresses mv2064 :raw-text "gene")
   (:var mv2068 :isa lung :has-determiner "THE")
   (:var mv2064 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv2078 :isa polar-question :statement mv2077)
   (:var mv2077 :isa target :agent mv2072 :object mv2073 :raw-text "target")
   (:var mv2072 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv2073 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv2085 :isa polar-question :statement mv2084)
   (:var mv2084 :isa target :agent mv2079 :object mv2080 :raw-text "target")
   (:var mv2079 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv2080 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv2092 :isa polar-question :statement mv2091)
   (:var mv2091 :isa target :agent mv2086 :object mv2087 :raw-text "target")
   (:var mv2086 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv2087 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv2099 :isa polar-question :statement mv2098)
   (:var mv2098 :isa target :agent mv2093 :object mv2094 :raw-text "target")
   (:var mv2093 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv2094 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv2108 :isa polar-question :statement mv2106)
   (:var mv2106 :isa regulate :agent mv2100 :object mv2105 :raw-text "regulate")
   (:var mv2100 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2105 :isa bio-entity :organ mv2104 :name "cfors") (:var mv2104 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv2117 :isa polar-question :statement mv2115)
   (:var mv2115 :isa regulate :agent mv2109 :object mv2112 :raw-text "regulate")
   (:var mv2109 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2112 :isa protein :organ mv2114 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv2114 :isa liver))
  ("Does it regulate cfos in brain" (:var mv2126 :isa polar-question :statement mv2124)
   (:var mv2124 :isa regulate :|agent-OR-cause| mv2119 :object mv2121 :raw-text "regulate")
   (:var mv2119 :isa pronoun/inanimate :word "it")
   (:var mv2121 :isa protein :organ mv2123 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv2123 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv2132 :isa polar-question :statement mv2131)
   (:var mv2131 :isa regulate :agent mv2127 :object mv2130 :raw-text "regulate")
   (:var mv2127 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2130 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv2144 :isa polar-question :statement mv2142)
   (:var mv2142 :isa regulate :agent mv2133 :object mv2138 :raw-text "regulate")
   (:var mv2133 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2138 :isa gene :cell-type mv2141 :has-determiner "THE" :expresses mv2137 :raw-text
    "gene")
   (:var mv2141 :isa cell-type :non-cellular-location mv2140)
   (:var mv2140 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv2137 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv2154 :isa polar-question :statement mv2153)
   (:var mv2153 :isa utilize :participant mv2150 :object mv2145 :raw-text "utilize")
   (:var mv2150 :isa pathway :has-determiner "THE" :modifier mv2152 :raw-text "pathway")
   (:var mv2152 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv2145 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv2164 :isa polar-question :statement mv2163)
   (:var mv2163 :isa utilize :participant mv2161 :object mv2155 :raw-text "utilize")
   (:var mv2161 :isa pathway :has-determiner "THE" :modifier mv2158 :raw-text "pathway")
   (:var mv2158 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv2155 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv2166 :isa give :theme mv2173 :beneficiary mv2167 :present "PRESENT")
   (:var mv2173 :isa evidence :statement mv2172 :has-determiner "THE")
   (:var mv2172 :isa decrease :agent mv2171 :object mv2165 :present "PRESENT" :raw-text
    "decreases")
   (:var mv2171 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2165 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2167 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv2175 :isa give :theme mv2182 :beneficiary mv2176 :present "PRESENT")
   (:var mv2182 :isa evidence :statement mv2181 :has-determiner "THE")
   (:var mv2181 :isa regulate :agent mv2180 :object mv2174 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2180 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2174 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2176 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv2187 :isa polar-question :statement mv2183)
   (:var mv2183 :isa be :subject mv2184 :predicate mv2186)
   (:var mv2184 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2186 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv2194 :isa polar-question :statement mv2190)
   (:var mv2190 :isa inhibit :object mv2188 :agent mv2192 :past "PAST" :raw-text "inhibited")
   (:var mv2188 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv2192 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv2203 :isa polar-question :statement mv2198)
   (:var mv2198 :isa be :subject mv2195 :predicate mv2196)
   (:var mv2195 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2196 :isa transcription-factor :controlled-gene mv2201 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv2201 :isa gene :expresses mv2197 :raw-text "gene")
   (:var mv2197 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv2218 :isa polar-question :statement mv2206)
   (:var mv2206 :isa be :subject mv2204 :predicate mv2212)
   (:var mv2204 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2212 :isa regulator :quantifier mv2209 :theme mv2215 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv2209 :isa number :value 1)
   (:var mv2215 :isa gene :has-determiner "THE" :expresses mv2205 :raw-text "gene")
   (:var mv2205 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv2226 :isa polar-question :statement mv2220)
   (:var mv2220 :isa be :subject mv2221 :predicate mv2223)
   (:var mv2221 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv2223 :isa inhibitor :protein mv2219 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv2219 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv2234 :isa polar-question :statement mv2227)
   (:var mv2227 :isa be :subject mv2228 :predicate mv2230)
   (:var mv2228 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv2230 :isa inhibitor :|target-OR-protein| mv2232 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv2232 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv2239 :isa polar-question :statement mv2235)
   (:var mv2235 :isa be :subject mv2238 :predicate mv2237)
   (:var mv2238 :isa bio-entity :name "fakeprotein")
   (:var mv2237 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv2244 :isa polar-question :statement mv2241)
   (:var mv2241 :isa be :subject mv2240 :predicate mv2243)
   (:var mv2240 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv2243 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv2251 :isa polar-question :statement mv2246)
   (:var mv2246 :isa be :subject mv2245 :predicate mv2250)
   (:var mv2245 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2250 :isa regulator :has-determiner "AN" :cellular-process mv2248 :raw-text "regulator")
   (:var mv2248 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv2261 :isa polar-question :statement mv2254)
   (:var mv2254 :isa involve :object mv2252 :|context-OR-theme| mv2259 :past "PAST")
   (:var mv2252 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2259 :isa pathway :quantifier mv2256 :cellular-process mv2257 :raw-text "pathways")
   (:var mv2256 :isa any :word "any") (:var mv2257 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?" (:var mv2270 :isa polar-question :statement mv2264)
   (:var mv2264 :isa involve :object mv2262 :theme mv2268 :past "PAST")
   (:var mv2262 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2268 :isa regulate :|cellular-process-OR-agent| mv2266 :raw-text "regulation")
   (:var mv2266 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?" (:var mv2278 :isa polar-question :statement mv2273)
   (:var mv2273 :isa involve :object mv2271 :theme mv2275 :past "PAST")
   (:var mv2271 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2275 :isa regulate :affected-process mv2276 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv2276 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv2283 :isa phosphorylate :amino-acid mv2280 :agent mv2282 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv2280 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv2282 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv2292 :isa polar-question :statement mv2284)
   (:var mv2284 :isa be :subject mv2289 :predicate mv2291)
   (:var mv2289 :isa number :quantifier mv2286 :value 1)
   (:var mv2286 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv2291 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv2303 :isa polar-question :statement mv2302)
   (:var mv2302 :isa there-exists :value mv2297 :predicate mv2294)
   (:var mv2297 :isa drug :predication mv2300 :has-determiner "A" :raw-text "drug")
   (:var mv2300 :isa target :agent mv2297 :that-rel t :object mv2301 :present "PRESENT" :raw-text
    "targets")
   (:var mv2301 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv2294 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv2316 :isa polar-question :statement mv2314)
   (:var mv2314 :isa there-exists :value mv2311 :predicate mv2306)
   (:var mv2311 :isa pathway :predication mv2312 :has-determiner "AN" :cellular-process mv2309
    :raw-text "pathway")
   (:var mv2312 :isa regulate :affected-process mv2311 :agent mv2304 :past "PAST" :raw-text
    "regulated")
   (:var mv2304 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2309 :isa apoptosis :raw-text "apoptotic") (:var mv2306 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv2332 :isa polar-question :statement mv2329)
   (:var mv2329 :isa there-exists :value mv2324 :predicate mv2319)
   (:var mv2324 :isa pathway :predication mv2330 :has-determiner "AN" :cellular-process mv2322
    :raw-text "pathway")
   (:var mv2330 :isa regulate :affected-process mv2324 :that-rel t :agent mv2317 :present "PRESENT"
    :raw-text "regulated")
   (:var mv2317 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2322 :isa apoptosis :raw-text "apoptotic") (:var mv2319 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv2334 :isa let :complement mv2348 :present "PRESENT")
   (:var mv2348 :isa know :agent mv2335 :statement mv2347 :present "PRESENT")
   (:var mv2335 :isa interlocutor :name "speaker")
   (:var mv2347 :isa wh-question :statement mv2346 :wh if)
   (:var mv2346 :isa there-exists :value mv2344 :predicate mv2340)
   (:var mv2344 :isa gene :predication mv2345 :quantifier mv2341 :cellular-process mv2342 :raw-text
    "genes")
   (:var mv2345 :isa regulate :object mv2344 :agent mv2333 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2333 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2341 :isa any :word "any") (:var mv2342 :isa apoptosis :raw-text "apoptotic")
   (:var mv2340 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv2350 :isa let :complement mv2356 :present "PRESENT")
   (:var mv2356 :isa know :agent mv2351 :statement mv2354 :present "PRESENT")
   (:var mv2351 :isa interlocutor :name "speaker")
   (:var mv2354 :isa gene :predication mv2355 :has-determiner "WHICH" :raw-text "genes")
   (:var mv2355 :isa regulate :object mv2354 :agent mv2349 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2349 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv2358 :isa list :theme mv2361 :present "PRESENT")
   (:var mv2361 :isa gene :predication mv2362 :quantifier mv2359 :has-determiner "THE" :raw-text
    "genes")
   (:var mv2362 :isa regulate :object mv2361 :agent mv2366 :past "PAST" :raw-text "regulated")
   (:var mv2366 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2357 mv2365))
   (:var mv2357 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2365 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2359 :isa all :word "all"))
  ("List genes regulated by elk1 and srf" (:var mv2369 :isa list :theme mv2370 :present "PRESENT")
   (:var mv2370 :isa gene :predication mv2371 :raw-text "genes")
   (:var mv2371 :isa regulate :object mv2370 :agent mv2375 :past "PAST" :raw-text "regulated")
   (:var mv2375 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2368 mv2374))
   (:var mv2368 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2374 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv2378 :isa list :theme mv2380 :present "PRESENT")
   (:var mv2380 :isa gene :predication mv2388 :quantifier mv2379 :raw-text "genes")
   (:var mv2388 :isa regulate :object mv2380 :that-rel t :agent mv2387 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2387 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2377 mv2386))
   (:var mv2377 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2386 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2379 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv2391 :isa list :theme mv2397 :present "PRESENT")
   (:var mv2397 :isa evidence :statement mv2396 :has-determiner "THE")
   (:var mv2396 :isa decrease :agent mv2395 :object mv2390 :present "PRESENT" :raw-text
    "decreases")
   (:var mv2395 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2390 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv2399 :isa name-something :patient mv2402 :present "PRESENT")
   (:var mv2402 :isa gene :predication mv2403 :raw-text "genes")
   (:var mv2403 :isa regulate :object mv2402 :agent mv2407 :past "PAST" :raw-text "regulated")
   (:var mv2407 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2398 mv2406))
   (:var mv2398 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2406 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv2424 :isa copular-predication :item mv2414 :value mv2419 :predicate mv2418)
   (:var mv2414 :isa gene :has-determiner "WHICH" :predication mv2415 :has-determiner "THE"
    :cellular-process mv2412 :raw-text "genes")
   (:var mv2415 :isa regulate :object mv2414 :agent mv2409 :past "PAST" :raw-text "regulated")
   (:var mv2409 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2412 :isa apoptosis :raw-text "apoptotic") (:var mv2419 :isa active :organ mv2422)
   (:var mv2422 :isa liver :has-determiner "THE") (:var mv2418 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv2442 :isa copular-predication :item mv2433 :value mv2437 :predicate mv2436)
   (:var mv2433 :isa gene :has-determiner "WHICH" :predication mv2434 :has-determiner "THE"
    :cellular-process mv2431 :raw-text "genes")
   (:var mv2434 :isa regulate :object mv2433 :agent mv2428 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2428 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2431 :isa apoptosis :raw-text "apoptotic") (:var mv2437 :isa active :organ mv2440)
   (:var mv2440 :isa liver :has-determiner "THE") (:var mv2436 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv2457 :isa copular-predication :item mv2448 :value mv2455 :predicate mv2454)
   (:var mv2448 :isa gene :has-determiner "WHICH" :predication mv2449 :has-determiner "THE"
    :raw-text "genes")
   (:var mv2449 :isa regulate :object mv2448 :agent mv2445 :organ mv2452 :present "PRESENT"
    :raw-text "regulates")
   (:var mv2445 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2452 :isa liver :has-determiner "THE")
   (:var mv2455 :isa apoptosis :raw-text "apoptotic") (:var mv2454 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv2471 :isa copular-predication :item mv2465 :value mv2469 :predicate mv2468)
   (:var mv2465 :isa gene :has-determiner "WHICH" :predication mv2466 :has-determiner "THE"
    :non-cellular-location mv2464 :raw-text "genes")
   (:var mv2466 :isa regulate :object mv2465 :agent mv2461 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2461 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2464 :isa liver) (:var mv2469 :isa apoptosis :raw-text "apoptotic")
   (:var mv2468 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv2484 :isa copular-predication :item mv2478 :value mv2482 :predicate mv2481)
   (:var mv2478 :isa gene :has-determiner "WHICH" :predication mv2479 :has-determiner "THE"
    :non-cellular-location mv2477 :raw-text "genes")
   (:var mv2479 :isa regulate :object mv2478 :agent mv2474 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2474 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2477 :isa liver) (:var mv2482 :isa apoptosis :raw-text "apoptotic")
   (:var mv2481 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv2489 :isa bio-find :object mv2490 :present "PRESENT" :adverb mv2487 :raw-text "find")
   (:var mv2490 :isa pathway :predication mv2491 :raw-text "pathways")
   (:var mv2491 :isa involve :theme mv2490 :object mv2492 :progressive "PROGRESSIVE")
   (:var mv2492 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2487 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv2494 :isa show :|statement-OR-theme| mv2497 :beneficiary mv2495 :present "PRESENT"
    :adverb mv2493)
   (:var mv2497 :isa pathway :predication mv2498 :modifier mv2496 :raw-text "pathways")
   (:var mv2498 :isa involve :theme mv2497 :object mv2499 :progressive "PROGRESSIVE")
   (:var mv2499 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2496 :isa database :name "KEGG" :uid "KEGG")
   (:var mv2495 :isa interlocutor :name "speaker") (:var mv2493 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv2501 :isa show :|statement-OR-theme| mv2503 :beneficiary mv2502 :present "PRESENT"
    :adverb mv2500)
   (:var mv2503 :isa pathway :predication mv2504 :raw-text "pathways")
   (:var mv2504 :isa involve :theme mv2503 :object mv2505 :progressive "PROGRESSIVE")
   (:var mv2505 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2502 :isa interlocutor :name "speaker") (:var mv2500 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv2507 :isa bio-activate :agent mv2506 :object mv2508 :present "PRESENT" :raw-text
    "activates")
   (:var mv2506 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2508 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv2509 :isa remove :object mv2516 :present "PRESENT" :raw-text "Remove")
   (:var mv2516 :isa fact :statement mv2514 :has-determiner "THE")
   (:var mv2514 :isa bio-activate :agent mv2513 :object mv2515 :present "PRESENT" :raw-text
    "activates")
   (:var mv2513 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2515 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv2519 :isa bio-activate :agent mv2518 :object mv2520 :present "PRESENT" :raw-text
    "activates")
   (:var mv2518 :isa protein-family :predication mv2517 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2517 :isa inactive)
   (:var mv2520 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv2521 :isa remove :object mv2529 :present "PRESENT" :raw-text "Remove")
   (:var mv2529 :isa fact :statement mv2527 :has-determiner "THE")
   (:var mv2527 :isa bio-activate :agent mv2526 :object mv2528 :present "PRESENT" :raw-text
    "activates")
   (:var mv2526 :isa protein-family :predication mv2525 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2525 :isa inactive)
   (:var mv2528 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv2531 :isa show :|statement-OR-theme| mv2532 :present "PRESENT")
   (:var mv2532 :isa pathway :non-cellular-location mv2530 :raw-text "pathways")
   (:var mv2530 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv2533 :isa show :|statement-OR-theme| mv2535 :beneficiary mv2534 :present "PRESENT")
   (:var mv2535 :isa pathway :predication mv2536 :raw-text "pathways")
   (:var mv2536 :isa involve :theme mv2535 :object mv2537 :progressive "PROGRESSIVE")
   (:var mv2537 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2534 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv2538 :isa show :|statement-OR-theme| mv2540 :beneficiary mv2539 :present "PRESENT")
   (:var mv2540 :isa pathway :pathwaycomponent mv2542 :raw-text "pathways")
   (:var mv2542 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-info-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway|
    mv2544 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2544 :isa pronoun/plural :word "them") (:var mv2539 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv2547 :isa show :|statement-OR-theme| mv2549 :beneficiary mv2548 :present "PRESENT")
   (:var mv2549 :isa pathway :pathwaycomponent mv2551 :raw-text "pathways")
   (:var mv2551 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2548 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv2554 :isa show :|statement-OR-theme| mv2561 :beneficiary mv2555 :present "PRESENT")
   (:var mv2561 :isa evidence :statement mv2560 :has-determiner "THE")
   (:var mv2560 :isa decrease :agent mv2559 :object mv2553 :present "PRESENT" :raw-text
    "decreases")
   (:var mv2559 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2553 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2555 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv2563 :isa show :|statement-OR-theme| mv2574 :beneficiary mv2564 :present "PRESENT")
   (:var mv2574 :isa evidence :statement mv2569 :has-determiner "THE")
   (:var mv2569 :isa decrease :agent mv2568 :|affected-process-OR-object| mv2571 :present "PRESENT"
    :raw-text "decreases")
   (:var mv2568 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2571 :isa bio-amount :measured-item mv2562 :has-determiner "THE" :raw-text "amount")
   (:var mv2562 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2564 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv2576 :isa show :|statement-OR-theme| mv2583 :beneficiary mv2577 :present "PRESENT")
   (:var mv2583 :isa evidence :statement mv2582 :has-determiner "THE")
   (:var mv2582 :isa regulate :agent mv2581 :object mv2575 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2581 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2575 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2577 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv2586 :isa show :|statement-OR-theme| mv2584 :present "PRESENT")
   (:var mv2584 :isa transcription-factor :predication mv2587 :raw-text "transcription factors")
   (:var mv2587 :isa share :object mv2584 :participant mv2591 :past "PAST" :raw-text "shared")
   (:var mv2591 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2585 mv2590))
   (:var mv2585 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2590 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv2594 :isa tell :beneficiary mv2595 :present "PRESENT")
   (:var mv2595 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv2601 :isa tell :theme mv2613 :theme mv2602 :present "PRESENT")
   (:var mv2613 :isa regulate :affected-process mv2606 :agent mv2600 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2606 :isa pathway :has-determiner "WHAT" :cellular-process mv2604 :raw-text "pathways")
   (:var mv2604 :isa apoptosis :raw-text "apoptotic")
   (:var mv2600 :isa protein :organ mv2612 :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2612 :isa liver :has-determiner "THE") (:var mv2602 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv2617 :isa tell :theme mv2620 :beneficiary mv2618 :present "PRESENT")
   (:var mv2620 :isa gene :predication mv2623 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2623 :isa regulate :object mv2620 :agent mv2624 :present "PRESENT" :raw-text "regulate")
   (:var mv2624 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2616 mv2622))
   (:var mv2616 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2622 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2618 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv2626 :isa tell :theme mv2636 :theme mv2627 :present "PRESENT")
   (:var mv2636 :isa regulate :affected-process mv2629 :agent mv2625 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2629 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv2625 :isa protein :organ mv2635 :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2635 :isa liver :has-determiner "THE") (:var mv2627 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv2642 :isa involve :theme mv2641 :object mv2644 :present "PRESENT")
   (:var mv2641 :isa pathway :has-determiner "WHAT" :modifier mv2640 :raw-text "pathways")
   (:var mv2640 :isa database :name "KEGG" :uid "KEGG")
   (:var mv2644 :isa signal :modifier mv2643 :raw-text "signaling")
   (:var mv2643 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv2652 :isa regulate :object mv2648 :agent mv2646 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2648 :isa phosphatase :has-determiner "WHAT" :enzyme mv2645 :raw-text "phosphatases")
   (:var mv2645 :isa protein-family :raw-text "MAP kinase" :name "mitogen activated protein kinase"
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
   (:var mv2646 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv2659 :isa be :subject mv2658 :predicate mv2660 :present "PRESENT")
   (:var mv2658 :isa gene :has-determiner "WHAT" :cellular-process mv2656 :raw-text "genes")
   (:var mv2656 :isa apoptosis :raw-text "apoptotic")
   (:var mv2660 :isa downstream-segment :pathwaycomponent mv2654 :raw-text "downstream")
   (:var mv2654 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv2670 :isa regulate :object mv2668 :agent mv2664 :organ mv2673 :present "PRESENT"
    :raw-text "regulate")
   (:var mv2668 :isa gene :has-determiner "WHAT" :cellular-process mv2666 :raw-text "genes")
   (:var mv2666 :isa apoptosis :raw-text "apoptotic")
   (:var mv2664 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2673 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv2681 :isa regulate :object mv2679 :agent mv2675 :present "PRESENT" :raw-text "regulate")
   (:var mv2679 :isa gene :has-determiner "WHAT" :cellular-process mv2677 :raw-text "genes")
   (:var mv2677 :isa apoptosis :raw-text "apoptotic")
   (:var mv2675 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv2687 :isa be :subject mv2686 :predicate mv2688 :present "PRESENT")
   (:var mv2686 :isa gene :has-determiner "WHAT" :cellular-process mv2684 :raw-text "genes")
   (:var mv2684 :isa apoptosis :raw-text "apoptotic")
   (:var mv2688 :isa upstream-segment :pathwaycomponent mv2686 :modifier mv2682 :raw-text
    "upstream")
   (:var mv2682 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv2696 :isa involve :theme mv2695 :object mv2691 :present "PRESENT")
   (:var mv2695 :isa pathway :has-determiner "WHAT" :cellular-process mv2693 :raw-text "pathways")
   (:var mv2693 :isa apoptosis :raw-text "apoptotic")
   (:var mv2691 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv2698 :isa be :subject mv2697 :predicate mv2701 :present "PRESENT")
   (:var mv2697 :isa what) (:var mv2701 :isa target-protein :agent mv2700 :raw-text "targets")
   (:var mv2700 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv2705 :isa be :subject mv2704 :predicate mv2707 :present "PRESENT")
   (:var mv2704 :isa what)
   (:var mv2707 :isa inhibitor :quantifier mv2706 :protein mv2703 :raw-text "inhibitors")
   (:var mv2706 :isa some :word "some")
   (:var mv2703 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv2709 :isa be :subject mv2708 :predicate mv2711 :present "PRESENT")
   (:var mv2708 :isa what)
   (:var mv2711 :isa drug :predication mv2713 :quantifier mv2710 :raw-text "drugs")
   (:var mv2713 :isa inhibit :agent mv2711 :that-rel t :object mv2714 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv2714 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv2710 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv2717 :isa be :subject mv2716 :predicate mv2719 :present "PRESENT")
   (:var mv2716 :isa what)
   (:var mv2719 :isa gene :context mv2715 :quantifier mv2718 :raw-text "genes")
   (:var mv2715 :isa signaling-pathway :has-determiner "THE" :modifier mv2722 :raw-text
    "signaling pathway")
   (:var mv2722 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2718 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv2726 :isa be :subject mv2725 :predicate mv2728 :present "PRESENT")
   (:var mv2725 :isa what)
   (:var mv2728 :isa protein :|context-OR-in-pathway| mv2724 :quantifier mv2727 :raw-text
    "proteins")
   (:var mv2724 :isa signaling-pathway :has-determiner "THE" :modifier mv2731 :raw-text
    "signaling pathway")
   (:var mv2731 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2727 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv2734 :isa be :subject mv2733 :predicate mv2736 :present "PRESENT")
   (:var mv2733 :isa what) (:var mv2736 :isa member :set mv2738 :has-determiner "THE")
   (:var mv2738 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv2744 :isa be :subject mv2743 :predicate mv2746 :present "PRESENT")
   (:var mv2743 :isa what)
   (:var mv2746 :isa micro-rna :predication mv2748 :has-determiner "THE" :raw-text "miRNAS")
   (:var mv2748 :isa regulate :agent mv2746 :that-rel t :object mv2752 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2752 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv2749 mv2750 mv2740 mv2741 mv2742))
   (:var mv2749 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv2750 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2740 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2741 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv2742 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv2754 :isa be :subject mv2753 :predicate mv2756 :present "PRESENT")
   (:var mv2753 :isa what)
   (:var mv2756 :isa regulator :theme mv2762 :has-determiner "THE" :raw-text "regulators")
   (:var mv2762 :isa bio-entity :organ mv2761 :name "MAPPK14")
   (:var mv2761 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv2767 :isa be :subject mv2766 :predicate mv2769 :present "PRESENT")
   (:var mv2766 :isa what)
   (:var mv2769 :isa regulator :theme mv2765 :has-determiner "THE" :raw-text "regulators")
   (:var mv2765 :isa protein :organ mv2772 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv2772 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv2777 :isa be :subject mv2776 :predicate mv2779 :present "PRESENT")
   (:var mv2776 :isa what)
   (:var mv2779 :isa regulator :theme mv2775 :has-determiner "THE" :raw-text "regulators")
   (:var mv2775 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv2784 :isa be :subject mv2783 :predicate mv2786 :present "PRESENT")
   (:var mv2783 :isa what)
   (:var mv2786 :isa regulator :theme mv2782 :has-determiner "THE" :raw-text "regulators")
   (:var mv2782 :isa protein :organ mv2789 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv2789 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv2805 :isa wh-question :statement mv2803 :wh what)
   (:var mv2803 :isa prepositional-phrase :pobj mv2802 :prep "IN")
   (:var mv2802 :isa bio-entity :name "bladeeer"))
  ("What are the regulators of mapk14"
   (:var mv2808 :isa be :subject mv2807 :predicate mv2810 :present "PRESENT")
   (:var mv2807 :isa what)
   (:var mv2810 :isa regulator :theme mv2806 :has-determiner "THE" :raw-text "regulators")
   (:var mv2806 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv2827 :isa copular-predication :item mv2816 :value mv2814 :predicate mv2817)
   (:var mv2816 :isa what) (:var mv2814 :isa in-common :theme mv2824)
   (:var mv2824 :isa gene :has-determiner "THE" :expresses mv2825 :raw-text "genes")
   (:var mv2825 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv2821 mv2822 mv2815))
   (:var mv2821 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2822 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv2815 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2817 :isa be :predicate mv2813 :present "PRESENT")
   (:var mv2813 :isa transcription-factor :has-determiner "THE" :raw-text "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv2830 :isa be :subject mv2829 :predicate mv2828 :present "PRESENT")
   (:var mv2829 :isa what)
   (:var mv2828 :isa transcription-factor :predication mv2833 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv2833 :isa regulate :agent mv2828 :that-rel t :object mv2839 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2839 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv2838 mv2837))
   (:var mv2838 :isa bio-entity :name "EELK1")
   (:var mv2837 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv2844 :isa be :subject mv2843 :predicate mv2840 :present "PRESENT")
   (:var mv2843 :isa what)
   (:var mv2840 :isa transcription-factor :predication mv2847 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv2847 :isa regulate :agent mv2840 :that-rel t :object mv2854 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2854 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv2848 mv2849 mv2853 mv2841 mv2842))
   (:var mv2848 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv2849 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2853 :isa bio-entity :name "STAAT3")
   (:var mv2841 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv2842 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv2860 :isa be :subject mv2859 :predicate mv2855 :present "PRESENT")
   (:var mv2859 :isa what)
   (:var mv2855 :isa transcription-factor :predication mv2863 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv2863 :isa regulate :agent mv2855 :that-rel t :object mv2867 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2867 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv2864 mv2865 mv2856 mv2857 mv2858))
   (:var mv2864 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv2865 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2856 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2857 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv2858 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv2872 :isa be :subject mv2871 :predicate mv2876 :present "PRESENT")
   (:var mv2871 :isa what)
   (:var mv2876 :isa regulator :theme mv2880 :has-determiner "THE" :context mv2874 :raw-text
    "regulators")
   (:var mv2880 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv2868 mv2869 mv2878 mv2870))
   (:var mv2868 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv2869 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv2878 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv2870 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv2874 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv2889 :isa regulate :object mv2884 :agent mv2888 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2884 :isa gene :has-determiner "WHAT" :cellular-process mv2882 :raw-text "genes")
   (:var mv2882 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv2888 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv2894 :isa regulate :object mv2891 :agent mv2893 :present "PRESENT" :raw-text "regulate")
   (:var mv2891 :isa what)
   (:var mv2893 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv2898 :isa regulate :object mv2895 :|agent-OR-cause| mv2897 :organ mv2900 :present
    "PRESENT" :raw-text "regulate")
   (:var mv2895 :isa what) (:var mv2897 :isa pronoun/inanimate :word "it")
   (:var mv2900 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv2906 :isa target :object mv2903 :agent mv2902 :present "PRESENT" :raw-text "target")
   (:var mv2903 :isa what)
   (:var mv2902 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv2910 :isa regulate :object mv2908 :agent mv2907 :present "PRESENT" :raw-text "regulate")
   (:var mv2908 :isa what)
   (:var mv2907 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv2914 :isa regulate :object mv2912 :agent mv2911 :present "PRESENT" :raw-text "regulate")
   (:var mv2912 :isa what)
   (:var mv2911 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv2918 :isa regulate :object mv2916 :agent mv2915 :present "PRESENT" :raw-text "regulate")
   (:var mv2916 :isa what)
   (:var mv2915 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv2922 :isa regulate :object mv2919 :agent mv2921 :present "PRESENT" :raw-text "regulate")
   (:var mv2919 :isa what)
   (:var mv2921 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv2925 :isa downregulate :|agent-OR-cause| mv2924 :object mv2923 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv2924 :isa what)
   (:var mv2923 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv2939 :isa bio-use :patient mv2928 :modal mv2929 :agent mv2930 :theme mv2938 :present
    "PRESENT" :raw-text "use")
   (:var mv2928 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv2929 :isa could)
   (:var mv2930 :isa interlocutor :name "speaker")
   (:var mv2938 :isa target :object mv2926 :raw-text "target")
   (:var mv2926 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv2951 :isa bio-use :object mv2942 :modal mv2943 :agent mv2944 :disease mv2940 :present
    "PRESENT" :raw-text "use")
   (:var mv2942 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv2943 :isa should)
   (:var mv2944 :isa interlocutor :name "speaker")
   (:var mv2940 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv2955 :isa be :subject mv2954 :predicate mv2956 :present "PRESENT")
   (:var mv2954 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2956 :isa inhibitor :protein mv2952 :raw-text "inhibitors")
   (:var mv2952 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv2962 :isa inhibit :agent mv2961 :object mv2959 :present "PRESENT" :raw-text "inhibit")
   (:var mv2961 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2959 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv2965 :isa regulate :agent mv2964 :object mv2966 :present "PRESENT" :raw-text "regulate")
   (:var mv2964 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2966 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv2970 :isa target :agent mv2968 :object mv2971 :present "PRESENT" :raw-text "target")
   (:var mv2968 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2971 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv2975 :isa be :subject mv2974 :predicate mv2976 :present "PRESENT")
   (:var mv2974 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2976 :isa downstream-segment :pathwaycomponent mv2972 :raw-text "downstream")
   (:var mv2972 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv2990 :isa copular-predication-of-pp :item mv2982 :value mv2989 :prep "IN" :predicate
    mv2983)
   (:var mv2982 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2989 :isa gene :context mv2980 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2980 :isa signaling-pathway :has-determiner "THE" :modifier mv2986 :raw-text
    "signaling pathway")
   (:var mv2986 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2983 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv3002 :isa copular-predication-of-pp :item mv2994 :value mv3001 :prep "IN" :predicate
    mv2995)
   (:var mv2994 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3001 :isa gene :context mv2992 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2992 :isa signaling-pathway :has-determiner "THE" :modifier mv2998 :raw-text
    "signaling pathways")
   (:var mv2998 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2995 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv3014 :isa copular-predication-of-pp :item mv3006 :value mv3013 :prep "IN" :predicate
    mv3007)
   (:var mv3006 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3013 :isa gene :context mv3010 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3010 :isa pathway :has-determiner "THE" :non-cellular-location mv3004 :raw-text
    "pathway")
   (:var mv3004 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv3007 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv3026 :isa copular-predication-of-pp :item mv3018 :value mv3025 :prep "IN" :predicate
    mv3019)
   (:var mv3018 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3025 :isa gene :context mv3016 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3016 :isa signaling-pathway :has-determiner "THE" :modifier mv3022 :raw-text
    "signaling pathway")
   (:var mv3022 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv3019 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv3037 :isa involve :object mv3031 :|context-OR-theme| mv3036 :present "PRESENT")
   (:var mv3031 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3036 :isa pathway :has-determiner "THE" :modifier mv3029 :raw-text "pathway")
   (:var mv3029 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv3047 :isa involve :object mv3040 :|context-OR-theme| mv3046 :present "PRESENT")
   (:var mv3040 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3046 :isa pathway :has-determiner "THE" :modifier mv3045 :raw-text "pathway")
   (:var mv3045 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv3057 :isa involve :object mv3051 :|context-OR-theme| mv3056 :present "PRESENT")
   (:var mv3051 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3056 :isa pathway :has-determiner "THE" :modifier mv3049 :raw-text "pathway")
   (:var mv3049 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv3067 :isa involve :object mv3061 :|context-OR-theme| mv3066 :present "PRESENT")
   (:var mv3061 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3066 :isa pathway :has-determiner "THE" :non-cellular-location mv3059 :raw-text
    "pathway")
   (:var mv3059 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv3081 :isa regulate :object mv3073 :agent mv3080 :present "PRESENT" :superlative mv3075
    :adverb mv3076 :raw-text "regulated")
   (:var mv3073 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3080 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv3069 mv3070 mv3071))
   (:var mv3069 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv3070 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv3071 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv3075 :isa superlative-quantifier :name "most")
   (:var mv3076 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv3096 :isa regulate :object mv3088 :agent mv3095 :present "PRESENT" :superlative mv3090
    :adverb mv3091 :raw-text "regulated")
   (:var mv3088 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3095 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :type
    micro-rna :number 4 :items (mv3083 mv3084 mv3085 mv3086))
   (:var mv3083 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv3084 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv3085 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv3086 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid "MIMAT0000075")
   (:var mv3090 :isa superlative-quantifier :name "most")
   (:var mv3091 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv3111 :isa regulate :object mv3103 :agent mv3110 :present "PRESENT" :superlative mv3105
    :adverb mv3106 :raw-text "regulated")
   (:var mv3103 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3110 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv3098 mv3099 mv3100 mv3101))
   (:var mv3098 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv3099 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv3100 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv3101 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid "MIMAT0000075")
   (:var mv3105 :isa superlative-quantifier :name "most")
   (:var mv3106 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv3119 :isa regulate :object mv3114 :agent mv3118 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3114 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3118 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv3130 :isa regulate :object mv3123 :agent mv3129 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3123 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3129 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv3121 mv3128))
   (:var mv3121 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv3128 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv3141 :isa regulate :object mv3135 :agent mv3140 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3135 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3140 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv3132 mv3133))
   (:var mv3132 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv3133 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv3151 :isa regulate :object mv3144 :agent mv3150 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3144 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3150 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv3159 :isa regulate :object mv3154 :agent mv3158 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3154 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3158 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv3170 :isa regulate :object mv3163 :agent mv3169 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3163 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3169 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv3161 mv3168))
   (:var mv3161 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3168 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv3178 :isa target :object mv3174 :cause mv3172 :present "PRESENT" :raw-text "targeted")
   (:var mv3174 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3172 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv3192 :isa copular-predication-of-pp :item mv3182 :value mv3191 :prep "IN" :predicate
    mv3183)
   (:var mv3182 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3191 :isa gene :context mv3180 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3180 :isa signaling-pathway :has-determiner "THE" :modifier mv3188 :raw-text
    "signaling pathway")
   (:var mv3188 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv3183 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv3202 :isa bio-use :object mv3196 :context mv3194 :present "PRESENT" :raw-text "used")
   (:var mv3196 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3194 :isa signaling-pathway :has-determiner "THE" :modifier mv3201 :raw-text
    "signaling pathway")
   (:var mv3201 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv3209 :isa target :object mv3206 :cause mv3204 :present "PRESENT" :raw-text "target")
   (:var mv3206 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3204 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv3215 :isa target :object mv3212 :agent mv3210 :present "PRESENT" :raw-text "target")
   (:var mv3212 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3210 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv3221 :isa target :object mv3218 :agent mv3216 :present "PRESENT" :raw-text "target")
   (:var mv3218 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3216 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv3226 :isa upregulate :object mv3224 :agent mv3222 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv3224 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3222 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv3231 :isa regulate :object mv3229 :agent mv3227 :cell-type mv3234 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3229 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3227 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3234 :isa cell-type :non-cellular-location mv3233) (:var mv3233 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv3240 :isa regulate :object mv3238 :agent mv3236 :organ mv3242 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3238 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3236 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3242 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv3248 :isa regulate :object mv3246 :agent mv3244 :organ mv3250 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3246 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3244 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3250 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv3256 :isa regulate :object mv3254 :agent mv3252 :present "PRESENT" :raw-text "regulate")
   (:var mv3254 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3252 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv3264 :isa regulate :object mv3259 :agent mv3257 :present "PRESENT" :raw-text "regulate")
   (:var mv3259 :isa gene :organ mv3262 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3262 :isa liver :has-determiner "THE")
   (:var mv3257 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv3273 :isa wh-question :statement mv3272 :var nil :wh what)
   (:var mv3272 :isa from :word "from"))
  ("What genes is stat3 upstream of?"
   (:var mv3277 :isa be :subject mv3276 :predicate mv3278 :present "PRESENT")
   (:var mv3276 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3278 :isa upstream-segment :pathwaycomponent mv3276 :modifier mv3274 :raw-text
    "upstream")
   (:var mv3274 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv3286 :isa be :subject mv3282 :predicate mv3287 :present "PRESENT")
   (:var mv3282 :isa gene :predication mv3283 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3283 :isa regulate :object mv3282 :agent mv3285 :past "PAST" :raw-text "regulated")
   (:var mv3285 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv3287 :isa kinase :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv3294 :isa be :subject mv3291 :predicate mv3295 :present "PRESENT")
   (:var mv3291 :isa gene :predication mv3292 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3292 :isa regulate :object mv3291 :agent mv3289 :past "PAST" :raw-text "regulated")
   (:var mv3289 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3295 :isa kinase :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv3301 :isa involve :theme mv3300 :object mv3304 :present "PRESENT")
   (:var mv3300 :isa pathway :has-determiner "WHAT" :modifier mv3299 :raw-text "pathways")
   (:var mv3299 :isa immune :name "immune")
   (:var mv3304 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv3302 mv3297))
   (:var mv3302 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3297 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv3308 :isa involve :theme mv3307 :object mv3309 :present "PRESENT")
   (:var mv3307 :isa pathway :has-determiner "WHAT" :modifier mv3306 :raw-text "pathways")
   (:var mv3306 :isa immune :name "immune")
   (:var mv3309 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv3314 :isa involve :theme mv3313 :object mv3317 :present "PRESENT")
   (:var mv3313 :isa pathway :has-determiner "WHAT" :modifier mv3312 :raw-text "pathways")
   (:var mv3312 :isa immune :name "immune")
   (:var mv3317 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv3315 mv3310))
   (:var mv3315 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3310 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv3321 :isa involve :theme mv3320 :object mv3331 :present "PRESENT")
   (:var mv3320 :isa pathway :has-determiner "WHAT" :modifier mv3319 :raw-text "pathways")
   (:var mv3319 :isa immune :name "immune")
   (:var mv3331 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv3329 mv3330))
   (:var mv3329 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv3330 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv3333 :isa inhibit :|agent-OR-cause| mv3332 :object mv3334 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv3332 :isa what)
   (:var mv3334 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv3337 :isa be :subject mv3336 :predicate mv3335 :present "PRESENT")
   (:var mv3336 :isa what)
   (:var mv3335 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv3339 :isa be :subject mv3338 :predicate mv3340 :present "PRESENT")
   (:var mv3338 :isa what)
   (:var mv3340 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv3343 :isa be :subject mv3342 :predicate mv3344 :present "PRESENT")
   (:var mv3342 :isa what)
   (:var mv3344 :isa downstream-segment :pathwaycomponent mv3341 :raw-text "downstream")
   (:var mv3341 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv3349 :isa be :subject mv3348 :predicate mv3350 :present "PRESENT")
   (:var mv3348 :isa what)
   (:var mv3350 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv3352 :isa be :subject mv3351 :predicate mv3353 :present "PRESENT")
   (:var mv3351 :isa what) (:var mv3353 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv3359 :isa regulate :|affected-process-OR-object| mv3355 :agent mv3354 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3355 :isa what)
   (:var mv3354 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv3363 :isa be :subject mv3362 :predicate mv3369 :present "PRESENT")
   (:var mv3362 :isa what) (:var mv3369 :isa evidence :statement mv3368 :has-determiner "THE")
   (:var mv3368 :isa decrease :agent mv3367 :object mv3361 :present "PRESENT" :raw-text
    "decreases")
   (:var mv3367 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3361 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv3372 :isa be :subject mv3371 :predicate mv3382 :present "PRESENT")
   (:var mv3371 :isa what) (:var mv3382 :isa evidence :statement mv3377 :has-determiner "THE")
   (:var mv3377 :isa decrease :agent mv3376 :|affected-process-OR-object| mv3379 :present "PRESENT"
    :raw-text "decreases")
   (:var mv3376 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3379 :isa bio-amount :measured-item mv3370 :has-determiner "THE" :raw-text "amount")
   (:var mv3370 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv3384 :isa be :subject mv3383 :predicate mv3386 :present "PRESENT")
   (:var mv3383 :isa what)
   (:var mv3386 :isa target-protein :agent mv3389 :has-determiner "THE" :raw-text "target")
   (:var mv3389 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv3395 :isa regulate :object mv3393 :agent mv3391 :present "PRESENT" :raw-text "regulate")
   (:var mv3393 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv3391 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv3403 :isa regulate :agent mv3400 :object mv3407 :present "PRESENT" :adverb mv3401
    :adverb mv3402 :raw-text "regulate")
   (:var mv3400 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv3407 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv3404 mv3405 mv3396 mv3397 mv3398))
   (:var mv3404 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv3405 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3396 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3397 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv3398 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv3401 :isa superlative-quantifier :name "most")
   (:var mv3402 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv3413 :isa regulate :agent mv3412 :object mv3417 :present "PRESENT" :raw-text "regulate")
   (:var mv3412 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv3417 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv3414 mv3415 mv3408 mv3409 mv3410))
   (:var mv3414 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv3415 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3408 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3409 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv3410 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv3424 :isa regulate :object mv3420 :agent mv3418 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3420 :isa micro-rna :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv3418 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv3429 :isa regulate :agent mv3428 :object mv3430 :present "PRESENT" :raw-text "regulate")
   (:var mv3428 :isa micro-rna :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv3430 :isa gene :context mv3426 :raw-text "genes")
   (:var mv3426 :isa signaling-pathway :has-determiner "THE" :modifier mv3433 :raw-text
    "signaling pathways")
   (:var mv3433 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
  ("What pahtways involve SRF?" (:var mv3439 :isa wh-question :statement mv3436 :var nil :wh what)
   (:var mv3436 :isa involve :object mv3437 :present "PRESENT")
   (:var mv3437 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv3450 :isa copular-predication :item mv3442 :value mv3444 :predicate mv3443)
   (:var mv3442 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3444 :isa common :theme mv3448)
   (:var mv3448 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv3440 mv3447))
   (:var mv3440 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3447 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3443 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv3453 :isa involve :theme mv3452 :object mv3454 :present "PRESENT")
   (:var mv3452 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3454 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv3458 :isa involve :theme mv3457 :object mv3461 :present "PRESENT")
   (:var mv3457 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3461 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv3459 mv3455))
   (:var mv3459 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3455 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv3465 :isa involve :theme mv3464 :object mv3462 :present "PRESENT")
   (:var mv3464 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3462 :isa transcription-factor :has-determiner "THE" :modifier mv3467 :raw-text
    "transcription factor")
   (:var mv3467 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv3478 :isa wh-question :statement mv3476 :var nil :wh what)
   (:var mv3476 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What proteins are in the MAPK family?"
   (:var mv3489 :isa copular-predication-of-pp :item mv3480 :value mv3487 :prep mv3482 :predicate
    mv3481)
   (:var mv3480 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3487 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
   (:var mv3482 :isa in :word "in") (:var mv3481 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv3496 :isa target :object mv3492 :cause mv3490 :present "PRESENT" :raw-text "targeted")
   (:var mv3492 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3490 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv3503 :isa target :object mv3500 :agent mv3498 :present "PRESENT" :raw-text "target")
   (:var mv3500 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3498 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv3509 :isa target :object mv3506 :cause mv3504 :present "PRESENT" :raw-text "target")
   (:var mv3506 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3504 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv3515 :isa target :object mv3511 :agent mv3513 :present "PRESENT" :raw-text "target")
   (:var mv3511 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3513 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv3520 :isa lead :agent mv3518 :theme mv3523 :modal mv3519 :raw-text "lead")
   (:var mv3518 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3523 :isa development :disease mv3516 :has-determiner "THE" :raw-text "development")
   (:var mv3516 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv3519 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv3531 :isa lead :agent mv3529 :theme mv3534 :modal mv3530 :raw-text "lead")
   (:var mv3529 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3534 :isa development :disease mv3527 :has-determiner "THE" :raw-text "development")
   (:var mv3527 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv3530 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv3541 :isa involve :theme mv3540 :object mv3543 :present "PRESENT")
   (:var mv3540 :isa pathway :has-determiner "WHAT" :modifier mv3539 :raw-text "pathways")
   (:var mv3539 :isa database :name "Reactome" :uid "Reactome")
   (:var mv3543 :isa signal :modifier mv3542 :raw-text "signaling")
   (:var mv3542 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv3545 :isa regulate :|agent-OR-cause| mv3544 :object mv3546 :present "PRESENT" :raw-text
    "regulates")
   (:var mv3544 :isa what)
   (:var mv3546 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv3549 :isa regulate :|agent-OR-cause| mv3548 :object mv3547 :present "PRESENT" :raw-text
    "regulates")
   (:var mv3548 :isa what)
   (:var mv3547 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv3552 :isa regulate :|agent-OR-cause| mv3551 :object mv3550 :present "PRESENT" :raw-text
    "regulates")
   (:var mv3551 :isa what)
   (:var mv3550 :isa protein :organ mv3554 :raw-text "smurf2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv3554 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv3565 :isa share :object mv3556 :participant mv3564 :present "PRESENT" :raw-text
    "shared")
   (:var mv3556 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv3564 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv3562 mv3557))
   (:var mv3562 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv3557 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv3576 :isa share :object mv3567 :participant mv3575 :present "PRESENT" :raw-text
    "shared")
   (:var mv3567 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv3575 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv3568 mv3574))
   (:var mv3568 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3574 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv3588 :isa share :object mv3578 :participant mv3587 :present "PRESENT" :raw-text
    "shared")
   (:var mv3578 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv3587 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv3579 mv3580 mv3586))
   (:var mv3579 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3580 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3586 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?" (:var mv3592 :isa tissue :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv3599 :isa bio-produce :agent mv3596 :object mv3597 :present "PRESENT" :raw-text
    "produces")
   (:var mv3596 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv3597 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv3603 :isa transcribe :agent mv3600 :object mv3601 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv3600 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv3601 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3619 :isa copular-predication :item mv3604 :value mv3611 :predicate mv3610)
   (:var mv3604 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3611 :isa common :theme mv3616)
   (:var mv3616 :isa gene :has-determiner "THE" :expresses mv3617 :raw-text "genes")
   (:var mv3617 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3605 mv3606 mv3614 mv3607 mv3608))
   (:var mv3605 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3606 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3614 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3607 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3608 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3610 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv3633 :isa copular-predication :item mv3620 :value mv3626 :predicate mv3625)
   (:var mv3620 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3626 :isa common :theme mv3630)
   (:var mv3630 :isa gene :has-determiner "THE" :expresses mv3631 :raw-text "genes")
   (:var mv3631 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv3621 mv3622 mv3623))
   (:var mv3621 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3622 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3623 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3625 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv3638 :isa regulate :object mv3636 :agent mv3634 :present "PRESENT" :raw-text "regulate")
   (:var mv3636 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3634 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv3647 :isa copular-predication :item mv3639 :value mv3642 :predicate mv3641)
   (:var mv3639 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3642 :isa common :theme mv3645)
   (:var mv3645 :isa gene :has-determiner "THESE" :raw-text "genes")
   (:var mv3641 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3663 :isa copular-predication :item mv3648 :value mv3649 :predicate mv3655)
   (:var mv3648 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3649 :isa in-common :theme mv3660)
   (:var mv3660 :isa gene :has-determiner "THE" :expresses mv3661 :raw-text "genes")
   (:var mv3661 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3650 mv3651 mv3658 mv3652 mv3653))
   (:var mv3650 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3651 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3658 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3652 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3653 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3655 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv3677 :isa copular-predication :item mv3664 :value mv3665 :predicate mv3670)
   (:var mv3664 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3665 :isa in-common :theme mv3674)
   (:var mv3674 :isa gene :has-determiner "THE" :expresses mv3675 :raw-text "genes")
   (:var mv3675 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv3666 mv3667 mv3668))
   (:var mv3666 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3667 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3668 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3670 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv3681 :isa be :subject mv3678 :predicate mv3682 :present "PRESENT")
   (:var mv3678 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3682 :isa regulator :theme mv3679 :raw-text "regulators")
   (:var mv3679 :isa protein :organ mv3685 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv3685 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv3691 :isa be :subject mv3688 :predicate mv3692 :present "PRESENT")
   (:var mv3688 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3692 :isa regulator :theme mv3689 :raw-text "regulators")
   (:var mv3689 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv3707 :isa share :object mv3695 :participant mv3705 :present "PRESENT" :raw-text
    "shared")
   (:var mv3695 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3705 :isa gene :has-determiner "THE" :expresses mv3706 :raw-text "genes")
   (:var mv3706 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv3702 mv3703 mv3696))
   (:var mv3702 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3703 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv3696 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv3712 :isa regulate :agent mv3709 :object mv3710 :present "PRESENT" :raw-text "regulate")
   (:var mv3709 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3710 :isa protein :organ mv3714 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv3714 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv3719 :isa regulate :agent mv3716 :object mv3717 :present "PRESENT" :raw-text "regulate")
   (:var mv3716 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3717 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv3722 :isa regulate :agent mv3720 :object mv3723 :present "PRESENT" :raw-text "regulate")
   (:var mv3720 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3723 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv3726 :isa regulate :agent mv3724 :theme mv3732 :object mv3727 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3724 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3732 :isa bio-entity :has-determiner "THE" :modifier mv3730 :cellular-process mv3731
    :name "pathwya")
   (:var mv3730 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv3731 :isa signal :raw-text "signaling") (:var mv3727 :isa gene :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv3735 :isa protein :has-determiner "WHAT" :predication mv3737 :raw-text "frizzled8" :uid
    "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv3737 :isa regulate :object mv3735 :agent mv3734 :raw-text "regulated")
   (:var mv3734 :isa transcription-factor :raw-text "transcription factors"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv3741 :isa transcribe :agent mv3738 :object mv3739 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv3738 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3739 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv3744 :isa upregulate :|agent-OR-cause| mv3743 :object mv3742 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv3743 :isa what)
   (:var mv3742 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv3750 :isa gene-transcript-express :location mv3746 :object mv3745 :past "PAST" :raw-text
    "expressed")
   (:var mv3746 :isa where)
   (:var mv3745 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv3754 :isa involve :theme mv3753 :object mv3755 :present "PRESENT")
   (:var mv3753 :isa pathway :has-determiner "WHICH" :modifier mv3752 :raw-text "pathways")
   (:var mv3752 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3755 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv3760 :isa bio-use :agent mv3758 :object mv3761 :present "PRESENT" :raw-text "use")
   (:var mv3758 :isa pathway :has-determiner "WHICH" :modifier mv3757 :raw-text "pathways")
   (:var mv3757 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3761 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv3765 :isa regulate :agent mv3762 :object mv3763 :present "PRESENT" :raw-text "regulate")
   (:var mv3762 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3763 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv3769 :isa regulate :|agent-OR-cause| mv3766 :object mv3770 :present "PRESENT" :adverb
    mv3767 :raw-text "regulate")
   (:var mv3766 :isa which)
   (:var mv3770 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3767 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv3779 :isa regulate :object mv3775 :agent mv3771 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3775 :isa gene :has-determiner "WHICH" :cellular-process mv3773 :raw-text "genes")
   (:var mv3773 :isa apoptosis :raw-text "apoptotic")
   (:var mv3771 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv3786 :isa be :subject mv3785 :predicate mv3787 :present "PRESENT")
   (:var mv3785 :isa gene :has-determiner "WHICH" :cellular-process mv3783 :raw-text "genes")
   (:var mv3783 :isa apoptosis :raw-text "apoptotic")
   (:var mv3787 :isa upstream-segment :pathwaycomponent mv3785 :modifier mv3781 :raw-text
    "upstream")
   (:var mv3781 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv3796 :isa target :object mv3792 :agent mv3790 :present "PRESENT" :raw-text "targeted")
   (:var mv3792 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv3790 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv3803 :isa be :subject mv3800 :predicate mv3804 :present "PRESENT")
   (:var mv3800 :isa gene :predication mv3801 :has-determiner "WHICH" :raw-text "genes")
   (:var mv3801 :isa regulate :object mv3800 :agent mv3798 :past "PAST" :raw-text "regulated")
   (:var mv3798 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3804 :isa kinase :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3820 :isa share :object mv3812 :participant mv3818 :present "PRESENT" :raw-text
    "shared")
   (:var mv3812 :isa pathway :has-determiner "WHICH" :modifier mv3811 :raw-text "pathways")
   (:var mv3811 :isa immune :name "immune")
   (:var mv3818 :isa gene :expresses mv3819 :raw-text "genes")
   (:var mv3819 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3806 mv3807 mv3816 mv3808 mv3809))
   (:var mv3806 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3807 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3816 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3808 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3809 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv3835 :isa share :object mv3827 :participant mv3833 :present "PRESENT" :raw-text
    "shared")
   (:var mv3827 :isa pathway :has-determiner "WHICH" :modifier mv3826 :raw-text "pathways")
   (:var mv3826 :isa immune :name "immune")
   (:var mv3833 :isa gene :has-determiner "THE" :expresses mv3834 :raw-text "genes")
   (:var mv3834 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv3822 mv3823 mv3824))
   (:var mv3822 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3823 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3824 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv3841 :isa utilize :participant mv3840 :object mv3842 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3840 :isa pathway :has-determiner "WHICH" :modifier mv3839 :raw-text "pathways")
   (:var mv3839 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3842 :isa gene :predication mv3843 :raw-text "genes")
   (:var mv3843 :isa regulate :object mv3842 :agent mv3837 :past "PAST" :raw-text "regulated")
   (:var mv3837 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv3849 :isa utilize :participant mv3848 :object mv3850 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3848 :isa pathway :has-determiner "WHICH" :modifier mv3847 :raw-text "pathways")
   (:var mv3847 :isa database :name "Reactome" :uid "Reactome")
   (:var mv3850 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv3854 :isa utilize :participant mv3853 :object mv3855 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3853 :isa pathway :has-determiner "WHICH" :modifier mv3852 :raw-text "pathways")
   (:var mv3852 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3855 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv3863 :isa regulate :|affected-process-OR-object| mv3859 :agent mv3856 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3859 :isa pronoun/plural :quantifier mv3857 :word "them") (:var mv3857 :isa which)
   (:var mv3856 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv3873 :isa gene-transcript-express :object mv3868 :organ mv3872 :present "PRESENT"
    :raw-text "expressed")
   (:var mv3868 :isa these :quantifier mv3866 :word "these") (:var mv3866 :isa which)
   (:var mv3872 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv3884 :isa copular-predication-of-pp :item mv3878 :value mv3882 :prep mv3880 :predicate
    mv3879)
   (:var mv3878 :isa these :quantifier mv3876 :word "these") (:var mv3876 :isa which)
   (:var mv3882 :isa pathway :modifier mv3881 :raw-text "pathways")
   (:var mv3881 :isa immune :name "immune") (:var mv3880 :isa in :word "in")
   (:var mv3879 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv3890 :isa phosphorylate :amino-acid mv3887 :agent mv3889 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv3887 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3889 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv3894 :isa be :subject mv3893 :predicate mv3895 :present "PRESENT")
   (:var mv3893 :isa these :quantifier mv3891 :word "these") (:var mv3891 :isa which)
   (:var mv3895 :isa kinase :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv3904 :isa regulate :|affected-process-OR-object| mv3900 :agent mv3897 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3900 :isa those :quantifier mv3898 :word "those") (:var mv3898 :isa which)
   (:var mv3897 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv3914 :isa regulate :|affected-process-OR-object| mv3910 :agent mv3907 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3910 :isa these :quantifier mv3908 :word "these") (:var mv3908 :isa which)
   (:var mv3907 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv3924 :isa regulate :|affected-process-OR-object| mv3919 :agent mv3923 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3919 :isa these :quantifier mv3917 :word "these") (:var mv3917 :isa which)
   (:var mv3923 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3940 :isa share :object mv3932 :participant mv3938 :present "PRESENT" :raw-text
    "shared")
   (:var mv3932 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3938 :isa gene :expresses mv3939 :raw-text "genes")
   (:var mv3939 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3927 mv3928 mv3936 mv3929 mv3930))
   (:var mv3927 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3928 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3936 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3929 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3930 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv3954 :isa share :object mv3945 :participant mv3953 :present "PRESENT" :raw-text
    "shared")
   (:var mv3945 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3953 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv3942 mv3943 mv3952))
   (:var mv3942 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3943 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3952 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3970 :isa share :object mv3961 :participant mv3968 :present "PRESENT" :raw-text
    "shared")
   (:var mv3961 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3968 :isa gene :has-determiner "THE" :expresses mv3969 :raw-text "genes")
   (:var mv3969 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3956 mv3957 mv3966 mv3958 mv3959))
   (:var mv3956 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3957 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3966 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3958 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3959 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv3976 :isa involve :theme mv3975 :object mv3978 :present "PRESENT")
   (:var mv3975 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3978 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv3972 mv3973))
   (:var mv3972 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv3973 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv3981 :isa involve :theme mv3980 :object mv3982 :present "PRESENT")
   (:var mv3980 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3982 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv3986 :isa bio-use :agent mv3984 :object mv3987 :present "PRESENT" :raw-text "use")
   (:var mv3984 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3987 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv3991 :isa bio-use :agent mv3989 :object mv3992 :present "PRESENT" :raw-text "use")
   (:var mv3989 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3992 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv3995 :isa utilize :participant mv3994 :object mv3996 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3994 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3996 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv3999 :isa utilize :participant mv3998 :object mv4001 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3998 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv4001 :isa gene :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv4008 :isa target :object mv4004 :agent mv4002 :present "PRESENT" :raw-text "targeted")
   (:var mv4004 :isa protein :has-determiner "WHICH" :raw-text "proteins")
   (:var mv4002 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv4013 :isa utilize :participant mv4012 :object mv4014 :present "PRESENT" :raw-text
    "utilize")
   (:var mv4012 :isa pathway :has-determiner "WHICH" :modifier mv4011 :raw-text "pathways")
   (:var mv4011 :isa database :name "Reactome" :uid "Reactome")
   (:var mv4014 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv4025 :isa copular-predication-of-pp :item mv4015 :value mv4024 :prep "IN" :predicate
    mv4018)
   (:var mv4015 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv4024 :isa transcription-factor :|context-OR-in-pathway| mv4016 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv4016 :isa signaling-pathway :has-determiner "THE" :modifier mv4021 :raw-text
    "signaling pathway")
   (:var mv4021 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv4018 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv4030 :isa regulate :agent mv4027 :object mv4028 :present "PRESENT" :raw-text "regulate")
   (:var mv4027 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv4028 :isa protein :organ mv4033 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv4033 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv4038 :isa regulate :agent mv4035 :object mv4036 :present "PRESENT" :raw-text "regulate")
   (:var mv4035 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv4036 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv4045 :isa explicit-suggestion :suggestion mv4041 :marker let-as-directive)
   (:var mv4041 :isa move-something-somewhere :at-relative-location mv4043 :theme mv4040 :present
    "PRESENT")
   (:var mv4043 :isa top-qua-location)
   (:var mv4040 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv4054 :isa explicit-suggestion :suggestion mv4048 :marker let-as-directive)
   (:var mv4048 :isa show :at-relative-location mv4052 :|statement-OR-theme| mv4047 :present
    "PRESENT")
   (:var mv4052 :isa top-qua-location)
   (:var mv4047 :isa protein :has-determiner "THE" :predication mv4050 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv4050 :isa phosphorylate :substrate mv4047 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv4057 :isa be :subject mv4056 :predicate mv4060 :present "PRESENT")
   (:var mv4056 :isa what)
   (:var mv4060 :isa upstream-segment :pathwaycomponent mv4064 :has-determiner "THE" :predication
    mv4059 :raw-text "upstreams")
   (:var mv4064 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv4055 mv4063))
   (:var mv4055 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv4063 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv4059 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv4073 :isa polar-question :statement mv4068)
   (:var mv4068 :isa gene-transcript-express :object mv4066 :organ mv4071 :past "PAST" :raw-text
    "expressed")
   (:var mv4066 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4071 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv4080 :isa polar-question :statement mv4076)
   (:var mv4076 :isa gene-transcript-express :object mv4074 :organ mv4078 :past "PAST" :raw-text
    "expressed")
   (:var mv4074 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4078 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv4082 :isa show :at-relative-location mv4085 :|statement-OR-theme| mv4081 :present
    "PRESENT")
   (:var mv4085 :isa top-qua-location)
   (:var mv4081 :isa protein :predication mv4083 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv4083 :isa phosphorylate :substrate mv4081 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv4089 :isa be :subject mv4088 :predicate mv4092 :present "PRESENT")
   (:var mv4088 :isa what)
   (:var mv4092 :isa upstream-segment :pathwaycomponent mv4096 :has-determiner "THE" :predication
    mv4091 :raw-text "upstreams")
   (:var mv4096 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv4087 mv4095))
   (:var mv4087 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv4095 :isa bio-entity :name "BRA") (:var mv4091 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv4105 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv4099 mv4103))
   (:var mv4099 :isa bio-activate :agent mv4098 :object mv4100 :present "PRESENT" :raw-text
    "activates")
   (:var mv4098 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv4100 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4103 :isa bio-activate :agent mv4102 :object mv4104 :present "PRESENT" :raw-text
    "activates")
   (:var mv4102 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4104 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv4107 :isa be :subject mv4106 :predicate mv4109 :present "PRESENT")
   (:var mv4106 :isa what) (:var mv4109 :isa path :end mv4113 :start mv4111 :has-determiner "THE")
   (:var mv4113 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4111 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv4116 :isa remove :object mv4123 :present "PRESENT" :raw-text "remove")
   (:var mv4123 :isa fact :statement mv4121 :has-determiner "THE")
   (:var mv4121 :isa bio-activate :agent mv4120 :object mv4122 :present "PRESENT" :raw-text
    "activates")
   (:var mv4120 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4122 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv4131 :isa explicit-suggestion :suggestion mv4126 :marker let-as-directive)
   (:var mv4126 :isa show :at-relative-location mv4129 :|statement-OR-theme| mv4125 :present
    "PRESENT")
   (:var mv4129 :isa top-qua-location)
   (:var mv4125 :isa protein :predication mv4127 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv4127 :isa phosphorylate :substrate mv4125 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv4134 :isa be :subject mv4133 :predicate mv4132 :present "PRESENT")
   (:var mv4133 :isa what)
   (:var mv4132 :isa positive-regulator :theme mv4138 :raw-text "positive regulators")
   (:var mv4138 :isa gene :has-determiner "THE" :expresses mv4137 :raw-text "gene")
   (:var mv4137 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv4143 :isa regulate :agent mv4140 :object mv4144 :present "PRESENT" :raw-text "regulate")
   (:var mv4140 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv4144 :isa protein :organ mv4141 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv4141 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv4155 :isa polar-question :statement mv4154)
   (:var mv4154 :isa there-exists :value mv4151 :predicate mv4148)
   (:var mv4151 :isa drug :predication mv4152 :quantifier mv4150 :raw-text "drugs")
   (:var mv4152 :isa inhibit :agent mv4151 :object mv4153 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv4153 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4150 :isa any :word "any") (:var mv4148 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv4164 :isa polar-question :statement mv4163)
   (:var mv4163 :isa there-exists :value mv4160 :predicate mv4157)
   (:var mv4160 :isa drug :predication mv4161 :quantifier mv4159 :raw-text "drugs")
   (:var mv4161 :isa target :agent mv4160 :object mv4162 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv4162 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv4159 :isa any :word "any") (:var mv4157 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv4182 :isa polar-question :statement mv4178)
   (:var mv4178 :isa there-exists :value mv4170 :predicate mv4167)
   (:var mv4170 :isa gene :predication mv4179 :organ mv4173 :quantifier mv4169 :raw-text "genes")
   (:var mv4179 :isa regulate :object mv4170 :that-rel t :agent mv4165 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4165 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4173 :isa liver :has-determiner "THE") (:var mv4169 :isa any :word "any")
   (:var mv4167 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv4200 :isa polar-question :statement mv4196)
   (:var mv4196 :isa there-exists :value mv4188 :predicate mv4185)
   (:var mv4188 :isa gene :predication mv4189 :quantifier mv4187 :raw-text "genes")
   (:var mv4189 :isa involve :object mv4188 :theme mv4191 :past "PAST")
   (:var mv4191 :isa apoptosis :predication mv4197 :raw-text "apoptosis")
   (:var mv4197 :isa regulate :affected-process mv4191 :that-rel t :agent mv4183 :present "PRESENT"
    :raw-text "regulated")
   (:var mv4183 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4187 :isa any :word "any") (:var mv4185 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv4211 :isa there-exists :predicate mv4203)
   (:var mv4203 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv4221 :isa polar-question :statement mv4219)
   (:var mv4219 :isa there-exists :value mv4217 :predicate mv4214)
   (:var mv4217 :isa inhibitor :|target-OR-protein| mv4212 :quantifier mv4216 :raw-text
    "inhibitors")
   (:var mv4212 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv4216 :isa any :word "any") (:var mv4214 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf" (:var mv4234 :isa polar-question :statement mv4231)
   (:var mv4231 :isa there-exists :value mv4226 :predicate mv4224)
   (:var mv4226 :isa gene :predication mv4227 :raw-text "genes")
   (:var mv4227 :isa regulate :object mv4226 :agent mv4232 :past "PAST" :raw-text "regulated")
   (:var mv4232 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4222 mv4230))
   (:var mv4222 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4230 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4224 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv4248 :isa polar-question :statement mv4239)
   (:var mv4239 :isa bio-find :agent mv4237 :object mv4235 :modal "CAN" :raw-text "find")
   (:var mv4237 :isa interlocutor :name "hearer")
   (:var mv4235 :isa protein :quantifier mv4240 :cellular-process mv4241 :context mv4243 :raw-text
    "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4240 :isa any :word "any") (:var mv4241 :isa apoptosis :raw-text "apoptotic")
   (:var mv4243 :isa pathway :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?"
   (:var mv4264 :isa polar-question :statement mv4263)
   (:var mv4263 :isa bio-find :agent mv4251 :statement mv4262 :object mv4257 :modal mv4250
    :raw-text "find")
   (:var mv4251 :isa interlocutor :name "hearer")
   (:var mv4262 :isa involve :object mv4249 :modal "CAN")
   (:var mv4249 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4257 :isa pathway :quantifier mv4254 :cellular-process mv4255 :raw-text "pathways")
   (:var mv4254 :isa any :word "any") (:var mv4255 :isa apoptosis :raw-text "apoptotic")
   (:var mv4250 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv4284 :isa polar-question :statement mv4283) (:var mv4283 :isa look-up :actor mv4267)
   (:var mv4267 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv4294 :isa polar-question :statement mv4288)
   (:var mv4288 :isa show :agent mv4287 :|statement-OR-theme| mv4290 :beneficiary mv4289 :modal
    "CAN")
   (:var mv4287 :isa interlocutor :name "hearer")
   (:var mv4290 :isa gene :predication mv4291 :raw-text "genes")
   (:var mv4291 :isa regulate :object mv4290 :agent mv4285 :past "PAST" :raw-text "regulated")
   (:var mv4285 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4289 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv4307 :isa polar-question :statement mv4298)
   (:var mv4298 :isa show :agent mv4297 :|statement-OR-theme| mv4300 :beneficiary mv4299 :modal
    "CAN")
   (:var mv4297 :isa interlocutor :name "hearer")
   (:var mv4300 :isa gene :predication mv4305 :raw-text "genes")
   (:var mv4305 :isa regulate :object mv4300 :that-rel t :agent mv4295 :modal "CAN" :raw-text
    "regulated")
   (:var mv4295 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4299 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv4317 :isa polar-question :statement mv4310)
   (:var mv4310 :isa show :agent mv4309 :|statement-OR-theme| mv4313 :beneficiary mv4311 :modal
    "CAN")
   (:var mv4309 :isa interlocutor :name "hearer")
   (:var mv4313 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv4311 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv4328 :isa polar-question :statement mv4321)
   (:var mv4321 :isa tell :agent mv4320 :theme mv4324 :beneficiary mv4322 :modal "CAN")
   (:var mv4320 :isa interlocutor :name "hearer")
   (:var mv4324 :isa gene :predication mv4325 :has-determiner "THE" :raw-text "genes")
   (:var mv4325 :isa regulate :object mv4324 :agent mv4318 :past "PAST" :raw-text "regulated")
   (:var mv4318 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4322 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv4338 :isa polar-question :statement mv4332)
   (:var mv4332 :isa tell :agent mv4331 :theme mv4335 :beneficiary mv4333 :modal "CAN")
   (:var mv4331 :isa interlocutor :name "hearer")
   (:var mv4335 :isa gene :predication mv4337 :has-determiner "THE" :raw-text "genes")
   (:var mv4337 :isa regulate :object mv4335 :that-rel t :agent mv4329 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4329 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4333 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv4352 :isa polar-question :statement mv4342)
   (:var mv4342 :isa tell :agent mv4341 :theme mv4345 :beneficiary mv4343 :modal "CAN")
   (:var mv4341 :isa interlocutor :name "hearer")
   (:var mv4345 :isa gene :predication mv4350 :has-determiner "THE" :raw-text "genes")
   (:var mv4350 :isa regulate :object mv4345 :that-rel t :agent mv4339 :modal "CAN" :raw-text
    "regulated")
   (:var mv4339 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4343 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv4367 :isa polar-question :statement mv4356)
   (:var mv4356 :isa tell :agent mv4355 :theme mv4359 :beneficiary mv4357 :modal "CAN")
   (:var mv4355 :isa interlocutor :name "hearer")
   (:var mv4359 :isa gene :predication mv4366 :has-determiner "THE" :raw-text "genes")
   (:var mv4366 :isa regulate :object mv4359 :agent mv4353 :modal mv4354 :raw-text "regulated")
   (:var mv4353 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4354 :isa can) (:var mv4357 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv4383 :isa polar-question :statement mv4372)
   (:var mv4372 :isa tell :agent mv4371 :theme mv4381 :theme mv4373 :modal "CAN")
   (:var mv4371 :isa interlocutor :name "hearer")
   (:var mv4381 :isa share :object mv4368 :participant mv4380 :modal "CAN" :raw-text "shared")
   (:var mv4368 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv4380 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4369 mv4379))
   (:var mv4369 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4379 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4373 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv4396 :isa polar-question :statement mv4387)
   (:var mv4387 :isa tell :agent mv4386 :theme mv4394 :theme mv4388 :modal "CAN")
   (:var mv4386 :isa interlocutor :name "hearer")
   (:var mv4394 :isa regulate :object mv4390 :agent mv4384 :modal "CAN" :raw-text "regulated")
   (:var mv4390 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv4384 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4388 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv4413 :isa polar-question :statement mv4400)
   (:var mv4400 :isa tell :agent mv4399 :theme mv4410 :theme mv4401 :modal "CAN")
   (:var mv4399 :isa interlocutor :name "hearer")
   (:var mv4410 :isa regulate :object mv4403 :agent mv4397 :modal "CAN" :raw-text "regulated")
   (:var mv4403 :isa gene :organ mv4406 :has-determiner "WHICH" :raw-text "genes")
   (:var mv4406 :isa liver :has-determiner "THE")
   (:var mv4397 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4401 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv4422 :isa polar-question :statement mv4417)
   (:var mv4417 :isa tell :agent mv4416 :theme mv4420 :beneficiary mv4418 :modal "CAN")
   (:var mv4416 :isa interlocutor :name "hearer")
   (:var mv4420 :isa gene :predication mv4421 :has-determiner "WHICH" :raw-text "genes")
   (:var mv4421 :isa regulate :object mv4420 :agent mv4414 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4414 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4418 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?" (:var mv4432 :isa polar-question :statement mv4430)
   (:var mv4430 :isa affect :agent mv4423 :affected-process mv4428 :raw-text "affect")
   (:var mv4423 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4428 :isa gene-transcript-express :object mv4424 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4424 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv4444 :isa polar-question :statement mv4442)
   (:var mv4442 :isa affect :agent mv4433 :affected-process mv4438 :raw-text "affect")
   (:var mv4433 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4438 :isa gene-transcript-express :object mv4441 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4441 :isa gene :has-determiner "THE" :expresses mv4434 :raw-text "gene")
   (:var mv4434 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv4457 :isa polar-question :statement mv4455)
   (:var mv4455 :isa increase :agent mv4445 :affected-process mv4451 :raw-text "increase")
   (:var mv4445 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4451 :isa gene-transcript-express :object mv4454 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4454 :isa gene :has-determiner "THE" :expresses mv4446 :raw-text "gene")
   (:var mv4446 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv4469 :isa polar-question :statement mv4467)
   (:var mv4467 :isa increase :agent mv4458 :affected-process mv4463 :raw-text "increase")
   (:var mv4458 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4463 :isa transcribe :object mv4466 :raw-text "transcription")
   (:var mv4466 :isa gene :has-determiner "THE" :expresses mv4459 :raw-text "gene")
   (:var mv4459 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?" (:var mv4479 :isa polar-question :statement mv4477)
   (:var mv4477 :isa affect :agent mv4470 :affected-process mv4474 :raw-text "affect")
   (:var mv4470 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4474 :isa gene-transcript-express :object mv4476 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4476 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv4489 :isa polar-question :statement mv4488)
   (:var mv4488 :isa contain :theme mv4486 :patient mv4480)
   (:var mv4486 :isa pathway :has-determiner "THE" :modifier mv4483 :raw-text "pathway")
   (:var mv4483 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv4480 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv4492 :isa bio-find :object mv4494 :present "PRESENT" :raw-text "Find")
   (:var mv4494 :isa treatment :disease mv4490 :has-determiner "A" :raw-text "treatment")
   (:var mv4490 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv4499 :isa bio-find :object mv4500 :present "PRESENT" :raw-text "Find")
   (:var mv4500 :isa gene :predication mv4504 :organ mv4503 :raw-text "genes")
   (:var mv4504 :isa regulate :object mv4500 :agent mv4497 :past "PAST" :raw-text "regulated")
   (:var mv4497 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4503 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv4510 :isa bio-find :object mv4511 :present "PRESENT" :raw-text "Find")
   (:var mv4511 :isa gene :predication mv4513 :raw-text "genes")
   (:var mv4513 :isa regulate :object mv4511 :that-rel t :agent mv4508 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4508 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv4517 :isa bio-find :object mv4514 :present "PRESENT" :raw-text "Find")
   (:var mv4514 :isa transcription-factor :predication mv4518 :raw-text "transcription factors")
   (:var mv4518 :isa share :object mv4514 :participant mv4522 :past "PAST" :raw-text "shared")
   (:var mv4522 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4515 mv4521))
   (:var mv4515 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4521 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv4528 :isa bio-activate :manner mv4525 :agent mv4527 :object mv4524 :present "PRESENT"
    :raw-text "activate")
   (:var mv4525 :isa how)
   (:var mv4527 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv4524 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv4533 :isa regulate :manner mv4531 :agent mv4529 :object mv4535 :present "PRESENT"
    :raw-text "regulate")
   (:var mv4531 :isa how)
   (:var mv4529 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4535 :isa gene :has-determiner "THE" :expresses mv4530 :raw-text "gene")
   (:var mv4530 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv4550 :isa knock-out :raw-text "knocking out" :cause mv4537 :object mv4554)
   (:var mv4537 :isa how) (:var mv4554 :isa cancer :modifier mv4541 :modifier mv4541)
   (:var mv4541 :isa cause :by-means-of mv4552 :raw-text "cause")
   (:var mv4552 :isa effect :object mv4549 :participant mv4545 :raw-text "effect")
   (:var mv4549 :isa micro-rna :raw-text "miRNAs")
   (:var mv4545 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv4558 :isa regulate :manner mv4556 :agent mv4555 :affected-process mv4559 :present
    "PRESENT" :raw-text "regulate")
   (:var mv4556 :isa how)
   (:var mv4555 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4559 :isa apoptosis :organ mv4562 :raw-text "apoptosis")
   (:var mv4562 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv4567 :isa regulate :manner mv4565 :agent mv4564 :affected-process mv4568 :present
    "PRESENT" :raw-text "regulate")
   (:var mv4565 :isa how)
   (:var mv4564 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4568 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv4572 :isa regulate :manner mv4570 :agent mv4569 :object mv4575 :present "PRESENT"
    :raw-text "regulate")
   (:var mv4570 :isa how)
   (:var mv4569 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4575 :isa gene :cellular-process mv4573 :raw-text "genes")
   (:var mv4573 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv4585 :isa wh-question :statement mv4578 :wh how)
   (:var mv4578 :isa be :predicate mv4576 :present "PRESENT")
   (:var mv4576 :isa protein :predication mv4579 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4579 :isa involve :object mv4576 :theme mv4583 :past "PAST")
   (:var mv4583 :isa regulate :|cellular-process-OR-agent| mv4581 :raw-text "regulation")
   (:var mv4581 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv4598 :isa wh-question :statement mv4588 :wh how)
   (:var mv4588 :isa be :predicate mv4586 :present "PRESENT")
   (:var mv4586 :isa protein :predication mv4589 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4589 :isa involve :object mv4586 :theme mv4591 :past "PAST")
   (:var mv4591 :isa regulate :organ mv4594 :|agent-OR-object| mv4595 :raw-text "regulation")
   (:var mv4594 :isa liver :has-determiner "THE") (:var mv4595 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv4607 :isa wh-question :statement mv4601 :wh how)
   (:var mv4601 :isa be :predicate mv4599 :present "PRESENT")
   (:var mv4599 :isa protein :predication mv4602 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4602 :isa involve :object mv4599 :theme mv4604 :past "PAST")
   (:var mv4604 :isa regulate :affected-process mv4605 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv4605 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv4616 :isa wh-question :statement mv4610 :wh how)
   (:var mv4610 :isa be :predicate mv4608 :present "PRESENT")
   (:var mv4608 :isa protein :predication mv4611 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4611 :isa bio-use :object mv4608 :theme mv4615 :past "PAST" :raw-text "used")
   (:var mv4615 :isa regulate :affected-process mv4614 :raw-text "regulate")
   (:var mv4614 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv4628 :isa copular-predication-of-pp :item mv4620 :value mv4627 :prep "IN" :predicate
    mv4621)
   (:var mv4620 :isa gene :has-determiner "HOW" :quantifier mv4619 :raw-text "genes")
   (:var mv4619 :isa many :word "many")
   (:var mv4627 :isa gene :context mv4617 :has-determiner "HOW" :quantifier mv4619 :raw-text
    "genes")
   (:var mv4617 :isa signaling-pathway :has-determiner "THE" :modifier mv4624 :raw-text
    "signaling pathway")
   (:var mv4624 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv4621 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv4637 :isa affect :manner mv4632 :modal mv4633 :agent mv4635 :object mv4631 :present
    "PRESENT" :raw-text "affect")
   (:var mv4632 :isa how) (:var mv4633 :isa might)
   (:var mv4635 :isa mutation :has-determiner "A" :|agent-OR-object| mv4630 :raw-text "mutation")
   (:var mv4630 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4631 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv4645 :isa polar-question :statement mv4640)
   (:var mv4640 :isa be :subject mv4638 :predicate mv4642)
   (:var mv4638 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4642 :isa regulator :theme mv4639 :has-determiner "A" :raw-text "regulator")
   (:var mv4639 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv4653 :isa polar-question :statement mv4648)
   (:var mv4648 :isa be :subject mv4646 :predicate mv4650)
   (:var mv4646 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4650 :isa regulator :theme mv4647 :has-determiner "A" :raw-text "regulator")
   (:var mv4647 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv4663 :isa polar-question :statement mv4656)
   (:var mv4656 :isa be :subject mv4654 :predicate mv4658)
   (:var mv4654 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4658 :isa regulator :theme mv4661 :has-determiner "A" :raw-text "regulator")
   (:var mv4661 :isa gene :has-determiner "THE" :expresses mv4655 :raw-text "gene")
   (:var mv4655 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv4673 :isa polar-question :statement mv4666)
   (:var mv4666 :isa be :subject mv4664 :predicate mv4668)
   (:var mv4664 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4668 :isa regulator :theme mv4671 :has-determiner "A" :raw-text "regulator")
   (:var mv4671 :isa gene :has-determiner "THE" :expresses mv4665 :raw-text "gene")
   (:var mv4665 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv4682 :isa polar-question :statement mv4677)
   (:var mv4677 :isa be :subject mv4674 :predicate mv4675)
   (:var mv4674 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4675 :isa transcription-factor :controlled-gene mv4680 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4680 :isa gene :expresses mv4676 :raw-text "gene")
   (:var mv4676 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos" (:var mv4690 :isa polar-question :statement mv4686)
   (:var mv4686 :isa be :subject mv4683 :predicate mv4684)
   (:var mv4683 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4684 :isa transcription-factor :controlled-gene mv4685 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4685 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?" (:var mv4698 :isa polar-question :statement mv4694)
   (:var mv4694 :isa be :subject mv4691 :predicate mv4692)
   (:var mv4691 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4692 :isa transcription-factor :controlled-gene mv4693 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4693 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv4708 :isa polar-question :statement mv4702)
   (:var mv4702 :isa be :subject mv4699 :predicate mv4700)
   (:var mv4699 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4700 :isa transcription-factor :controlled-gene mv4706 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4706 :isa gene :has-determiner "THE" :expresses mv4701 :raw-text "gene")
   (:var mv4701 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv4715 :isa polar-question :statement mv4712)
   (:var mv4712 :isa regulate :object mv4709 :agent mv4710 :past "PAST" :raw-text "regulated")
   (:var mv4709 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4710 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv4725 :isa polar-question :statement mv4719)
   (:var mv4719 :isa be :subject mv4716 :predicate mv4717)
   (:var mv4716 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4717 :isa transcription-factor :controlled-gene mv4723 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4723 :isa gene :has-determiner "THE" :expresses mv4718 :raw-text "gene")
   (:var mv4718 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv4727 :isa list :theme mv4728 :present "PRESENT")
   (:var mv4728 :isa gene :predication mv4729 :raw-text "genes")
   (:var mv4729 :isa regulate :object mv4728 :agent mv4726 :past "PAST" :raw-text "regulated")
   (:var mv4726 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1" (:var mv4733 :isa list :theme mv4734 :present "PRESENT")
   (:var mv4734 :isa gene :predication mv4739 :raw-text "genes")
   (:var mv4739 :isa regulate :object mv4734 :that-rel t :agent mv4732 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4732 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates" (:var mv4742 :isa list :theme mv4744 :present "PRESENT")
   (:var mv4744 :isa gene :predication mv4746 :quantifier mv4743 :raw-text "genes")
   (:var mv4746 :isa regulate :object mv4744 :that-rel t :agent mv4741 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4741 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4743 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv4748 :isa list :theme mv4750 :present "PRESENT")
   (:var mv4750 :isa gene :predication mv4751 :has-determiner "THE" :raw-text "genes")
   (:var mv4751 :isa regulate :object mv4750 :agent mv4747 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4747 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv4753 :isa list :theme mv4755 :present "PRESENT")
   (:var mv4755 :isa gene :predication mv4760 :has-determiner "THE" :raw-text "genes")
   (:var mv4760 :isa regulate :object mv4755 :that-rel t :agent mv4752 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4752 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates" (:var mv4763 :isa list :theme mv4765 :present "PRESENT")
   (:var mv4765 :isa gene :predication mv4767 :has-determiner "THE" :raw-text "genes")
   (:var mv4767 :isa regulate :object mv4765 :agent mv4762 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4762 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv4768 :isa list :theme mv4770 :present "PRESENT")
   (:var mv4770 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv4775 :isa show :|statement-OR-theme| mv4777 :beneficiary mv4776 :present "PRESENT")
   (:var mv4777 :isa gene :predication mv4778 :raw-text "genes")
   (:var mv4778 :isa regulate :object mv4777 :agent mv4774 :past "PAST" :raw-text "regulated")
   (:var mv4774 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4776 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv4782 :isa show :|statement-OR-theme| mv4784 :beneficiary mv4783 :present "PRESENT")
   (:var mv4784 :isa gene :predication mv4789 :raw-text "genes")
   (:var mv4789 :isa regulate :object mv4784 :that-rel t :agent mv4781 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4781 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4783 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv4792 :isa show :|statement-OR-theme| mv4794 :beneficiary mv4793 :present "PRESENT")
   (:var mv4794 :isa gene :predication mv4796 :raw-text "genes")
   (:var mv4796 :isa regulate :object mv4794 :that-rel t :agent mv4791 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4791 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4793 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv4797 :isa show :|statement-OR-theme| mv4800 :beneficiary mv4798 :present "PRESENT")
   (:var mv4800 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv4798 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv4817 :isa show :statement mv4815 :theme mv4807 :present "PRESENT")
   (:var mv4815 :isa share :object mv4804 :participant mv4814 :present "PRESENT" :raw-text
    "shared")
   (:var mv4804 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv4814 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4805 mv4813))
   (:var mv4805 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4813 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4807 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv4828 :isa show :statement mv4826 :theme mv4820 :present "PRESENT")
   (:var mv4826 :isa regulate :object mv4822 :agent mv4818 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4822 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv4818 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4820 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv4830 :isa show :|statement-OR-theme| mv4832 :present "PRESENT")
   (:var mv4832 :isa gene :predication mv4834 :has-determiner "THE" :raw-text "genes")
   (:var mv4834 :isa regulate :object mv4832 :agent mv4829 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4829 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv4835 :isa show :|statement-OR-theme| mv4837 :present "PRESENT")
   (:var mv4837 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv4843 :isa show :|statement-OR-theme| mv4841 :present "PRESENT")
   (:var mv4841 :isa transcription-factor :predication mv4851 :raw-text "transcription factors")
   (:var mv4851 :isa share :object mv4841 :that-rel t :participant mv4850 :present "PRESENT"
    :raw-text "shared")
   (:var mv4850 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4842 mv4849))
   (:var mv4842 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4849 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv4854 :isa tell :theme mv4857 :beneficiary mv4855 :present "PRESENT")
   (:var mv4857 :isa gene :predication mv4864 :has-determiner "THE" :raw-text "genes")
   (:var mv4864 :isa regulate :object mv4857 :agent mv4853 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4853 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4855 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv4866 :isa tell :theme mv4876 :theme mv4867 :present "PRESENT")
   (:var mv4876 :isa regulate :object mv4869 :agent mv4875 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4869 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv4875 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4865 mv4874))
   (:var mv4865 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4874 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4867 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv4879 :isa tell :theme mv4886 :theme mv4880 :present "PRESENT")
   (:var mv4886 :isa regulate :object mv4882 :agent mv4878 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4882 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv4878 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4880 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv4890 :isa be :subject mv4889 :predicate mv4888 :present "PRESENT")
   (:var mv4889 :isa what)
   (:var mv4888 :isa positive-regulator :theme mv4892 :raw-text "positive regulators")
   (:var mv4892 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv4896 :isa be :subject mv4895 :predicate mv4898 :present "PRESENT")
   (:var mv4895 :isa what)
   (:var mv4898 :isa regulator :theme mv4894 :quantifier mv4897 :raw-text "regulators")
   (:var mv4894 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv4897 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv4907 :isa be :subject mv4906 :predicate mv4910 :present "PRESENT")
   (:var mv4906 :isa what)
   (:var mv4910 :isa regulator :theme mv4914 :has-determiner "THE" :predication mv4909 :raw-text
    "regulators")
   (:var mv4914 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv4901 mv4902 mv4912 mv4903 mv4904 mv4905))
   (:var mv4901 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv4902 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv4912 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv4903 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv4904 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv4905 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv4909 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv4918 :isa be :subject mv4917 :predicate mv4921 :present "PRESENT")
   (:var mv4917 :isa what)
   (:var mv4921 :isa regulator :theme mv4925 :has-determiner "THE" :predication mv4920 :raw-text
    "regulators")
   (:var mv4925 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4916 mv4924))
   (:var mv4916 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4924 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4920 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv4929 :isa be :subject mv4928 :predicate mv4932 :present "PRESENT")
   (:var mv4928 :isa what)
   (:var mv4932 :isa regulator :theme mv4936 :has-determiner "THE" :predication mv4931 :raw-text
    "regulators")
   (:var mv4936 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv4927 mv4935))
   (:var mv4927 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4935 :isa bio-entity :name "srg") (:var mv4931 :isa common))
  ("What are the common regulators of those genes"
   (:var mv4939 :isa be :subject mv4938 :predicate mv4942 :present "PRESENT")
   (:var mv4938 :isa what)
   (:var mv4942 :isa regulator :theme mv4945 :has-determiner "THE" :predication mv4941 :raw-text
    "regulators")
   (:var mv4945 :isa gene :has-determiner "THOSE" :raw-text "genes") (:var mv4941 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv4949 :isa be :subject mv4948 :predicate mv4951 :present "PRESENT")
   (:var mv4948 :isa what)
   (:var mv4951 :isa gene :predication mv4952 :has-determiner "THE" :raw-text "genes")
   (:var mv4952 :isa regulate :object mv4951 :agent mv4947 :past "PAST" :raw-text "regulated")
   (:var mv4947 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv4957 :isa be :subject mv4956 :predicate mv4959 :present "PRESENT")
   (:var mv4956 :isa what)
   (:var mv4959 :isa gene :predication mv4961 :has-determiner "THE" :raw-text "genes")
   (:var mv4961 :isa regulate :object mv4959 :agent mv4955 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4955 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv4966 :isa be :subject mv4965 :predicate mv4970 :present "PRESENT")
   (:var mv4965 :isa what)
   (:var mv4970 :isa regulator :theme mv4975 :has-determiner "THE" :modifier mv4969 :raw-text
    "regulators")
   (:var mv4975 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv4972 mv4973 mv4962 mv4963 mv4964))
   (:var mv4972 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv4973 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4962 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4963 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv4964 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv4969 :isa frequent :comparative mv4968 :name "frequent")
   (:var mv4968 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv4982 :isa be :subject mv4981 :predicate mv4977 :present "PRESENT")
   (:var mv4981 :isa what)
   (:var mv4977 :isa transcription-factor :predication mv4985 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv4985 :isa regulate :agent mv4977 :that-rel t :object mv4989 :present "PRESENT" :raw-text
    "regulate")
   (:var mv4989 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv4986 mv4987 mv4978 mv4979 mv4980))
   (:var mv4986 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv4987 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4978 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4979 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv4980 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv5001 :isa copular-predication-of-pp :item mv4992 :value mv5000 :prep "IN" :predicate
    mv4993)
   (:var mv4992 :isa gene :has-determiner "WHAT" :quantifier mv4991 :raw-text "genes")
   (:var mv4991 :isa other :word "other")
   (:var mv5000 :isa gene :context mv4997 :has-determiner "WHAT" :quantifier mv4991 :raw-text
    "genes")
   (:var mv4997 :isa pathway :quantifier mv4996 :raw-text "pathway")
   (:var mv4996 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv4993 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv5014 :isa copular-predication-of-pp :item mv5005 :value mv5013 :prep "IN" :predicate
    mv5006)
   (:var mv5005 :isa protein :has-determiner "WHAT" :quantifier mv5004 :raw-text "proteins")
   (:var mv5004 :isa other :word "other")
   (:var mv5013 :isa protein :|context-OR-in-pathway| mv5010 :has-determiner "WHAT" :quantifier
    mv5004 :raw-text "proteins")
   (:var mv5010 :isa pathway :quantifier mv5009 :raw-text "pathway")
   (:var mv5009 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv5006 :isa be :present "PRESENT"))
  ("What pathways are they in?" (:var mv5021 :isa wh-question :statement mv5020 :var nil :wh what)
   (:var mv5020 :isa in :word "in"))
  ("What proteins are in the first pathway"
   (:var mv5036 :isa copular-predication-of-pp :item mv5027 :value mv5035 :prep "IN" :predicate
    mv5028)
   (:var mv5027 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv5035 :isa protein :|context-OR-in-pathway| mv5032 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv5032 :isa pathway :quantifier mv5031 :raw-text "pathway")
   (:var mv5031 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv5028 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv5041 :isa involve :theme mv5040 :object mv5038 :present "PRESENT")
   (:var mv5040 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5038 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv5052 :isa copular-predication-of-pp :item mv5043 :value mv5051 :prep "IN" :predicate
    mv5044)
   (:var mv5043 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv5051 :isa gene :context mv5048 :has-determiner "WHAT" :raw-text "genes")
   (:var mv5048 :isa pathway :quantifier mv5047 :raw-text "pathway")
   (:var mv5047 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv5044 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv5064 :isa answer :patient mv5055 :modal mv5057 :agent mv5058 :theme mv5062 :present
    "PRESENT")
   (:var mv5055 :isa bio-question :has-determiner "WHAT") (:var mv5057 :isa can)
   (:var mv5058 :isa interlocutor :name "hearer")
   (:var mv5062 :isa micro-rna :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv5068 :isa regulate :agent mv5065 :object mv5066 :present "PRESENT" :raw-text "regulate")
   (:var mv5065 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv5066 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD" :count
    8 :family-members
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
   (:var mv5072 :isa regulate :location mv5070 :agent mv5069 :object mv5073 :present "PRESENT"
    :raw-text "regulate")
   (:var mv5070 :isa where)
   (:var mv5069 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5073 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv5077 :isa involve :theme mv5076 :object mv5078 :present "PRESENT")
   (:var mv5076 :isa pathway :has-determiner "WHICH" :modifier mv5075 :raw-text "pathways")
   (:var mv5075 :isa database :name "KEGG" :uid "KEGG")
   (:var mv5078 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv5089 :isa copular-predication-of-pp :item mv5081 :value mv5088 :prep "IN" :predicate
    mv5082)
   (:var mv5081 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv5088 :isa gene :context mv5079 :has-determiner "WHICH" :raw-text "genes")
   (:var mv5079 :isa signaling-pathway :has-determiner "THE" :modifier mv5085 :raw-text
    "signaling pathway")
   (:var mv5085 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv5082 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv5100 :isa involve :object mv5093 :|context-OR-theme| mv5091 :present "PRESENT")
   (:var mv5093 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv5091 :isa signaling-pathway :has-determiner "THE" :predication mv5098 :modifier mv5099
    :raw-text "signaling pathway")
   (:var mv5098 :isa oncogenic)
   (:var mv5099 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv5104 :isa regulate :agent mv5103 :object mv5105 :present "PRESENT" :raw-text "regulate")
   (:var mv5103 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5105 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv5106 :isa downregulate :agent mv5108 :object mv5109 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv5108 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5109 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv5110 :isa upregulate :agent mv5112 :object mv5113 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv5112 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5113 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv5122 :isa copular-predication-of-pp :item mv5116 :value mv5120 :prep mv5118 :predicate
    mv5117)
   (:var mv5116 :isa these :quantifier mv5114 :word "these") (:var mv5114 :isa which)
   (:var mv5120 :isa pathway :modifier mv5119 :raw-text "pathways")
   (:var mv5119 :isa immune :name "immune") (:var mv5118 :isa in :word "in")
   (:var mv5117 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv5132 :isa copular-predication-of-pp :item mv5127 :value mv5130 :prep mv5129 :predicate
    mv5128)
   (:var mv5127 :isa these :quantifier mv5125 :word "these") (:var mv5125 :isa which)
   (:var mv5130 :isa pathway :non-cellular-location mv5124 :raw-text "pathways")
   (:var mv5124 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv5129 :isa in :word "in") (:var mv5128 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv5136 :isa be :subject mv5135 :predicate mv5138 :present "PRESENT")
   (:var mv5135 :isa what)
   (:var mv5138 :isa gene :predication mv5139 :has-determiner "THE" :raw-text "genes")
   (:var mv5139 :isa regulate :object mv5138 :agent mv5134 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5134 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv5149 :isa copular-predication-of-pp :item mv5142 :value mv5147 :prep mv5144 :predicate
    mv5143)
   (:var mv5142 :isa those :quantifier mv5140 :word "those") (:var mv5140 :isa which)
   (:var mv5147 :isa pathway :has-determiner "THE" :modifier mv5146 :raw-text "pathway")
   (:var mv5146 :isa immune :name "immune") (:var mv5144 :isa in :word "in")
   (:var mv5143 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv5154 :isa involve :theme mv5153 :object mv5151 :present "PRESENT")
   (:var mv5153 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv5151 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv5164 :isa polar-question :statement mv5157)
   (:var mv5157 :isa show :agent mv5156 :|statement-OR-theme| mv5160 :beneficiary mv5158 :modal
    "CAN")
   (:var mv5156 :isa interlocutor :name "hearer")
   (:var mv5160 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv5158 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv5170 :isa polar-question :statement mv5169)
   (:var mv5169 :isa inhibit :agent mv5167 :object mv5165 :raw-text "inhibit")
   (:var mv5167 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv5165 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv5180 :isa explicit-suggestion :suggestion mv5172 :marker let-as-directive)
   (:var mv5172 :isa build :artifact mv5174 :present "PRESENT")
   (:var mv5174 :isa model :object mv5178 :has-determiner "A")
   (:var mv5178 :isa neighborhood :has-determiner "THE" :modifier mv5177)
   (:var mv5177 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv5198 :isa collection :type know :number 2 :items (mv5196 mv5197))
   (:var mv5196 :isa know :agent mv5181 :statement mv5187 :present "PRESENT")
   (:var mv5181 :isa interlocutor :name "speaker")
   (:var mv5187 :isa bio-activate :agent mv5186 :object mv5188 :present "PRESENT" :raw-text
    "activates")
   (:var mv5186 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv5188 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv5197 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv5190 mv5194))
   (:var mv5190 :isa bio-activate :agent mv5189 :object mv5191 :present "PRESENT" :raw-text
    "activates")
   (:var mv5189 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv5191 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv5194 :isa bio-activate :agent mv5193 :object mv5195 :present "PRESENT" :raw-text
    "activates")
   (:var mv5193 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv5195 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv5201 :isa phosphorylate :agent mv5199 :substrate mv5200 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv5199 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv5200 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv5204 :isa dephosphorylate :agent mv5202 :substrate mv5203 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv5202 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv5203 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv5215 :isa polar-question :statement mv5214)
   (:var mv5214 :isa copular-predication :item mv5208 :value mv5212 :predicate mv5206)
   (:var mv5208 :isa bio-amount :measured-item mv5205 :has-determiner "THE" :raw-text "amount")
   (:var mv5205 :isa protein :predication mv5210 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv5210 :isa phosphorylate :substrate mv5205 :raw-text "phosphorylated")
   (:var mv5212 :isa high :adverb mv5211) (:var mv5211 :isa always :name "always")
   (:var mv5206 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv5226 :isa polar-question :statement mv5225)
   (:var mv5225 :isa copular-predication :item mv5219 :value mv5223 :predicate mv5217)
   (:var mv5219 :isa bio-amount :measured-item mv5216 :has-determiner "THE" :raw-text "amount")
   (:var mv5216 :isa protein :predication mv5221 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv5221 :isa phosphorylate :substrate mv5216 :raw-text "phosphorylated")
   (:var mv5223 :isa low :adverb mv5222) (:var mv5222 :isa always :name "always")
   (:var mv5217 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv5236 :isa polar-question :statement mv5235)
   (:var mv5235 :isa vanish :agent mv5234 :raw-text "vanish")
   (:var mv5234 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv5228
    :component mv5227)
   (:var mv5228 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv5227 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv5246 :isa polar-question :statement mv5245)
   (:var mv5245 :isa vanish :agent mv5244 :raw-text "vanish")
   (:var mv5244 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv5238
    :component mv5237)
   (:var mv5238 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv5237 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv5276 :isa polar-question :statement mv5275)
   (:var mv5275 :isa event-relation :subordinated-event mv5272 :event mv5268)
   (:var mv5272 :isa wh-question :statement mv5269 :wh if)
   (:var mv5269 :isa increase :|agent-OR-cause| mv5256 :|multiplier-OR-cause| mv5267
    :|affected-process-OR-object| mv5260 :raw-text "increase")
   (:var mv5256 :isa interlocutor :name "person-and-machine")
   (:var mv5267 :isa measurement :number mv5264) (:var mv5264 :isa number :value 10)
   (:var mv5260 :isa bio-amount :measured-item mv5248 :has-determiner "THE" :raw-text "amount")
   (:var mv5248 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv5268 :isa vanish :cause mv5251 :raw-text "vanish")
   (:var mv5251 :isa bio-amount :measured-item mv5247 :has-determiner "THE" :raw-text "amount")
   (:var mv5247 :isa protein :predication mv5253 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv5253 :isa phosphorylate :substrate mv5247 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv5278 :isa show :|statement-OR-theme| mv5285 :beneficiary mv5279 :present "PRESENT")
   (:var mv5285 :isa evidence :statement mv5284 :has-determiner "THE")
   (:var mv5284 :isa regulate :agent mv5283 :object mv5277 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5283 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv5277 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv5279 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv5289 :isa increase :|agent-OR-cause| mv5287 :|affected-process-OR-object| mv5291
    :present "PRESENT" :raw-text "increases")
   (:var mv5287 :isa what)
   (:var mv5291 :isa bio-amount :measured-item mv5286 :has-determiner "THE" :raw-text "amount")
   (:var mv5286 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv5304 :isa copular-predication-of-pp :item mv5296 :value mv5303 :prep "IN" :predicate
    mv5297)
   (:var mv5296 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5303 :isa kinase :|context-OR-in-pathway| mv5294 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv5294 :isa signaling-pathway :has-determiner "THE" :modifier mv5300 :raw-text
    "signaling pathway")
   (:var mv5300 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv5297 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv5317 :isa polar-question :statement mv5315)
   (:var mv5315 :isa regulate :agent mv5306 :object mv5311 :raw-text "regulate")
   (:var mv5306 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5311 :isa gene :organ mv5314 :has-determiner "THE" :expresses mv5307 :raw-text "gene")
   (:var mv5314 :isa liver :has-determiner "THE")
   (:var mv5307 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv5324 :isa regulate :object mv5320 :agent mv5318 :present "PRESENT" :raw-text
    "regulated")
   (:var mv5320 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv5318 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv5333 :isa regulate :|affected-process-OR-object| mv5329 :agent mv5326 :present "PRESENT"
    :raw-text "regulated")
   (:var mv5329 :isa these :quantifier mv5327 :word "these") (:var mv5327 :isa which)
   (:var mv5326 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv5341 :isa regulate :|agent-OR-cause| mv5338 :object mv5342 :present "PRESENT" :adverb
    mv5339 :raw-text "regulate")
   (:var mv5338 :isa these :quantifier mv5336 :word "these") (:var mv5336 :isa which)
   (:var mv5342 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv5339 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv5347 :isa transcribe :agent mv5344 :object mv5345 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv5344 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv5345 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv5351 :isa transcribe :agent mv5348 :object mv5349 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv5348 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv5349 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv5355 :isa utilize :participant mv5354 :object mv5356 :present "PRESENT" :raw-text
    "utilize")
   (:var mv5354 :isa pathway :has-determiner "WHICH" :modifier mv5353 :raw-text "pathways")
   (:var mv5353 :isa database :name "KEGG" :uid "KEGG")
   (:var mv5356 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv5367 :isa wh-question :statement mv5363 :var nil :wh what)
   (:var mv5363 :isa regulate :affected-process mv5364 :past "PAST" :raw-text "regulated")
   (:var mv5364 :isa pathway :raw-text "pathways"))
  ("What pathways involve the immune system?"
   (:var mv5371 :isa involve :theme mv5370 :object mv5368 :present "PRESENT")
   (:var mv5370 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5368 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv5378 :isa involve :theme mv5377 :object mv5381 :present "PRESENT")
   (:var mv5377 :isa pathway :has-determiner "WHAT" :modifier mv5376 :raw-text "pathways")
   (:var mv5376 :isa database :name "KEGG" :uid "KEGG")
   (:var mv5381 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv5373 mv5379 mv5374))
   (:var mv5373 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv5379 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv5374 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv5389 :isa share :object mv5383 :participant mv5388 :present "PRESENT" :raw-text
    "shared")
   (:var mv5383 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5388 :isa gene :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv5397 :isa regulate :object mv5392 :agent mv5396 :present "PRESENT" :raw-text
    "regulated")
   (:var mv5392 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv5396 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv5400 :isa be :subject mv5399 :predicate mv5402 :present "PRESENT")
   (:var mv5399 :isa what)
   (:var mv5402 :isa pathway :pathwaycomponent mv5405 :predication mv5401 :raw-text "pathways")
   (:var mv5405 :isa gene :has-determiner "THESE" :raw-text "genes") (:var mv5401 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv5419 :isa share :object mv5412 :participant mv5417 :present "PRESENT" :raw-text
    "shared")
   (:var mv5412 :isa pathway :has-determiner "WHICH" :modifier mv5411 :raw-text "pathways")
   (:var mv5411 :isa immune :name "immune")
   (:var mv5417 :isa gene :expresses mv5418 :raw-text "genes")
   (:var mv5418 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv5407 mv5408 mv5409))
   (:var mv5407 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5408 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv5409 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv5428 :isa regulate :object mv5424 :agent mv5422 :present "PRESENT" :raw-text
    "regulated")
   (:var mv5424 :isa phosphatase :has-determiner "WHAT" :enzyme mv5421 :raw-text "phosphatase")
   (:var mv5421 :isa protein-family :raw-text "MAP kinase" :name "mitogen activated protein kinase"
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
   (:var mv5422 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv5434 :isa involve :theme mv5433 :object mv5430 :present "PRESENT")
   (:var mv5433 :isa pathway :has-determiner "WHAT" :modifier mv5432 :raw-text "pathways")
   (:var mv5432 :isa database :name "Reactome" :uid "Reactome")
   (:var mv5430 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv5439 :isa polar-question :statement mv5436)
   (:var mv5436 :isa be :subject mv5435 :predicate mv5438)
   (:var mv5435 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5438 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv5444 :isa polar-question :statement mv5442)
   (:var mv5442 :isa be :subject mv5440 :predicate mv5441)
   (:var mv5440 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5441 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv5448 :isa be :subject mv5447 :predicate mv5450 :present "PRESENT")
   (:var mv5447 :isa these :quantifier mv5445 :word "these") (:var mv5445 :isa which)
   (:var mv5450 :isa kinase :enzyme mv5449 :raw-text "kinases")
   (:var mv5449 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv5456 :isa be :subject mv5455 :predicate mv5452 :present "PRESENT")
   (:var mv5455 :isa these :quantifier mv5453 :word "these") (:var mv5453 :isa which)
   (:var mv5452 :isa protein-family :raw-text "tyrosine kinases" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are serine/threonine kinases?"
   (:var mv5461 :isa be :subject mv5460 :predicate mv5464 :present "PRESENT")
   (:var mv5460 :isa these :quantifier mv5458 :word "these") (:var mv5458 :isa which)
   (:var mv5464 :isa kinase :amino-acid mv5465 :raw-text "kinases")
   (:var mv5465 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv5462 mv5463))
   (:var mv5462 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv5463 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv5470 :isa be :subject mv5469 :predicate mv5471 :present "PRESENT")
   (:var mv5469 :isa these :quantifier mv5467 :word "these") (:var mv5467 :isa which)
   (:var mv5471 :isa phosphatase :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv5476 :isa be :subject mv5475 :predicate mv5477 :present "PRESENT")
   (:var mv5475 :isa these :quantifier mv5473 :word "these") (:var mv5473 :isa which)
   (:var mv5477 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv5482 :isa be :subject mv5481 :predicate mv5483 :present "PRESENT")
   (:var mv5481 :isa these :quantifier mv5479 :word "these") (:var mv5479 :isa which)
   (:var mv5483 :isa receptor :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv5489 :isa be :subject mv5488 :predicate mv5490 :present "PRESENT")
   (:var mv5488 :isa these :quantifier mv5486 :word "these") (:var mv5486 :isa which)
   (:var mv5490 :isa receptor :modifier mv5485 :raw-text "receptors")
   (:var mv5485 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv5496 :isa be :subject mv5495 :predicate mv5492 :present "PRESENT")
   (:var mv5495 :isa these :quantifier mv5493 :word "these") (:var mv5493 :isa which)
   (:var mv5492 :isa protein-family :raw-text "histone demethylases" :name "histone demethylase"
    :uid "GO:0032452"))
  ("Which of these are histone methylases?"
   (:var mv5502 :isa be :subject mv5501 :predicate mv5498 :present "PRESENT")
   (:var mv5501 :isa these :quantifier mv5499 :word "these") (:var mv5499 :isa which)
   (:var mv5498 :isa protein-family :raw-text "histone methylases" :name
    "histone methyltransferase" :uid "GO:0042054"))
  ("Which of these are histone methyltransferases?"
   (:var mv5508 :isa be :subject mv5507 :predicate mv5504 :present "PRESENT")
   (:var mv5507 :isa these :quantifier mv5505 :word "these") (:var mv5505 :isa which)
   (:var mv5504 :isa protein-family :raw-text "histone methyltransferases" :name
    "histone methyltransferase" :uid "GO:0042054"))
  ("Which of these are demethylases?"
   (:var mv5513 :isa be :subject mv5512 :predicate mv5514 :present "PRESENT")
   (:var mv5512 :isa these :quantifier mv5510 :word "these") (:var mv5510 :isa which)
   (:var mv5514 :isa protein-family :raw-text "demethylases" :name "demethylase" :uid
    "GO:0032451"))
  ("Which of these are methylases?"
   (:var mv5519 :isa be :subject mv5518 :predicate mv5520 :present "PRESENT")
   (:var mv5518 :isa these :quantifier mv5516 :word "these") (:var mv5516 :isa which)
   (:var mv5520 :isa protein-family :raw-text "methylases" :name "methyltransferase" :uid
    "GO:0008168"))
  ("Which of these are methyltransferases?"
   (:var mv5525 :isa be :subject mv5524 :predicate mv5526 :present "PRESENT")
   (:var mv5524 :isa these :quantifier mv5522 :word "these") (:var mv5522 :isa which)
   (:var mv5526 :isa protein-family :raw-text "methyltransferases" :name "methyltransferase" :uid
    "GO:0008168"))
  ("Which of these are steroid receptors?"
   (:var mv5531 :isa be :subject mv5530 :predicate mv5533 :present "PRESENT")
   (:var mv5530 :isa these :quantifier mv5528 :word "these") (:var mv5528 :isa which)
   (:var mv5533 :isa receptor :modifier mv5532 :raw-text "receptors")
   (:var mv5532 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv5539 :isa be :subject mv5538 :predicate mv5535 :present "PRESENT")
   (:var mv5538 :isa these :quantifier mv5536 :word "these") (:var mv5536 :isa which)
   (:var mv5535 :isa protein-family :raw-text "receptor tyrosine kinases" :name
    "receptor tyrosine kinase" :count 2 :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :uid "NCIT:C17660"))
  ("Which of these are transcription factors?"
   (:var mv5545 :isa be :subject mv5544 :predicate mv5541 :present "PRESENT")
   (:var mv5544 :isa these :quantifier mv5542 :word "these") (:var mv5542 :isa which)
   (:var mv5541 :isa transcription-factor :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv5551 :isa be :subject mv5550 :predicate mv5552 :present "PRESENT")
   (:var mv5550 :isa these :quantifier mv5548 :word "these") (:var mv5548 :isa which)
   (:var mv5552 :isa protein :modifier mv5547 :raw-text "proteins")
   (:var mv5547 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv5557 :isa be :subject mv5556 :predicate mv5560 :present "PRESENT")
   (:var mv5556 :isa these :quantifier mv5554 :word "these") (:var mv5554 :isa which)
   (:var mv5560 :isa phosphatase :modifier mv5561 :raw-text "phosphatases")
   (:var mv5561 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv5558 mv5559))
   (:var mv5558 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv5559 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv5566 :isa be :subject mv5565 :predicate mv5568 :present "PRESENT")
   (:var mv5565 :isa these :quantifier mv5563 :word "these") (:var mv5563 :isa which)
   (:var mv5568 :isa phosphatase :modifier mv5567 :raw-text "phosphatases")
   (:var mv5567 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv5573 :isa phosphorylate :amino-acid mv5570 :agent mv5572 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv5570 :isa what)
   (:var mv5572 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv5582 :isa gene-transcript-express :object mv5576 :organ mv5581 :present "PRESENT"
    :adverb mv5578 :raw-text "expressed")
   (:var mv5576 :isa these :quantifier mv5574 :word "these") (:var mv5574 :isa which)
   (:var mv5581 :isa liver) (:var mv5578 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv5587 :isa regulate :|agent-OR-cause| mv5586 :object mv5585 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5586 :isa what)
   (:var mv5585 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv5590 :isa increase :|agent-OR-cause| mv5588 :|affected-process-OR-object| mv5592
    :present "PRESENT" :raw-text "increases")
   (:var mv5588 :isa what)
   (:var mv5592 :isa bio-amount :measured-item mv5594 :has-determiner "THE" :raw-text "amount")
   (:var mv5594 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv5597 :isa upregulate :|agent-OR-cause| mv5596 :object mv5598 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv5596 :isa what)
   (:var mv5598 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv5600 :isa downregulate :|agent-OR-cause| mv5599 :object mv5601 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv5599 :isa what)
   (:var mv5601 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv5603 :isa decrease :|agent-OR-cause| mv5602 :|affected-process-OR-object| mv5605
    :present "PRESENT" :raw-text "decreases")
   (:var mv5602 :isa what)
   (:var mv5605 :isa bio-amount :measured-item mv5607 :has-determiner "THE" :raw-text "amount")
   (:var mv5607 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv5610 :isa regulate :|agent-OR-cause| mv5609 :object mv5611 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5609 :isa what)
   (:var mv5611 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv5619 :isa wh-question :statement mv5618 :wh what)
   (:var mv5618 :isa prepositional-phrase :pobj mv5617 :prep "FROM")
   (:var mv5617 :isa literature :has-determiner "THE"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv5627 :isa wh-question :statement mv5626 :wh what)
   (:var mv5626 :isa prepositional-phrase :pobj mv5620 :prep "FROM")
   (:var mv5620 :isa database :has-determiner "THE" :name "GEO RNAi database" :uid "GEO-RNAi"))
  ("Which kinases regulate the cfos gene?"
   (:var mv5630 :isa regulate :agent mv5629 :object mv5633 :present "PRESENT" :raw-text "regulate")
   (:var mv5629 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5633 :isa gene :has-determiner "THE" :expresses mv5632 :raw-text "gene")
   (:var mv5632 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv5634 :isa downregulate :agent mv5636 :object mv5639 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv5636 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5639 :isa gene :has-determiner "THE" :expresses mv5638 :raw-text "gene")
   (:var mv5638 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv5642 :isa be :subject mv5641 :predicate mv5640 :present "PRESENT")
   (:var mv5641 :isa what)
   (:var mv5640 :isa positive-regulator :theme mv5646 :raw-text "positive regulators")
   (:var mv5646 :isa gene :has-determiner "THE" :expresses mv5645 :raw-text "gene")
   (:var mv5645 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv5650 :isa transcribe :|agent-OR-cause| mv5649 :object mv5648 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv5649 :isa what)
   (:var mv5648 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv5653 :isa show :|statement-OR-theme| mv5664 :beneficiary mv5654 :present "PRESENT")
   (:var mv5664 :isa evidence :statement mv5659 :has-determiner "THE")
   (:var mv5659 :isa increase :agent mv5651 :|affected-process-OR-object| mv5661 :present "PRESENT"
    :raw-text "increases")
   (:var mv5651 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv5661 :isa bio-amount :measured-item mv5652 :has-determiner "THE" :raw-text "amount")
   (:var mv5652 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv5654 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv5666 :isa show :|statement-OR-theme| mv5669 :beneficiary mv5667 :present "PRESENT")
   (:var mv5669 :isa evidence :has-determiner "THE")
   (:var mv5667 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv5679 :isa be :subject mv5678 :predicate mv5685 :present "PRESENT")
   (:var mv5678 :isa what) (:var mv5685 :isa evidence :statement mv5684 :has-determiner "THE")
   (:var mv5684 :isa regulate :agent mv5683 :object mv5677 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5683 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv5677 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv5687 :isa be :subject mv5686 :predicate mv5696 :present "PRESENT")
   (:var mv5686 :isa what) (:var mv5696 :isa evidence :statement mv5692 :has-determiner "THE")
   (:var mv5692 :isa binding :binder mv5691 :direct-bindee mv5695 :present "PRESENT" :raw-text
    "binds")
   (:var mv5691 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv5695 :isa gene :has-determiner "THE" :expresses mv5694 :raw-text "gene")
   (:var mv5694 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv5704 :isa gene-transcript-express :object mv5698 :organ mv5703 :present "PRESENT"
    :adverb mv5700 :raw-text "expressed")
   (:var mv5698 :isa gene :has-determiner "WHAT" :raw-text "genes") (:var mv5703 :isa liver)
   (:var mv5700 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv5712 :isa polar-question :statement mv5708)
   (:var mv5708 :isa gene-transcript-express :object mv5706 :organ mv5710 :past "PAST" :raw-text
    "expressed")
   (:var mv5706 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5710 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv5721 :isa polar-question :statement mv5719)
   (:var mv5719 :isa gene-transcript-express :object mv5713 :organ mv5718 :adverb mv5715 :raw-text
    "expressed")
   (:var mv5713 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5718 :isa liver) (:var mv5715 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv5726 :isa affect :manner mv5724 :agent mv5722 :object mv5723 :present "PRESENT"
    :raw-text "affect")
   (:var mv5724 :isa how)
   (:var mv5722 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv5723 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv5731 :isa affect :manner mv5728 :agent mv5730 :object mv5727 :present "PRESENT"
    :raw-text "affect")
   (:var mv5728 :isa how)
   (:var mv5730 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5727 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv5735 :isa be :subject mv5734 :predicate mv5740 :present "PRESENT")
   (:var mv5734 :isa what)
   (:var mv5740 :isa regulator :theme mv5743 :has-determiner "THE" :predication mv5737 :context
    mv5738 :raw-text "regulators")
   (:var mv5743 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv5732 mv5733))
   (:var mv5732 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5733 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv5737 :isa common) (:var mv5738 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv5748 :isa be :subject mv5747 :predicate mv5750 :present "PRESENT")
   (:var mv5747 :isa what) (:var mv5750 :isa path :endpoints mv5753 :has-determiner "THE")
   (:var mv5753 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv5745 mv5746))
   (:var mv5745 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5746 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv5760 :isa polar-question :statement mv5759)
   (:var mv5759 :isa affect :agent mv5755 :object mv5758 :raw-text "affect")
   (:var mv5755 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5758 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv5762 :isa regulate :agent mv5761 :object mv5763 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5761 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5763 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv5765 :isa upregulate :agent mv5764 :object mv5766 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv5764 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5766 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv5767 :isa upregulate :agent mv5769 :object mv5768 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv5769 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5768 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv5779 :isa polar-question :statement mv5778)
   (:var mv5778 :isa regulate :agent mv5773 :object mv5777 :raw-text "regulate")
   (:var mv5773 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5777 :isa gene :has-determiner "THE" :expresses mv5771 :raw-text "gene")
   (:var mv5771 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv5781 :isa show :|statement-OR-theme| mv5789 :beneficiary mv5782 :present "PRESENT")
   (:var mv5789 :isa evidence :statement mv5788 :has-determiner "THE")
   (:var mv5788 :isa regulate :agent mv5786 :object mv5780 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5786 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5780 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5782 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv5797 :isa polar-question :statement mv5796)
   (:var mv5796 :isa regulate :agent mv5792 :object mv5795 :raw-text "regulate")
   (:var mv5792 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5795 :isa gene :has-determiner "THE" :expresses mv5790 :raw-text "gene")
   (:var mv5790 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv5800 :isa decrease :agent mv5799 :|affected-process-OR-object| mv5802 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5799 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5802 :isa bio-amount :measured-item mv5798 :has-determiner "THE" :raw-text "amount")
   (:var mv5798 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv5810 :isa polar-question :statement mv5809)
   (:var mv5809 :isa regulate :agent mv5808 :object mv5807 :raw-text "regulate")
   (:var mv5808 :isa bio-entity :name "TNG")
   (:var mv5807 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv5818 :isa polar-question :statement mv5817)
   (:var mv5817 :isa regulate :agent mv5812 :object mv5816 :raw-text "regulate")
   (:var mv5812 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5816 :isa gene :has-determiner "THE" :expresses mv5815 :raw-text "gene")
   (:var mv5815 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv5820 :isa be :subject mv5819 :predicate mv5822 :present "PRESENT")
   (:var mv5819 :isa what)
   (:var mv5822 :isa pathway :pathwaycomponent mv5827 :has-determiner "THE" :raw-text "pathways")
   (:var mv5827 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv5824 mv5826))
   (:var mv5824 :isa bio-entity :name "TNG")
   (:var mv5826 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv5830 :isa be :subject mv5829 :predicate mv5832 :present "PRESENT")
   (:var mv5829 :isa what)
   (:var mv5832 :isa pathway :pathwaycomponent mv5837 :has-determiner "THE" :raw-text "pathways")
   (:var mv5837 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv5834 mv5836))
   (:var mv5834 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5836 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv5845 :isa polar-question :statement mv5844)
   (:var mv5844 :isa regulate :agent mv5840 :object mv5843 :raw-text "regulate")
   (:var mv5840 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5843 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv5854 :isa polar-question :statement mv5853)
   (:var mv5853 :isa regulate :agent mv5847 :object mv5852 :raw-text "regulate")
   (:var mv5847 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5852 :isa gene :has-determiner "THE" :expresses mv5851 :raw-text "gene")
   (:var mv5851 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv5867 :isa copular-predication-of-pp :item mv5856 :value mv5866 :prep "BETWEEN"
    :predicate mv5857)
   (:var mv5856 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5866 :isa pathway :pathwaycomponent mv5863 :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5863 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv5860 mv5862))
   (:var mv5860 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5862 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5857 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv5873 :isa affect :manner mv5869 :agent mv5871 :object mv5874 :present "PRESENT"
    :raw-text "affect")
   (:var mv5869 :isa how)
   (:var mv5871 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5874 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv5876 :isa bio-activate :agent mv5875 :object mv5877 :present "PRESENT" :raw-text
    "activates")
   (:var mv5875 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5877 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv5879 :isa bio-activate :agent mv5878 :object mv5880 :present "PRESENT" :raw-text
    "activates")
   (:var mv5878 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv5880 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv5882 :isa be :subject mv5881 :predicate mv5884 :present "PRESENT")
   (:var mv5881 :isa what) (:var mv5884 :isa path :endpoints mv5889 :has-determiner "THE")
   (:var mv5889 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv5886 mv5888))
   (:var mv5886 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5888 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv5896 :isa polar-question :statement mv5895)
   (:var mv5895 :isa regulate :agent mv5892 :object mv5894 :raw-text "regulate")
   (:var mv5892 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5894 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv5901 :isa affect :manner mv5899 :agent mv5897 :object mv5898 :present "PRESENT"
    :raw-text "affect")
   (:var mv5899 :isa how)
   (:var mv5897 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5898 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv5903 :isa bio-activate :agent mv5902 :object mv5904 :present "PRESENT" :raw-text
    "activates")
   (:var mv5902 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5904 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv5908 :isa decrease :agent mv5907 :|affected-process-OR-object| mv5910 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5907 :isa protein-family :predication mv5906 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5906 :isa active)
   (:var mv5910 :isa bio-amount :measured-item mv5905 :has-determiner "THE" :raw-text "amount")
   (:var mv5905 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv5916 :isa be :subject mv5915 :predicate mv5919 :present "PRESENT")
   (:var mv5915 :isa what)
   (:var mv5919 :isa upstream-segment :pathwaycomponent mv5922 :has-determiner "THE" :predication
    mv5918 :raw-text "upstreams")
   (:var mv5922 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv5913 mv5914))
   (:var mv5913 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5914 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv5918 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv5928 :isa affect :manner mv5926 :agent mv5924 :object mv5925 :present "PRESENT"
    :raw-text "affect")
   (:var mv5926 :isa how)
   (:var mv5924 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5925 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv5934 :isa polar-question :statement mv5933)
   (:var mv5933 :isa regulate :agent mv5929 :object mv5930 :raw-text "regulate")
   (:var mv5929 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5930 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv5942 :isa polar-question :statement mv5941)
   (:var mv5941 :isa regulate :agent mv5935 :object mv5940 :raw-text "regulate")
   (:var mv5935 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5940 :isa gene :has-determiner "THE" :expresses mv5936 :raw-text "gene")
   (:var mv5936 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv5947 :isa affect :manner mv5945 :agent mv5943 :object mv5944 :present "PRESENT"
    :raw-text "affect")
   (:var mv5945 :isa how)
   (:var mv5943 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5944 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv5950 :isa be :subject mv5949 :predicate mv5952 :present "PRESENT")
   (:var mv5949 :isa what) (:var mv5952 :isa path :endpoints mv5956 :has-determiner "THE")
   (:var mv5956 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv5954 mv5948))
   (:var mv5954 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5948 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv5967 :isa polar-question :statement mv5965)
   (:var mv5965 :isa regulate :agent mv5960 :affected-process mv5963 :raw-text "regulate")
   (:var mv5960 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5963 :isa gene-transcript-express :object mv5958 :has-determiner "THE" :raw-text
    "expression")
   (:var mv5958 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv5971 :isa decrease :agent mv5970 :affected-process mv5973 :present "PRESENT" :raw-text
    "decreases")
   (:var mv5970 :isa protein-family :predication mv5969 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5969 :isa active)
   (:var mv5973 :isa gene-transcript-express :object mv5968 :has-determiner "THE" :raw-text
    "expression")
   (:var mv5968 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv5979 :isa decrease :agent mv5978 :|affected-process-OR-object| mv5981 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5978 :isa protein-family :predication mv5977 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5977 :isa active)
   (:var mv5981 :isa bio-amount :measured-item mv5976 :has-determiner "THE" :raw-text "amount")
   (:var mv5976 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv5987 :isa decrease :agent mv5986 :|affected-process-OR-object| mv5989 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5986 :isa protein-family :predication mv5985 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5985 :isa active)
   (:var mv5989 :isa bio-amount :measured-item mv5984 :has-determiner "THE" :raw-text "amount")
   (:var mv5984 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv5994 :isa inhibit :agent mv5992 :affected-process mv5996 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv5992 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv5996 :isa bio-activity :participant mv5993 :has-determiner "THE" :raw-text "activity")
   (:var mv5993 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?" (:var mv6010 :isa polar-question :statement mv6008)
   (:var mv6008 :isa decrease :agent mv5999 :object mv6000 :raw-text "decrease")
   (:var mv5999 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv6000 :isa protein :info-context mv6007 :has-determiner "THE" :raw-text "CXCL8" :uid
    "UP:P10145" :name "IL8_HUMAN")
   (:var mv6007 :isa model :has-determiner "THE"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv6021 :isa polar-question :statement mv6019)
   (:var mv6019 :isa decrease :agent mv6011 :object mv6012 :raw-text "decrease")
   (:var mv6011 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv6012 :isa protein :info-context mv6018 :raw-text "CXCL10" :uid "UP:P02778" :name
    "CXL10_HUMAN")
   (:var mv6018 :isa model :has-determiner "THE"))
  ("TNF activates NFkappaB"
   (:var mv6023 :isa bio-activate :agent mv6022 :object mv6024 :present "PRESENT" :raw-text
    "activates")
   (:var mv6022 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv6024 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv6030 :isa want :agent mv6027 :theme mv6041 :present "PRESENT")
   (:var mv6027 :isa interlocutor :name "speaker")
   (:var mv6041 :isa find-out :agent mv6027 :statement mv6038)
   (:var mv6038 :isa wh-question :statement mv6037 :var nil :wh how)
   (:var mv6037 :isa decrease :agent mv6036 :object mv6026 :present "PRESENT" :raw-text
    "decreases")
   (:var mv6036 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv6026 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv6046 :isa want :agent mv6043 :theme mv6061 :present "PRESENT")
   (:var mv6043 :isa interlocutor :name "speaker")
   (:var mv6061 :isa find-out :agent mv6043 :statement mv6058)
   (:var mv6058 :isa wh-question :statement mv6053 :var nil :wh how)
   (:var mv6053 :isa decrease :agent mv6052 :object mv6054 :present "PRESENT" :raw-text
    "decreases")
   (:var mv6052 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv6054 :isa protein :cell-type mv6056 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv6056 :isa cell-type :cell-line mv6042)
   (:var mv6042 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv6067 :isa want :agent mv6064 :theme mv6081 :present "PRESENT")
   (:var mv6064 :isa interlocutor :name "speaker")
   (:var mv6081 :isa find-out :agent mv6064 :statement mv6078)
   (:var mv6078 :isa wh-question :statement mv6073 :var nil :wh how)
   (:var mv6073 :isa bio-activate :agent mv6062 :object mv6074 :present "PRESENT" :raw-text
    "activates")
   (:var mv6062 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv6074 :isa protein :cell-type mv6076 :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv6076 :isa cell-type :cell-line mv6063)
   (:var mv6063 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv6087 :isa polar-question :statement mv6086)
   (:var mv6086 :isa phosphorylate :agent mv6083 :substrate mv6085 :raw-text "phosphorylate")
   (:var mv6083 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6085 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv6095 :isa polar-question :statement mv6094)
   (:var mv6094 :isa inhibit :agent mv6088 :object mv6093 :raw-text "inhibit")
   (:var mv6088 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv6093 :isa gene :has-determiner "THE" :expresses mv6089 :raw-text "gene")
   (:var mv6089 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv6103 :isa polar-question :statement mv6102)
   (:var mv6102 :isa stimulate :agent mv6096 :object mv6101 :raw-text "stimulate")
   (:var mv6096 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv6101 :isa gene :has-determiner "THE" :expresses mv6097 :raw-text "gene")
   (:var mv6097 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv6108 :isa want :agent mv6105 :theme mv6124 :present "PRESENT")
   (:var mv6105 :isa interlocutor :name "speaker")
   (:var mv6124 :isa find-out :agent mv6105 :statement mv6121)
   (:var mv6121 :isa wh-question :statement mv6115 :var nil :wh how)
   (:var mv6115 :isa decrease :agent mv6114 :object mv6116 :present "PRESENT" :raw-text
    "decreases")
   (:var mv6114 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv6116 :isa protein :cell-type mv6119 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv6119 :isa cell-type :cell-line mv6104 :|context-OR-associated-disease| mv6118)
   (:var mv6104 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv6118 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv6129 :isa polar-question :statement mv6126)
   (:var mv6126 :isa be :subject mv6127 :predicate mv6125)
   (:var mv6127 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv6125 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv6131 :isa list :theme mv6134 :present "PRESENT")
   (:var mv6134 :isa gene :predication mv6135 :quantifier mv6132 :has-determiner "THE" :raw-text
    "genes")
   (:var mv6135 :isa regulate :object mv6134 :agent mv6139 :past "PAST" :raw-text "regulated")
   (:var mv6139 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv6130 mv6138))
   (:var mv6130 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv6138 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv6132 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv6142 :isa list :theme mv6146 :present "PRESENT")
   (:var mv6146 :isa gene :predication mv6147 :quantifier mv6143 :has-determiner "THE" :raw-text
    "genes")
   (:var mv6147 :isa regulate :object mv6146 :agent mv6151 :past "PAST" :raw-text "regulated")
   (:var mv6151 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv6141 mv6150))
   (:var mv6141 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv6150 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv6143 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv6157 :isa show :|statement-OR-theme| mv6160 :beneficiary mv6158 :present "PRESENT")
   (:var mv6160 :isa mutation :object mv6165 :has-determiner "THE" :raw-text "mutations")
   (:var mv6165 :isa collection :context mv6156 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv6155 mv6163))
   (:var mv6156 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6155 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6163 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6158 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv6171 :isa be :subject mv6170 :predicate mv6173 :present "PRESENT")
   (:var mv6170 :isa what)
   (:var mv6173 :isa mutation :object mv6178 :has-determiner "THE" :raw-text "mutations")
   (:var mv6178 :isa collection :context mv6169 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv6168 mv6176))
   (:var mv6169 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6168 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6176 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv6185 :isa be :subject mv6184 :predicate mv6192 :present "PRESENT")
   (:var mv6184 :isa what)
   (:var mv6192 :isa gene :disease mv6183 :has-determiner "THE" :predication mv6181 :raw-text
    "genes")
   (:var mv6183 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv6181 :isa mutual-exclusivity :alternative mv6182)
   (:var mv6182 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv6197 :isa be :subject mv6196 :predicate mv6204 :present "PRESENT")
   (:var mv6196 :isa what)
   (:var mv6204 :isa gene :has-determiner "THE" :predication mv6193 :raw-text "genes")
   (:var mv6193 :isa mutual-exclusivity :alternative mv6194)
   (:var mv6194 :isa protein :context mv6195 :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv6195 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("What downregulates it?"
   (:var mv6206 :isa downregulate :|agent-OR-cause| mv6205 :|affected-process-OR-object| mv6207
    :present "PRESENT" :raw-text "downregulates")
   (:var mv6205 :isa what) (:var mv6207 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv6211 :isa have :possessor mv6210 :thing-possessed mv6213 :present "PRESENT")
   (:var mv6210 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6213 :isa evidence :fact mv6216 :predication mv6212)
   (:var mv6216 :isa regulate :agent mv6208 :progressive mv6215 :raw-text "regulated")
   (:var mv6208 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv6215 :isa be) (:var mv6212 :isa strong))
  ("What increases the amount of myc"
   (:var mv6222 :isa increase :|agent-OR-cause| mv6220 :|affected-process-OR-object| mv6224
    :present "PRESENT" :raw-text "increases")
   (:var mv6220 :isa what)
   (:var mv6224 :isa bio-amount :measured-item mv6226 :has-determiner "THE" :raw-text "amount")
   (:var mv6226 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv6230 :isa inhibit :|agent-OR-cause| mv6229 :object mv6228 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv6229 :isa what)
   (:var mv6228 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv6234 :isa be :subject mv6233 :predicate mv6246 :present "PRESENT")
   (:var mv6233 :isa what) (:var mv6246 :isa quality-predicate :item mv6244 :attribute mv6240)
   (:var mv6244 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv6231 mv6242 mv6232))
   (:var mv6231 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6242 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6232 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv6240 :isa location-of :has-determiner "THE" :predication mv6238 :modifier mv6239)
   (:var mv6238 :isa likely :comparative mv6236)
   (:var mv6236 :isa superlative-quantifier :name "most")
   (:var mv6239 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv6249 :isa be :subject mv6248 :predicate mv6258 :present "PRESENT")
   (:var mv6248 :isa what) (:var mv6258 :isa quality-predicate :item mv6247 :attribute mv6255)
   (:var mv6247 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6255 :isa location-of :has-determiner "THE" :predication mv6253 :modifier mv6254)
   (:var mv6253 :isa likely :comparative mv6251)
   (:var mv6251 :isa superlative-quantifier :name "most")
   (:var mv6254 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv6262 :isa be :subject mv6261 :predicate mv6265 :present "PRESENT")
   (:var mv6261 :isa what)
   (:var mv6265 :isa significance :agent mv6259 :has-determiner "THE" :modifier mv6264)
   (:var mv6259 :isa protein :context mv6260 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6260 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv6264 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv6277 :isa regulate :|affected-process-OR-object| mv6273 :agent mv6270 :present "PRESENT"
    :raw-text "regulated")
   (:var mv6273 :isa those :quantifier mv6271 :word "those") (:var mv6271 :isa which)
   (:var mv6270 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv6293 :isa copular-predication-of-pp :item mv6284 :value mv6292 :prep "IN" :predicate
    mv6285)
   (:var mv6284 :isa gene :quantifier mv6281 :has-determiner "THOSE" :raw-text "genes")
   (:var mv6281 :isa which)
   (:var mv6292 :isa gene :context mv6280 :quantifier mv6281 :has-determiner "THOSE" :raw-text
    "genes")
   (:var mv6280 :isa signaling-pathway :has-determiner "THE" :modifier mv6288 :raw-text
    "signaling pathway")
   (:var mv6288 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv6285 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv6304 :isa copular-predication-of-pp :item mv6298 :value mv6302 :prep mv6300 :predicate
    mv6299)
   (:var mv6298 :isa these :quantifier mv6296 :word "these") (:var mv6296 :isa which)
   (:var mv6302 :isa pathway :has-determiner "THE" :modifier mv6295 :raw-text "pathway")
   (:var mv6295 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv6300 :isa in :word "in") (:var mv6299 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv6313 :isa gene-transcript-express :object mv6308 :organ mv6312 :present "PRESENT"
    :raw-text "expressed")
   (:var mv6308 :isa pronoun/plural :quantifier mv6306 :word "them") (:var mv6306 :isa which)
   (:var mv6312 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv6328 :isa regulate :|affected-process-OR-object| mv6320 :agent mv6327 :present "PRESENT"
    :superlative mv6322 :adverb mv6323 :raw-text "regulated")
   (:var mv6320 :isa pronoun/plural :quantifier mv6318 :word "them") (:var mv6318 :isa which)
   (:var mv6327 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv6316 mv6317))
   (:var mv6316 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv6317 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv6322 :isa superlative-quantifier :name "most")
   (:var mv6323 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv6335 :isa target :agent mv6331 :object mv6332 :present "PRESENT" :raw-text "target")
   (:var mv6331 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv6332 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv6341 :isa target :|agent-OR-cause| mv6339 :object mv6336 :present "PRESENT" :raw-text
    "target")
   (:var mv6339 :isa those :quantifier mv6337 :word "those") (:var mv6337 :isa which)
   (:var mv6336 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv6344 :isa be :subject mv6343 :predicate mv6345 :present "PRESENT")
   (:var mv6343 :isa what)
   (:var mv6345 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv6348 :isa be :subject mv6347 :predicate mv6346 :present "PRESENT")
   (:var mv6347 :isa what)
   (:var mv6346 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv6354 :isa do :patient mv6349 :present "PRESENT")
   (:var mv6349 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv6364 :isa polar-question :statement mv6362)
   (:var mv6362 :isa there-exists :value mv6360 :predicate mv6357)
   (:var mv6360 :isa inhibitor :protein mv6355 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv6355 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv6357 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv6366 :isa name-something :patient mv6370 :present "PRESENT")
   (:var mv6370 :isa drug :predication mv6372 :quantifier mv6369 :raw-text "drugs")
   (:var mv6372 :isa inhibit :agent mv6370 :that-rel t :object mv6365 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv6365 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6369 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv6384 :isa polar-question :statement mv6383)
   (:var mv6383 :isa there-exists :value mv6381 :predicate mv6375)
   (:var mv6381 :isa inhibitor :quantifier mv6377 :protein mv6382 :raw-text "inhibitors")
   (:var mv6377 :isa any :word "any")
   (:var mv6382 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv6375 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv6394 :isa polar-question :statement mv6392)
   (:var mv6392 :isa there-exists :value mv6388 :predicate mv6386)
   (:var mv6388 :isa target-protein :agent mv6391 :raw-text "targets")
   (:var mv6391 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv6386 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv6398 :isa inhibit :object mv6395 :agent mv6397 :present "PRESENT" :raw-text "inhibit")
   (:var mv6395 :isa what)
   (:var mv6397 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv6403 :isa target :object mv6399 :agent mv6401 :present "PRESENT" :raw-text "target")
   (:var mv6399 :isa what)
   (:var mv6401 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv6410 :isa polar-question :statement mv6409)
   (:var mv6409 :isa target :agent mv6405 :object mv6408 :raw-text "target")
   (:var mv6405 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv6408 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv6413 :isa be :subject mv6412 :predicate mv6415 :present "PRESENT")
   (:var mv6412 :isa what)
   (:var mv6415 :isa target-protein :quantifier mv6414 :treatment mv6418 :raw-text "targets")
   (:var mv6414 :isa some :word "some")
   (:var mv6418 :isa treatment :disease mv6411 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv6411 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv6422 :isa be :subject mv6421 :predicate mv6424 :present "PRESENT")
   (:var mv6421 :isa what)
   (:var mv6424 :isa target-protein :quantifier mv6423 :disease mv6420 :raw-text "targets")
   (:var mv6423 :isa some :word "some")
   (:var mv6420 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv6433 :isa lead :agent mv6430 :theme mv6436 :modal mv6432 :raw-text "lead")
   (:var mv6430 :isa target-protein :has-determiner "WHAT" :raw-text "targets")
   (:var mv6436 :isa development :disease mv6428 :has-determiner "THE" :raw-text "development")
   (:var mv6428 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv6432 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv6444 :isa lead :agent mv6442 :theme mv6447 :modal mv6443 :raw-text "lead")
   (:var mv6442 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv6447 :isa development :disease mv6440 :has-determiner "THE" :raw-text "development")
   (:var mv6440 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv6443 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv6456 :isa lead :agent mv6454 :theme mv6451 :modal mv6455 :raw-text "lead")
   (:var mv6454 :isa gene :has-determiner "WHAT" :predication mv6453 :raw-text "genes")
   (:var mv6453 :isa mutation :object mv6454 :raw-text "mutated")
   (:var mv6451 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv6455 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv6461 :isa be :subject mv6460 :predicate mv6465 :present "PRESENT")
   (:var mv6460 :isa what)
   (:var mv6465 :isa mutation :predication mv6467 :has-determiner "THE" :modifier mv6463
    :|agent-OR-object| mv6464 :raw-text "mutation")
   (:var mv6467 :isa lead :agent mv6465 :that-rel t :theme mv6459 :present "PRESENT" :raw-text
    "leads")
   (:var mv6459 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv6463 :isa top-qua-location) (:var mv6464 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv6476 :isa like :agent mv6471 :modal mv6474)
   (:var mv6471 :isa interlocutor :name "speaker") (:var mv6474 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv6497 :isa bio-use :patient mv6487 :modal mv6488 :agent mv6489 :theme mv6496 :present
    "PRESENT" :raw-text "use")
   (:var mv6487 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv6488 :isa could)
   (:var mv6489 :isa interlocutor :name "speaker")
   (:var mv6496 :isa treatment :disease mv6485 :raw-text "treat")
   (:var mv6485 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv6500 :isa be :subject mv6499 :predicate mv6502 :present "PRESENT")
   (:var mv6499 :isa what)
   (:var mv6502 :isa drug :treatment mv6504 :quantifier mv6501 :raw-text "drugs")
   (:var mv6504 :isa treatment :disease mv6498 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv6498 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv6501 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv6512 :isa like :agent mv6508 :modal mv6519)
   (:var mv6508 :isa interlocutor :name "speaker") (:var mv6519 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv6523 :isa how))
  ("Does MEK act on ERK?" (:var mv6533 :isa polar-question :statement mv6531)
   (:var mv6531 :isa bio-act :agent mv6527 :acted-on mv6530 :raw-text "act")
   (:var mv6527 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6530 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv6538 :isa explicit-suggestion :suggestion mv6535 :marker let-as-directive)
   (:var mv6535 :isa build :artifact mv6537 :present "PRESENT")
   (:var mv6537 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv6541 :isa bio-activate :agent mv6540 :object mv6539 :present "PRESENT" :raw-text
    "activates")
   (:var mv6540 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6539 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv6543 :isa bio-activate :agent mv6542 :object mv6544 :present "PRESENT" :raw-text
    "activates")
   (:var mv6542 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv6544 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv6545 :isa remove :object mv6552 :present "PRESENT" :raw-text "Remove")
   (:var mv6552 :isa fact :statement mv6550 :has-determiner "THE")
   (:var mv6550 :isa bio-activate :agent mv6549 :object mv6551 :present "PRESENT" :raw-text
    "activates")
   (:var mv6549 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv6551 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv6564 :isa polar-question :statement mv6555)
   (:var mv6555 :isa tell :agent mv6554 :theme mv6563 :theme mv6556 :modal "CAN")
   (:var mv6554 :isa interlocutor :name "hearer")
   (:var mv6563 :isa copular-predication-of-pp :item mv6557 :value mv6561 :prep mv6559 :predicate
    mv6558)
   (:var mv6557 :isa what) (:var mv6561 :isa model :has-determiner "THE")
   (:var mv6559 :isa in :word "in") (:var mv6558 :isa be :modal "CAN")
   (:var mv6556 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv6568 :isa summarize :statement mv6567 :present "PRESENT")
   (:var mv6567 :isa model :has-determiner "THE"))
  ("Summarize the current model." (:var mv6573 :isa summarize :statement mv6572 :present "PRESENT")
   (:var mv6572 :isa model :has-determiner "THE" :predication mv6571) (:var mv6571 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv6575 :isa phosphorylate :|agent-OR-cause| mv6574 :substrate mv6576 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv6574 :isa what)
   (:var mv6576 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv6578 :isa binding :binder mv6577 :direct-bindee mv6579 :present "PRESENT" :raw-text
    "binds")
   (:var mv6577 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv6579 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv6584 :isa bio-activate :object mv6580 :present "PRESENT" :raw-text "activated")
   (:var mv6580 :isa protein :predication mv6581 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv6581 :isa phosphorylate :substrate mv6580 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv6588 :isa dephosphorylate :agent mv6585 :substrate mv6586 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv6585 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv6586 :isa protein :predication mv6594 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv6594 :isa binding :direct-bindee mv6586 :that-rel t :bindee mv6587 :present "PRESENT"
    :negation mv6591 :raw-text "bound")
   (:var mv6587 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv6591 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv6605 :isa phosphorylate :agent mv6596 :substrate mv6598 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv6596 :isa protein :predication mv6606 :predication mv6599 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv6606 :isa binding :direct-bindee mv6596 :that-rel t :bindee mv6597 :present "PRESENT"
    :negation mv6602 :raw-text "bound")
   (:var mv6597 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv6602 :isa not :word "not") (:var mv6599 :isa active)
   (:var mv6598 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv6612 :isa bio-activate :object mv6608 :present "PRESENT" :raw-text "activated")
   (:var mv6608 :isa protein :predication mv6609 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv6609 :isa phosphorylate :substrate mv6608 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv6616 :isa dephosphorylate :agent mv6613 :substrate mv6614 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv6613 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv6614 :isa protein :predication mv6622 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv6622 :isa binding :direct-bindee mv6614 :that-rel t :bindee mv6615 :present "PRESENT"
    :negation mv6619 :raw-text "bound")
   (:var mv6615 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv6619 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv6636 :isa phosphorylate :agent mv6625 :substrate mv6624 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv6625 :isa protein :predication mv6639 :mutation mv6638 :raw-text "BRAF" :uid "UP:P15056"
    :name "BRAF_HUMAN")
   (:var mv6639 :isa binding :direct-bindee mv6625 :that-rel t :bindee mv6635 :present "PRESENT"
    :negation mv6632 :raw-text "bound")
   (:var mv6635 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv6632 :isa not :word "not")
   (:var mv6638 :isa point-mutated-protein :position mv6627 :new-amino-acid mv6629
    :original-amino-acid mv6626)
   (:var mv6627 :isa number :value 600)
   (:var mv6629 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv6626 :isa amino-acid :name "valine" :letter "V")
   (:var mv6624 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv6645 :isa copular-predication :item mv6641 :value mv6644 :predicate mv6643)
   (:var mv6641 :isa protein :predication mv6642 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv6642 :isa phosphorylate :substrate mv6641 :raw-text "Phosphorylated")
   (:var mv6644 :isa active) (:var mv6643 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv6648 :isa phosphorylate :agent mv6646 :substrate mv6647 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv6646 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv6647 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv6657 :isa explicit-suggestion :suggestion mv6651 :marker let-as-directive)
   (:var mv6651 :isa move-something-somewhere :goal mv6655 :theme mv6650 :present "PRESENT")
   (:var mv6655 :isa top-qua-location :has-determiner "THE")
   (:var mv6650 :isa protein :predication mv6652 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv6652 :isa phosphorylate :substrate mv6650 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv6665 :isa explicit-suggestion :suggestion mv6660 :marker let-as-directive)
   (:var mv6660 :isa move-something-somewhere :at-relative-location mv6663 :theme mv6659 :present
    "PRESENT")
   (:var mv6663 :isa top-qua-location)
   (:var mv6659 :isa protein :predication mv6661 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv6661 :isa phosphorylate :substrate mv6659 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv6667 :isa show :at-relative-location mv6669 :|statement-OR-theme| mv6666 :present
    "PRESENT")
   (:var mv6669 :isa top-qua-location)
   (:var mv6666 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv6678 :isa explicit-suggestion :suggestion mv6673 :marker let-as-directive)
   (:var mv6673 :isa highlight :theme mv6674 :present "PRESENT")
   (:var mv6674 :isa upstream-segment :pathwaycomponent mv6672 :raw-text "upstream")
   (:var mv6672 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv6687 :isa explicit-suggestion :suggestion mv6680 :marker let-as-directive)
   (:var mv6680 :isa move-something-somewhere :goal mv6685 :theme mv6682 :present "PRESENT")
   (:var mv6685 :isa top-qua-location :has-determiner "THE")
   (:var mv6682 :isa element :modifier mv6681) (:var mv6681 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv6690 :isa be :subject mv6689 :predicate mv6693 :present "PRESENT")
   (:var mv6689 :isa what)
   (:var mv6693 :isa downstream-segment :pathwaycomponent mv6697 :has-determiner "THE" :predication
    mv6692 :raw-text "downstreams")
   (:var mv6697 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv6688 mv6696))
   (:var mv6688 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6696 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6692 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv6712 :isa polar-question :statement mv6709)
   (:var mv6709 :isa there-exists :value mv6705 :predicate mv6702)
   (:var mv6705 :isa upstream-segment :pathwaycomponent mv6710 :predication mv6704 :raw-text
    "upstreams")
   (:var mv6710 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv6699 mv6707 mv6700))
   (:var mv6699 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6707 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6700 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv6704 :isa common) (:var mv6702 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv6717 :isa be :subject mv6716 :predicate mv6722 :present "PRESENT")
   (:var mv6716 :isa what)
   (:var mv6722 :isa regulator :theme mv6725 :has-determiner "THE" :predication mv6719 :context
    mv6720 :raw-text "regulators")
   (:var mv6725 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv6713 mv6714 mv6715))
   (:var mv6713 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv6714 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6715 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6719 :isa common) (:var mv6720 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv6730 :isa be :subject mv6729 :predicate mv6734 :present "PRESENT")
   (:var mv6729 :isa what)
   (:var mv6734 :isa regulator :theme mv6737 :predication mv6731 :context mv6732 :raw-text
    "regulators")
   (:var mv6737 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv6727 mv6728))
   (:var mv6727 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6728 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6731 :isa common) (:var mv6732 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv6744 :isa be :subject mv6743 :predicate mv6739 :present "PRESENT")
   (:var mv6743 :isa what)
   (:var mv6739 :isa protein-family :molecule-type mv6750 :predication mv6745 :context mv6746
    :raw-text "transcriptional regulators" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv6750 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv6740 mv6741 mv6742))
   (:var mv6740 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv6741 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6742 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6745 :isa common) (:var mv6746 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv6755 :isa be :subject mv6754 :predicate mv6757 :present "PRESENT")
   (:var mv6754 :isa what)
   (:var mv6757 :isa mutation :object mv6763 :has-determiner "THE" :raw-text "mutations")
   (:var mv6763 :isa collection :context mv6753 :raw-text "PTEN, TP53 and BRAF" :type protein
    :number 3 :items (mv6759 mv6752 mv6761))
   (:var mv6753 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6759 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv6752 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6761 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv6769 :isa be :subject mv6768 :predicate mv6772 :present "PRESENT")
   (:var mv6768 :isa what)
   (:var mv6772 :isa frequency :measured-item mv6766 :has-determiner "THE" :measured-item mv6771
    :raw-text "frequency")
   (:var mv6766 :isa protein :context mv6767 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6767 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6771 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv6787 :isa copular-predication :item mv6781 :value mv6777 :predicate mv6782)
   (:var mv6781 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv6777 :isa mutual-exclusivity :disease mv6779 :alternative mv6778)
   (:var mv6779 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv6778 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv6782 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv6798 :isa copular-predication :item mv6792 :value mv6788 :predicate mv6793)
   (:var mv6792 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv6788 :isa mutual-exclusivity :alternative mv6789)
   (:var mv6789 :isa protein :context mv6790 :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv6790 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv6793 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv6801 :isa be :subject mv6800 :predicate mv6807 :present "PRESENT")
   (:var mv6800 :isa what) (:var mv6807 :isa quality-predicate :item mv6799 :attribute mv6804)
   (:var mv6799 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6804 :isa location-of :has-determiner "THE" :modifier mv6803)
   (:var mv6803 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv6811 :isa regulate :manner mv6808 :agent mv6810 :object mv6812 :present "PRESENT"
    :raw-text "regulate")
   (:var mv6808 :isa how)
   (:var mv6810 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv6812 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv6814 :isa be :subject mv6813 :predicate mv6815 :present "PRESENT")
   (:var mv6813 :isa what)
   (:var mv6815 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv6827 :isa polar-question :statement mv6816)
   (:var mv6816 :isa be :subject mv6817 :predicate mv6819)
   (:var mv6817 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6819 :isa member :set mv6825 :has-determiner "A")
   (:var mv6825 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv6834 :isa copular-predication-of-pp :item mv6829 :value mv6832 :prep mv6831 :predicate
    mv6830)
   (:var mv6829 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6832 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv6831 :isa in :word "in") (:var mv6830 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv6845 :isa copular-predication-of-pp :item mv6836 :value mv6843 :prep mv6838 :predicate
    mv6837)
   (:var mv6836 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6843 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv6838 :isa in :word "in") (:var mv6837 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv6847 :isa be :subject mv6846 :predicate mv6851 :present "PRESENT")
   (:var mv6846 :isa what)
   (:var mv6851 :isa has-name :quantifier mv6848 :quantifier mv6849 :item mv6854)
   (:var mv6848 :isa some :word "some") (:var mv6849 :isa other :word "other")
   (:var mv6854 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are synonyms for ERK?"
   (:var mv6857 :isa be :subject mv6856 :predicate mv6858 :present "PRESENT")
   (:var mv6856 :isa what) (:var mv6858 :isa has-synonym :item mv6860)
   (:var mv6860 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv6872 :isa share :object mv6862 :participant mv6871 :present "PRESENT" :raw-text
    "shared")
   (:var mv6862 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv6871 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv6863 mv6864 mv6865))
   (:var mv6863 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv6864 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv6865 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv6876 :isa be :subject mv6875 :predicate mv6878 :present "PRESENT")
   (:var mv6875 :isa what) (:var mv6878 :isa path :endpoints mv6882 :has-determiner "THE")
   (:var mv6882 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv6880 mv6874))
   (:var mv6880 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6874 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv6888 :isa polar-question :statement mv6886)
   (:var mv6886 :isa be :subject mv6884 :predicate mv6885)
   (:var mv6884 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv6885 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv6889 :isa remove :object mv6901 :present "PRESENT" :raw-text "Remove")
   (:var mv6901 :isa fact :statement mv6895 :has-determiner "THE")
   (:var mv6895 :isa bio-activate :agent mv6894 :object mv6896 :present "PRESENT" :raw-text
    "activates")
   (:var mv6894 :isa protein-family :predication mv6893 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6893 :isa active)
   (:var mv6896 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv6904 :isa bio-activate :agent mv6903 :object mv6905 :present "PRESENT" :raw-text
    "activates")
   (:var mv6903 :isa protein-family :predication mv6902 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6902 :isa active)
   (:var mv6905 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv6912 :isa copular-predication-of-pp :item mv6906 :value mv6910 :prep mv6908 :predicate
    mv6907)
   (:var mv6906 :isa what) (:var mv6910 :isa model :has-determiner "THE")
   (:var mv6908 :isa in :word "in") (:var mv6907 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv6923 :isa polar-question :statement mv6922)
   (:var mv6922 :isa copular-predication :item mv6915 :value mv6920 :predicate mv6913)
   (:var mv6915 :isa bio-amount :measured-item mv6918 :has-determiner "THE" :raw-text "amount")
   (:var mv6918 :isa protein-family :predication mv6917 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv6917 :isa phosphorylate :substrate mv6918 :raw-text "phosphorylated")
   (:var mv6920 :isa high :adverb mv6919) (:var mv6919 :isa ever :name "ever")
   (:var mv6913 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv6934 :isa copular-predication :item mv6927 :value mv6924 :predicate mv6928)
   (:var mv6927 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6924 :isa mutual-exclusivity :disease mv6925 :alternative mv6930)
   (:var mv6925 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv6930 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv6928 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv6944 :isa share :object mv6935 :participant mv6943 :present "PRESENT" :raw-text
    "shared")
   (:var mv6935 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv6943 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv6936 mv6937))
   (:var mv6936 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv6937 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv6953 :isa regulate :agent mv6950 :object mv6955 :present "PRESENT" :adverb mv6951
    :adverb mv6952 :raw-text "regulate")
   (:var mv6950 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv6955 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv6946 mv6947 mv6948))
   (:var mv6946 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv6947 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6948 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6951 :isa superlative-quantifier :name "most")
   (:var mv6952 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv6957 :isa be :subject mv6956 :predicate mv6967 :present "PRESENT")
   (:var mv6956 :isa what) (:var mv6967 :isa quality-predicate :item mv6965 :attribute mv6963)
   (:var mv6965 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv6963 :isa location-of :has-determiner "THE" :predication mv6961 :modifier mv6962)
   (:var mv6961 :isa likely :comparative mv6959)
   (:var mv6959 :isa superlative-quantifier :name "most")
   (:var mv6962 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv6972 :isa polar-question :statement mv6968)
   (:var mv6968 :isa be :subject mv6969 :predicate mv6971)
   (:var mv6969 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6971 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?" (:var mv6984 :isa polar-question :statement mv6975)
   (:var mv6975 :isa tell :agent mv6974 :theme mv6983 :theme mv6976 :modal "CAN")
   (:var mv6974 :isa interlocutor :name "hearer")
   (:var mv6983 :isa wh-question :statement mv6980 :wh whether)
   (:var mv6980 :isa be :subject mv6979 :predicate mv6982 :modal "CAN")
   (:var mv6979 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6982 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv6976 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv6988 :isa want :agent mv6985 :theme mv6998 :present "PRESENT")
   (:var mv6985 :isa interlocutor :name "speaker")
   (:var mv6998 :isa know :agent mv6985 :statement mv6997)
   (:var mv6997 :isa wh-question :statement mv6993 :wh if)
   (:var mv6993 :isa be :subject mv6992 :predicate mv6995 :present "PRESENT")
   (:var mv6992 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6995 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv6999 :isa what))
  ("What type of protein is BRAF?"
   (:var mv7007 :isa be :subject mv7004 :predicate mv7008 :present "PRESENT")
   (:var mv7004 :isa type :molecule-type mv7006 :has-determiner "WHAT" :raw-text "type")
   (:var mv7006 :isa protein :raw-text "protein")
   (:var mv7008 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv7011 :isa be :subject mv7010 :predicate mv7013 :present "PRESENT")
   (:var mv7010 :isa what)
   (:var mv7013 :isa bio-activity :participant mv7018 :has-determiner "THE" :raw-text "activity")
   (:var mv7018 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv7028 :isa polar-question :statement mv7021)
   (:var mv7021 :isa be :subject mv7022 :predicate mv7027)
   (:var mv7022 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7027 :isa collection :raw-text "a kinase or a transcription factor" :type kinase :number
    2 :items (mv7024 mv7020))
   (:var mv7024 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv7020 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv7035 :isa target :object mv7031 :agent mv7029 :present "PRESENT" :raw-text "targeted")
   (:var mv7031 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv7029 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv7041 :isa name-something :patient mv7037 :present "PRESENT")
   (:var mv7037 :isa transcription-factor :predication mv7044 :raw-text "transcription factors")
   (:var mv7044 :isa share :object mv7037 :participant mv7047 :past "PAST" :raw-text "shared")
   (:var mv7047 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv7038 mv7039 mv7040))
   (:var mv7038 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv7039 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv7040 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv7051 :isa tell :theme mv7056 :beneficiary mv7052 :present "PRESENT")
   (:var mv7056 :isa wh-question :statement mv7054 :wh if)
   (:var mv7054 :isa be :subject mv7049 :predicate mv7050 :present "PRESENT")
   (:var mv7049 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7050 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv7052 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv7060 :isa show :|statement-OR-theme| mv7057 :beneficiary mv7061 :present "PRESENT")
   (:var mv7057 :isa signaling-pathway :predication mv7062 :raw-text "signaling pathways")
   (:var mv7062 :isa share :object mv7057 :participant mv7065 :past "PAST" :raw-text "shared")
   (:var mv7065 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv7058 mv7059))
   (:var mv7058 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv7059 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7061 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv7070 :isa give :theme mv7067 :beneficiary mv7071 :present "PRESENT")
   (:var mv7067 :isa signaling-pathway :predication mv7072 :raw-text "signaling pathways")
   (:var mv7072 :isa share :object mv7067 :participant mv7075 :past "PAST" :raw-text "shared")
   (:var mv7075 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv7068 mv7069))
   (:var mv7068 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv7069 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7071 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv7106 :isa polar-question :statement mv7105)
   (:var mv7105 :isa event-relation :subordinated-event mv7101 :event mv7103)
   (:var mv7101 :isa wh-question :statement mv7088 :wh if)
   (:var mv7088 :isa increase :|agent-OR-cause| mv7086 :|multiplier-OR-cause| mv7098
    :|affected-process-OR-object| mv7090 :present "PRESENT" :raw-text "increase")
   (:var mv7086 :isa interlocutor :name "person-and-machine")
   (:var mv7098 :isa measurement :number mv7095) (:var mv7095 :isa number :value 10)
   (:var mv7090 :isa bio-amount :measured-item mv7092 :has-determiner "THE" :raw-text "amount")
   (:var mv7092 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7103 :isa copular-predication :item mv7079 :value mv7084 :predicate mv7077)
   (:var mv7079 :isa bio-amount :measured-item mv7082 :has-determiner "THE" :raw-text "amount")
   (:var mv7082 :isa protein-family :predication mv7081 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv7081 :isa phosphorylate :substrate mv7082 :raw-text "phosphorylated")
   (:var mv7084 :isa high :adverb mv7083) (:var mv7083 :isa ever :name "ever")
   (:var mv7077 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv7109 :isa phosphorylate :agent mv7108 :substrate mv7110 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv7108 :isa protein-family :predication mv7107 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7107 :isa active)
   (:var mv7110 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv7138 :isa polar-question :statement mv7137)
   (:var mv7137 :isa event-relation :subordinated-event mv7133 :event mv7135)
   (:var mv7133 :isa wh-question :statement mv7122 :wh if)
   (:var mv7122 :isa increase :|agent-OR-cause| mv7120 :|affected-process-OR-object| mv7124
    :present "PRESENT" :raw-text "increase")
   (:var mv7120 :isa interlocutor :name "person-and-machine")
   (:var mv7124 :isa bio-amount :measured-item mv7126 :has-determiner "THE" :raw-text "amount")
   (:var mv7126 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7135 :isa copular-predication :item mv7113 :value mv7118 :predicate mv7111)
   (:var mv7113 :isa bio-amount :measured-item mv7116 :has-determiner "THE" :raw-text "amount")
   (:var mv7116 :isa protein-family :predication mv7115 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv7115 :isa phosphorylate :substrate mv7116 :raw-text "phosphorylated")
   (:var mv7118 :isa high :adverb mv7117) (:var mv7117 :isa ever :name "ever")
   (:var mv7111 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv7140 :isa be :subject mv7139 :predicate mv7142 :present "PRESENT")
   (:var mv7139 :isa what)
   (:var mv7142 :isa pathway :predication mv7144 :quantifier mv7141 :raw-text "pathways")
   (:var mv7144 :isa affect :agent mv7142 :that-rel t :object mv7145 :present "PRESENT" :raw-text
    "affect")
   (:var mv7145 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7141 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv7147 :isa be :subject mv7146 :predicate mv7149 :present "PRESENT")
   (:var mv7146 :isa what)
   (:var mv7149 :isa pathway :predication mv7151 :has-determiner "THE" :raw-text "pathways")
   (:var mv7151 :isa affect :agent mv7149 :that-rel t :object mv7152 :present "PRESENT" :raw-text
    "affect")
   (:var mv7152 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv7162 :isa regulate :object mv7156 :agent mv7161 :present "PRESENT" :raw-text
    "regulated")
   (:var mv7156 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7161 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv7153 mv7154))
   (:var mv7153 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv7154 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv7166 :isa be :subject mv7165 :predicate mv7168 :present "PRESENT")
   (:var mv7165 :isa what)
   (:var mv7168 :isa gene :predication mv7173 :quantifier mv7167 :raw-text "genes")
   (:var mv7173 :isa regulate :object mv7168 :that-rel t :agent mv7164 :present "PRESENT" :raw-text
    "regulated")
   (:var mv7164 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7167 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv7179 :isa contain :theme mv7178 :patient mv7181 :present "PRESENT")
   (:var mv7178 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7181 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7175 mv7176))
   (:var mv7175 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7176 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv7184 :isa remove :object mv7193 :present "PRESENT" :raw-text "Remove")
   (:var mv7193 :isa fact :statement mv7188 :has-determiner "THE")
   (:var mv7188 :isa bio-activate :agent mv7182 :object mv7183 :present "PRESENT" :raw-text
    "activates")
   (:var mv7182 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7183 :isa protein :info-context mv7191 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv7191 :isa model :has-determiner "THE"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv7196 :isa remove :object mv7194 :present "PRESENT" :raw-text "Remove")
   (:var mv7194 :isa protein :predication mv7197 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv7197 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv7205 :isa be :subject mv7204 :predicate mv7207 :present "PRESENT")
   (:var mv7204 :isa what) (:var mv7207 :isa path :endpoints mv7211 :quantifier mv7206)
   (:var mv7211 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv7209 mv7203))
   (:var mv7209 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7203 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv7206 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv7218 :isa polar-question :statement mv7217)
   (:var mv7217 :isa bio-activate :agent mv7213 :object mv7214 :raw-text "activate")
   (:var mv7213 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7214 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv7221 :isa protein :has-determiner "WHAT" :modifier mv7220 :modifier mv7222 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7220 :isa drug :raw-text "drugs") (:var mv7222 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv7233 :isa copular-predication-of-pp :item mv7225 :value mv7232 :prep "IN" :predicate
    mv7226)
   (:var mv7225 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv7232 :isa kinase :|context-OR-in-pathway| mv7223 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv7223 :isa signaling-pathway :has-determiner "THE" :modifier mv7229 :raw-text
    "signalling pathway")
   (:var mv7229 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv7226 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv7239 :isa target :agent mv7241 :object mv7240 :present "PRESENT" :raw-text "target")
   (:var mv7241 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7240 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv7245 :isa bio-entity :has-determiner "WHAT" :modifier mv7246 :name "ELLK1")
   (:var mv7246 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv7259 :isa polar-question :statement mv7256)
   (:var mv7256 :isa increase :agent mv7247 :affected-process mv7252 :raw-text "increase")
   (:var mv7247 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7252 :isa gene-transcript-express :object mv7248 :raw-text "expression")
   (:var mv7248 :isa protein :organ mv7255 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv7255 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv7269 :isa polar-question :statement mv7267)
   (:var mv7267 :isa affect :agent mv7260 :affected-process mv7264 :raw-text "affect")
   (:var mv7260 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7264 :isa gene-transcript-express :organ mv7266 :object mv7261 :raw-text "expression")
   (:var mv7266 :isa liver)
   (:var mv7261 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv7276 :isa polar-question :statement mv7275)
   (:var mv7275 :isa alter :agent mv7270 :affected-process mv7274 :raw-text "alter")
   (:var mv7270 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7274 :isa gene-transcript-express :object mv7271 :raw-text "expression")
   (:var mv7271 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv7284 :isa polar-question :statement mv7280)
   (:var mv7280 :isa be :subject mv7277 :predicate mv7278)
   (:var mv7277 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7278 :isa protein-family :molecule-type mv7279 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv7279 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv7287 :isa inhibit :agent mv7286 :object mv7288 :present "PRESENT" :raw-text "inhibit")
   (:var mv7286 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7288 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv7291 :isa upregulate :agent mv7289 :object mv7290 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv7289 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7290 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv7295 :isa transcribe :object mv7293 :agent mv7292 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv7293 :isa what)
   (:var mv7292 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv7298 :isa be :subject mv7297 :predicate mv7296 :present "PRESENT")
   (:var mv7297 :isa what)
   (:var mv7296 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv7300 :isa be :subject mv7299 :predicate mv7301 :present "PRESENT")
   (:var mv7299 :isa what)
   (:var mv7301 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv7303 :isa phosphorylate :|agent-OR-cause| mv7302 :substrate mv7304 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv7302 :isa what)
   (:var mv7304 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv7308 :isa target :agent mv7306 :object mv7309 :present "PRESENT" :raw-text "target")
   (:var mv7306 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7309 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv7312 :isa regulate :|agent-OR-cause| mv7311 :object mv7310 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7311 :isa what) (:var mv7310 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv7315 :isa regulate :|agent-OR-cause| mv7314 :object mv7313 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7314 :isa what)
   (:var mv7313 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv7326 :isa polar-question :statement mv7325)
   (:var mv7325 :isa target :agent mv7324 :object mv7317 :raw-text "target")
   (:var mv7324 :isa bio-entity :name "miR-20b-5pp")
   (:var mv7317 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv7337 :isa wh-question :statement mv7336 :wh what)
   (:var mv7336 :isa prepositional-phrase :pobj mv7334 :prep "OF")
   (:var mv7334 :isa bio-entity :context mv7327 :name "PTEEN")
   (:var mv7327 :isa cancer :name "prostate cancer" :uid "TS-1224"))
  ("What does selumitinibib target?"
   (:var mv7341 :isa target :object mv7338 :agent mv7342 :present "PRESENT" :raw-text "target")
   (:var mv7338 :isa what) (:var mv7342 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv7347 :isa polar-question :statement mv7344)
   (:var mv7344 :isa be :subject mv7343 :predicate mv7346)
   (:var mv7343 :isa bio-entity :name "ELLK1")
   (:var mv7346 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv7349 :isa regulate :|agent-OR-cause| mv7348 :object mv7350 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7348 :isa what)
   (:var mv7350 :isa protein :variant-number mv7352 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv7352 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv7356 :isa target :object mv7353 :agent mv7357 :present "PRESENT" :raw-text "target")
   (:var mv7353 :isa what) (:var mv7357 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv7361 :isa be :subject mv7360 :predicate mv7366 :present "PRESENT")
   (:var mv7360 :isa what) (:var mv7366 :isa evidence :statement mv7365 :has-determiner "THE")
   (:var mv7365 :isa phosphorylate :agent mv7358 :substrate mv7359 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv7358 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7359 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv7368 :isa remove :object mv7367 :present "PRESENT" :raw-text "Remove")
   (:var mv7367 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv7373 :isa remove :object mv7376 :present "PRESENT" :raw-text "Remove")
   (:var mv7376 :isa interact :has-determiner "THE" :predication mv7375 :raw-text "interaction")
   (:var mv7375 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv7383 :isa bio-activate :agent mv7381 :object mv7382 :present "PRESENT" :raw-text
    "activates")
   (:var mv7381 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7382 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv7394 :isa copular-predication-of-pp :item mv7386 :value mv7393 :prep "IN" :predicate
    mv7387)
   (:var mv7386 :isa interact :has-determiner "HOW" :quantifier mv7385 :raw-text "interactions")
   (:var mv7385 :isa many :word "many")
   (:var mv7393 :isa interact :info-context mv7390 :has-determiner "HOW" :quantifier mv7385
    :raw-text "interactions")
   (:var mv7390 :isa model :has-determiner "THE") (:var mv7387 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv7407 :isa polar-question :statement mv7405)
   (:var mv7405 :isa decrease :agent mv7398 :|affected-process-OR-object| mv7402 :raw-text
    "decrease")
   (:var mv7398 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv7402 :isa bio-amount :measured-item mv7396 :has-determiner "THE" :raw-text "amount")
   (:var mv7396 :isa protein :predication mv7404 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv7404 :isa phosphorylate :substrate mv7396 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv7412 :isa bio-activate :object mv7410 :agent mv7408 :present "PRESENT" :raw-text
    "activate")
   (:var mv7410 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7408 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv7417 :isa bio-activate :object mv7415 :agent mv7413 :present "PRESENT" :raw-text
    "activate")
   (:var mv7415 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7413 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv7421 :isa bio-activate :object mv7419 :agent mv7418 :present "PRESENT" :raw-text
    "activate")
   (:var mv7419 :isa what)
   (:var mv7418 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv7425 :isa phosphorylate :amino-acid mv7423 :agent mv7422 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv7423 :isa what)
   (:var mv7422 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv7430 :isa regulate :object mv7428 :agent mv7426 :present "PRESENT" :raw-text "regulate")
   (:var mv7428 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7426 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv7440 :isa collection :type involve :number 2 :items (mv7433 mv7439))
   (:var mv7433 :isa involve :theme mv7432 :object mv7434 :present "PRESENT")
   (:var mv7432 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7434 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv7439 :isa binding :direct-bindee mv7436 :binder mv7438 :present "PRESENT" :raw-text
    "bind")
   (:var mv7436 :isa what)
   (:var mv7438 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv7443 :isa involve :theme mv7442 :object mv7444 :present "PRESENT")
   (:var mv7442 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7444 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv7448 :isa binding :direct-bindee mv7445 :binder mv7447 :present "PRESENT" :raw-text
    "bind")
   (:var mv7445 :isa what)
   (:var mv7447 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv7459 :isa wh-question :statement mv7457 :var nil :wh what)
   (:var mv7457 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv7470 :isa polar-question :statement mv7469)
   (:var mv7469 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv7476 :isa polar-question :statement mv7475)
   (:var mv7475 :isa phosphorylate :agent mv7471 :substrate mv7472 :raw-text "phosphorylate")
   (:var mv7471 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7472 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv7480 :isa bio-activate :agent mv7479 :object mv7477 :present "PRESENT" :raw-text
    "activate")
   (:var mv7479 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv7477 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv7486 :isa target :agent mv7484 :affected-process mv7487 :present "PRESENT" :raw-text
    "target")
   (:var mv7484 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7487 :isa upstream-segment :pathwaycomponent mv7490 :raw-text "upstreams")
   (:var mv7490 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7481 mv7482))
   (:var mv7481 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7482 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv7496 :isa target :agent mv7494 :object mv7492 :present "PRESENT" :raw-text "target")
   (:var mv7494 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7492 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv7501 :isa target :agent mv7499 :object mv7497 :present "PRESENT" :raw-text "target")
   (:var mv7499 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7497 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv7508 :isa target :agent mv7506 :object mv7502 :present "PRESENT" :raw-text "target")
   (:var mv7506 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7502 :isa transcription-factor :predication mv7509 :raw-text "transcription factors")
   (:var mv7509 :isa share :object mv7502 :participant mv7512 :past "PAST" :raw-text "shared")
   (:var mv7512 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7503 mv7504))
   (:var mv7503 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7504 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv7519 :isa target :object mv7516 :agent mv7514 :present "PRESENT" :raw-text "target")
   (:var mv7516 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7514 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv7525 :isa target :object mv7520 :agent mv7521 :present "PRESENT" :raw-text "target")
   (:var mv7520 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7521 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv7536 :isa copular-predication :item mv7530 :value mv7526 :predicate mv7531)
   (:var mv7530 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7526 :isa mutual-exclusivity :disease mv7528 :alternative mv7527)
   (:var mv7528 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv7527 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv7531 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv7540 :isa target :agent mv7538 :object mv7541 :present "PRESENT" :raw-text "target")
   (:var mv7538 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7541 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv7552 :isa copular-predication-of-pp :item mv7544 :value mv7551 :prep "IN" :predicate
    mv7545)
   (:var mv7544 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv7551 :isa kinase :|context-OR-in-pathway| mv7542 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv7542 :isa signaling-pathway :has-determiner "THE" :modifier mv7548 :raw-text
    "signaling pathway")
   (:var mv7548 :isa bio-entity :name "FAKE") (:var mv7545 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv7555 :isa be :subject mv7554 :predicate mv7557 :present "PRESENT")
   (:var mv7554 :isa what)
   (:var mv7557 :isa mutation :object mv7559 :has-determiner "THE" :raw-text "mutations")
   (:var mv7559 :isa protein :context mv7562 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv7562 :isa cancer :predication mv7561) (:var mv7561 :isa fictional))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv7566 :isa be :subject mv7565 :predicate mv7568 :present "PRESENT")
   (:var mv7565 :isa what)
   (:var mv7568 :isa mutation :object mv7570 :has-determiner "THE" :raw-text "mutations")
   (:var mv7570 :isa protein :context mv7573 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv7573 :isa cancer :organ mv7572) (:var mv7572 :isa liver))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv7577 :isa remove :object mv7587 :present "PRESENT" :raw-text "Remove")
   (:var mv7587 :isa fact :statement mv7581 :has-determiner "THE")
   (:var mv7581 :isa transcribe :agent mv7576 :object mv7582 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv7576 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7582 :isa bio-entity :info-context mv7585 :name "FAKE")
   (:var mv7585 :isa model :has-determiner "THE"))
  ("ELK1 transcribes FOS"
   (:var mv7589 :isa transcribe :agent mv7588 :object mv7590 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv7588 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7590 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv7592 :isa remove :object mv7602 :present "PRESENT" :raw-text "Remove")
   (:var mv7602 :isa fact :statement mv7596 :has-determiner "THE")
   (:var mv7596 :isa transcribe :agent mv7591 :object mv7597 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv7591 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7597 :isa protein :info-context mv7600 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv7600 :isa model :has-determiner "THE"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv7615 :isa share :object mv7603 :participant mv7614 :present "PRESENT" :raw-text
    "shared")
   (:var mv7603 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7614 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv7604 mv7613))
   (:var mv7604 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7613 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv7626 :isa share :object mv7617 :participant mv7625 :present "PRESENT" :raw-text
    "shared")
   (:var mv7617 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7625 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7618 mv7619))
   (:var mv7618 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7619 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?"
   (:var mv7633 :isa bio-use :object mv7629 :agent mv7631 :present "PRESENT" :raw-text "use")
   (:var mv7629 :isa database :has-determiner "WHAT")
   (:var mv7631 :isa interlocutor :name "hearer"))
  ("What is the MSA?" (:var mv7635 :isa be :subject mv7634 :predicate mv7637 :present "PRESENT")
   (:var mv7634 :isa what)
   (:var mv7637 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv7646 :isa ask :patient mv7639 :modal mv7640 :agent mv7641 :present "PRESENT")
   (:var mv7639 :isa tissue :has-determiner "WHAT") (:var mv7640 :isa can)
   (:var mv7641 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv7655 :isa ask :patient mv7648 :modal mv7649 :agent mv7650 :present "PRESENT")
   (:var mv7648 :isa cancer :has-determiner "WHAT") (:var mv7649 :isa can)
   (:var mv7650 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv7664 :isa ask :patient mv7657 :modal mv7658 :agent mv7659 :present "PRESENT")
   (:var mv7657 :isa bio-mechanism :has-determiner "WHAT") (:var mv7658 :isa can)
   (:var mv7659 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv7668 :isa regulate :object mv7666 :agent mv7665 :present "PRESENT" :raw-text "regulate")
   (:var mv7666 :isa what)
   (:var mv7665 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv7672 :isa be :subject mv7671 :predicate mv7673 :present "PRESENT")
   (:var mv7671 :isa these :quantifier mv7669 :word "these") (:var mv7669 :isa which)
   (:var mv7673 :isa kinase :raw-text "kinases"))
  ("What pathways is ERK1 in?" (:var mv7680 :isa wh-question :statement mv7679 :var nil :wh what)
   (:var mv7679 :isa in :word "in"))
  ("Which of these is AKT1 in?" (:var mv7688 :isa wh-question :statement mv7686 :wh which)
   (:var mv7686 :isa in :word "in"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv7697 :isa wh-question :statement mv7695 :var nil :wh what)
   (:var mv7695 :isa in :word "in"))
  ("What microRNAs target STAT3?"
   (:var mv7702 :isa target :agent mv7700 :object mv7698 :present "PRESENT" :raw-text "target")
   (:var mv7700 :isa micro-rna :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv7698 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv7708 :isa target :|agent-OR-cause| mv7706 :object mv7703 :present "PRESENT" :raw-text
    "target")
   (:var mv7706 :isa these :quantifier mv7704 :word "these") (:var mv7704 :isa which)
   (:var mv7703 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv7718 :isa polar-question :statement mv7716)
   (:var mv7716 :isa regulate :|agent-OR-cause| mv7714 :object mv7710 :raw-text "regulate")
   (:var mv7714 :isa these :quantifier mv7712 :word "these") (:var mv7712 :isa any :word "any")
   (:var mv7710 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv7721 :isa regulate :|agent-OR-cause| mv7720 :object mv7719 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7720 :isa what)
   (:var mv7719 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv7724 :isa involve :theme mv7723 :object mv7725 :present "PRESENT")
   (:var mv7723 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7725 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv7728 :isa be :subject mv7727 :predicate mv7730 :present "PRESENT")
   (:var mv7727 :isa what)
   (:var mv7730 :isa target-protein :agent mv7726 :has-determiner "THE" :raw-text "targets")
   (:var mv7726 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv7735 :isa be :subject mv7734 :predicate mv7741 :present "PRESENT")
   (:var mv7734 :isa what)
   (:var mv7741 :isa location-of :theme mv7736 :predication mv7739 :modifier mv7740)
   (:var mv7736 :isa pronoun/plural :word "their") (:var mv7739 :isa likely :comparative mv7737)
   (:var mv7737 :isa superlative-quantifier :name "most")
   (:var mv7740 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv7746 :isa polar-question :statement mv7744)
   (:var mv7744 :isa be :subject mv7742 :predicate mv7743)
   (:var mv7742 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv7743 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv7751 :isa polar-question :statement mv7747)
   (:var mv7747 :isa be :subject mv7748 :predicate mv7750)
   (:var mv7748 :isa pronoun/inanimate :word "it")
   (:var mv7750 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?" (:var mv7754 :isa be :subject mv7753 :predicate mv7752 :present "PRESENT")
   (:var mv7753 :isa what)
   (:var mv7752 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv7759 :isa target :object mv7755 :|agent-OR-cause| mv7757 :present "PRESENT" :raw-text
    "target")
   (:var mv7755 :isa what) (:var mv7757 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv7764 :isa regulate :object mv7762 :agent mv7760 :present "PRESENT" :raw-text "regulate")
   (:var mv7762 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7760 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?" (:var mv7770 :isa wh-question :statement mv7769 :var nil :wh what)
   (:var mv7769 :isa in :word "in"))
  ("What are the targets of PLX-4720?"
   (:var mv7773 :isa be :subject mv7772 :predicate mv7775 :present "PRESENT")
   (:var mv7772 :isa what)
   (:var mv7775 :isa target-protein :agent mv7771 :has-determiner "THE" :raw-text "targets")
   (:var mv7771 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv7785 :isa polar-question :statement mv7784)
   (:var mv7784 :isa target :|agent-OR-cause| mv7780 :object mv7783 :raw-text "target")
   (:var mv7780 :isa pronoun/inanimate :word "it")
   (:var mv7783 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv7790 :isa inhibit :agent mv7789 :object mv7794 :present "PRESENT" :raw-text "inhibits")
   (:var mv7789 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv7794 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv7786 mv7787))
   (:var mv7786 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv7787 :isa protein :predication mv7792 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv7792 :isa active))
  ("JAK1 activates STAT3"
   (:var mv7797 :isa bio-activate :agent mv7795 :object mv7796 :present "PRESENT" :raw-text
    "activates")
   (:var mv7795 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv7796 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv7803 :isa want :agent mv7800 :theme mv7813 :present "PRESENT")
   (:var mv7800 :isa interlocutor :name "speaker")
   (:var mv7813 :isa find-out :agent mv7800 :statement mv7810)
   (:var mv7810 :isa wh-question :statement mv7809 :var nil :wh how)
   (:var mv7809 :isa bio-activate :agent mv7798 :object mv7799 :present "PRESENT" :raw-text
    "activates")
   (:var mv7798 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv7799 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv7819 :isa want :agent mv7816 :theme mv7833 :present "PRESENT")
   (:var mv7816 :isa interlocutor :name "speaker")
   (:var mv7833 :isa find-out :agent mv7816 :statement mv7830)
   (:var mv7830 :isa wh-question :statement mv7825 :var nil :wh how)
   (:var mv7825 :isa bio-activate :agent mv7814 :object mv7826 :present "PRESENT" :raw-text
    "activates")
   (:var mv7814 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv7826 :isa protein :cell-type mv7828 :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv7828 :isa cell-type :cell-line mv7815)
   (:var mv7815 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv7838 :isa explicit-suggestion :suggestion mv7835 :marker let-as-directive)
   (:var mv7835 :isa build :artifact mv7837 :present "PRESENT")
   (:var mv7837 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv7840 :isa phosphorylate :agent mv7839 :substrate mv7841 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv7839 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7841 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv7848 :isa regulate :agent mv7847 :object mv7845 :present "PRESENT" :raw-text "regulate")
   (:var mv7847 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7845 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv7849 :isa upregulate :|agent-OR-cause| mv7851 :object mv7850 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv7851 :isa what)
   (:var mv7850 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv7855 :isa have :possessor mv7853 :thing-possessed mv7857 :modal mv7854)
   (:var mv7853 :isa what)
   (:var mv7857 :isa effect :object mv7852 :affected-process mv7860 :has-determiner "THE" :raw-text
    "effect")
   (:var mv7852 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7860 :isa bio-activate :raw-text "activation") (:var mv7854 :isa can))
  ("Are there any drugs for IL10?" (:var mv7873 :isa polar-question :statement mv7871)
   (:var mv7871 :isa there-exists :value mv7869 :predicate mv7866)
   (:var mv7869 :isa drug :target mv7864 :quantifier mv7868 :raw-text "drugs")
   (:var mv7864 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7868 :isa any :word "any") (:var mv7866 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv7877 :isa gene-transcript-express :agent mv7876 :object mv7874 :present "PRESENT"
    :raw-text "express")
   (:var mv7876 :isa tissue :has-determiner "WHICH")
   (:var mv7874 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv7882 :isa regulate :manner mv7880 :agent mv7878 :object mv7879 :present "PRESENT"
    :raw-text "regulate")
   (:var mv7880 :isa how)
   (:var mv7878 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7879 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv7887 :isa be :subject mv7886 :predicate mv7883 :present "PRESENT")
   (:var mv7886 :isa what)
   (:var mv7883 :isa transcription-factor :predication mv7889 :raw-text "transcription factors")
   (:var mv7889 :isa binding :binder mv7883 :that-rel t :direct-bindee mv7892 :present "PRESENT"
    :raw-text "bind")
   (:var mv7892 :isa gene :has-determiner "THE" :expresses mv7893 :raw-text "genes")
   (:var mv7893 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv7884 mv7885))
   (:var mv7884 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv7885 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv7898 :isa regulate :agent mv7897 :object mv7901 :present "PRESENT" :raw-text "regulate")
   (:var mv7897 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7901 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv7894 mv7895))
   (:var mv7894 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv7895 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv7905 :isa factor :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv7915 :isa relation :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv7926 :isa be :subject mv7925 :predicate mv7924 :present "PRESENT")
   (:var mv7925 :isa what)
   (:var mv7924 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv7931 :isa polar-question :statement mv7928)
   (:var mv7928 :isa be :subject mv7927 :predicate mv7930)
   (:var mv7927 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv7930 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv7935 :isa transcribe :object mv7933 :agent mv7932 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv7933 :isa what)
   (:var mv7932 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv7944 :isa polar-question :statement mv7942)
   (:var mv7942 :isa there-exists :value mv7940 :predicate mv7938)
   (:var mv7940 :isa drug :target mv7936 :raw-text "drugs")
   (:var mv7936 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7938 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv7954 :isa wh-question :statement mv7953 :var nil :wh what)
   (:var mv7953 :isa prepositional-phrase :pobj mv7952 :prep "IN")
   (:var mv7952 :isa drug :has-determiner "THE" :modifier mv7949 :modifier mv7951 :raw-text
    "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv7949 :isa literature) (:var mv7951 :isa match-endurant))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv7958 :isa relation :has-determiner "WHAT"))))
