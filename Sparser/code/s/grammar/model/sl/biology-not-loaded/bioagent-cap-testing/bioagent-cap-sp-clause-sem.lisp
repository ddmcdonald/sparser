(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("What genes does mir-128 regulate?"
   (:var mv5 :isa regulate :object mv2 :agent mv6 :present "PRESENT" :raw-text "regulate")
   (:var mv2 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv11 :isa regulate :object mv7 :agent mv8 :present "PRESENT" :raw-text "regulate")
   (:var mv7 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv8 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv13 :isa tell :theme mv17 :theme mv14 :present "PRESENT")
   (:var mv17 :isa involve :theme mv19 :participant mv16)
   (:var mv19 :isa apoptosis :raw-text "apoptosis")
   (:var mv16 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv24 :isa be :subject mv23 :predicate mv26 :present "PRESENT") (:var mv23 :isa what)
   (:var mv26 :isa gene :predication mv28 :has-determiner "THE" :raw-text "genes")
   (:var mv28 :isa have :possessor mv26 :that-rel t :thing-possessed mv30 :present "PRESENT")
   (:var mv30 :isa evidence :fact mv33 :predication mv29)
   (:var mv33 :isa regulate :agent mv22 :progressive mv32 :raw-text "regulated")
   (:var mv22 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv32 :isa be) (:var mv29 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv39 :isa be :subject mv38 :predicate mv41 :present "PRESENT") (:var mv38 :isa what)
   (:var mv41 :isa involve :theme mv43 :participant mv40)
   (:var mv43 :isa apoptosis :raw-text "apoptosis")
   (:var mv40 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv47 :isa be :subject mv46 :predicate mv49 :present "PRESENT") (:var mv46 :isa what)
   (:var mv49 :isa role :process mv51 :participant mv48)
   (:var mv51 :isa apoptosis :raw-text "apoptosis")
   (:var mv48 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv55 :isa be :subject mv54 :predicate mv57 :present "PRESENT") (:var mv54 :isa what)
   (:var mv57 :isa role :process mv61 :participant mv56)
   (:var mv61 :isa regulate :|cellular-process-OR-agent| mv59 :raw-text "regulation")
   (:var mv59 :isa apoptosis :raw-text "apoptotic")
   (:var mv56 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv66 :isa be :subject mv65 :predicate mv72 :present "PRESENT") (:var mv65 :isa what)
   (:var mv72 :isa evidence :statement mv71 :has-determiner "THE")
   (:var mv71 :isa target :agent mv63 :object mv64 :present "PRESENT" :raw-text "targets")
   (:var mv63 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid "MIMAT0000243")
   (:var mv64 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv77 :isa regulate :object mv73 :agent mv74 :present "PRESENT" :raw-text "regulate")
   (:var mv73 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv74 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv82 :isa regulate :object mv78 :agent mv79 :present "PRESENT" :raw-text "regulate")
   (:var mv78 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv79 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv86 :isa be :subject mv85 :predicate mv89 :present "PRESENT") (:var mv85 :isa what)
   (:var mv89 :isa significance :agent mv83 :has-determiner "THE" :modifier mv88)
   (:var mv83 :isa protein :context mv84 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv84 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv88 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv97 :isa be :subject mv96 :predicate mv100 :present "PRESENT") (:var mv96 :isa what)
   (:var mv100 :isa significance :result mv95 :agent mv94 :has-determiner "THE" :modifier mv99)
   (:var mv95 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv94 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv99 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv106 :isa be :subject mv105 :predicate mv107 :present "PRESENT") (:var mv105 :isa what)
   (:var mv107 :isa has-synonym :item mv109)
   (:var mv109 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv113 :isa be :subject mv112 :predicate mv115 :present "PRESENT") (:var mv112 :isa what)
   (:var mv115 :isa gene :predication mv120 :quantifier mv114 :raw-text "genes")
   (:var mv120 :isa mutation :object mv115 :that-rel t :context mv111 :present "PRESENT" :raw-text
    "mutated")
   (:var mv111 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv114 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv128 :isa mutation :object mv124 :context mv122 :present "PRESENT" :raw-text "mutated")
   (:var mv124 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv122 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv141 :isa polar-question :statement mv139)
   (:var mv139 :isa bio-activate :agent mv132 :object mv130 :raw-text "activate")
   (:var mv132 :isa phosphorylate :site mv138 :raw-text "phosphorylation")
   (:var mv138 :isa residue-on-protein :raw-text "S221" :position mv136 :amino-acid mv135)
   (:var mv136 :isa number :value 221) (:var mv135 :isa amino-acid :name "serine" :letter "S")
   (:var mv130 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv153 :isa polar-question :statement mv151)
   (:var mv151 :isa bio-activate :agent mv144 :object mv142 :raw-text "activate")
   (:var mv144 :isa phosphorylate :site mv150 :raw-text "phosphorylation")
   (:var mv150 :isa residue-on-protein :raw-text "S222" :position mv148 :amino-acid mv147)
   (:var mv148 :isa number :value 222) (:var mv147 :isa amino-acid :name "serine" :letter "S")
   (:var mv142 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv156 :isa simulate :object mv160 :present "PRESENT" :raw-text "Simulate")
   (:var mv160 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv155
    :component mv154)
   (:var mv155 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv154 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv162 :isa be :subject mv161 :predicate mv164 :present "PRESENT") (:var mv161 :isa what)
   (:var mv164 :isa member :set mv166 :has-determiner "THE")
   (:var mv166 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv169 :isa be :subject mv168 :predicate mv171 :present "PRESENT") (:var mv168 :isa what)
   (:var mv171 :isa member :set mv173 :has-determiner "THE")
   (:var mv173 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv176 :isa be :subject mv175 :predicate mv178 :present "PRESENT") (:var mv175 :isa what)
   (:var mv178 :isa member :set mv180 :has-determiner "THE")
   (:var mv180 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv183 :isa be :subject mv182 :predicate mv185 :present "PRESENT") (:var mv182 :isa what)
   (:var mv185 :isa member :set mv191 :has-determiner "THE")
   (:var mv191 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv195 :isa be :subject mv194 :predicate mv197 :present "PRESENT") (:var mv194 :isa what)
   (:var mv197 :isa member :set mv193 :has-determiner "THE")
   (:var mv193 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras" :count
    3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv202 :isa be :subject mv201 :predicate mv205 :present "PRESENT") (:var mv201 :isa what)
   (:var mv205 :isa has-name :item mv208 :quantifier mv203)
   (:var mv208 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv203 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv212 :isa be :subject mv211 :predicate mv215 :present "PRESENT") (:var mv211 :isa what)
   (:var mv215 :isa has-name :item mv210 :quantifier mv213)
   (:var mv210 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv213 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv223 :isa affect :manner mv221 :agent mv219 :object mv220 :present "PRESENT" :raw-text
    "affect")
   (:var mv221 :isa how)
   (:var mv219 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv220 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv225 :isa list :theme mv227 :present "PRESENT")
   (:var mv227 :isa gene :predication mv228 :quantifier mv226 :raw-text "genes")
   (:var mv228 :isa regulate :object mv227 :agent mv224 :past "PAST" :raw-text "regulated")
   (:var mv224 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv226 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv232 :isa list :theme mv236 :present "PRESENT")
   (:var mv236 :isa gene :predication mv237 :quantifier mv233 :has-determiner "THE" :raw-text
    "genes")
   (:var mv237 :isa regulate :object mv236 :agent mv231 :past "PAST" :raw-text "regulated")
   (:var mv231 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv233 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv243 :isa list :theme mv245 :present "PRESENT")
   (:var mv245 :isa gene :predication mv246 :has-determiner "THE" :raw-text "genes")
   (:var mv246 :isa regulate :object mv245 :agent mv242 :past "PAST" :raw-text "regulated")
   (:var mv242 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv251 :isa be :subject mv250 :predicate mv256 :present "PRESENT") (:var mv250 :isa what)
   (:var mv256 :isa regulator :theme mv260 :has-determiner "THE" :predication mv253 :context mv254
    :raw-text "regulators")
   (:var mv260 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv249 mv259))
   (:var mv249 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv259 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv253 :isa common) (:var mv254 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv263 :isa be :subject mv262 :predicate mv266 :present "PRESENT") (:var mv262 :isa what)
   (:var mv266 :isa upstream-segment :pathwaycomponent mv271 :has-determiner "THE" :predication
    mv265 :raw-text "upstreams")
   (:var mv271 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv268 mv270))
   (:var mv268 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv270 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv265 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv275 :isa be :subject mv274 :predicate mv278 :present "PRESENT") (:var mv274 :isa what)
   (:var mv278 :isa upstream-segment :pathwaycomponent mv282 :has-determiner "THE" :predication
    mv277 :raw-text "upstreams")
   (:var mv282 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv273 mv281))
   (:var mv273 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv281 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv277 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv286 :isa be :subject mv285 :predicate mv288 :present "PRESENT") (:var mv285 :isa what)
   (:var mv288 :isa gene :predication mv290 :has-determiner "THE" :raw-text "genes")
   (:var mv290 :isa regulate :object mv288 :that-rel t :agent mv284 :present "PRESENT" :raw-text
    "regulates")
   (:var mv284 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv295 :isa be :subject mv294 :predicate mv297 :present "PRESENT") (:var mv294 :isa what)
   (:var mv297 :isa micro-rna :predication mv299 :has-determiner "THE" :raw-text "miRNAs")
   (:var mv299 :isa regulate :agent mv297 :that-rel t :object mv303 :present "PRESENT" :raw-text
    "regulate")
   (:var mv303 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number 5
    :items (mv300 mv301 mv291 mv292 mv293))
   (:var mv300 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv301 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv291 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv292 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv293 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv306 :isa be :subject mv305 :predicate mv308 :present "PRESENT") (:var mv305 :isa what)
   (:var mv308 :isa micro-rna :predication mv310 :has-determiner "THE" :raw-text "miRNAs")
   (:var mv310 :isa regulate :agent mv308 :that-rel t :object mv314 :present "PRESENT" :raw-text
    "regulate")
   (:var mv314 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv311 mv312 mv304))
   (:var mv311 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv312 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv304 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv316 :isa be :subject mv315 :predicate mv318 :present "PRESENT") (:var mv315 :isa what)
   (:var mv318 :isa regulator :theme mv320 :has-determiner "THE" :raw-text "regulators")
   (:var mv320 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv325 :isa regulate :object mv323 :agent mv322 :organ mv328 :present "PRESENT" :raw-text
    "regulate")
   (:var mv323 :isa what)
   (:var mv322 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv328 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv333 :isa regulate :object mv330 :|agent-OR-cause| mv332 :organ mv336 :present "PRESENT"
    :raw-text "regulate")
   (:var mv330 :isa what) (:var mv332 :isa pronoun/inanimate :word "it")
   (:var mv336 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv344 :isa regulate :object mv340 :agent mv338 :present "PRESENT" :raw-text "regulated")
   (:var mv340 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv338 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv354 :isa regulate :object mv347 :agent mv353 :present "PRESENT" :raw-text "regulated")
   (:var mv347 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv353 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv362 :isa regulate :object mv357 :agent mv361 :present "PRESENT" :raw-text "regulated")
   (:var mv357 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv361 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv371 :isa regulate :|affected-process-OR-object| mv367 :agent mv364 :present "PRESENT"
    :raw-text "regulated")
   (:var mv367 :isa these :quantifier mv365 :word "these") (:var mv365 :isa which)
   (:var mv364 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv381 :isa regulate :|affected-process-OR-object| mv377 :agent mv374 :present "PRESENT"
    :raw-text "regulated")
   (:var mv377 :isa these :quantifier mv375 :word "these") (:var mv375 :isa which)
   (:var mv374 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv387 :isa bio-use :agent mv385 :object mv388 :present "PRESENT" :raw-text "use")
   (:var mv385 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv388 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv393 :isa regulate :location mv391 :agent mv389 :affected-process mv395 :present
    "PRESENT" :raw-text "regulate")
   (:var mv391 :isa where)
   (:var mv389 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv395 :isa gene-transcript-express :object mv390 :has-determiner "THE" :raw-text
    "expression")
   (:var mv390 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv415 :isa polar-question :statement mv402)
   (:var mv402 :isa tell :agent mv401 :theme mv398 :beneficiary mv403 :modal "CAN")
   (:var mv401 :isa interlocutor :name "hearer")
   (:var mv398 :isa transcription-factor :predication mv413 :quantifier mv404 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv413 :isa share :object mv398 :that-rel t :participant mv412 :modal "CAN" :raw-text
    "shared")
   (:var mv412 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv399 mv411))
   (:var mv399 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv411 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv404 :isa all :word "all") (:var mv403 :isa interlocutor :name "speaker"))
  ("can you tell me which transcription factors are shared by elk1 and srf"
   (:var mv431 :isa polar-question :statement mv420)
   (:var mv420 :isa tell :agent mv419 :theme mv429 :theme mv421 :modal "CAN")
   (:var mv419 :isa interlocutor :name "hearer")
   (:var mv429 :isa share :object mv416 :participant mv428 :modal "CAN" :raw-text "shared")
   (:var mv416 :isa transcription-factor :has-determiner "WHICH" :raw-text "transcription factors")
   (:var mv428 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv417 mv427))
   (:var mv417 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv427 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv421 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv433 :isa be :subject mv432 :predicate mv435 :present "PRESENT") (:var mv432 :isa what)
   (:var mv435 :isa regulator :theme mv437 :has-determiner "THE" :raw-text "regulators")
   (:var mv437 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv442 :isa regulate :object mv439 :agent mv441 :present "PRESENT" :raw-text "regulate")
   (:var mv439 :isa what)
   (:var mv441 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv444 :isa be :subject mv443 :predicate mv445 :present "PRESENT")
   (:var mv443 :isa what)
   (:var mv445 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv452 :isa polar-question :statement mv448)
   (:var mv448 :isa involve :object mv446 :theme mv450 :past "PAST")
   (:var mv446 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv450 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?" (:var mv461 :isa polar-question :statement mv455)
   (:var mv455 :isa involve :object mv453 :theme mv459 :past "PAST")
   (:var mv453 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv459 :isa regulate :|cellular-process-OR-agent| mv457 :raw-text "regulation")
   (:var mv457 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?" (:var mv469 :isa polar-question :statement mv464)
   (:var mv464 :isa involve :object mv462 :theme mv466 :past "PAST")
   (:var mv462 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv466 :isa regulate :affected-process mv467 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv467 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv478 :isa regulate :object mv474 :agent mv470 :present "PRESENT" :raw-text "regulated")
   (:var mv474 :isa gene :has-determiner "WHAT" :cellular-process mv472 :raw-text "genes")
   (:var mv472 :isa apoptosis :raw-text "apoptotic")
   (:var mv470 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv480 :isa list :theme mv484 :present "PRESENT")
   (:var mv484 :isa gene :has-determiner "THE" :cellular-process mv482 :raw-text "genes")
   (:var mv482 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv494 :isa involve :object mv487 :theme mv493 :present "PRESENT")
   (:var mv487 :isa gene :predication mv488 :has-determiner "WHAT" :raw-text "genes")
   (:var mv488 :isa regulate :object mv487 :agent mv485 :past "PAST" :raw-text "regulated")
   (:var mv485 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv493 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv498 :isa list :theme mv499 :present "PRESENT")
   (:var mv499 :isa gene :predication mv500 :raw-text "genes")
   (:var mv500 :isa regulate :object mv499 :agent mv497 :past "PAST" :raw-text "regulated")
   (:var mv497 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv509 :isa involve :object mv504 :theme mv508 :present "PRESENT")
   (:var mv504 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv508 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv520 :isa involve :object mv513 :theme mv519 :present "PRESENT")
   (:var mv513 :isa gene :predication mv515 :has-determiner "WHAT" :raw-text "genes")
   (:var mv515 :isa regulate :object mv513 :that-rel t :agent mv511 :present "PRESENT" :raw-text
    "regulates")
   (:var mv511 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv519 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv523 :isa list :theme mv525 :present "PRESENT")
   (:var mv525 :isa gene :predication mv526 :has-determiner "THE" :raw-text "genes")
   (:var mv526 :isa regulate :object mv525 :agent mv522 :past "PAST" :raw-text "regulated")
   (:var mv522 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv530 :isa list :theme mv533 :present "PRESENT")
   (:var mv533 :isa gene :has-determiner "THE" :predication mv532 :raw-text "genes")
   (:var mv532 :isa regulate :object mv533 :agent mv529 :raw-text "regulated")
   (:var mv529 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv540 :isa regulate :object mv536 :agent mv534 :present "PRESENT" :raw-text "regulated")
   (:var mv536 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv534 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv548 :isa involve :object mv543 :theme mv547 :present "PRESENT")
   (:var mv543 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv547 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv558 :isa involve :object mv553 :present "PRESENT")
   (:var mv553 :isa gene :has-determiner "WHAT" :predication mv552 :raw-text "genes")
   (:var mv552 :isa regulate :object mv553 :agent mv550 :raw-text "regulated")
   (:var mv550 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv561 :isa let :complement mv578 :present "PRESENT")
   (:var mv578 :isa know :agent mv562 :statement mv577 :present "PRESENT")
   (:var mv562 :isa interlocutor :name "speaker")
   (:var mv577 :isa wh-question :statement mv574 :wh if)
   (:var mv574 :isa involve :object mv568 :theme mv573 :present "PRESENT")
   (:var mv568 :isa gene :quantifier mv565 :predication mv569 :has-determiner "THE" :raw-text
    "genes")
   (:var mv565 :isa any :word "any")
   (:var mv569 :isa regulate :object mv568 :agent mv560 :present "PRESENT" :raw-text "regulates")
   (:var mv560 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv573 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv580 :isa let :complement mv598 :present "PRESENT")
   (:var mv598 :isa know :agent mv581 :statement mv597 :present "PRESENT")
   (:var mv581 :isa interlocutor :name "speaker")
   (:var mv597 :isa wh-question :statement mv594 :wh whether)
   (:var mv594 :isa involve :object mv588 :theme mv593 :present "PRESENT")
   (:var mv588 :isa gene :quantifier mv585 :predication mv589 :has-determiner "THE" :raw-text
    "genes")
   (:var mv585 :isa any :word "any")
   (:var mv589 :isa regulate :object mv588 :agent mv579 :present "PRESENT" :raw-text "regulates")
   (:var mv579 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv593 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv615 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv617 :isa tell :beneficiary mv618 :present "PRESENT")
   (:var mv618 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv628 :isa tell :theme mv637 :beneficiary mv629 :present "PRESENT")
   (:var mv637 :isa wh-question :statement mv635 :wh if)
   (:var mv635 :isa involve :object mv627 :theme mv634 :present "PRESENT")
   (:var mv627 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv634 :isa apoptosis :raw-text "apoptosis")
   (:var mv629 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv639 :isa tell :theme mv649 :theme mv640 :present "PRESENT")
   (:var mv649 :isa wh-question :statement mv647 :wh whether)
   (:var mv647 :isa involve :object mv638 :theme mv646 :present "PRESENT")
   (:var mv638 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv646 :isa apoptosis :raw-text "apoptosis")
   (:var mv640 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv652 :isa be :subject mv651 :predicate mv654 :present "PRESENT") (:var mv651 :isa what)
   (:var mv654 :isa gene :predication mv660 :predication mv653 :raw-text "genes")
   (:var mv660 :isa involve :object mv654 :that-rel t :theme mv659 :present "PRESENT")
   (:var mv659 :isa apoptosis :raw-text "apoptosis")
   (:var mv653 :isa regulate :object mv654 :agent mv650 :raw-text "regulated")
   (:var mv650 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv664 :isa be :subject mv663 :predicate mv666 :present "PRESENT") (:var mv663 :isa what)
   (:var mv666 :isa gene :predication mv672 :predication mv665 :raw-text "genes")
   (:var mv672 :isa involve :object mv666 :that-rel t :theme mv671 :present "PRESENT")
   (:var mv671 :isa apoptosis :raw-text "apoptosis")
   (:var mv665 :isa regulate :object mv666 :agent mv662 :raw-text "regulated")
   (:var mv662 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv677 :isa downstream-segment :pathwaycomponent mv674 :has-determiner "WHAT" :modifier
    mv676 :raw-text "downstream")
   (:var mv674 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv676 :isa gene :raw-text "genes"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv689 :isa be :subject mv688 :predicate mv691 :present "PRESENT") (:var mv688 :isa what)
   (:var mv691 :isa involve :theme mv696 :participant mv687 :has-determiner "THE")
   (:var mv696 :isa regulate :|cellular-process-OR-agent| mv694 :raw-text "regulation")
   (:var mv694 :isa apoptosis :raw-text "apoptotic")
   (:var mv687 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv701 :isa involve :theme mv700 :object mv702 :present "PRESENT")
   (:var mv700 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv702 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv706 :isa involve :theme mv704 :object mv707 :present "PRESENT")
   (:var mv704 :isa bio-process :has-determiner "WHAT" :raw-text "processes")
   (:var mv707 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv716 :isa involve :object mv711 :theme mv715 :present "PRESENT")
   (:var mv711 :isa gene :has-determiner "WHICH" :predication mv710 :raw-text "genes")
   (:var mv710 :isa regulate :object mv711 :agent mv708 :raw-text "regulated")
   (:var mv708 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv715 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv729 :isa involve :object mv721 :theme mv728 :present "PRESENT")
   (:var mv721 :isa gene :organ mv724 :has-determiner "WHICH" :predication mv720 :raw-text "genes")
   (:var mv724 :isa liver :has-determiner "THE")
   (:var mv720 :isa regulate :object mv721 :agent mv718 :raw-text "regulated")
   (:var mv718 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv728 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv740 :isa involve :object mv735 :theme mv739 :present "PRESENT")
   (:var mv735 :isa gene :has-determiner "WHICH" :predication mv734 :raw-text "genes")
   (:var mv734 :isa regulate :object mv735 :agent mv732 :raw-text "regulated")
   (:var mv732 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv739 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv744 :isa bio-activate :agent mv743 :object mv742 :present "PRESENT" :raw-text
    "activates")
   (:var mv743 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv742 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv746 :isa bio-activate :agent mv745 :object mv747 :present "PRESENT" :raw-text
    "activates")
   (:var mv745 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv747 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv750 :isa phosphorylate :agent mv748 :substrate mv749 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv748 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv749 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv753 :isa dephosphorylate :agent mv751 :substrate mv752 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv751 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv752 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv755 :isa upregulate :agent mv754 :object mv756 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv754 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv756 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv760 :isa binding :binder mv759 :direct-bindee mv763 :present "PRESENT" :raw-text
    "binds")
   (:var mv759 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv763 :isa protein :has-determiner "THE" :modifier mv758 :modifier mv762 :raw-text "EGF"
    :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv758 :isa growth-factor :raw-text "growth factor")
   (:var mv762 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv764 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv770 :isa binding :binder mv777 :direct-bindee mv778 :present "PRESENT" :raw-text
    "binds")
   (:var mv777 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv768
    :component mv767)
   (:var mv768 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv767 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv778 :isa bio-complex :quantifier mv771 :raw-text "EGFR-EGF" :component mv773 :component
    mv772)
   (:var mv771 :isa another :word "another")
   (:var mv773 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv772 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv784 :isa binding :binder mv786 :direct-bindee mv779 :present "PRESENT" :raw-text
    "binds")
   (:var mv786 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv781
    :component mv781)
   (:var mv781 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv779 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv787 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv793 :isa binding :binder mv789 :direct-bindee mv790 :present "PRESENT" :raw-text
    "binds")
   (:var mv789 :isa protein :predication mv792 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv792 :isa binding :direct-bindee mv789 :binder mv791 :raw-text "bound")
   (:var mv791 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv790 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv797 :isa binding :binder mv795 :direct-bindee mv798 :present "PRESENT" :raw-text
    "binds")
   (:var mv795 :isa protein :predication mv796 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv796 :isa binding :direct-bindee mv795 :binder mv794 :raw-text "bound")
   (:var mv794 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv798 :isa protein :predication mv805 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv805 :isa binding :direct-bindee mv798 :that-rel t :bindee mv804 :present "PRESENT"
    :negation mv801 :raw-text "bound")
   (:var mv804 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv801 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv810 :isa binding :binder mv809 :direct-bindee mv811 :present "PRESENT" :raw-text
    "binds")
   (:var mv809 :isa protein :predication mv808 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv808 :isa binding :direct-bindee mv809 :binder mv807 :raw-text "bound")
   (:var mv807 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv811 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv821 :isa binding :binder mv815 :direct-bindee mv822 :present "PRESENT" :raw-text
    "binds")
   (:var mv815 :isa protein :predication mv823 :predication mv814 :raw-text "NRAS" :uid "UP:P01111"
    :name "RASN_HUMAN")
   (:var mv823 :isa binding :direct-bindee mv815 :that-rel t :bindee mv812 :present "PRESENT"
    :negation mv818 :raw-text "bound")
   (:var mv812 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv818 :isa not :word "not")
   (:var mv814 :isa binding :direct-bindee mv815 :binder mv813 :raw-text "bound")
   (:var mv813 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv822 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv825 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv830 :isa affect :manner mv827 :agent mv829 :object mv826 :present "PRESENT" :raw-text
    "affect")
   (:var mv827 :isa how)
   (:var mv829 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv826 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv839 :isa explicit-suggestion :suggestion mv833 :marker let-as-directive)
   (:var mv833 :isa highlight :theme mv835 :present "PRESENT")
   (:var mv835 :isa downstream-segment :pathwaycomponent mv832 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv832 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv848 :isa explicit-suggestion :suggestion mv842 :marker let-as-directive)
   (:var mv842 :isa move-something-somewhere :goal mv846 :theme mv841 :present "PRESENT")
   (:var mv846 :isa bottom :has-determiner "THE")
   (:var mv841 :isa protein :predication mv843 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv843 :isa phosphorylate :substrate mv841 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv857 :isa explicit-suggestion :suggestion mv853 :marker let-as-directive)
   (:var mv853 :isa put-something-somewhere :theme mv850 :present "PRESENT")
   (:var mv850 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv865 :isa explicit-suggestion :suggestion mv860 :marker let-as-directive)
   (:var mv860 :isa show :at-relative-location mv863 :|statement-OR-theme| mv859 :present
    "PRESENT")
   (:var mv863 :isa top-qua-location :has-determiner "THE")
   (:var mv859 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv876 :isa polar-question :statement mv874)
   (:var mv874 :isa decrease :agent mv866 :object mv870 :raw-text "decrease")
   (:var mv866 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv870 :isa protein :info-context mv873 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv873 :isa model :has-determiner "THE"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv891 :isa polar-question :statement mv888)
   (:var mv888 :isa decrease :agent mv877 :|affected-process-OR-object| mv882 :raw-text "decrease")
   (:var mv877 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv882 :isa bio-amount :measured-item mv884 :has-determiner "THE" :raw-text "amount")
   (:var mv884 :isa protein :info-context mv887 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv887 :isa model :has-determiner "THE"))
  ("Does FOS decrease ELK1 in the model?" (:var mv902 :isa polar-question :statement mv900)
   (:var mv900 :isa decrease :agent mv894 :object mv892 :raw-text "decrease")
   (:var mv894 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv892 :isa protein :info-context mv899 :raw-text "ELK1" :uid "UP:P19419" :name
    "ELK1_HUMAN")
   (:var mv899 :isa model :has-determiner "THE"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv925 :isa polar-question :statement mv924)
   (:var mv924 :isa event-relation :subordinated-event mv922 :event mv919)
   (:var mv922 :isa wh-question :statement mv920 :wh if)
   (:var mv920 :isa increase :|agent-OR-cause| mv908 :|affected-process-OR-object| mv912 :raw-text
    "increase")
   (:var mv908 :isa interlocutor :name "person-and-machine")
   (:var mv912 :isa bio-amount :measured-item mv903 :has-determiner "THE" :raw-text "amount")
   (:var mv903 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv919 :isa vanish :agent mv905 :raw-text "vanish")
   (:var mv905 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv950 :isa polar-question :statement mv949)
   (:var mv949 :isa event-relation :subordinated-event mv947 :event mv943)
   (:var mv947 :isa wh-question :statement mv944 :wh if)
   (:var mv944 :isa increase :|agent-OR-cause| mv931 :|multiplier-OR-cause| mv942
    :|affected-process-OR-object| mv935 :raw-text "increase")
   (:var mv931 :isa interlocutor :name "person-and-machine")
   (:var mv942 :isa measurement :number mv939) (:var mv939 :isa number :value 10)
   (:var mv935 :isa bio-amount :measured-item mv926 :has-determiner "THE" :raw-text "amount")
   (:var mv926 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv943 :isa vanish :agent mv928 :raw-text "vanish")
   (:var mv928 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv972 :isa polar-question :statement mv971)
   (:var mv971 :isa event-relation :subordinated-event mv969 :event mv966)
   (:var mv969 :isa wh-question :statement mv967 :wh if)
   (:var mv967 :isa increase :|agent-OR-cause| mv957 :|multiplier-OR-cause| mv965 :object mv952
    :raw-text "increase")
   (:var mv957 :isa interlocutor :name "person-and-machine")
   (:var mv965 :isa measurement :number mv962) (:var mv962 :isa number :value 10)
   (:var mv952 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv966 :isa vanish :agent mv951 :raw-text "vanish")
   (:var mv951 :isa protein :predication mv954 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv954 :isa phosphorylate :substrate mv951 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv998 :isa polar-question :statement mv997)
   (:var mv997 :isa event-relation :subordinated-event mv995 :event mv991)
   (:var mv995 :isa wh-question :statement mv992 :wh if)
   (:var mv992 :isa increase :|agent-OR-cause| mv979 :|multiplier-OR-cause| mv990
    :|affected-process-OR-object| mv983 :raw-text "increase")
   (:var mv979 :isa interlocutor :name "person-and-machine")
   (:var mv990 :isa measurement :number mv987) (:var mv987 :isa number :value 10)
   (:var mv983 :isa bio-amount :measured-item mv974 :has-determiner "THE" :raw-text "amount")
   (:var mv974 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv991 :isa vanish :agent mv973 :raw-text "vanish")
   (:var mv973 :isa protein :predication mv976 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv976 :isa phosphorylate :substrate mv973 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv1010 :isa polar-question :statement mv1008)
   (:var mv1008 :isa increase :cause mv1002 :adverb mv1005 :raw-text "increase")
   (:var mv1002 :isa bio-amount :measured-item mv999 :has-determiner "THE" :raw-text "amount")
   (:var mv999 :isa protein :predication mv1004 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1004 :isa phosphorylate :substrate mv999 :raw-text "phosphorylated")
   (:var mv1005 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?" (:var mv1020 :isa polar-question :statement mv1019)
   (:var mv1019 :isa copular-predication :item mv1011 :value mv1017 :predicate mv1013)
   (:var mv1011 :isa protein :predication mv1014 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv1014 :isa binding :direct-bindee mv1011 :bindee mv1012 :past "PAST" :raw-text "bound")
   (:var mv1012 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1017 :isa high :adverb mv1016) (:var mv1016 :isa eventually :name "eventually")
   (:var mv1013 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv1029 :isa polar-question :statement mv1028)
   (:var mv1028 :isa copular-predication :item mv1021 :value mv1026 :predicate mv1023)
   (:var mv1021 :isa protein :predication mv1024 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1024 :isa binding :direct-bindee mv1021 :bindee mv1022 :past "PAST" :raw-text "bound")
   (:var mv1022 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv1026 :isa transient) (:var mv1023 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv1036 :isa polar-question :statement mv1035)
   (:var mv1035 :isa sustained :participant mv1031 :past "PAST")
   (:var mv1031 :isa protein :predication mv1033 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv1033 :isa binding :direct-bindee mv1031 :binder mv1030 :raw-text "bound")
   (:var mv1030 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv1043 :isa polar-question :statement mv1042)
   (:var mv1042 :isa copular-predication :item mv1037 :value mv1041 :predicate mv1038)
   (:var mv1037 :isa protein :predication mv1039 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1039 :isa phosphorylate :substrate mv1037 :raw-text "phosphorylated")
   (:var mv1041 :isa high :adverb mv1040) (:var mv1040 :isa always :name "always")
   (:var mv1038 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv1050 :isa polar-question :statement mv1049)
   (:var mv1049 :isa copular-predication :item mv1044 :value mv1048 :predicate mv1045)
   (:var mv1044 :isa protein :predication mv1046 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1046 :isa phosphorylate :substrate mv1044 :raw-text "phosphorylated")
   (:var mv1048 :isa high :adverb mv1047) (:var mv1047 :isa eventually :name "eventually")
   (:var mv1045 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv1057 :isa polar-question :statement mv1056)
   (:var mv1056 :isa copular-predication :item mv1051 :value mv1055 :predicate mv1052)
   (:var mv1051 :isa protein :predication mv1053 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1053 :isa phosphorylate :substrate mv1051 :raw-text "phosphorylated")
   (:var mv1055 :isa high :adverb mv1054) (:var mv1054 :isa ever :name "ever")
   (:var mv1052 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv1067 :isa polar-question :statement mv1066)
   (:var mv1066 :isa copular-predication :item mv1058 :value mv1061 :predicate mv1059)
   (:var mv1058 :isa protein :predication mv1060 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1060 :isa phosphorylate :substrate mv1058 :raw-text "phosphorylated")
   (:var mv1061 :isa high) (:var mv1059 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv1073 :isa polar-question :statement mv1072)
   (:var mv1072 :isa copular-predication :item mv1068 :value mv1071 :predicate mv1069)
   (:var mv1068 :isa protein :predication mv1070 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1070 :isa phosphorylate :substrate mv1068 :raw-text "phosphorylated")
   (:var mv1071 :isa high) (:var mv1069 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv1084 :isa polar-question :statement mv1078)
   (:var mv1078 :isa sustained :theme mv1074 :level mv1082 :past "PAST")
   (:var mv1074 :isa protein :predication mv1076 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1076 :isa phosphorylate :substrate mv1074 :raw-text "phosphorylated")
   (:var mv1082 :isa level :has-determiner "A" :predication mv1081 :raw-text "level")
   (:var mv1081 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv1090 :isa polar-question :statement mv1089)
   (:var mv1089 :isa sustained :participant mv1085 :past "PAST")
   (:var mv1085 :isa protein :predication mv1087 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1087 :isa phosphorylate :substrate mv1085 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv1096 :isa polar-question :statement mv1095)
   (:var mv1095 :isa copular-predication :item mv1091 :value mv1094 :predicate mv1092)
   (:var mv1091 :isa protein :predication mv1093 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1093 :isa phosphorylate :substrate mv1091 :raw-text "phosphorylated")
   (:var mv1094 :isa transient) (:var mv1092 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv1107 :isa polar-question :statement mv1106)
   (:var mv1106 :isa copular-predication :item mv1105 :value mv1103 :predicate mv1099)
   (:var mv1105 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv1098
    :component mv1097)
   (:var mv1098 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1097 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv1103 :isa high :adverb mv1102) (:var mv1102 :isa ever :name "ever")
   (:var mv1099 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv1116 :isa polar-question :statement mv1113)
   (:var mv1113 :isa bio-form :agent mv1115 :past "PAST" :raw-text "formed")
   (:var mv1115 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv1109
    :component mv1108)
   (:var mv1109 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1108 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv1139 :isa polar-question :statement mv1138)
   (:var mv1138 :isa event-relation :subordinated-event mv1134 :event mv1136)
   (:var mv1134 :isa wh-question :statement mv1128 :wh if)
   (:var mv1128 :isa increase :|agent-OR-cause| mv1126 :object mv1117 :present "PRESENT" :raw-text
    "increase")
   (:var mv1126 :isa interlocutor :name "person-and-machine")
   (:var mv1117 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1136 :isa copular-predication :item mv1120 :value mv1124 :predicate mv1118)
   (:var mv1120 :isa bio-amount :measured-item mv1122 :has-determiner "THE" :raw-text "amount")
   (:var mv1122 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1124 :isa low :adverb mv1123) (:var mv1123 :isa always :name "always")
   (:var mv1118 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv1164 :isa polar-question :statement mv1163)
   (:var mv1163 :isa event-relation :subordinated-event mv1159 :event mv1161)
   (:var mv1159 :isa wh-question :statement mv1151 :wh if)
   (:var mv1151 :isa increase :|agent-OR-cause| mv1149 :|multiplier-OR-cause| mv1157 :object mv1140
    :present "PRESENT" :raw-text "increase")
   (:var mv1149 :isa interlocutor :name "person-and-machine")
   (:var mv1157 :isa measurement :number mv1154) (:var mv1154 :isa number :value 100)
   (:var mv1140 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1161 :isa copular-predication :item mv1143 :value mv1147 :predicate mv1141)
   (:var mv1143 :isa bio-amount :measured-item mv1145 :has-determiner "THE" :raw-text "amount")
   (:var mv1145 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1147 :isa low :adverb mv1146) (:var mv1146 :isa always :name "always")
   (:var mv1141 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv1191 :isa polar-question :statement mv1190)
   (:var mv1190 :isa event-relation :subordinated-event mv1186 :event mv1188)
   (:var mv1186 :isa wh-question :statement mv1176 :wh if)
   (:var mv1176 :isa increase :|agent-OR-cause| mv1174 :|affected-process-OR-object| mv1178
    :present "PRESENT" :raw-text "increase")
   (:var mv1174 :isa interlocutor :name "person-and-machine")
   (:var mv1178 :isa bio-amount :measured-item mv1165 :has-determiner "THE" :raw-text "amount")
   (:var mv1165 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1188 :isa copular-predication :item mv1168 :value mv1172 :predicate mv1166)
   (:var mv1168 :isa bio-amount :measured-item mv1170 :has-determiner "THE" :raw-text "amount")
   (:var mv1170 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1172 :isa high :adverb mv1171) (:var mv1171 :isa ever :name "ever")
   (:var mv1166 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv1220 :isa polar-question :statement mv1219)
   (:var mv1219 :isa event-relation :subordinated-event mv1215 :event mv1217)
   (:var mv1215 :isa wh-question :statement mv1203 :wh if)
   (:var mv1203 :isa increase :|agent-OR-cause| mv1201 :|multiplier-OR-cause| mv1212
    :|affected-process-OR-object| mv1205 :present "PRESENT" :raw-text "increase")
   (:var mv1201 :isa interlocutor :name "person-and-machine")
   (:var mv1212 :isa measurement :number mv1209) (:var mv1209 :isa number :value 100)
   (:var mv1205 :isa bio-amount :measured-item mv1192 :has-determiner "THE" :raw-text "amount")
   (:var mv1192 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1217 :isa copular-predication :item mv1195 :value mv1199 :predicate mv1193)
   (:var mv1195 :isa bio-amount :measured-item mv1197 :has-determiner "THE" :raw-text "amount")
   (:var mv1197 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1199 :isa high :adverb mv1198) (:var mv1198 :isa ever :name "ever")
   (:var mv1193 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv1230 :isa polar-question :statement mv1226)
   (:var mv1226 :isa phosphorylate :cause mv1224 :past "PAST" :raw-text "phosphorylated")
   (:var mv1224 :isa bio-amount :measured-item mv1221 :has-determiner "THE" :raw-text "amount")
   (:var mv1221 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv1241 :isa polar-question :statement mv1240)
   (:var mv1240 :isa copular-predication :item mv1234 :value mv1238 :predicate mv1232)
   (:var mv1234 :isa bio-amount :measured-item mv1231 :has-determiner "THE" :raw-text "amount")
   (:var mv1231 :isa protein :predication mv1236 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1236 :isa phosphorylate :substrate mv1231 :raw-text "phosphorylated")
   (:var mv1238 :isa high :adverb mv1237) (:var mv1237 :isa eventually :name "eventually")
   (:var mv1232 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv1252 :isa polar-question :statement mv1251)
   (:var mv1251 :isa copular-predication :item mv1245 :value mv1249 :predicate mv1243)
   (:var mv1245 :isa bio-amount :measured-item mv1242 :has-determiner "THE" :raw-text "amount")
   (:var mv1242 :isa protein :predication mv1247 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1247 :isa phosphorylate :substrate mv1242 :raw-text "phosphorylated")
   (:var mv1249 :isa high :adverb mv1248) (:var mv1248 :isa ever :name "ever")
   (:var mv1243 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv1263 :isa polar-question :statement mv1261)
   (:var mv1261 :isa increase :cause mv1256 :adverb mv1259 :raw-text "increasing")
   (:var mv1256 :isa bio-amount :measured-item mv1253 :has-determiner "THE" :raw-text "amount")
   (:var mv1253 :isa protein :predication mv1258 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1258 :isa phosphorylate :substrate mv1253 :raw-text "phosphorylated")
   (:var mv1259 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv1273 :isa polar-question :statement mv1272)
   (:var mv1272 :isa copular-predication :item mv1267 :value mv1270 :predicate mv1265)
   (:var mv1267 :isa bio-amount :measured-item mv1264 :has-determiner "THE" :raw-text "amount")
   (:var mv1264 :isa protein :predication mv1269 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1269 :isa phosphorylate :substrate mv1264 :raw-text "phosphorylated")
   (:var mv1270 :isa high) (:var mv1265 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv1284 :isa polar-question :statement mv1283)
   (:var mv1283 :isa copular-predication :item mv1277 :value mv1281 :predicate mv1275)
   (:var mv1277 :isa bio-amount :measured-item mv1274 :has-determiner "THE" :raw-text "amount")
   (:var mv1274 :isa protein :predication mv1279 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1279 :isa phosphorylate :substrate mv1274 :raw-text "phosphorylated")
   (:var mv1281 :isa high :adverb mv1280) (:var mv1280 :isa sometimes) (:var mv1275 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv1299 :isa polar-question :statement mv1292)
   (:var mv1292 :isa sustained :theme mv1288 :level mv1296 :past "PAST")
   (:var mv1288 :isa bio-amount :measured-item mv1285 :has-determiner "THE" :raw-text "amount")
   (:var mv1285 :isa protein :predication mv1290 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1290 :isa phosphorylate :substrate mv1285 :raw-text "phosphorylated")
   (:var mv1296 :isa level :has-determiner "A" :predication mv1295 :raw-text "level")
   (:var mv1295 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv1309 :isa polar-question :statement mv1307)
   (:var mv1307 :isa sustained :participant mv1303 :past "PAST")
   (:var mv1303 :isa bio-amount :measured-item mv1300 :has-determiner "THE" :raw-text "amount")
   (:var mv1300 :isa protein :predication mv1305 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1305 :isa phosphorylate :substrate mv1300 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv1319 :isa polar-question :statement mv1318)
   (:var mv1318 :isa copular-predication :item mv1313 :value mv1316 :predicate mv1311)
   (:var mv1313 :isa bio-amount :measured-item mv1310 :has-determiner "THE" :raw-text "amount")
   (:var mv1310 :isa protein :predication mv1315 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1315 :isa phosphorylate :substrate mv1310 :raw-text "phosphorylated")
   (:var mv1316 :isa transient) (:var mv1311 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv1330 :isa polar-question :statement mv1328)
   (:var mv1328 :isa copular-predication :item mv1323 :value mv1327 :predicate mv1326)
   (:var mv1323 :isa bio-amount :measured-item mv1320 :has-determiner "THE" :raw-text "amount")
   (:var mv1320 :isa protein :predication mv1325 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1325 :isa phosphorylate :substrate mv1320 :raw-text "phosphorylated")
   (:var mv1327 :isa high) (:var mv1326 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv1353 :isa polar-question :statement mv1352)
   (:var mv1352 :isa event-relation :subordinated-event mv1349 :event mv1350)
   (:var mv1349 :isa wh-question :statement mv1339 :wh if)
   (:var mv1339 :isa increase :|agent-OR-cause| mv1337 :|affected-process-OR-object| mv1341
    :present "PRESENT" :raw-text "increase")
   (:var mv1337 :isa interlocutor :name "person-and-machine")
   (:var mv1341 :isa bio-amount :measured-item mv1332 :has-determiner "THE" :raw-text "amount")
   (:var mv1332 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv1350 :isa copular-predication :item mv1331 :value mv1335 :predicate mv1333)
   (:var mv1331 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv1335 :isa low :adverb mv1334) (:var mv1334 :isa eventually :name "eventually")
   (:var mv1333 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv1380 :isa polar-question :statement mv1379)
   (:var mv1379 :isa event-relation :subordinated-event mv1376 :event mv1377)
   (:var mv1376 :isa wh-question :statement mv1373 :wh if)
   (:var mv1373 :isa increase :|affected-process-OR-object| mv1362 :|multiplier-OR-cause| mv1371
    :raw-text "increased")
   (:var mv1362 :isa bio-amount :measured-item mv1355 :has-determiner "THE" :raw-text "amount")
   (:var mv1355 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv1371 :isa measurement :number mv1368) (:var mv1368 :isa number :value 100)
   (:var mv1377 :isa copular-predication :item mv1354 :value mv1359 :predicate mv1356)
   (:var mv1354 :isa protein :predication mv1357 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv1357 :isa active) (:var mv1359 :isa low :adverb mv1358)
   (:var mv1358 :isa eventually :name "eventually") (:var mv1356 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv1407 :isa polar-question :statement mv1406)
   (:var mv1406 :isa event-relation :subordinated-event mv1402 :event mv1404)
   (:var mv1402 :isa wh-question :statement mv1392 :wh if)
   (:var mv1392 :isa increase :|agent-OR-cause| mv1390 :|affected-process-OR-object| mv1394
    :present "PRESENT" :raw-text "increase")
   (:var mv1390 :isa interlocutor :name "person-and-machine")
   (:var mv1394 :isa bio-amount :measured-item mv1382 :has-determiner "THE" :raw-text "amount")
   (:var mv1382 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv1404 :isa copular-predication :item mv1385 :value mv1388 :predicate mv1383)
   (:var mv1385 :isa bio-amount :measured-item mv1381 :has-determiner "THE" :raw-text "amount")
   (:var mv1381 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv1388 :isa low :adverb mv1387) (:var mv1387 :isa eventually :name "eventually")
   (:var mv1383 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv1435 :isa polar-question :statement mv1434)
   (:var mv1434 :isa event-relation :subordinated-event mv1430 :event mv1432)
   (:var mv1430 :isa wh-question :statement mv1420 :wh if)
   (:var mv1420 :isa increase :|agent-OR-cause| mv1418 :|affected-process-OR-object| mv1422
    :present "PRESENT" :raw-text "increase")
   (:var mv1418 :isa interlocutor :name "person-and-machine")
   (:var mv1422 :isa bio-amount :measured-item mv1409 :has-determiner "THE" :raw-text "amount")
   (:var mv1409 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv1432 :isa copular-predication :item mv1412 :value mv1416 :predicate mv1410)
   (:var mv1412 :isa bio-amount :measured-item mv1408 :has-determiner "THE" :raw-text "amount")
   (:var mv1408 :isa protein :predication mv1414 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv1414 :isa active) (:var mv1416 :isa low :adverb mv1415)
   (:var mv1415 :isa always :name "always") (:var mv1410 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv1445 :isa explicit-suggestion :suggestion mv1439 :marker let-as-directive)
   (:var mv1439 :isa move-something-somewhere :at-relative-location mv1442 :theme mv1443 :present
    "PRESENT")
   (:var mv1442 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv1443 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv1437 mv1438))
   (:var mv1437 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1438 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv1448 :isa phosphorylate :agent mv1446 :substrate mv1447 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1446 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv1447 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv1449 :isa move-something-somewhere :at-relative-location mv1452 :theme mv1454 :present
    "PRESENT")
   (:var mv1452 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv1454 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv1457 :isa phosphorylate :agent mv1455 :substrate mv1456 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1455 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1456 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv1467 :isa explicit-suggestion :suggestion mv1460 :marker let-as-directive)
   (:var mv1460 :isa highlight :theme mv1462 :present "PRESENT")
   (:var mv1462 :isa upstream-segment :pathwaycomponent mv1459 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv1459 :isa protein :predication mv1465 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1465 :isa phosphorylate :substrate mv1459 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv1476 :isa explicit-suggestion :suggestion mv1470 :marker let-as-directive)
   (:var mv1470 :isa show :at-relative-location mv1474 :|statement-OR-theme| mv1469 :present
    "PRESENT")
   (:var mv1474 :isa top-qua-location :has-determiner "THE")
   (:var mv1469 :isa protein :predication mv1471 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1471 :isa phosphorylate :substrate mv1469 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv1489 :isa explicit-suggestion :suggestion mv1479 :marker let-as-directive)
   (:var mv1479 :isa show :at-relative-location mv1486 :|statement-OR-theme| mv1481 :present
    "PRESENT")
   (:var mv1486 :isa top-qua-location :has-determiner "THE")
   (:var mv1481 :isa downstream-segment :pathwaycomponent mv1478 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv1478 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv1498 :isa explicit-suggestion :suggestion mv1491 :marker let-as-directive)
   (:var mv1491 :isa move-something-somewhere :goal mv1496 :theme mv1493 :present "PRESENT")
   (:var mv1496 :isa top-qua-location :has-determiner "THE")
   (:var mv1493 :isa element :modifier mv1492)
   (:var mv1492 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv1503 :isa affect :manner mv1500 :agent mv1502 :object mv1499 :present "PRESENT"
    :raw-text "affect")
   (:var mv1500 :isa how)
   (:var mv1502 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1499 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv1507 :isa affect :manner mv1505 :agent mv1504 :object mv1508 :present "PRESENT"
    :raw-text "affect")
   (:var mv1505 :isa how)
   (:var mv1504 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1508 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv1511 :isa be :subject mv1510 :predicate mv1513 :present "PRESENT")
   (:var mv1510 :isa what) (:var mv1513 :isa path :endpoints mv1517 :has-determiner "THE")
   (:var mv1517 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv1515 mv1509))
   (:var mv1515 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1509 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv1522 :isa affect :manner mv1520 :agent mv1519 :object mv1523 :present "PRESENT"
    :raw-text "affect")
   (:var mv1520 :isa how)
   (:var mv1519 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1523 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv1528 :isa affect :manner mv1526 :agent mv1524 :object mv1525 :present "PRESENT"
    :raw-text "affect")
   (:var mv1526 :isa how)
   (:var mv1524 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv1525 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv1533 :isa affect :manner mv1530 :agent mv1532 :object mv1529 :present "PRESENT"
    :raw-text "affect")
   (:var mv1530 :isa how)
   (:var mv1532 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv1529 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv1537 :isa affect :manner mv1534 :agent mv1536 :object mv1538 :present "PRESENT"
    :raw-text "affect")
   (:var mv1534 :isa how)
   (:var mv1536 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv1538 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv1543 :isa phosphorylate :amino-acid mv1541 :agent mv1539 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv1541 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv1539 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What pathways affect BRAF?"
   (:var mv1546 :isa affect :agent mv1545 :object mv1547 :present "PRESENT" :raw-text "affect")
   (:var mv1545 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv1547 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv1550 :isa bio-activate :agent mv1549 :object mv1551 :present "PRESENT" :raw-text
    "activate")
   (:var mv1549 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv1551 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv1560 :isa explicit-suggestion :suggestion mv1555 :marker let-as-directive)
   (:var mv1555 :isa learning :statement mv1553 :present "PRESENT")
   (:var mv1553 :isa protein :context mv1554 :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1554 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is its relationship with BRAF?"
   (:var mv1562 :isa be :subject mv1561 :predicate mv1564 :present "PRESENT")
   (:var mv1561 :isa what) (:var mv1564 :isa relationship :patient mv1566 :modifier mv1563)
   (:var mv1566 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1563 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv1570 :isa be :subject mv1569 :predicate mv1572 :present "PRESENT")
   (:var mv1569 :isa what) (:var mv1572 :isa relationship :patient mv1568 :modifier mv1571)
   (:var mv1568 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv1571 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv1577 :isa phosphorylate :agent mv1575 :substrate mv1576 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1575 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1576 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv1579 :isa what))
  ("Let's stop learning about AKT1." (:var mv1587 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv1596 :isa be :subject mv1595 :predicate mv1599 :present "PRESENT")
   (:var mv1595 :isa what)
   (:var mv1599 :isa response :beneficiary mv1601 :has-determiner "THE" :modifier mv1598 :raw-text
    "response")
   (:var mv1601 :isa cell-type :mutation mv1603)
   (:var mv1603 :isa alter :|agent-OR-object| mv1594 :raw-text "alterations")
   (:var mv1594 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1598 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv1608 :isa be :subject mv1607 :predicate mv1611 :present "PRESENT")
   (:var mv1607 :isa what)
   (:var mv1611 :isa response :cell-type mv1613 :has-determiner "THE" :modifier mv1610 :raw-text
    "response")
   (:var mv1613 :isa cell-type :mutation mv1615)
   (:var mv1615 :isa alter :|agent-OR-object| mv1606 :raw-text "alterations")
   (:var mv1606 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1610 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv1619 :isa be :subject mv1618 :predicate mv1622 :present "PRESENT")
   (:var mv1618 :isa what)
   (:var mv1622 :isa frequency :measured-item mv1624 :has-determiner "THE" :measured-item mv1621
    :raw-text "frequency")
   (:var mv1624 :isa protein :context mv1626 :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv1626 :isa glioblastoma) (:var mv1621 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv1632 :isa be :subject mv1631 :predicate mv1635 :present "PRESENT")
   (:var mv1631 :isa what)
   (:var mv1635 :isa frequency :measured-item mv1629 :has-determiner "THE" :measured-item mv1634
    :raw-text "frequency")
   (:var mv1629 :isa protein :context mv1630 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1630 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv1634 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv1641 :isa show :|statement-OR-theme| mv1644 :beneficiary mv1642 :present "PRESENT")
   (:var mv1644 :isa mutation :object mv1650 :has-determiner "THE" :raw-text "mutations")
   (:var mv1650 :isa collection :context mv1640 :raw-text "PTEN and BRAF" :type protein :number 2
    :items (mv1646 mv1648))
   (:var mv1640 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv1646 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1648 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1642 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv1654 :isa show :|statement-OR-theme| mv1657 :beneficiary mv1655 :present "PRESENT")
   (:var mv1657 :isa mutation :object mv1659 :has-determiner "THE" :raw-text "mutations")
   (:var mv1659 :isa protein :context mv1653 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1653 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv1655 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv1665 :isa be :subject mv1664 :predicate mv1667 :present "PRESENT")
   (:var mv1664 :isa what)
   (:var mv1667 :isa mutation :object mv1669 :has-determiner "THE" :raw-text "mutations")
   (:var mv1669 :isa protein :context mv1663 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1663 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv1675 :isa be :subject mv1674 :predicate mv1687 :present "PRESENT")
   (:var mv1674 :isa what) (:var mv1687 :isa quality-predicate :item mv1685 :attribute mv1681)
   (:var mv1685 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv1673 mv1684))
   (:var mv1673 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1684 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1681 :isa location-of :has-determiner "THE" :predication mv1679 :modifier mv1680)
   (:var mv1679 :isa likely :comparative mv1677)
   (:var mv1677 :isa superlative-quantifier :name "most")
   (:var mv1680 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv1700 :isa polar-question :statement mv1697)
   (:var mv1697 :isa there-exists :value mv1693 :predicate mv1690)
   (:var mv1693 :isa upstream-segment :pathwaycomponent mv1698 :predication mv1692 :raw-text
    "upstreams")
   (:var mv1698 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv1688 mv1696))
   (:var mv1688 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1696 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1692 :isa common) (:var mv1690 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv1704 :isa be :subject mv1703 :predicate mv1707 :present "PRESENT")
   (:var mv1703 :isa what)
   (:var mv1707 :isa upstream-segment :pathwaycomponent mv1711 :has-determiner "THE" :predication
    mv1706 :raw-text "upstreams")
   (:var mv1711 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv1701 mv1709 mv1702))
   (:var mv1701 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1709 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1702 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1706 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv1723 :isa copular-predication :item mv1717 :value mv1713 :predicate mv1718)
   (:var mv1717 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv1713 :isa mutual-exclusivity :disease mv1715 :alternative mv1714)
   (:var mv1715 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv1714 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv1718 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv1728 :isa be :subject mv1727 :predicate mv1735 :present "PRESENT")
   (:var mv1727 :isa what)
   (:var mv1735 :isa gene :disease mv1726 :has-determiner "THE" :predication mv1724 :raw-text
    "genes")
   (:var mv1726 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv1724 :isa mutual-exclusivity :alternative mv1725)
   (:var mv1725 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv1739 :isa be :subject mv1738 :predicate mv1742 :present "PRESENT")
   (:var mv1738 :isa what)
   (:var mv1742 :isa significance :result mv1737 :agent mv1736 :has-determiner "THE" :modifier
    mv1741)
   (:var mv1737 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv1736 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1741 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv1750 :isa be :subject mv1749 :predicate mv1753 :present "PRESENT")
   (:var mv1749 :isa what)
   (:var mv1753 :isa significance :agent mv1747 :has-determiner "THE" :modifier mv1752)
   (:var mv1747 :isa protein :context mv1748 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1748 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv1752 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv1759 :isa be :subject mv1758 :predicate mv1762 :present "PRESENT")
   (:var mv1758 :isa what)
   (:var mv1762 :isa significance :agent mv1764 :has-determiner "THE" :modifier mv1761)
   (:var mv1764 :isa protein :context mv1767 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1767 :isa cancer :organ mv1766 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv1766 :isa pancreas) (:var mv1761 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv1771 :isa be :subject mv1770 :predicate mv1774 :present "PRESENT")
   (:var mv1770 :isa what)
   (:var mv1774 :isa significance :agent mv1776 :has-determiner "THE" :modifier mv1773)
   (:var mv1776 :isa protein :context mv1779 :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1779 :isa cancer :modifier mv1778 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv1778 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv1773 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv1783 :isa phosphorylate :agent mv1782 :substrate mv1784 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1782 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv1784 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv1786 :isa binding :binder mv1785 :direct-bindee mv1787 :present "PRESENT" :raw-text
    "binds")
   (:var mv1785 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv1787 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv1793 :isa binding :binder mv1789 :direct-bindee mv1788 :present "PRESENT" :raw-text
    "binds")
   (:var mv1789 :isa protein :predication mv1790 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv1790 :isa binding :direct-bindee mv1789 :bindee mv1792 :past "PAST" :raw-text "bound")
   (:var mv1792 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv1788 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv1799 :isa copular-predication :item mv1796 :value mv1798 :predicate mv1797)
   (:var mv1796 :isa protein-family :predication mv1795 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv1795 :isa phosphorylate :substrate mv1796 :raw-text "Phosphorylated")
   (:var mv1798 :isa active) (:var mv1797 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv1800 :isa protein :predication mv1802 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv1802 :isa phosphorylate :substrate mv1800 :target mv1801 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv1801 :isa protein :site mv1807 :modifier mv1808 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1807 :isa residue-on-protein :raw-text "S220" :position mv1806 :amino-acid mv1805)
   (:var mv1806 :isa number :value 220) (:var mv1805 :isa amino-acid :name "serine" :letter "S")
   (:var mv1808 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv1813 :isa transcribe :agent mv1810 :object mv1811 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv1810 :isa protein :predication mv1812 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv1812 :isa active)
   (:var mv1811 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv1842 :isa polar-question :statement mv1841)
   (:var mv1841 :isa event-relation :subordinated-event mv1837 :event mv1839)
   (:var mv1837 :isa wh-question :statement mv1825 :wh if)
   (:var mv1825 :isa increase :|agent-OR-cause| mv1823 :|multiplier-OR-cause| mv1834
    :|affected-process-OR-object| mv1827 :present "PRESENT" :raw-text "increase")
   (:var mv1823 :isa interlocutor :name "person-and-machine")
   (:var mv1834 :isa measurement :number mv1831) (:var mv1831 :isa number :value 10)
   (:var mv1827 :isa bio-amount :measured-item mv1814 :has-determiner "THE" :raw-text "amount")
   (:var mv1814 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1839 :isa copular-predication :item mv1817 :value mv1821 :predicate mv1815)
   (:var mv1817 :isa bio-amount :measured-item mv1819 :has-determiner "THE" :raw-text "amount")
   (:var mv1819 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1821 :isa high :adverb mv1820) (:var mv1820 :isa ever :name "ever")
   (:var mv1815 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv1854 :isa polar-question :statement mv1852)
   (:var mv1852 :isa decrease :agent mv1844 :object mv1848 :raw-text "decrease")
   (:var mv1844 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv1848 :isa protein-family :info-context mv1851 :predication mv1847 :raw-text "ERK" :name
    "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv1851 :isa model :has-determiner "THE")
   (:var mv1847 :isa phosphorylate :substrate mv1848 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv1865 :isa polar-question :statement mv1863)
   (:var mv1863 :isa decrease :agent mv1856 :object mv1859 :raw-text "decrease")
   (:var mv1856 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv1859 :isa protein :info-context mv1862 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv1862 :isa model :has-determiner "THE"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv1870 :isa regulate :manner mv1867 :agent mv1869 :object mv1866 :present "PRESENT"
    :raw-text "regulate")
   (:var mv1867 :isa how)
   (:var mv1869 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv1866 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv1875 :isa bio-activate :manner mv1872 :agent mv1874 :object mv1871 :present "PRESENT"
    :raw-text "activate")
   (:var mv1872 :isa how)
   (:var mv1874 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv1871 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv1881 :isa polar-question :statement mv1880)
   (:var mv1880 :isa inhibit :agent mv1877 :object mv1879 :raw-text "inhibit")
   (:var mv1877 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv1879 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv1892 :isa share :object mv1882 :participant mv1891 :present "PRESENT" :raw-text
    "shared")
   (:var mv1882 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv1891 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv1888 mv1889 mv1883))
   (:var mv1888 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv1889 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv1883 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv1895 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv1904 :isa be :subject mv1903 :predicate mv1905 :present "PRESENT")
   (:var mv1903 :isa what)
   (:var mv1905 :isa upstream-segment :pathwaycomponent mv1902 :raw-text "upstream")
   (:var mv1902 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv1913 :isa want :agent mv1910 :theme mv1921 :present "PRESENT")
   (:var mv1910 :isa interlocutor :name "speaker")
   (:var mv1921 :isa bio-find :agent mv1910 :object mv1918 :present "PRESENT" :raw-text "find")
   (:var mv1918 :isa treatment :disease mv1909 :has-determiner "A" :raw-text "treatment")
   (:var mv1909 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv1930 :isa bio-use :object mv1923 :modal mv1924 :agent mv1925 :present "PRESENT"
    :raw-text "use")
   (:var mv1923 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv1924 :isa could)
   (:var mv1925 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv1940 :isa polar-question :statement mv1938)
   (:var mv1938 :isa there-exists :value mv1935 :predicate mv1932)
   (:var mv1935 :isa drug :target mv1937 :quantifier mv1934 :raw-text "drugs")
   (:var mv1937 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1934 :isa any :word "any") (:var mv1932 :isa syntactic-there))
  ("Are they kinases?" (:var mv1944 :isa polar-question :statement mv1941)
   (:var mv1941 :isa be :subject mv1942 :predicate mv1943)
   (:var mv1942 :isa pronoun/plural :word "they") (:var mv1943 :isa kinase :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv1954 :isa polar-question :statement mv1948)
   (:var mv1948 :isa bio-find :agent mv1946 :object mv1950 :modal "CAN" :raw-text "find")
   (:var mv1946 :isa interlocutor :name "hearer")
   (:var mv1950 :isa drug :target mv1952 :has-determiner "A" :raw-text "drug")
   (:var mv1952 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv1972 :isa polar-question :statement mv1959)
   (:var mv1959 :isa tell :agent mv1958 :theme mv1955 :beneficiary mv1960 :modal "CAN")
   (:var mv1958 :isa interlocutor :name "hearer")
   (:var mv1955 :isa transcription-factor :predication mv1970 :quantifier mv1961 :has-determiner
    "THE" :raw-text "transcription factors")
   (:var mv1970 :isa share :object mv1955 :that-rel t :participant mv1969 :modal "CAN" :raw-text
    "shared")
   (:var mv1969 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv1956 mv1968))
   (:var mv1956 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1968 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv1961 :isa all :word "all") (:var mv1960 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv1988 :isa polar-question :statement mv1977)
   (:var mv1977 :isa tell :agent mv1976 :theme mv1986 :theme mv1978 :modal "CAN")
   (:var mv1976 :isa interlocutor :name "hearer")
   (:var mv1986 :isa share :object mv1973 :participant mv1985 :modal "CAN" :raw-text "shared")
   (:var mv1973 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv1985 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv1974 mv1984))
   (:var mv1974 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1984 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv1978 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv1999 :isa polar-question :statement mv1998)
   (:var mv1998 :isa know :agent mv1990 :statement mv1993)
   (:var mv1990 :isa interlocutor :name "hearer")
   (:var mv1993 :isa drug :target mv1995 :quantifier mv1992 :raw-text "drugs")
   (:var mv1995 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1992 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv2011 :isa polar-question :statement mv2009)
   (:var mv2009 :isa regulate :agent mv2000 :object mv2005 :raw-text "regulate")
   (:var mv2000 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2005 :isa gene :organ mv2008 :has-determiner "THE" :expresses mv2004 :raw-text "gene")
   (:var mv2008 :isa lung :has-determiner "THE")
   (:var mv2004 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv2022 :isa polar-question :statement mv2020)
   (:var mv2020 :isa regulate :agent mv2012 :object mv2017 :raw-text "regulate")
   (:var mv2012 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2017 :isa gene :organ mv2019 :has-determiner "THE" :expresses mv2013 :raw-text "gene")
   (:var mv2019 :isa liver)
   (:var mv2013 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv2030 :isa polar-question :statement mv2029)
   (:var mv2029 :isa regulate :agent mv2023 :object mv2028 :raw-text "regulate")
   (:var mv2023 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2028 :isa gene :has-determiner "THE" :expresses mv2024 :raw-text "gene")
   (:var mv2024 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv2042 :isa polar-question :statement mv2040)
   (:var mv2040 :isa regulate :agent mv2031 :object mv2036 :raw-text "regulate")
   (:var mv2031 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2036 :isa gene :organ mv2039 :has-determiner "THE" :expresses mv2035 :raw-text "gene")
   (:var mv2039 :isa lung :has-determiner "THE")
   (:var mv2035 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv2049 :isa polar-question :statement mv2048)
   (:var mv2048 :isa target :agent mv2043 :object mv2044 :raw-text "target")
   (:var mv2043 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv2044 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv2056 :isa polar-question :statement mv2055)
   (:var mv2055 :isa target :agent mv2050 :object mv2051 :raw-text "target")
   (:var mv2050 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv2051 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv2063 :isa polar-question :statement mv2062)
   (:var mv2062 :isa target :agent mv2057 :object mv2058 :raw-text "target")
   (:var mv2057 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv2058 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv2070 :isa polar-question :statement mv2069)
   (:var mv2069 :isa target :agent mv2064 :object mv2065 :raw-text "target")
   (:var mv2064 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv2065 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv2079 :isa polar-question :statement mv2077)
   (:var mv2077 :isa regulate :agent mv2071 :object mv2076 :raw-text "regulate")
   (:var mv2071 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2076 :isa bio-entity :organ mv2075 :name "cfors") (:var mv2075 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv2088 :isa polar-question :statement mv2086)
   (:var mv2086 :isa regulate :agent mv2080 :object mv2083 :raw-text "regulate")
   (:var mv2080 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2083 :isa protein :organ mv2085 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv2085 :isa liver))
  ("Does it regulate cfos in brain" (:var mv2097 :isa polar-question :statement mv2095)
   (:var mv2095 :isa regulate :|agent-OR-cause| mv2090 :object mv2092 :raw-text "regulate")
   (:var mv2090 :isa pronoun/inanimate :word "it")
   (:var mv2092 :isa protein :organ mv2094 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv2094 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv2103 :isa polar-question :statement mv2102)
   (:var mv2102 :isa regulate :agent mv2098 :object mv2101 :raw-text "regulate")
   (:var mv2098 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2101 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv2115 :isa polar-question :statement mv2113)
   (:var mv2113 :isa regulate :agent mv2104 :object mv2109 :raw-text "regulate")
   (:var mv2104 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2109 :isa gene :cell-type mv2112 :has-determiner "THE" :expresses mv2108 :raw-text
    "gene")
   (:var mv2112 :isa cell-type :non-cellular-location mv2111)
   (:var mv2111 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv2108 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv2125 :isa polar-question :statement mv2124)
   (:var mv2124 :isa utilize :participant mv2121 :object mv2116 :raw-text "utilize")
   (:var mv2121 :isa pathway :has-determiner "THE" :modifier mv2123 :raw-text "pathway")
   (:var mv2123 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv2116 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv2135 :isa polar-question :statement mv2134)
   (:var mv2134 :isa utilize :participant mv2132 :object mv2126 :raw-text "utilize")
   (:var mv2132 :isa pathway :has-determiner "THE" :modifier mv2129 :raw-text "pathway")
   (:var mv2129 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv2126 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv2137 :isa give :theme mv2144 :beneficiary mv2138 :present "PRESENT")
   (:var mv2144 :isa evidence :statement mv2143 :has-determiner "THE")
   (:var mv2143 :isa decrease :agent mv2142 :object mv2136 :present "PRESENT" :raw-text
    "decreases")
   (:var mv2142 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2136 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2138 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv2146 :isa give :theme mv2153 :beneficiary mv2147 :present "PRESENT")
   (:var mv2153 :isa evidence :statement mv2152 :has-determiner "THE")
   (:var mv2152 :isa regulate :agent mv2151 :object mv2145 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2151 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2145 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2147 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv2158 :isa polar-question :statement mv2154)
   (:var mv2154 :isa be :subject mv2155 :predicate mv2157)
   (:var mv2155 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2157 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv2165 :isa polar-question :statement mv2161)
   (:var mv2161 :isa inhibit :object mv2159 :agent mv2163 :past "PAST" :raw-text "inhibited")
   (:var mv2159 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv2163 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv2174 :isa polar-question :statement mv2169)
   (:var mv2169 :isa be :subject mv2166 :predicate mv2167)
   (:var mv2166 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2167 :isa transcription-factor :controlled-gene mv2172 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv2172 :isa gene :expresses mv2168 :raw-text "gene")
   (:var mv2168 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv2189 :isa polar-question :statement mv2177)
   (:var mv2177 :isa be :subject mv2175 :predicate mv2183)
   (:var mv2175 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2183 :isa regulator :quantifier mv2180 :theme mv2186 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv2180 :isa number :value 1)
   (:var mv2186 :isa gene :has-determiner "THE" :expresses mv2176 :raw-text "gene")
   (:var mv2176 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv2197 :isa polar-question :statement mv2191)
   (:var mv2191 :isa be :subject mv2192 :predicate mv2194)
   (:var mv2192 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv2194 :isa inhibitor :protein mv2190 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv2190 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv2205 :isa polar-question :statement mv2198)
   (:var mv2198 :isa be :subject mv2199 :predicate mv2201)
   (:var mv2199 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv2201 :isa inhibitor :|target-OR-protein| mv2203 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv2203 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv2210 :isa polar-question :statement mv2206)
   (:var mv2206 :isa be :subject mv2209 :predicate mv2208)
   (:var mv2209 :isa bio-entity :name "fakeprotein")
   (:var mv2208 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv2215 :isa polar-question :statement mv2212)
   (:var mv2212 :isa be :subject mv2211 :predicate mv2214)
   (:var mv2211 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv2214 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv2222 :isa polar-question :statement mv2217)
   (:var mv2217 :isa be :subject mv2216 :predicate mv2221)
   (:var mv2216 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2221 :isa regulator :has-determiner "AN" :cellular-process mv2219 :raw-text "regulator")
   (:var mv2219 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv2232 :isa polar-question :statement mv2225)
   (:var mv2225 :isa involve :object mv2223 :|context-OR-theme| mv2230 :past "PAST")
   (:var mv2223 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2230 :isa pathway :quantifier mv2227 :cellular-process mv2228 :raw-text "pathways")
   (:var mv2227 :isa any :word "any") (:var mv2228 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?" (:var mv2241 :isa polar-question :statement mv2235)
   (:var mv2235 :isa involve :object mv2233 :theme mv2239 :past "PAST")
   (:var mv2233 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2239 :isa regulate :|cellular-process-OR-agent| mv2237 :raw-text "regulation")
   (:var mv2237 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?" (:var mv2249 :isa polar-question :statement mv2244)
   (:var mv2244 :isa involve :object mv2242 :theme mv2246 :past "PAST")
   (:var mv2242 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2246 :isa regulate :affected-process mv2247 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv2247 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv2254 :isa phosphorylate :amino-acid mv2251 :agent mv2253 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv2251 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv2253 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv2264 :isa polar-question :statement mv2255)
   (:var mv2255 :isa be :subject mv2263 :predicate mv2262)
   (:var mv2263 :isa indefinite-pronoun :has-determiner "THE" :ordinal mv2260 :word "one")
   (:var mv2260 :isa number :value 1)
   (:var mv2262 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv2275 :isa polar-question :statement mv2274)
   (:var mv2274 :isa there-exists :value mv2269 :predicate mv2266)
   (:var mv2269 :isa drug :predication mv2272 :has-determiner "A" :raw-text "drug")
   (:var mv2272 :isa target :agent mv2269 :that-rel t :object mv2273 :present "PRESENT" :raw-text
    "targets")
   (:var mv2273 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv2266 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv2288 :isa polar-question :statement mv2286)
   (:var mv2286 :isa there-exists :value mv2283 :predicate mv2278)
   (:var mv2283 :isa pathway :predication mv2284 :has-determiner "AN" :cellular-process mv2281
    :raw-text "pathway")
   (:var mv2284 :isa regulate :affected-process mv2283 :agent mv2276 :past "PAST" :raw-text
    "regulated")
   (:var mv2276 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2281 :isa apoptosis :raw-text "apoptotic") (:var mv2278 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv2304 :isa polar-question :statement mv2301)
   (:var mv2301 :isa there-exists :value mv2296 :predicate mv2291)
   (:var mv2296 :isa pathway :predication mv2302 :has-determiner "AN" :cellular-process mv2294
    :raw-text "pathway")
   (:var mv2302 :isa regulate :affected-process mv2296 :that-rel t :agent mv2289 :present "PRESENT"
    :raw-text "regulated")
   (:var mv2289 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2294 :isa apoptosis :raw-text "apoptotic") (:var mv2291 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv2306 :isa let :complement mv2320 :present "PRESENT")
   (:var mv2320 :isa know :agent mv2307 :statement mv2319 :present "PRESENT")
   (:var mv2307 :isa interlocutor :name "speaker")
   (:var mv2319 :isa wh-question :statement mv2318 :wh if)
   (:var mv2318 :isa there-exists :value mv2316 :predicate mv2312)
   (:var mv2316 :isa gene :predication mv2317 :quantifier mv2313 :cellular-process mv2314 :raw-text
    "genes")
   (:var mv2317 :isa regulate :object mv2316 :agent mv2305 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2305 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2313 :isa any :word "any") (:var mv2314 :isa apoptosis :raw-text "apoptotic")
   (:var mv2312 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv2322 :isa let :complement mv2328 :present "PRESENT")
   (:var mv2328 :isa know :agent mv2323 :statement mv2326 :present "PRESENT")
   (:var mv2323 :isa interlocutor :name "speaker")
   (:var mv2326 :isa gene :predication mv2327 :has-determiner "WHICH" :raw-text "genes")
   (:var mv2327 :isa regulate :object mv2326 :agent mv2321 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2321 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv2330 :isa list :theme mv2333 :present "PRESENT")
   (:var mv2333 :isa gene :predication mv2334 :quantifier mv2331 :has-determiner "THE" :raw-text
    "genes")
   (:var mv2334 :isa regulate :object mv2333 :agent mv2338 :past "PAST" :raw-text "regulated")
   (:var mv2338 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2329 mv2337))
   (:var mv2329 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2337 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2331 :isa all :word "all"))
  ("List genes regulated by elk1 and srf" (:var mv2341 :isa list :theme mv2342 :present "PRESENT")
   (:var mv2342 :isa gene :predication mv2343 :raw-text "genes")
   (:var mv2343 :isa regulate :object mv2342 :agent mv2347 :past "PAST" :raw-text "regulated")
   (:var mv2347 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2340 mv2346))
   (:var mv2340 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2346 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv2350 :isa list :theme mv2352 :present "PRESENT")
   (:var mv2352 :isa gene :predication mv2360 :quantifier mv2351 :raw-text "genes")
   (:var mv2360 :isa regulate :object mv2352 :that-rel t :agent mv2359 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2359 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2349 mv2358))
   (:var mv2349 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2358 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2351 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv2363 :isa list :theme mv2369 :present "PRESENT")
   (:var mv2369 :isa evidence :statement mv2368 :has-determiner "THE")
   (:var mv2368 :isa decrease :agent mv2367 :object mv2362 :present "PRESENT" :raw-text
    "decreases")
   (:var mv2367 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2362 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv2371 :isa name-something :patient mv2374 :present "PRESENT")
   (:var mv2374 :isa gene :predication mv2375 :raw-text "genes")
   (:var mv2375 :isa regulate :object mv2374 :agent mv2379 :past "PAST" :raw-text "regulated")
   (:var mv2379 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2370 mv2378))
   (:var mv2370 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2378 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv2396 :isa copular-predication :item mv2386 :value mv2391 :predicate mv2390)
   (:var mv2386 :isa gene :has-determiner "WHICH" :predication mv2387 :has-determiner "THE"
    :cellular-process mv2384 :raw-text "genes")
   (:var mv2387 :isa regulate :object mv2386 :agent mv2381 :past "PAST" :raw-text "regulated")
   (:var mv2381 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2384 :isa apoptosis :raw-text "apoptotic") (:var mv2391 :isa active :organ mv2394)
   (:var mv2394 :isa liver :has-determiner "THE") (:var mv2390 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv2414 :isa copular-predication :item mv2405 :value mv2409 :predicate mv2408)
   (:var mv2405 :isa gene :has-determiner "WHICH" :predication mv2406 :has-determiner "THE"
    :cellular-process mv2403 :raw-text "genes")
   (:var mv2406 :isa regulate :object mv2405 :agent mv2400 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2400 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2403 :isa apoptosis :raw-text "apoptotic") (:var mv2409 :isa active :organ mv2412)
   (:var mv2412 :isa liver :has-determiner "THE") (:var mv2408 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv2429 :isa copular-predication :item mv2420 :value mv2427 :predicate mv2426)
   (:var mv2420 :isa gene :has-determiner "WHICH" :predication mv2421 :has-determiner "THE"
    :raw-text "genes")
   (:var mv2421 :isa regulate :object mv2420 :agent mv2417 :organ mv2424 :present "PRESENT"
    :raw-text "regulates")
   (:var mv2417 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2424 :isa liver :has-determiner "THE")
   (:var mv2427 :isa apoptosis :raw-text "apoptotic") (:var mv2426 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv2443 :isa copular-predication :item mv2437 :value mv2441 :predicate mv2440)
   (:var mv2437 :isa gene :has-determiner "WHICH" :predication mv2438 :has-determiner "THE"
    :non-cellular-location mv2436 :raw-text "genes")
   (:var mv2438 :isa regulate :object mv2437 :agent mv2433 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2433 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2436 :isa liver) (:var mv2441 :isa apoptosis :raw-text "apoptotic")
   (:var mv2440 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv2456 :isa copular-predication :item mv2450 :value mv2454 :predicate mv2453)
   (:var mv2450 :isa gene :has-determiner "WHICH" :predication mv2451 :has-determiner "THE"
    :non-cellular-location mv2449 :raw-text "genes")
   (:var mv2451 :isa regulate :object mv2450 :agent mv2446 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2446 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2449 :isa liver) (:var mv2454 :isa apoptosis :raw-text "apoptotic")
   (:var mv2453 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv2461 :isa bio-find :object mv2462 :present "PRESENT" :adverb mv2459 :raw-text "find")
   (:var mv2462 :isa pathway :predication mv2463 :raw-text "pathways")
   (:var mv2463 :isa involve :theme mv2462 :object mv2464 :progressive "PROGRESSIVE")
   (:var mv2464 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2459 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv2466 :isa show :|statement-OR-theme| mv2469 :beneficiary mv2467 :present "PRESENT"
    :adverb mv2465)
   (:var mv2469 :isa pathway :predication mv2470 :modifier mv2468 :raw-text "pathways")
   (:var mv2470 :isa involve :theme mv2469 :object mv2471 :progressive "PROGRESSIVE")
   (:var mv2471 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2468 :isa database :name "KEGG" :uid "KEGG")
   (:var mv2467 :isa interlocutor :name "speaker") (:var mv2465 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv2473 :isa show :|statement-OR-theme| mv2475 :beneficiary mv2474 :present "PRESENT"
    :adverb mv2472)
   (:var mv2475 :isa pathway :predication mv2476 :raw-text "pathways")
   (:var mv2476 :isa involve :theme mv2475 :object mv2477 :progressive "PROGRESSIVE")
   (:var mv2477 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2474 :isa interlocutor :name "speaker") (:var mv2472 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv2479 :isa bio-activate :agent mv2478 :object mv2480 :present "PRESENT" :raw-text
    "activates")
   (:var mv2478 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2480 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv2481 :isa remove :object mv2488 :present "PRESENT" :raw-text "Remove")
   (:var mv2488 :isa fact :statement mv2486 :has-determiner "THE")
   (:var mv2486 :isa bio-activate :agent mv2485 :object mv2487 :present "PRESENT" :raw-text
    "activates")
   (:var mv2485 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2487 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv2491 :isa bio-activate :agent mv2490 :object mv2492 :present "PRESENT" :raw-text
    "activates")
   (:var mv2490 :isa protein-family :predication mv2489 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2489 :isa inactive)
   (:var mv2492 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv2493 :isa remove :object mv2501 :present "PRESENT" :raw-text "Remove")
   (:var mv2501 :isa fact :statement mv2499 :has-determiner "THE")
   (:var mv2499 :isa bio-activate :agent mv2498 :object mv2500 :present "PRESENT" :raw-text
    "activates")
   (:var mv2498 :isa protein-family :predication mv2497 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2497 :isa inactive)
   (:var mv2500 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv2503 :isa show :|statement-OR-theme| mv2504 :present "PRESENT")
   (:var mv2504 :isa pathway :non-cellular-location mv2502 :raw-text "pathways")
   (:var mv2502 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv2505 :isa show :|statement-OR-theme| mv2507 :beneficiary mv2506 :present "PRESENT")
   (:var mv2507 :isa pathway :predication mv2508 :raw-text "pathways")
   (:var mv2508 :isa involve :theme mv2507 :object mv2509 :progressive "PROGRESSIVE")
   (:var mv2509 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2506 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv2510 :isa show :|statement-OR-theme| mv2512 :beneficiary mv2511 :present "PRESENT")
   (:var mv2512 :isa pathway :pathwaycomponent mv2514 :raw-text "pathways")
   (:var mv2514 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-info-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway|
    mv2516 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2516 :isa pronoun/plural :word "them") (:var mv2511 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv2519 :isa show :|statement-OR-theme| mv2521 :beneficiary mv2520 :present "PRESENT")
   (:var mv2521 :isa pathway :pathwaycomponent mv2523 :raw-text "pathways")
   (:var mv2523 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2520 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv2526 :isa show :|statement-OR-theme| mv2533 :beneficiary mv2527 :present "PRESENT")
   (:var mv2533 :isa evidence :statement mv2532 :has-determiner "THE")
   (:var mv2532 :isa decrease :agent mv2531 :object mv2525 :present "PRESENT" :raw-text
    "decreases")
   (:var mv2531 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2525 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2527 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv2535 :isa show :|statement-OR-theme| mv2546 :beneficiary mv2536 :present "PRESENT")
   (:var mv2546 :isa evidence :statement mv2541 :has-determiner "THE")
   (:var mv2541 :isa decrease :agent mv2540 :|affected-process-OR-object| mv2543 :present "PRESENT"
    :raw-text "decreases")
   (:var mv2540 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2543 :isa bio-amount :measured-item mv2534 :has-determiner "THE" :raw-text "amount")
   (:var mv2534 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2536 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv2548 :isa show :|statement-OR-theme| mv2555 :beneficiary mv2549 :present "PRESENT")
   (:var mv2555 :isa evidence :statement mv2554 :has-determiner "THE")
   (:var mv2554 :isa regulate :agent mv2553 :object mv2547 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2553 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2547 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2549 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv2558 :isa show :|statement-OR-theme| mv2556 :present "PRESENT")
   (:var mv2556 :isa transcription-factor :predication mv2559 :raw-text "transcription factors")
   (:var mv2559 :isa share :object mv2556 :participant mv2563 :past "PAST" :raw-text "shared")
   (:var mv2563 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2557 mv2562))
   (:var mv2557 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2562 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv2566 :isa tell :beneficiary mv2567 :present "PRESENT")
   (:var mv2567 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv2573 :isa tell :theme mv2585 :theme mv2574 :present "PRESENT")
   (:var mv2585 :isa regulate :affected-process mv2578 :agent mv2572 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2578 :isa pathway :has-determiner "WHAT" :cellular-process mv2576 :raw-text "pathways")
   (:var mv2576 :isa apoptosis :raw-text "apoptotic")
   (:var mv2572 :isa protein :organ mv2584 :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2584 :isa liver :has-determiner "THE") (:var mv2574 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv2589 :isa tell :theme mv2592 :beneficiary mv2590 :present "PRESENT")
   (:var mv2592 :isa gene :predication mv2595 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2595 :isa regulate :object mv2592 :agent mv2596 :present "PRESENT" :raw-text "regulate")
   (:var mv2596 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2588 mv2594))
   (:var mv2588 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2594 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2590 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv2598 :isa tell :theme mv2608 :theme mv2599 :present "PRESENT")
   (:var mv2608 :isa regulate :affected-process mv2601 :agent mv2597 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2601 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv2597 :isa protein :organ mv2607 :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2607 :isa liver :has-determiner "THE") (:var mv2599 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv2614 :isa involve :theme mv2613 :object mv2616 :present "PRESENT")
   (:var mv2613 :isa pathway :has-determiner "WHAT" :modifier mv2612 :raw-text "pathways")
   (:var mv2612 :isa database :name "KEGG" :uid "KEGG")
   (:var mv2616 :isa signal :modifier mv2615 :raw-text "signaling")
   (:var mv2615 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv2624 :isa regulate :object mv2620 :agent mv2618 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2620 :isa phosphatase :has-determiner "WHAT" :enzyme mv2617 :raw-text "phosphatases")
   (:var mv2617 :isa protein-family :raw-text "MAP kinase" :name "mitogen activated protein kinase"
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
   (:var mv2618 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv2631 :isa be :subject mv2630 :predicate mv2632 :present "PRESENT")
   (:var mv2630 :isa gene :has-determiner "WHAT" :cellular-process mv2628 :raw-text "genes")
   (:var mv2628 :isa apoptosis :raw-text "apoptotic")
   (:var mv2632 :isa downstream-segment :pathwaycomponent mv2626 :raw-text "downstream")
   (:var mv2626 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv2642 :isa regulate :object mv2640 :agent mv2636 :organ mv2645 :present "PRESENT"
    :raw-text "regulate")
   (:var mv2640 :isa gene :has-determiner "WHAT" :cellular-process mv2638 :raw-text "genes")
   (:var mv2638 :isa apoptosis :raw-text "apoptotic")
   (:var mv2636 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2645 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv2653 :isa regulate :object mv2651 :agent mv2647 :present "PRESENT" :raw-text "regulate")
   (:var mv2651 :isa gene :has-determiner "WHAT" :cellular-process mv2649 :raw-text "genes")
   (:var mv2649 :isa apoptosis :raw-text "apoptotic")
   (:var mv2647 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv2659 :isa be :subject mv2658 :predicate mv2660 :present "PRESENT")
   (:var mv2658 :isa gene :has-determiner "WHAT" :cellular-process mv2656 :raw-text "genes")
   (:var mv2656 :isa apoptosis :raw-text "apoptotic")
   (:var mv2660 :isa upstream-segment :pathwaycomponent mv2658 :modifier mv2654 :raw-text
    "upstream")
   (:var mv2654 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv2668 :isa involve :theme mv2667 :object mv2663 :present "PRESENT")
   (:var mv2667 :isa pathway :has-determiner "WHAT" :cellular-process mv2665 :raw-text "pathways")
   (:var mv2665 :isa apoptosis :raw-text "apoptotic")
   (:var mv2663 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv2670 :isa be :subject mv2669 :predicate mv2673 :present "PRESENT")
   (:var mv2669 :isa what) (:var mv2673 :isa target-protein :agent mv2672 :raw-text "targets")
   (:var mv2672 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv2677 :isa be :subject mv2676 :predicate mv2679 :present "PRESENT")
   (:var mv2676 :isa what)
   (:var mv2679 :isa inhibitor :quantifier mv2678 :protein mv2675 :raw-text "inhibitors")
   (:var mv2678 :isa some :word "some")
   (:var mv2675 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv2681 :isa be :subject mv2680 :predicate mv2683 :present "PRESENT")
   (:var mv2680 :isa what)
   (:var mv2683 :isa drug :predication mv2685 :quantifier mv2682 :raw-text "drugs")
   (:var mv2685 :isa inhibit :agent mv2683 :that-rel t :object mv2686 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv2686 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv2682 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv2689 :isa be :subject mv2688 :predicate mv2691 :present "PRESENT")
   (:var mv2688 :isa what)
   (:var mv2691 :isa gene :context mv2687 :quantifier mv2690 :raw-text "genes")
   (:var mv2687 :isa signaling-pathway :has-determiner "THE" :modifier mv2694 :raw-text
    "signaling pathway")
   (:var mv2694 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2690 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv2698 :isa be :subject mv2697 :predicate mv2700 :present "PRESENT")
   (:var mv2697 :isa what)
   (:var mv2700 :isa protein :|context-OR-in-pathway| mv2696 :quantifier mv2699 :raw-text
    "proteins")
   (:var mv2696 :isa signaling-pathway :has-determiner "THE" :modifier mv2703 :raw-text
    "signaling pathway")
   (:var mv2703 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2699 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv2706 :isa be :subject mv2705 :predicate mv2708 :present "PRESENT")
   (:var mv2705 :isa what) (:var mv2708 :isa member :set mv2710 :has-determiner "THE")
   (:var mv2710 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv2716 :isa be :subject mv2715 :predicate mv2718 :present "PRESENT")
   (:var mv2715 :isa what)
   (:var mv2718 :isa micro-rna :predication mv2720 :has-determiner "THE" :raw-text "miRNAS")
   (:var mv2720 :isa regulate :agent mv2718 :that-rel t :object mv2724 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2724 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv2721 mv2722 mv2712 mv2713 mv2714))
   (:var mv2721 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv2722 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2712 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2713 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv2714 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv2726 :isa be :subject mv2725 :predicate mv2728 :present "PRESENT")
   (:var mv2725 :isa what)
   (:var mv2728 :isa regulator :theme mv2734 :has-determiner "THE" :raw-text "regulators")
   (:var mv2734 :isa bio-entity :organ mv2733 :name "MAPPK14")
   (:var mv2733 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv2739 :isa be :subject mv2738 :predicate mv2741 :present "PRESENT")
   (:var mv2738 :isa what)
   (:var mv2741 :isa regulator :theme mv2737 :has-determiner "THE" :raw-text "regulators")
   (:var mv2737 :isa protein :organ mv2744 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv2744 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv2749 :isa be :subject mv2748 :predicate mv2751 :present "PRESENT")
   (:var mv2748 :isa what)
   (:var mv2751 :isa regulator :theme mv2747 :has-determiner "THE" :raw-text "regulators")
   (:var mv2747 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv2756 :isa be :subject mv2755 :predicate mv2758 :present "PRESENT")
   (:var mv2755 :isa what)
   (:var mv2758 :isa regulator :theme mv2754 :has-determiner "THE" :raw-text "regulators")
   (:var mv2754 :isa protein :organ mv2761 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv2761 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv2765 :isa be :subject mv2764 :predicate mv2767 :present "PRESENT")
   (:var mv2764 :isa what)
   (:var mv2767 :isa regulator :theme mv2773 :has-determiner "THE" :raw-text "regulators")
   (:var mv2773 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the regulators of mapk14"
   (:var mv2779 :isa be :subject mv2778 :predicate mv2781 :present "PRESENT")
   (:var mv2778 :isa what)
   (:var mv2781 :isa regulator :theme mv2777 :has-determiner "THE" :raw-text "regulators")
   (:var mv2777 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv2798 :isa copular-predication :item mv2787 :value mv2785 :predicate mv2788)
   (:var mv2787 :isa what) (:var mv2785 :isa in-common :theme mv2795)
   (:var mv2795 :isa gene :has-determiner "THE" :expresses mv2796 :raw-text "genes")
   (:var mv2796 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv2792 mv2793 mv2786))
   (:var mv2792 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2793 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv2786 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2788 :isa be :predicate mv2784 :present "PRESENT")
   (:var mv2784 :isa transcription-factor :has-determiner "THE" :raw-text "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv2801 :isa be :subject mv2800 :predicate mv2799 :present "PRESENT")
   (:var mv2800 :isa what)
   (:var mv2799 :isa transcription-factor :predication mv2804 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv2804 :isa regulate :agent mv2799 :that-rel t :object mv2810 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2810 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv2809 mv2808))
   (:var mv2809 :isa bio-entity :name "EELK1")
   (:var mv2808 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv2815 :isa be :subject mv2814 :predicate mv2811 :present "PRESENT")
   (:var mv2814 :isa what)
   (:var mv2811 :isa transcription-factor :predication mv2818 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv2818 :isa regulate :agent mv2811 :that-rel t :object mv2825 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2825 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv2819 mv2820 mv2824 mv2812 mv2813))
   (:var mv2819 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv2820 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2824 :isa bio-entity :name "STAAT3")
   (:var mv2812 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv2813 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv2831 :isa be :subject mv2830 :predicate mv2826 :present "PRESENT")
   (:var mv2830 :isa what)
   (:var mv2826 :isa transcription-factor :predication mv2834 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv2834 :isa regulate :agent mv2826 :that-rel t :object mv2838 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2838 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv2835 mv2836 mv2827 mv2828 mv2829))
   (:var mv2835 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv2836 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2827 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2828 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv2829 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv2843 :isa be :subject mv2842 :predicate mv2847 :present "PRESENT")
   (:var mv2842 :isa what)
   (:var mv2847 :isa regulator :theme mv2851 :has-determiner "THE" :context mv2845 :raw-text
    "regulators")
   (:var mv2851 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv2839 mv2840 mv2849 mv2841))
   (:var mv2839 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv2840 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv2849 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv2841 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv2845 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv2860 :isa regulate :object mv2855 :agent mv2859 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2855 :isa gene :has-determiner "WHAT" :cellular-process mv2853 :raw-text "genes")
   (:var mv2853 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv2859 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv2865 :isa regulate :object mv2862 :agent mv2864 :present "PRESENT" :raw-text "regulate")
   (:var mv2862 :isa what)
   (:var mv2864 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv2869 :isa regulate :object mv2866 :|agent-OR-cause| mv2868 :organ mv2871 :present
    "PRESENT" :raw-text "regulate")
   (:var mv2866 :isa what) (:var mv2868 :isa pronoun/inanimate :word "it")
   (:var mv2871 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv2877 :isa target :object mv2874 :agent mv2873 :present "PRESENT" :raw-text "target")
   (:var mv2874 :isa what)
   (:var mv2873 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv2881 :isa regulate :object mv2879 :agent mv2878 :present "PRESENT" :raw-text "regulate")
   (:var mv2879 :isa what)
   (:var mv2878 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv2885 :isa regulate :object mv2883 :agent mv2882 :present "PRESENT" :raw-text "regulate")
   (:var mv2883 :isa what)
   (:var mv2882 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv2889 :isa regulate :object mv2887 :agent mv2886 :present "PRESENT" :raw-text "regulate")
   (:var mv2887 :isa what)
   (:var mv2886 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv2893 :isa regulate :object mv2890 :agent mv2892 :present "PRESENT" :raw-text "regulate")
   (:var mv2890 :isa what)
   (:var mv2892 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv2896 :isa downregulate :|agent-OR-cause| mv2895 :object mv2894 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv2895 :isa what)
   (:var mv2894 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv2910 :isa bio-use :patient mv2899 :modal mv2900 :agent mv2901 :theme mv2909 :present
    "PRESENT" :raw-text "use")
   (:var mv2899 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv2900 :isa could)
   (:var mv2901 :isa interlocutor :name "speaker")
   (:var mv2909 :isa target :object mv2897 :raw-text "target")
   (:var mv2897 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv2922 :isa bio-use :object mv2913 :modal mv2914 :agent mv2915 :disease mv2911 :present
    "PRESENT" :raw-text "use")
   (:var mv2913 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv2914 :isa should)
   (:var mv2915 :isa interlocutor :name "speaker")
   (:var mv2911 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv2926 :isa be :subject mv2925 :predicate mv2927 :present "PRESENT")
   (:var mv2925 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2927 :isa inhibitor :protein mv2923 :raw-text "inhibitors")
   (:var mv2923 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv2933 :isa inhibit :agent mv2932 :object mv2930 :present "PRESENT" :raw-text "inhibit")
   (:var mv2932 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2930 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv2936 :isa regulate :agent mv2935 :object mv2937 :present "PRESENT" :raw-text "regulate")
   (:var mv2935 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2937 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv2941 :isa target :agent mv2939 :object mv2942 :present "PRESENT" :raw-text "target")
   (:var mv2939 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2942 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv2946 :isa be :subject mv2945 :predicate mv2947 :present "PRESENT")
   (:var mv2945 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2947 :isa downstream-segment :pathwaycomponent mv2943 :raw-text "downstream")
   (:var mv2943 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv2961 :isa copular-predication-of-pp :item mv2953 :value mv2960 :prep "IN" :predicate
    mv2954)
   (:var mv2953 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2960 :isa gene :context mv2951 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2951 :isa signaling-pathway :has-determiner "THE" :modifier mv2957 :raw-text
    "signaling pathway")
   (:var mv2957 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2954 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv2973 :isa copular-predication-of-pp :item mv2965 :value mv2972 :prep "IN" :predicate
    mv2966)
   (:var mv2965 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2972 :isa gene :context mv2963 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2963 :isa signaling-pathway :has-determiner "THE" :modifier mv2969 :raw-text
    "signaling pathways")
   (:var mv2969 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2966 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv2985 :isa copular-predication-of-pp :item mv2977 :value mv2984 :prep "IN" :predicate
    mv2978)
   (:var mv2977 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2984 :isa gene :context mv2981 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2981 :isa pathway :has-determiner "THE" :non-cellular-location mv2975 :raw-text
    "pathway")
   (:var mv2975 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv2978 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv2997 :isa copular-predication-of-pp :item mv2989 :value mv2996 :prep "IN" :predicate
    mv2990)
   (:var mv2989 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2996 :isa gene :context mv2987 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2987 :isa signaling-pathway :has-determiner "THE" :modifier mv2993 :raw-text
    "signaling pathway")
   (:var mv2993 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv2990 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv3008 :isa involve :object mv3002 :|context-OR-theme| mv3007 :present "PRESENT")
   (:var mv3002 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3007 :isa pathway :has-determiner "THE" :modifier mv3000 :raw-text "pathway")
   (:var mv3000 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv3018 :isa involve :object mv3011 :|context-OR-theme| mv3017 :present "PRESENT")
   (:var mv3011 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3017 :isa pathway :has-determiner "THE" :modifier mv3016 :raw-text "pathway")
   (:var mv3016 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv3028 :isa involve :object mv3022 :|context-OR-theme| mv3027 :present "PRESENT")
   (:var mv3022 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3027 :isa pathway :has-determiner "THE" :modifier mv3020 :raw-text "pathway")
   (:var mv3020 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv3038 :isa involve :object mv3032 :|context-OR-theme| mv3037 :present "PRESENT")
   (:var mv3032 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3037 :isa pathway :has-determiner "THE" :non-cellular-location mv3030 :raw-text
    "pathway")
   (:var mv3030 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv3052 :isa regulate :object mv3044 :agent mv3051 :present "PRESENT" :superlative mv3046
    :adverb mv3047 :raw-text "regulated")
   (:var mv3044 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3051 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv3040 mv3041 mv3042))
   (:var mv3040 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv3041 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv3042 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv3046 :isa superlative-quantifier :name "most")
   (:var mv3047 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv3067 :isa regulate :object mv3059 :agent mv3066 :present "PRESENT" :superlative mv3061
    :adverb mv3062 :raw-text "regulated")
   (:var mv3059 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3066 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :type
    micro-rna :number 4 :items (mv3054 mv3055 mv3056 mv3057))
   (:var mv3054 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv3055 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv3056 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv3057 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid "MIMAT0000075")
   (:var mv3061 :isa superlative-quantifier :name "most")
   (:var mv3062 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv3082 :isa regulate :object mv3074 :agent mv3081 :present "PRESENT" :superlative mv3076
    :adverb mv3077 :raw-text "regulated")
   (:var mv3074 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3081 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv3069 mv3070 mv3071 mv3072))
   (:var mv3069 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv3070 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv3071 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv3072 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid "MIMAT0000075")
   (:var mv3076 :isa superlative-quantifier :name "most")
   (:var mv3077 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv3090 :isa regulate :object mv3085 :agent mv3089 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3085 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3089 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv3101 :isa regulate :object mv3094 :agent mv3100 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3094 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3100 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv3092 mv3099))
   (:var mv3092 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv3099 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv3112 :isa regulate :object mv3106 :agent mv3111 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3106 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3111 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv3103 mv3104))
   (:var mv3103 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv3104 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv3122 :isa regulate :object mv3115 :agent mv3121 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3115 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3121 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv3130 :isa regulate :object mv3125 :agent mv3129 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3125 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3129 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv3141 :isa regulate :object mv3134 :agent mv3140 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3134 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3140 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv3132 mv3139))
   (:var mv3132 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3139 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv3149 :isa target :object mv3145 :cause mv3143 :present "PRESENT" :raw-text "targeted")
   (:var mv3145 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3143 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv3163 :isa copular-predication-of-pp :item mv3153 :value mv3162 :prep "IN" :predicate
    mv3154)
   (:var mv3153 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3162 :isa gene :context mv3151 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3151 :isa signaling-pathway :has-determiner "THE" :modifier mv3159 :raw-text
    "signaling pathway")
   (:var mv3159 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv3154 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv3173 :isa bio-use :object mv3167 :context mv3165 :present "PRESENT" :raw-text "used")
   (:var mv3167 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3165 :isa signaling-pathway :has-determiner "THE" :modifier mv3172 :raw-text
    "signaling pathway")
   (:var mv3172 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv3180 :isa target :object mv3177 :cause mv3175 :present "PRESENT" :raw-text "target")
   (:var mv3177 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3175 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv3186 :isa target :object mv3183 :agent mv3181 :present "PRESENT" :raw-text "target")
   (:var mv3183 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3181 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv3192 :isa target :object mv3189 :agent mv3187 :present "PRESENT" :raw-text "target")
   (:var mv3189 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3187 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv3197 :isa upregulate :object mv3195 :agent mv3193 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv3195 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3193 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv3202 :isa regulate :object mv3200 :agent mv3198 :cell-type mv3205 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3200 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3198 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3205 :isa cell-type :non-cellular-location mv3204) (:var mv3204 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv3211 :isa regulate :object mv3209 :agent mv3207 :organ mv3213 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3209 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3207 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3213 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv3219 :isa regulate :object mv3217 :agent mv3215 :organ mv3221 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3217 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3215 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3221 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv3227 :isa regulate :object mv3225 :agent mv3223 :present "PRESENT" :raw-text "regulate")
   (:var mv3225 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3223 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv3235 :isa regulate :object mv3230 :agent mv3228 :present "PRESENT" :raw-text "regulate")
   (:var mv3230 :isa gene :organ mv3233 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3233 :isa liver :has-determiner "THE")
   (:var mv3228 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv3240 :isa be :subject mv3239 :predicate mv3241 :present "PRESENT")
   (:var mv3239 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3241 :isa upstream-segment :modifier mv3237 :raw-text "upstream")
   (:var mv3237 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream of?"
   (:var mv3247 :isa be :subject mv3246 :predicate mv3248 :present "PRESENT")
   (:var mv3246 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3248 :isa upstream-segment :pathwaycomponent mv3246 :modifier mv3244 :raw-text
    "upstream")
   (:var mv3244 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv3256 :isa be :subject mv3252 :predicate mv3257 :present "PRESENT")
   (:var mv3252 :isa gene :predication mv3253 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3253 :isa regulate :object mv3252 :agent mv3255 :past "PAST" :raw-text "regulated")
   (:var mv3255 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv3257 :isa kinase :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv3264 :isa be :subject mv3261 :predicate mv3265 :present "PRESENT")
   (:var mv3261 :isa gene :predication mv3262 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3262 :isa regulate :object mv3261 :agent mv3259 :past "PAST" :raw-text "regulated")
   (:var mv3259 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3265 :isa kinase :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv3271 :isa involve :theme mv3270 :object mv3274 :present "PRESENT")
   (:var mv3270 :isa pathway :has-determiner "WHAT" :modifier mv3269 :raw-text "pathways")
   (:var mv3269 :isa immune :name "immune")
   (:var mv3274 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv3272 mv3267))
   (:var mv3272 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3267 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv3278 :isa involve :theme mv3277 :object mv3279 :present "PRESENT")
   (:var mv3277 :isa pathway :has-determiner "WHAT" :modifier mv3276 :raw-text "pathways")
   (:var mv3276 :isa immune :name "immune")
   (:var mv3279 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv3284 :isa involve :theme mv3283 :object mv3287 :present "PRESENT")
   (:var mv3283 :isa pathway :has-determiner "WHAT" :modifier mv3282 :raw-text "pathways")
   (:var mv3282 :isa immune :name "immune")
   (:var mv3287 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv3285 mv3280))
   (:var mv3285 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3280 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv3291 :isa involve :theme mv3290 :object mv3301 :present "PRESENT")
   (:var mv3290 :isa pathway :has-determiner "WHAT" :modifier mv3289 :raw-text "pathways")
   (:var mv3289 :isa immune :name "immune")
   (:var mv3301 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv3299 mv3300))
   (:var mv3299 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv3300 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv3303 :isa inhibit :|agent-OR-cause| mv3302 :object mv3304 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv3302 :isa what)
   (:var mv3304 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv3307 :isa be :subject mv3306 :predicate mv3305 :present "PRESENT")
   (:var mv3306 :isa what)
   (:var mv3305 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv3309 :isa be :subject mv3308 :predicate mv3310 :present "PRESENT")
   (:var mv3308 :isa what)
   (:var mv3310 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv3313 :isa be :subject mv3312 :predicate mv3314 :present "PRESENT")
   (:var mv3312 :isa what)
   (:var mv3314 :isa downstream-segment :pathwaycomponent mv3311 :raw-text "downstream")
   (:var mv3311 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv3319 :isa be :subject mv3318 :predicate mv3320 :present "PRESENT")
   (:var mv3318 :isa what)
   (:var mv3320 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv3322 :isa be :subject mv3321 :predicate mv3323 :present "PRESENT")
   (:var mv3321 :isa what) (:var mv3323 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv3329 :isa regulate :|affected-process-OR-object| mv3325 :agent mv3324 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3325 :isa what)
   (:var mv3324 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv3333 :isa be :subject mv3332 :predicate mv3339 :present "PRESENT")
   (:var mv3332 :isa what) (:var mv3339 :isa evidence :statement mv3338 :has-determiner "THE")
   (:var mv3338 :isa decrease :agent mv3337 :object mv3331 :present "PRESENT" :raw-text
    "decreases")
   (:var mv3337 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3331 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv3342 :isa be :subject mv3341 :predicate mv3352 :present "PRESENT")
   (:var mv3341 :isa what) (:var mv3352 :isa evidence :statement mv3347 :has-determiner "THE")
   (:var mv3347 :isa decrease :agent mv3346 :|affected-process-OR-object| mv3349 :present "PRESENT"
    :raw-text "decreases")
   (:var mv3346 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3349 :isa bio-amount :measured-item mv3340 :has-determiner "THE" :raw-text "amount")
   (:var mv3340 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv3354 :isa be :subject mv3353 :predicate mv3356 :present "PRESENT")
   (:var mv3353 :isa what)
   (:var mv3356 :isa target-protein :agent mv3359 :has-determiner "THE" :raw-text "target")
   (:var mv3359 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv3365 :isa regulate :object mv3363 :agent mv3361 :present "PRESENT" :raw-text "regulate")
   (:var mv3363 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv3361 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv3373 :isa regulate :agent mv3370 :object mv3377 :present "PRESENT" :adverb mv3371
    :adverb mv3372 :raw-text "regulate")
   (:var mv3370 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv3377 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv3374 mv3375 mv3366 mv3367 mv3368))
   (:var mv3374 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv3375 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3366 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3367 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv3368 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv3371 :isa superlative-quantifier :name "most")
   (:var mv3372 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv3383 :isa regulate :agent mv3382 :object mv3387 :present "PRESENT" :raw-text "regulate")
   (:var mv3382 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv3387 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv3384 mv3385 mv3378 mv3379 mv3380))
   (:var mv3384 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv3385 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3378 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3379 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv3380 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv3394 :isa regulate :object mv3390 :agent mv3388 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3390 :isa micro-rna :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv3388 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv3399 :isa regulate :agent mv3398 :object mv3400 :present "PRESENT" :raw-text "regulate")
   (:var mv3398 :isa micro-rna :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv3400 :isa gene :context mv3396 :raw-text "genes")
   (:var mv3396 :isa signaling-pathway :has-determiner "THE" :modifier mv3403 :raw-text
    "signaling pathways")
   (:var mv3403 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv3408 :isa bio-entity :has-determiner "WHAT" :name "pahtways"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv3419 :isa copular-predication :item mv3411 :value mv3413 :predicate mv3412)
   (:var mv3411 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3413 :isa common :theme mv3417)
   (:var mv3417 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv3409 mv3416))
   (:var mv3409 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3416 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3412 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv3422 :isa involve :theme mv3421 :object mv3423 :present "PRESENT")
   (:var mv3421 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3423 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv3427 :isa involve :theme mv3426 :object mv3430 :present "PRESENT")
   (:var mv3426 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3430 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv3428 mv3424))
   (:var mv3428 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3424 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv3434 :isa involve :theme mv3433 :object mv3431 :present "PRESENT")
   (:var mv3433 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3431 :isa transcription-factor :has-determiner "THE" :modifier mv3436 :raw-text
    "transcription factor")
   (:var mv3436 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv3446 :isa collection :raw-text "What pathways utilize srf and is srf" :type utilize
    :number 2 :items (mv3439 mv3442))
   (:var mv3439 :isa utilize :participant mv3438 :object mv3440 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3438 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3440 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3442 :isa be :subject mv3438 :predicate mv3443 :present "PRESENT")
   (:var mv3443 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What proteins are in the MAPK family?"
   (:var mv3457 :isa copular-predication-of-pp :item mv3448 :value mv3455 :prep mv3450 :predicate
    mv3449)
   (:var mv3448 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3455 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
   (:var mv3450 :isa in :word "in") (:var mv3449 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv3464 :isa target :object mv3460 :cause mv3458 :present "PRESENT" :raw-text "targeted")
   (:var mv3460 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3458 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv3471 :isa target :object mv3468 :agent mv3466 :present "PRESENT" :raw-text "target")
   (:var mv3468 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3466 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv3477 :isa target :object mv3474 :cause mv3472 :present "PRESENT" :raw-text "target")
   (:var mv3474 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3472 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv3483 :isa target :object mv3479 :agent mv3481 :present "PRESENT" :raw-text "target")
   (:var mv3479 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3481 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv3488 :isa lead :agent mv3486 :theme mv3491 :modal mv3487 :raw-text "lead")
   (:var mv3486 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3491 :isa development :disease mv3484 :has-determiner "THE" :raw-text "development")
   (:var mv3484 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv3487 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv3499 :isa lead :agent mv3497 :theme mv3502 :modal mv3498 :raw-text "lead")
   (:var mv3497 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3502 :isa development :disease mv3495 :has-determiner "THE" :raw-text "development")
   (:var mv3495 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv3498 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv3509 :isa involve :theme mv3508 :object mv3511 :present "PRESENT")
   (:var mv3508 :isa pathway :has-determiner "WHAT" :modifier mv3507 :raw-text "pathways")
   (:var mv3507 :isa database :name "Reactome" :uid "Reactome")
   (:var mv3511 :isa signal :modifier mv3510 :raw-text "signaling")
   (:var mv3510 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv3513 :isa regulate :|agent-OR-cause| mv3512 :object mv3514 :present "PRESENT" :raw-text
    "regulates")
   (:var mv3512 :isa what)
   (:var mv3514 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv3517 :isa regulate :|agent-OR-cause| mv3516 :object mv3515 :present "PRESENT" :raw-text
    "regulates")
   (:var mv3516 :isa what)
   (:var mv3515 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv3520 :isa regulate :|agent-OR-cause| mv3519 :object mv3518 :present "PRESENT" :raw-text
    "regulates")
   (:var mv3519 :isa what)
   (:var mv3518 :isa protein :organ mv3522 :raw-text "smurf2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv3522 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv3533 :isa share :object mv3524 :participant mv3532 :present "PRESENT" :raw-text
    "shared")
   (:var mv3524 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv3532 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv3530 mv3525))
   (:var mv3530 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv3525 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv3544 :isa share :object mv3535 :participant mv3543 :present "PRESENT" :raw-text
    "shared")
   (:var mv3535 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv3543 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv3536 mv3542))
   (:var mv3536 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3542 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv3556 :isa share :object mv3546 :participant mv3555 :present "PRESENT" :raw-text
    "shared")
   (:var mv3546 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv3555 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv3547 mv3548 mv3554))
   (:var mv3547 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3548 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3554 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?" (:var mv3560 :isa tissue :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv3567 :isa bio-produce :agent mv3564 :object mv3565 :present "PRESENT" :raw-text
    "produces")
   (:var mv3564 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv3565 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv3571 :isa transcribe :agent mv3568 :object mv3569 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv3568 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv3569 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3587 :isa copular-predication :item mv3572 :value mv3579 :predicate mv3578)
   (:var mv3572 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3579 :isa common :theme mv3584)
   (:var mv3584 :isa gene :has-determiner "THE" :expresses mv3585 :raw-text "genes")
   (:var mv3585 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3573 mv3574 mv3582 mv3575 mv3576))
   (:var mv3573 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3574 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3582 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3575 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3576 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3578 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv3601 :isa copular-predication :item mv3588 :value mv3594 :predicate mv3593)
   (:var mv3588 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3594 :isa common :theme mv3598)
   (:var mv3598 :isa gene :has-determiner "THE" :expresses mv3599 :raw-text "genes")
   (:var mv3599 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv3589 mv3590 mv3591))
   (:var mv3589 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3590 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3591 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3593 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv3606 :isa regulate :object mv3604 :agent mv3602 :present "PRESENT" :raw-text "regulate")
   (:var mv3604 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3602 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv3615 :isa copular-predication :item mv3607 :value mv3610 :predicate mv3609)
   (:var mv3607 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3610 :isa common :theme mv3613)
   (:var mv3613 :isa gene :has-determiner "THESE" :raw-text "genes")
   (:var mv3609 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3631 :isa copular-predication :item mv3616 :value mv3617 :predicate mv3623)
   (:var mv3616 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3617 :isa in-common :theme mv3628)
   (:var mv3628 :isa gene :has-determiner "THE" :expresses mv3629 :raw-text "genes")
   (:var mv3629 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3618 mv3619 mv3626 mv3620 mv3621))
   (:var mv3618 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3619 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3626 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3620 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3621 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3623 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv3645 :isa copular-predication :item mv3632 :value mv3633 :predicate mv3638)
   (:var mv3632 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3633 :isa in-common :theme mv3642)
   (:var mv3642 :isa gene :has-determiner "THE" :expresses mv3643 :raw-text "genes")
   (:var mv3643 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv3634 mv3635 mv3636))
   (:var mv3634 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3635 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3636 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3638 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv3649 :isa be :subject mv3646 :predicate mv3650 :present "PRESENT")
   (:var mv3646 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3650 :isa regulator :theme mv3647 :raw-text "regulators")
   (:var mv3647 :isa protein :organ mv3653 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv3653 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv3659 :isa be :subject mv3656 :predicate mv3660 :present "PRESENT")
   (:var mv3656 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3660 :isa regulator :theme mv3657 :raw-text "regulators")
   (:var mv3657 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv3675 :isa share :object mv3663 :participant mv3673 :present "PRESENT" :raw-text
    "shared")
   (:var mv3663 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3673 :isa gene :has-determiner "THE" :expresses mv3674 :raw-text "genes")
   (:var mv3674 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv3670 mv3671 mv3664))
   (:var mv3670 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3671 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv3664 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv3680 :isa regulate :agent mv3677 :object mv3678 :present "PRESENT" :raw-text "regulate")
   (:var mv3677 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3678 :isa protein :organ mv3682 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv3682 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv3687 :isa regulate :agent mv3684 :object mv3685 :present "PRESENT" :raw-text "regulate")
   (:var mv3684 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3685 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv3690 :isa regulate :agent mv3688 :object mv3691 :present "PRESENT" :raw-text "regulate")
   (:var mv3688 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3691 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv3694 :isa regulate :agent mv3692 :theme mv3700 :object mv3695 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3692 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3700 :isa bio-entity :has-determiner "THE" :modifier mv3698 :cellular-process mv3699
    :name "pathwya")
   (:var mv3698 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv3699 :isa signal :raw-text "signaling") (:var mv3695 :isa gene :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv3703 :isa protein :has-determiner "WHAT" :predication mv3705 :raw-text "frizzled8" :uid
    "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv3705 :isa regulate :object mv3703 :agent mv3702 :raw-text "regulated")
   (:var mv3702 :isa transcription-factor :raw-text "transcription factors"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv3709 :isa transcribe :agent mv3706 :object mv3707 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv3706 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3707 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv3712 :isa upregulate :|agent-OR-cause| mv3711 :object mv3710 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv3711 :isa what)
   (:var mv3710 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv3718 :isa gene-transcript-express :location mv3714 :object mv3713 :past "PAST" :raw-text
    "expressed")
   (:var mv3714 :isa where)
   (:var mv3713 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv3722 :isa involve :theme mv3721 :object mv3723 :present "PRESENT")
   (:var mv3721 :isa pathway :has-determiner "WHICH" :modifier mv3720 :raw-text "pathways")
   (:var mv3720 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3723 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv3728 :isa bio-use :agent mv3726 :object mv3729 :present "PRESENT" :raw-text "use")
   (:var mv3726 :isa pathway :has-determiner "WHICH" :modifier mv3725 :raw-text "pathways")
   (:var mv3725 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3729 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv3733 :isa regulate :agent mv3730 :object mv3731 :present "PRESENT" :raw-text "regulate")
   (:var mv3730 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3731 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv3737 :isa regulate :|agent-OR-cause| mv3734 :object mv3738 :present "PRESENT" :adverb
    mv3735 :raw-text "regulate")
   (:var mv3734 :isa which)
   (:var mv3738 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3735 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv3747 :isa regulate :object mv3743 :agent mv3739 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3743 :isa gene :has-determiner "WHICH" :cellular-process mv3741 :raw-text "genes")
   (:var mv3741 :isa apoptosis :raw-text "apoptotic")
   (:var mv3739 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv3754 :isa be :subject mv3753 :predicate mv3755 :present "PRESENT")
   (:var mv3753 :isa gene :has-determiner "WHICH" :cellular-process mv3751 :raw-text "genes")
   (:var mv3751 :isa apoptosis :raw-text "apoptotic")
   (:var mv3755 :isa upstream-segment :pathwaycomponent mv3753 :modifier mv3749 :raw-text
    "upstream")
   (:var mv3749 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv3764 :isa target :object mv3760 :agent mv3758 :present "PRESENT" :raw-text "targeted")
   (:var mv3760 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv3758 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv3771 :isa be :subject mv3768 :predicate mv3772 :present "PRESENT")
   (:var mv3768 :isa gene :predication mv3769 :has-determiner "WHICH" :raw-text "genes")
   (:var mv3769 :isa regulate :object mv3768 :agent mv3766 :past "PAST" :raw-text "regulated")
   (:var mv3766 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3772 :isa kinase :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3788 :isa share :object mv3780 :participant mv3786 :present "PRESENT" :raw-text
    "shared")
   (:var mv3780 :isa pathway :has-determiner "WHICH" :modifier mv3779 :raw-text "pathways")
   (:var mv3779 :isa immune :name "immune")
   (:var mv3786 :isa gene :expresses mv3787 :raw-text "genes")
   (:var mv3787 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3774 mv3775 mv3784 mv3776 mv3777))
   (:var mv3774 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3775 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3784 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3776 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3777 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv3803 :isa share :object mv3795 :participant mv3801 :present "PRESENT" :raw-text
    "shared")
   (:var mv3795 :isa pathway :has-determiner "WHICH" :modifier mv3794 :raw-text "pathways")
   (:var mv3794 :isa immune :name "immune")
   (:var mv3801 :isa gene :has-determiner "THE" :expresses mv3802 :raw-text "genes")
   (:var mv3802 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv3790 mv3791 mv3792))
   (:var mv3790 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3791 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3792 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv3809 :isa utilize :participant mv3808 :object mv3810 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3808 :isa pathway :has-determiner "WHICH" :modifier mv3807 :raw-text "pathways")
   (:var mv3807 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3810 :isa gene :predication mv3811 :raw-text "genes")
   (:var mv3811 :isa regulate :object mv3810 :agent mv3805 :past "PAST" :raw-text "regulated")
   (:var mv3805 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv3817 :isa utilize :participant mv3816 :object mv3818 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3816 :isa pathway :has-determiner "WHICH" :modifier mv3815 :raw-text "pathways")
   (:var mv3815 :isa database :name "Reactome" :uid "Reactome")
   (:var mv3818 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv3822 :isa utilize :participant mv3821 :object mv3823 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3821 :isa pathway :has-determiner "WHICH" :modifier mv3820 :raw-text "pathways")
   (:var mv3820 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3823 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv3831 :isa regulate :|affected-process-OR-object| mv3827 :agent mv3824 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3827 :isa pronoun/plural :quantifier mv3825 :word "them") (:var mv3825 :isa which)
   (:var mv3824 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv3841 :isa gene-transcript-express :object mv3836 :organ mv3840 :present "PRESENT"
    :raw-text "expressed")
   (:var mv3836 :isa these :quantifier mv3834 :word "these") (:var mv3834 :isa which)
   (:var mv3840 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv3852 :isa copular-predication-of-pp :item mv3846 :value mv3850 :prep mv3848 :predicate
    mv3847)
   (:var mv3846 :isa these :quantifier mv3844 :word "these") (:var mv3844 :isa which)
   (:var mv3850 :isa pathway :modifier mv3849 :raw-text "pathways")
   (:var mv3849 :isa immune :name "immune") (:var mv3848 :isa in :word "in")
   (:var mv3847 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv3858 :isa phosphorylate :amino-acid mv3855 :agent mv3857 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv3855 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3857 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv3862 :isa be :subject mv3861 :predicate mv3863 :present "PRESENT")
   (:var mv3861 :isa these :quantifier mv3859 :word "these") (:var mv3859 :isa which)
   (:var mv3863 :isa kinase :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv3872 :isa regulate :|affected-process-OR-object| mv3868 :agent mv3865 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3868 :isa those :quantifier mv3866 :word "those") (:var mv3866 :isa which)
   (:var mv3865 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv3882 :isa regulate :|affected-process-OR-object| mv3878 :agent mv3875 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3878 :isa these :quantifier mv3876 :word "these") (:var mv3876 :isa which)
   (:var mv3875 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv3892 :isa regulate :|affected-process-OR-object| mv3887 :agent mv3891 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3887 :isa these :quantifier mv3885 :word "these") (:var mv3885 :isa which)
   (:var mv3891 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3908 :isa share :object mv3900 :participant mv3906 :present "PRESENT" :raw-text
    "shared")
   (:var mv3900 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3906 :isa gene :expresses mv3907 :raw-text "genes")
   (:var mv3907 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3895 mv3896 mv3904 mv3897 mv3898))
   (:var mv3895 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3896 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3904 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3897 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3898 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv3922 :isa share :object mv3913 :participant mv3921 :present "PRESENT" :raw-text
    "shared")
   (:var mv3913 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3921 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv3910 mv3911 mv3920))
   (:var mv3910 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3911 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3920 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3938 :isa share :object mv3929 :participant mv3936 :present "PRESENT" :raw-text
    "shared")
   (:var mv3929 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3936 :isa gene :has-determiner "THE" :expresses mv3937 :raw-text "genes")
   (:var mv3937 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3924 mv3925 mv3934 mv3926 mv3927))
   (:var mv3924 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3925 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3934 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3926 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3927 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv3944 :isa involve :theme mv3943 :object mv3946 :present "PRESENT")
   (:var mv3943 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3946 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv3940 mv3941))
   (:var mv3940 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv3941 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv3949 :isa involve :theme mv3948 :object mv3950 :present "PRESENT")
   (:var mv3948 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3950 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv3954 :isa bio-use :agent mv3952 :object mv3955 :present "PRESENT" :raw-text "use")
   (:var mv3952 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3955 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv3959 :isa bio-use :agent mv3957 :object mv3960 :present "PRESENT" :raw-text "use")
   (:var mv3957 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3960 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv3963 :isa utilize :participant mv3962 :object mv3964 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3962 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3964 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv3967 :isa utilize :participant mv3966 :object mv3969 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3966 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3969 :isa gene :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv3976 :isa target :object mv3972 :agent mv3970 :present "PRESENT" :raw-text "targeted")
   (:var mv3972 :isa protein :has-determiner "WHICH" :raw-text "proteins")
   (:var mv3970 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv3981 :isa utilize :participant mv3980 :object mv3982 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3980 :isa pathway :has-determiner "WHICH" :modifier mv3979 :raw-text "pathways")
   (:var mv3979 :isa database :name "Reactome" :uid "Reactome")
   (:var mv3982 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv3993 :isa copular-predication-of-pp :item mv3983 :value mv3992 :prep "IN" :predicate
    mv3986)
   (:var mv3983 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv3992 :isa transcription-factor :|context-OR-in-pathway| mv3984 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv3984 :isa signaling-pathway :has-determiner "THE" :modifier mv3989 :raw-text
    "signaling pathway")
   (:var mv3989 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv3986 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv3998 :isa regulate :agent mv3995 :object mv3996 :present "PRESENT" :raw-text "regulate")
   (:var mv3995 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv3996 :isa protein :organ mv4001 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv4001 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv4006 :isa regulate :agent mv4003 :object mv4004 :present "PRESENT" :raw-text "regulate")
   (:var mv4003 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv4004 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv4013 :isa explicit-suggestion :suggestion mv4009 :marker let-as-directive)
   (:var mv4009 :isa move-something-somewhere :at-relative-location mv4011 :theme mv4008 :present
    "PRESENT")
   (:var mv4011 :isa top-qua-location)
   (:var mv4008 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv4022 :isa explicit-suggestion :suggestion mv4016 :marker let-as-directive)
   (:var mv4016 :isa show :at-relative-location mv4020 :|statement-OR-theme| mv4015 :present
    "PRESENT")
   (:var mv4020 :isa top-qua-location)
   (:var mv4015 :isa protein :has-determiner "THE" :predication mv4018 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv4018 :isa phosphorylate :substrate mv4015 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv4025 :isa be :subject mv4024 :predicate mv4028 :present "PRESENT")
   (:var mv4024 :isa what)
   (:var mv4028 :isa upstream-segment :pathwaycomponent mv4032 :has-determiner "THE" :predication
    mv4027 :raw-text "upstreams")
   (:var mv4032 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv4023 mv4031))
   (:var mv4023 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv4031 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv4027 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv4041 :isa polar-question :statement mv4036)
   (:var mv4036 :isa gene-transcript-express :object mv4034 :organ mv4039 :past "PAST" :raw-text
    "expressed")
   (:var mv4034 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4039 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv4048 :isa polar-question :statement mv4044)
   (:var mv4044 :isa gene-transcript-express :object mv4042 :organ mv4046 :past "PAST" :raw-text
    "expressed")
   (:var mv4042 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4046 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv4050 :isa show :at-relative-location mv4053 :|statement-OR-theme| mv4049 :present
    "PRESENT")
   (:var mv4053 :isa top-qua-location)
   (:var mv4049 :isa protein :predication mv4051 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv4051 :isa phosphorylate :substrate mv4049 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv4057 :isa be :subject mv4056 :predicate mv4060 :present "PRESENT")
   (:var mv4056 :isa what)
   (:var mv4060 :isa upstream-segment :pathwaycomponent mv4064 :has-determiner "THE" :predication
    mv4059 :raw-text "upstreams")
   (:var mv4064 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv4055 mv4063))
   (:var mv4055 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv4063 :isa bio-entity :name "BRA") (:var mv4059 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv4073 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv4067 mv4071))
   (:var mv4067 :isa bio-activate :agent mv4066 :object mv4068 :present "PRESENT" :raw-text
    "activates")
   (:var mv4066 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv4068 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4071 :isa bio-activate :agent mv4070 :object mv4072 :present "PRESENT" :raw-text
    "activates")
   (:var mv4070 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4072 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv4075 :isa be :subject mv4074 :predicate mv4077 :present "PRESENT")
   (:var mv4074 :isa what) (:var mv4077 :isa path :end mv4081 :start mv4079 :has-determiner "THE")
   (:var mv4081 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4079 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv4084 :isa remove :object mv4091 :present "PRESENT" :raw-text "remove")
   (:var mv4091 :isa fact :statement mv4089 :has-determiner "THE")
   (:var mv4089 :isa bio-activate :agent mv4088 :object mv4090 :present "PRESENT" :raw-text
    "activates")
   (:var mv4088 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4090 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv4099 :isa explicit-suggestion :suggestion mv4094 :marker let-as-directive)
   (:var mv4094 :isa show :at-relative-location mv4097 :|statement-OR-theme| mv4093 :present
    "PRESENT")
   (:var mv4097 :isa top-qua-location)
   (:var mv4093 :isa protein :predication mv4095 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv4095 :isa phosphorylate :substrate mv4093 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv4102 :isa be :subject mv4101 :predicate mv4100 :present "PRESENT")
   (:var mv4101 :isa what)
   (:var mv4100 :isa positive-regulator :theme mv4106 :raw-text "positive regulators")
   (:var mv4106 :isa gene :has-determiner "THE" :expresses mv4105 :raw-text "gene")
   (:var mv4105 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv4111 :isa regulate :agent mv4108 :object mv4112 :present "PRESENT" :raw-text "regulate")
   (:var mv4108 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv4112 :isa protein :organ mv4109 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv4109 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv4123 :isa polar-question :statement mv4122)
   (:var mv4122 :isa there-exists :value mv4119 :predicate mv4116)
   (:var mv4119 :isa drug :predication mv4120 :quantifier mv4118 :raw-text "drugs")
   (:var mv4120 :isa inhibit :agent mv4119 :object mv4121 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv4121 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4118 :isa any :word "any") (:var mv4116 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv4132 :isa polar-question :statement mv4131)
   (:var mv4131 :isa there-exists :value mv4128 :predicate mv4125)
   (:var mv4128 :isa drug :predication mv4129 :quantifier mv4127 :raw-text "drugs")
   (:var mv4129 :isa target :agent mv4128 :object mv4130 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv4130 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv4127 :isa any :word "any") (:var mv4125 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv4150 :isa polar-question :statement mv4146)
   (:var mv4146 :isa there-exists :value mv4138 :predicate mv4135)
   (:var mv4138 :isa gene :predication mv4147 :organ mv4141 :quantifier mv4137 :raw-text "genes")
   (:var mv4147 :isa regulate :object mv4138 :that-rel t :agent mv4133 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4133 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4141 :isa liver :has-determiner "THE") (:var mv4137 :isa any :word "any")
   (:var mv4135 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv4168 :isa polar-question :statement mv4164)
   (:var mv4164 :isa there-exists :value mv4156 :predicate mv4153)
   (:var mv4156 :isa gene :predication mv4157 :quantifier mv4155 :raw-text "genes")
   (:var mv4157 :isa involve :object mv4156 :theme mv4159 :past "PAST")
   (:var mv4159 :isa apoptosis :predication mv4165 :raw-text "apoptosis")
   (:var mv4165 :isa regulate :affected-process mv4159 :that-rel t :agent mv4151 :present "PRESENT"
    :raw-text "regulated")
   (:var mv4151 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4155 :isa any :word "any") (:var mv4153 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv4179 :isa there-exists :predicate mv4171)
   (:var mv4171 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv4189 :isa polar-question :statement mv4187)
   (:var mv4187 :isa there-exists :value mv4185 :predicate mv4182)
   (:var mv4185 :isa inhibitor :|target-OR-protein| mv4180 :quantifier mv4184 :raw-text
    "inhibitors")
   (:var mv4180 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv4184 :isa any :word "any") (:var mv4182 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf" (:var mv4202 :isa polar-question :statement mv4199)
   (:var mv4199 :isa there-exists :value mv4194 :predicate mv4192)
   (:var mv4194 :isa gene :predication mv4195 :raw-text "genes")
   (:var mv4195 :isa regulate :object mv4194 :agent mv4200 :past "PAST" :raw-text "regulated")
   (:var mv4200 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4190 mv4198))
   (:var mv4190 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4198 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4192 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv4216 :isa polar-question :statement mv4207)
   (:var mv4207 :isa bio-find :agent mv4205 :object mv4203 :modal "CAN" :raw-text "find")
   (:var mv4205 :isa interlocutor :name "hearer")
   (:var mv4203 :isa protein :quantifier mv4208 :cellular-process mv4209 :context mv4211 :raw-text
    "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4208 :isa any :word "any") (:var mv4209 :isa apoptosis :raw-text "apoptotic")
   (:var mv4211 :isa pathway :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?"
   (:var mv4232 :isa polar-question :statement mv4231)
   (:var mv4231 :isa bio-find :agent mv4219 :statement mv4230 :object mv4225 :modal mv4218
    :raw-text "find")
   (:var mv4219 :isa interlocutor :name "hearer")
   (:var mv4230 :isa involve :object mv4217 :modal "CAN")
   (:var mv4217 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4225 :isa pathway :quantifier mv4222 :cellular-process mv4223 :raw-text "pathways")
   (:var mv4222 :isa any :word "any") (:var mv4223 :isa apoptosis :raw-text "apoptotic")
   (:var mv4218 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv4252 :isa polar-question :statement mv4251) (:var mv4251 :isa look-up :actor mv4235)
   (:var mv4235 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv4262 :isa polar-question :statement mv4256)
   (:var mv4256 :isa show :agent mv4255 :|statement-OR-theme| mv4258 :beneficiary mv4257 :modal
    "CAN")
   (:var mv4255 :isa interlocutor :name "hearer")
   (:var mv4258 :isa gene :predication mv4259 :raw-text "genes")
   (:var mv4259 :isa regulate :object mv4258 :agent mv4253 :past "PAST" :raw-text "regulated")
   (:var mv4253 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4257 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv4275 :isa polar-question :statement mv4266)
   (:var mv4266 :isa show :agent mv4265 :|statement-OR-theme| mv4268 :beneficiary mv4267 :modal
    "CAN")
   (:var mv4265 :isa interlocutor :name "hearer")
   (:var mv4268 :isa gene :predication mv4273 :raw-text "genes")
   (:var mv4273 :isa regulate :object mv4268 :that-rel t :agent mv4263 :modal "CAN" :raw-text
    "regulated")
   (:var mv4263 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4267 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv4285 :isa polar-question :statement mv4278)
   (:var mv4278 :isa show :agent mv4277 :|statement-OR-theme| mv4281 :beneficiary mv4279 :modal
    "CAN")
   (:var mv4277 :isa interlocutor :name "hearer")
   (:var mv4281 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv4279 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv4296 :isa polar-question :statement mv4289)
   (:var mv4289 :isa tell :agent mv4288 :theme mv4292 :beneficiary mv4290 :modal "CAN")
   (:var mv4288 :isa interlocutor :name "hearer")
   (:var mv4292 :isa gene :predication mv4293 :has-determiner "THE" :raw-text "genes")
   (:var mv4293 :isa regulate :object mv4292 :agent mv4286 :past "PAST" :raw-text "regulated")
   (:var mv4286 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4290 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv4306 :isa polar-question :statement mv4300)
   (:var mv4300 :isa tell :agent mv4299 :theme mv4303 :beneficiary mv4301 :modal "CAN")
   (:var mv4299 :isa interlocutor :name "hearer")
   (:var mv4303 :isa gene :predication mv4305 :has-determiner "THE" :raw-text "genes")
   (:var mv4305 :isa regulate :object mv4303 :that-rel t :agent mv4297 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4297 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4301 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv4320 :isa polar-question :statement mv4310)
   (:var mv4310 :isa tell :agent mv4309 :theme mv4313 :beneficiary mv4311 :modal "CAN")
   (:var mv4309 :isa interlocutor :name "hearer")
   (:var mv4313 :isa gene :predication mv4318 :has-determiner "THE" :raw-text "genes")
   (:var mv4318 :isa regulate :object mv4313 :that-rel t :agent mv4307 :modal "CAN" :raw-text
    "regulated")
   (:var mv4307 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4311 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv4335 :isa polar-question :statement mv4324)
   (:var mv4324 :isa tell :agent mv4323 :theme mv4327 :beneficiary mv4325 :modal "CAN")
   (:var mv4323 :isa interlocutor :name "hearer")
   (:var mv4327 :isa gene :predication mv4334 :has-determiner "THE" :raw-text "genes")
   (:var mv4334 :isa regulate :object mv4327 :agent mv4321 :modal mv4322 :raw-text "regulated")
   (:var mv4321 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4322 :isa can) (:var mv4325 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv4351 :isa polar-question :statement mv4340)
   (:var mv4340 :isa tell :agent mv4339 :theme mv4349 :theme mv4341 :modal "CAN")
   (:var mv4339 :isa interlocutor :name "hearer")
   (:var mv4349 :isa share :object mv4336 :participant mv4348 :modal "CAN" :raw-text "shared")
   (:var mv4336 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv4348 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4337 mv4347))
   (:var mv4337 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4347 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4341 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv4364 :isa polar-question :statement mv4355)
   (:var mv4355 :isa tell :agent mv4354 :theme mv4362 :theme mv4356 :modal "CAN")
   (:var mv4354 :isa interlocutor :name "hearer")
   (:var mv4362 :isa regulate :object mv4358 :agent mv4352 :modal "CAN" :raw-text "regulated")
   (:var mv4358 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv4352 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4356 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv4381 :isa polar-question :statement mv4368)
   (:var mv4368 :isa tell :agent mv4367 :theme mv4378 :theme mv4369 :modal "CAN")
   (:var mv4367 :isa interlocutor :name "hearer")
   (:var mv4378 :isa regulate :object mv4371 :agent mv4365 :modal "CAN" :raw-text "regulated")
   (:var mv4371 :isa gene :organ mv4374 :has-determiner "WHICH" :raw-text "genes")
   (:var mv4374 :isa liver :has-determiner "THE")
   (:var mv4365 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4369 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv4390 :isa polar-question :statement mv4385)
   (:var mv4385 :isa tell :agent mv4384 :theme mv4388 :beneficiary mv4386 :modal "CAN")
   (:var mv4384 :isa interlocutor :name "hearer")
   (:var mv4388 :isa gene :predication mv4389 :has-determiner "WHICH" :raw-text "genes")
   (:var mv4389 :isa regulate :object mv4388 :agent mv4382 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4382 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4386 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?" (:var mv4400 :isa polar-question :statement mv4398)
   (:var mv4398 :isa affect :agent mv4391 :affected-process mv4396 :raw-text "affect")
   (:var mv4391 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4396 :isa gene-transcript-express :object mv4392 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4392 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv4412 :isa polar-question :statement mv4410)
   (:var mv4410 :isa affect :agent mv4401 :affected-process mv4406 :raw-text "affect")
   (:var mv4401 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4406 :isa gene-transcript-express :object mv4409 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4409 :isa gene :has-determiner "THE" :expresses mv4402 :raw-text "gene")
   (:var mv4402 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv4425 :isa polar-question :statement mv4423)
   (:var mv4423 :isa increase :agent mv4413 :affected-process mv4419 :raw-text "increase")
   (:var mv4413 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4419 :isa gene-transcript-express :object mv4422 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4422 :isa gene :has-determiner "THE" :expresses mv4414 :raw-text "gene")
   (:var mv4414 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv4437 :isa polar-question :statement mv4435)
   (:var mv4435 :isa increase :agent mv4426 :affected-process mv4431 :raw-text "increase")
   (:var mv4426 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4431 :isa transcribe :object mv4434 :raw-text "transcription")
   (:var mv4434 :isa gene :has-determiner "THE" :expresses mv4427 :raw-text "gene")
   (:var mv4427 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?" (:var mv4447 :isa polar-question :statement mv4445)
   (:var mv4445 :isa affect :agent mv4438 :affected-process mv4442 :raw-text "affect")
   (:var mv4438 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4442 :isa gene-transcript-express :object mv4444 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4444 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv4457 :isa polar-question :statement mv4456)
   (:var mv4456 :isa contain :theme mv4454 :patient mv4448)
   (:var mv4454 :isa pathway :has-determiner "THE" :modifier mv4451 :raw-text "pathway")
   (:var mv4451 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv4448 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv4460 :isa bio-find :object mv4462 :present "PRESENT" :raw-text "Find")
   (:var mv4462 :isa treatment :disease mv4458 :has-determiner "A" :raw-text "treatment")
   (:var mv4458 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv4467 :isa bio-find :object mv4468 :present "PRESENT" :raw-text "Find")
   (:var mv4468 :isa gene :predication mv4472 :organ mv4471 :raw-text "genes")
   (:var mv4472 :isa regulate :object mv4468 :agent mv4465 :past "PAST" :raw-text "regulated")
   (:var mv4465 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4471 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv4478 :isa bio-find :object mv4479 :present "PRESENT" :raw-text "Find")
   (:var mv4479 :isa gene :predication mv4481 :raw-text "genes")
   (:var mv4481 :isa regulate :object mv4479 :that-rel t :agent mv4476 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4476 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv4485 :isa bio-find :object mv4482 :present "PRESENT" :raw-text "Find")
   (:var mv4482 :isa transcription-factor :predication mv4486 :raw-text "transcription factors")
   (:var mv4486 :isa share :object mv4482 :participant mv4490 :past "PAST" :raw-text "shared")
   (:var mv4490 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4483 mv4489))
   (:var mv4483 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4489 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv4496 :isa bio-activate :manner mv4493 :agent mv4495 :object mv4492 :present "PRESENT"
    :raw-text "activate")
   (:var mv4493 :isa how)
   (:var mv4495 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv4492 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv4501 :isa regulate :manner mv4499 :agent mv4497 :object mv4503 :present "PRESENT"
    :raw-text "regulate")
   (:var mv4499 :isa how)
   (:var mv4497 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4503 :isa gene :has-determiner "THE" :expresses mv4498 :raw-text "gene")
   (:var mv4498 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv4518 :isa knock-out :raw-text "knocking out" :cause mv4505 :object mv4522)
   (:var mv4505 :isa how) (:var mv4522 :isa cancer :modifier mv4509 :modifier mv4509)
   (:var mv4509 :isa cause :by-means-of mv4520 :raw-text "cause")
   (:var mv4520 :isa effect :object mv4517 :participant mv4513 :raw-text "effect")
   (:var mv4517 :isa micro-rna :raw-text "miRNAs")
   (:var mv4513 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv4526 :isa regulate :manner mv4524 :agent mv4523 :affected-process mv4527 :present
    "PRESENT" :raw-text "regulate")
   (:var mv4524 :isa how)
   (:var mv4523 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4527 :isa apoptosis :organ mv4530 :raw-text "apoptosis")
   (:var mv4530 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv4535 :isa regulate :manner mv4533 :agent mv4532 :affected-process mv4536 :present
    "PRESENT" :raw-text "regulate")
   (:var mv4533 :isa how)
   (:var mv4532 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4536 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv4540 :isa regulate :manner mv4538 :agent mv4537 :object mv4543 :present "PRESENT"
    :raw-text "regulate")
   (:var mv4538 :isa how)
   (:var mv4537 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4543 :isa gene :cellular-process mv4541 :raw-text "genes")
   (:var mv4541 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv4553 :isa wh-question :statement mv4546 :wh how)
   (:var mv4546 :isa be :predicate mv4544 :present "PRESENT")
   (:var mv4544 :isa protein :predication mv4547 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4547 :isa involve :object mv4544 :theme mv4551 :past "PAST")
   (:var mv4551 :isa regulate :|cellular-process-OR-agent| mv4549 :raw-text "regulation")
   (:var mv4549 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv4566 :isa wh-question :statement mv4556 :wh how)
   (:var mv4556 :isa be :predicate mv4554 :present "PRESENT")
   (:var mv4554 :isa protein :predication mv4557 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4557 :isa involve :object mv4554 :theme mv4559 :past "PAST")
   (:var mv4559 :isa regulate :organ mv4562 :|agent-OR-object| mv4563 :raw-text "regulation")
   (:var mv4562 :isa liver :has-determiner "THE") (:var mv4563 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv4575 :isa wh-question :statement mv4569 :wh how)
   (:var mv4569 :isa be :predicate mv4567 :present "PRESENT")
   (:var mv4567 :isa protein :predication mv4570 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4570 :isa involve :object mv4567 :theme mv4572 :past "PAST")
   (:var mv4572 :isa regulate :affected-process mv4573 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv4573 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv4584 :isa wh-question :statement mv4578 :wh how)
   (:var mv4578 :isa be :predicate mv4576 :present "PRESENT")
   (:var mv4576 :isa protein :predication mv4579 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4579 :isa bio-use :object mv4576 :theme mv4583 :past "PAST" :raw-text "used")
   (:var mv4583 :isa regulate :affected-process mv4582 :raw-text "regulate")
   (:var mv4582 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv4596 :isa copular-predication-of-pp :item mv4588 :value mv4595 :prep "IN" :predicate
    mv4589)
   (:var mv4588 :isa gene :has-determiner "HOW" :quantifier mv4587 :raw-text "genes")
   (:var mv4587 :isa many :word "many")
   (:var mv4595 :isa gene :context mv4585 :has-determiner "HOW" :quantifier mv4587 :raw-text
    "genes")
   (:var mv4585 :isa signaling-pathway :has-determiner "THE" :modifier mv4592 :raw-text
    "signaling pathway")
   (:var mv4592 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv4589 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv4605 :isa affect :manner mv4600 :modal mv4601 :agent mv4603 :object mv4599 :present
    "PRESENT" :raw-text "affect")
   (:var mv4600 :isa how) (:var mv4601 :isa might)
   (:var mv4603 :isa mutation :has-determiner "A" :|agent-OR-object| mv4598 :raw-text "mutation")
   (:var mv4598 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4599 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv4613 :isa polar-question :statement mv4608)
   (:var mv4608 :isa be :subject mv4606 :predicate mv4610)
   (:var mv4606 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4610 :isa regulator :theme mv4607 :has-determiner "A" :raw-text "regulator")
   (:var mv4607 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv4621 :isa polar-question :statement mv4616)
   (:var mv4616 :isa be :subject mv4614 :predicate mv4618)
   (:var mv4614 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4618 :isa regulator :theme mv4615 :has-determiner "A" :raw-text "regulator")
   (:var mv4615 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv4631 :isa polar-question :statement mv4624)
   (:var mv4624 :isa be :subject mv4622 :predicate mv4626)
   (:var mv4622 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4626 :isa regulator :theme mv4629 :has-determiner "A" :raw-text "regulator")
   (:var mv4629 :isa gene :has-determiner "THE" :expresses mv4623 :raw-text "gene")
   (:var mv4623 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv4641 :isa polar-question :statement mv4634)
   (:var mv4634 :isa be :subject mv4632 :predicate mv4636)
   (:var mv4632 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4636 :isa regulator :theme mv4639 :has-determiner "A" :raw-text "regulator")
   (:var mv4639 :isa gene :has-determiner "THE" :expresses mv4633 :raw-text "gene")
   (:var mv4633 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv4650 :isa polar-question :statement mv4645)
   (:var mv4645 :isa be :subject mv4642 :predicate mv4643)
   (:var mv4642 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4643 :isa transcription-factor :controlled-gene mv4648 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4648 :isa gene :expresses mv4644 :raw-text "gene")
   (:var mv4644 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos" (:var mv4658 :isa polar-question :statement mv4654)
   (:var mv4654 :isa be :subject mv4651 :predicate mv4652)
   (:var mv4651 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4652 :isa transcription-factor :controlled-gene mv4653 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4653 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?" (:var mv4666 :isa polar-question :statement mv4662)
   (:var mv4662 :isa be :subject mv4659 :predicate mv4660)
   (:var mv4659 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4660 :isa transcription-factor :controlled-gene mv4661 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4661 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv4676 :isa polar-question :statement mv4670)
   (:var mv4670 :isa be :subject mv4667 :predicate mv4668)
   (:var mv4667 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4668 :isa transcription-factor :controlled-gene mv4674 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4674 :isa gene :has-determiner "THE" :expresses mv4669 :raw-text "gene")
   (:var mv4669 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv4683 :isa polar-question :statement mv4680)
   (:var mv4680 :isa regulate :object mv4677 :agent mv4678 :past "PAST" :raw-text "regulated")
   (:var mv4677 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4678 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv4693 :isa polar-question :statement mv4687)
   (:var mv4687 :isa be :subject mv4684 :predicate mv4685)
   (:var mv4684 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4685 :isa transcription-factor :controlled-gene mv4691 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4691 :isa gene :has-determiner "THE" :expresses mv4686 :raw-text "gene")
   (:var mv4686 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv4695 :isa list :theme mv4696 :present "PRESENT")
   (:var mv4696 :isa gene :predication mv4697 :raw-text "genes")
   (:var mv4697 :isa regulate :object mv4696 :agent mv4694 :past "PAST" :raw-text "regulated")
   (:var mv4694 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1" (:var mv4701 :isa list :theme mv4702 :present "PRESENT")
   (:var mv4702 :isa gene :predication mv4707 :raw-text "genes")
   (:var mv4707 :isa regulate :object mv4702 :that-rel t :agent mv4700 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4700 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates" (:var mv4710 :isa list :theme mv4712 :present "PRESENT")
   (:var mv4712 :isa gene :predication mv4714 :quantifier mv4711 :raw-text "genes")
   (:var mv4714 :isa regulate :object mv4712 :that-rel t :agent mv4709 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4709 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4711 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv4716 :isa list :theme mv4718 :present "PRESENT")
   (:var mv4718 :isa gene :predication mv4719 :has-determiner "THE" :raw-text "genes")
   (:var mv4719 :isa regulate :object mv4718 :agent mv4715 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4715 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv4721 :isa list :theme mv4723 :present "PRESENT")
   (:var mv4723 :isa gene :predication mv4728 :has-determiner "THE" :raw-text "genes")
   (:var mv4728 :isa regulate :object mv4723 :that-rel t :agent mv4720 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4720 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates" (:var mv4731 :isa list :theme mv4733 :present "PRESENT")
   (:var mv4733 :isa gene :predication mv4735 :has-determiner "THE" :raw-text "genes")
   (:var mv4735 :isa regulate :object mv4733 :agent mv4730 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4730 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv4736 :isa list :theme mv4738 :present "PRESENT")
   (:var mv4738 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv4743 :isa show :|statement-OR-theme| mv4745 :beneficiary mv4744 :present "PRESENT")
   (:var mv4745 :isa gene :predication mv4746 :raw-text "genes")
   (:var mv4746 :isa regulate :object mv4745 :agent mv4742 :past "PAST" :raw-text "regulated")
   (:var mv4742 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4744 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv4750 :isa show :|statement-OR-theme| mv4752 :beneficiary mv4751 :present "PRESENT")
   (:var mv4752 :isa gene :predication mv4757 :raw-text "genes")
   (:var mv4757 :isa regulate :object mv4752 :that-rel t :agent mv4749 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4749 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4751 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv4760 :isa show :|statement-OR-theme| mv4762 :beneficiary mv4761 :present "PRESENT")
   (:var mv4762 :isa gene :predication mv4764 :raw-text "genes")
   (:var mv4764 :isa regulate :object mv4762 :that-rel t :agent mv4759 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4759 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4761 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv4765 :isa show :|statement-OR-theme| mv4768 :beneficiary mv4766 :present "PRESENT")
   (:var mv4768 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv4766 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv4785 :isa show :statement mv4783 :theme mv4775 :present "PRESENT")
   (:var mv4783 :isa share :object mv4772 :participant mv4782 :present "PRESENT" :raw-text
    "shared")
   (:var mv4772 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv4782 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4773 mv4781))
   (:var mv4773 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4781 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4775 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv4796 :isa show :statement mv4794 :theme mv4788 :present "PRESENT")
   (:var mv4794 :isa regulate :object mv4790 :agent mv4786 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4790 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv4786 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4788 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv4798 :isa show :|statement-OR-theme| mv4800 :present "PRESENT")
   (:var mv4800 :isa gene :predication mv4802 :has-determiner "THE" :raw-text "genes")
   (:var mv4802 :isa regulate :object mv4800 :agent mv4797 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4797 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv4803 :isa show :|statement-OR-theme| mv4805 :present "PRESENT")
   (:var mv4805 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv4811 :isa show :|statement-OR-theme| mv4809 :present "PRESENT")
   (:var mv4809 :isa transcription-factor :predication mv4819 :raw-text "transcription factors")
   (:var mv4819 :isa share :object mv4809 :that-rel t :participant mv4818 :present "PRESENT"
    :raw-text "shared")
   (:var mv4818 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4810 mv4817))
   (:var mv4810 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4817 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv4822 :isa tell :theme mv4825 :beneficiary mv4823 :present "PRESENT")
   (:var mv4825 :isa gene :predication mv4832 :has-determiner "THE" :raw-text "genes")
   (:var mv4832 :isa regulate :object mv4825 :agent mv4821 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4821 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4823 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv4834 :isa tell :theme mv4844 :theme mv4835 :present "PRESENT")
   (:var mv4844 :isa regulate :object mv4837 :agent mv4843 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4837 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv4843 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4833 mv4842))
   (:var mv4833 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4842 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4835 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv4847 :isa tell :theme mv4854 :theme mv4848 :present "PRESENT")
   (:var mv4854 :isa regulate :object mv4850 :agent mv4846 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4850 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv4846 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4848 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv4858 :isa be :subject mv4857 :predicate mv4856 :present "PRESENT")
   (:var mv4857 :isa what)
   (:var mv4856 :isa positive-regulator :theme mv4860 :raw-text "positive regulators")
   (:var mv4860 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv4864 :isa be :subject mv4863 :predicate mv4866 :present "PRESENT")
   (:var mv4863 :isa what)
   (:var mv4866 :isa regulator :theme mv4862 :quantifier mv4865 :raw-text "regulators")
   (:var mv4862 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv4865 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv4875 :isa be :subject mv4874 :predicate mv4878 :present "PRESENT")
   (:var mv4874 :isa what)
   (:var mv4878 :isa regulator :theme mv4882 :has-determiner "THE" :predication mv4877 :raw-text
    "regulators")
   (:var mv4882 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv4869 mv4870 mv4880 mv4871 mv4872 mv4873))
   (:var mv4869 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv4870 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv4880 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv4871 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv4872 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv4873 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv4877 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv4886 :isa be :subject mv4885 :predicate mv4889 :present "PRESENT")
   (:var mv4885 :isa what)
   (:var mv4889 :isa regulator :theme mv4893 :has-determiner "THE" :predication mv4888 :raw-text
    "regulators")
   (:var mv4893 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4884 mv4892))
   (:var mv4884 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4892 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4888 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv4897 :isa be :subject mv4896 :predicate mv4900 :present "PRESENT")
   (:var mv4896 :isa what)
   (:var mv4900 :isa regulator :theme mv4904 :has-determiner "THE" :predication mv4899 :raw-text
    "regulators")
   (:var mv4904 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv4895 mv4903))
   (:var mv4895 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4903 :isa bio-entity :name "srg") (:var mv4899 :isa common))
  ("What are the common regulators of those genes"
   (:var mv4907 :isa be :subject mv4906 :predicate mv4910 :present "PRESENT")
   (:var mv4906 :isa what)
   (:var mv4910 :isa regulator :theme mv4913 :has-determiner "THE" :predication mv4909 :raw-text
    "regulators")
   (:var mv4913 :isa gene :has-determiner "THOSE" :raw-text "genes") (:var mv4909 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv4917 :isa be :subject mv4916 :predicate mv4919 :present "PRESENT")
   (:var mv4916 :isa what)
   (:var mv4919 :isa gene :predication mv4920 :has-determiner "THE" :raw-text "genes")
   (:var mv4920 :isa regulate :object mv4919 :agent mv4915 :past "PAST" :raw-text "regulated")
   (:var mv4915 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv4925 :isa be :subject mv4924 :predicate mv4927 :present "PRESENT")
   (:var mv4924 :isa what)
   (:var mv4927 :isa gene :predication mv4929 :has-determiner "THE" :raw-text "genes")
   (:var mv4929 :isa regulate :object mv4927 :agent mv4923 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4923 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv4934 :isa be :subject mv4933 :predicate mv4938 :present "PRESENT")
   (:var mv4933 :isa what)
   (:var mv4938 :isa regulator :theme mv4943 :has-determiner "THE" :modifier mv4937 :raw-text
    "regulators")
   (:var mv4943 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv4940 mv4941 mv4930 mv4931 mv4932))
   (:var mv4940 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv4941 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4930 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4931 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv4932 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv4937 :isa frequent :comparative mv4936 :name "frequent")
   (:var mv4936 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv4950 :isa be :subject mv4949 :predicate mv4945 :present "PRESENT")
   (:var mv4949 :isa what)
   (:var mv4945 :isa transcription-factor :predication mv4953 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv4953 :isa regulate :agent mv4945 :that-rel t :object mv4957 :present "PRESENT" :raw-text
    "regulate")
   (:var mv4957 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv4954 mv4955 mv4946 mv4947 mv4948))
   (:var mv4954 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv4955 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4946 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4947 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv4948 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv4969 :isa copular-predication-of-pp :item mv4960 :value mv4968 :prep "IN" :predicate
    mv4961)
   (:var mv4960 :isa gene :has-determiner "WHAT" :modifier mv4959 :raw-text "genes")
   (:var mv4959 :isa other :name "other")
   (:var mv4968 :isa gene :context mv4965 :has-determiner "WHAT" :modifier mv4959 :raw-text
    "genes")
   (:var mv4965 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv4961 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv4982 :isa copular-predication-of-pp :item mv4973 :value mv4981 :prep "IN" :predicate
    mv4974)
   (:var mv4973 :isa protein :has-determiner "WHAT" :modifier mv4972 :raw-text "proteins")
   (:var mv4972 :isa other :name "other")
   (:var mv4981 :isa protein :|context-OR-in-pathway| mv4978 :has-determiner "WHAT" :modifier
    mv4972 :raw-text "proteins")
   (:var mv4978 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv4974 :isa be :present "PRESENT"))
  ("What pathways are they in?"
   (:var mv4986 :isa be :subject mv4985 :predicate mv4987 :present "PRESENT")
   (:var mv4985 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv4987 :isa pronoun/plural :word "they"))
  ("What pathways involve SOARING?" (:var mv4991 :isa involve :theme mv4990 :present "PRESENT")
   (:var mv4990 :isa pathway :has-determiner "WHAT" :raw-text "pathways"))
  ("What proteins are in the first pathway"
   (:var mv5002 :isa copular-predication-of-pp :item mv4993 :value mv5001 :prep "IN" :predicate
    mv4994)
   (:var mv4993 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv5001 :isa protein :|context-OR-in-pathway| mv4998 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv4998 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv4994 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv5007 :isa involve :theme mv5006 :object mv5004 :present "PRESENT")
   (:var mv5006 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5004 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv5018 :isa copular-predication-of-pp :item mv5009 :value mv5017 :prep "IN" :predicate
    mv5010)
   (:var mv5009 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv5017 :isa gene :context mv5014 :has-determiner "WHAT" :raw-text "genes")
   (:var mv5014 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv5010 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv5030 :isa answer :patient mv5021 :modal mv5023 :agent mv5024 :theme mv5028 :present
    "PRESENT")
   (:var mv5021 :isa bio-question :has-determiner "WHAT") (:var mv5023 :isa can)
   (:var mv5024 :isa interlocutor :name "hearer")
   (:var mv5028 :isa micro-rna :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv5034 :isa regulate :agent mv5031 :object mv5032 :present "PRESENT" :raw-text "regulate")
   (:var mv5031 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv5032 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD" :count
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
   (:var mv5038 :isa regulate :location mv5036 :agent mv5035 :object mv5039 :present "PRESENT"
    :raw-text "regulate")
   (:var mv5036 :isa where)
   (:var mv5035 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5039 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv5043 :isa involve :theme mv5042 :object mv5044 :present "PRESENT")
   (:var mv5042 :isa pathway :has-determiner "WHICH" :modifier mv5041 :raw-text "pathways")
   (:var mv5041 :isa database :name "KEGG" :uid "KEGG")
   (:var mv5044 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv5055 :isa copular-predication-of-pp :item mv5047 :value mv5054 :prep "IN" :predicate
    mv5048)
   (:var mv5047 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv5054 :isa gene :context mv5045 :has-determiner "WHICH" :raw-text "genes")
   (:var mv5045 :isa signaling-pathway :has-determiner "THE" :modifier mv5051 :raw-text
    "signaling pathway")
   (:var mv5051 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv5048 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv5066 :isa involve :object mv5059 :|context-OR-theme| mv5057 :present "PRESENT")
   (:var mv5059 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv5057 :isa signaling-pathway :has-determiner "THE" :predication mv5064 :modifier mv5065
    :raw-text "signaling pathway")
   (:var mv5064 :isa oncogenic)
   (:var mv5065 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv5070 :isa regulate :agent mv5069 :object mv5071 :present "PRESENT" :raw-text "regulate")
   (:var mv5069 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5071 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv5072 :isa downregulate :agent mv5074 :object mv5075 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv5074 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5075 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv5076 :isa upregulate :agent mv5078 :object mv5079 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv5078 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5079 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv5088 :isa copular-predication-of-pp :item mv5082 :value mv5086 :prep mv5084 :predicate
    mv5083)
   (:var mv5082 :isa these :quantifier mv5080 :word "these") (:var mv5080 :isa which)
   (:var mv5086 :isa pathway :modifier mv5085 :raw-text "pathways")
   (:var mv5085 :isa immune :name "immune") (:var mv5084 :isa in :word "in")
   (:var mv5083 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv5098 :isa copular-predication-of-pp :item mv5093 :value mv5096 :prep mv5095 :predicate
    mv5094)
   (:var mv5093 :isa these :quantifier mv5091 :word "these") (:var mv5091 :isa which)
   (:var mv5096 :isa pathway :non-cellular-location mv5090 :raw-text "pathways")
   (:var mv5090 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv5095 :isa in :word "in") (:var mv5094 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv5102 :isa be :subject mv5101 :predicate mv5104 :present "PRESENT")
   (:var mv5101 :isa what)
   (:var mv5104 :isa gene :predication mv5105 :has-determiner "THE" :raw-text "genes")
   (:var mv5105 :isa regulate :object mv5104 :agent mv5100 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5100 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv5115 :isa copular-predication-of-pp :item mv5108 :value mv5113 :prep mv5110 :predicate
    mv5109)
   (:var mv5108 :isa those :quantifier mv5106 :word "those") (:var mv5106 :isa which)
   (:var mv5113 :isa pathway :has-determiner "THE" :modifier mv5112 :raw-text "pathway")
   (:var mv5112 :isa immune :name "immune") (:var mv5110 :isa in :word "in")
   (:var mv5109 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv5120 :isa involve :theme mv5119 :object mv5117 :present "PRESENT")
   (:var mv5119 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv5117 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv5130 :isa polar-question :statement mv5123)
   (:var mv5123 :isa show :agent mv5122 :|statement-OR-theme| mv5126 :beneficiary mv5124 :modal
    "CAN")
   (:var mv5122 :isa interlocutor :name "hearer")
   (:var mv5126 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv5124 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv5136 :isa polar-question :statement mv5135)
   (:var mv5135 :isa inhibit :agent mv5133 :object mv5131 :raw-text "inhibit")
   (:var mv5133 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv5131 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv5146 :isa explicit-suggestion :suggestion mv5138 :marker let-as-directive)
   (:var mv5138 :isa build :artifact mv5140 :present "PRESENT")
   (:var mv5140 :isa model :object mv5144 :has-determiner "A")
   (:var mv5144 :isa neighborhood :has-determiner "THE" :modifier mv5143)
   (:var mv5143 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv5164 :isa collection :type know :number 2 :items (mv5162 mv5163))
   (:var mv5162 :isa know :agent mv5147 :statement mv5153 :present "PRESENT")
   (:var mv5147 :isa interlocutor :name "speaker")
   (:var mv5153 :isa bio-activate :agent mv5152 :object mv5154 :present "PRESENT" :raw-text
    "activates")
   (:var mv5152 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv5154 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv5163 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv5156 mv5160))
   (:var mv5156 :isa bio-activate :agent mv5155 :object mv5157 :present "PRESENT" :raw-text
    "activates")
   (:var mv5155 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv5157 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv5160 :isa bio-activate :agent mv5159 :object mv5161 :present "PRESENT" :raw-text
    "activates")
   (:var mv5159 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv5161 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv5167 :isa phosphorylate :agent mv5165 :substrate mv5166 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv5165 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv5166 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv5170 :isa dephosphorylate :agent mv5168 :substrate mv5169 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv5168 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv5169 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv5181 :isa polar-question :statement mv5180)
   (:var mv5180 :isa copular-predication :item mv5174 :value mv5178 :predicate mv5172)
   (:var mv5174 :isa bio-amount :measured-item mv5171 :has-determiner "THE" :raw-text "amount")
   (:var mv5171 :isa protein :predication mv5176 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv5176 :isa phosphorylate :substrate mv5171 :raw-text "phosphorylated")
   (:var mv5178 :isa high :adverb mv5177) (:var mv5177 :isa always :name "always")
   (:var mv5172 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv5192 :isa polar-question :statement mv5191)
   (:var mv5191 :isa copular-predication :item mv5185 :value mv5189 :predicate mv5183)
   (:var mv5185 :isa bio-amount :measured-item mv5182 :has-determiner "THE" :raw-text "amount")
   (:var mv5182 :isa protein :predication mv5187 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv5187 :isa phosphorylate :substrate mv5182 :raw-text "phosphorylated")
   (:var mv5189 :isa low :adverb mv5188) (:var mv5188 :isa always :name "always")
   (:var mv5183 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv5202 :isa polar-question :statement mv5201)
   (:var mv5201 :isa vanish :agent mv5200 :raw-text "vanish")
   (:var mv5200 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv5194
    :component mv5193)
   (:var mv5194 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv5193 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv5212 :isa polar-question :statement mv5211)
   (:var mv5211 :isa vanish :agent mv5210 :raw-text "vanish")
   (:var mv5210 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv5204
    :component mv5203)
   (:var mv5204 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv5203 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv5242 :isa polar-question :statement mv5241)
   (:var mv5241 :isa event-relation :subordinated-event mv5238 :event mv5234)
   (:var mv5238 :isa wh-question :statement mv5235 :wh if)
   (:var mv5235 :isa increase :|agent-OR-cause| mv5222 :|multiplier-OR-cause| mv5233
    :|affected-process-OR-object| mv5226 :raw-text "increase")
   (:var mv5222 :isa interlocutor :name "person-and-machine")
   (:var mv5233 :isa measurement :number mv5230) (:var mv5230 :isa number :value 10)
   (:var mv5226 :isa bio-amount :measured-item mv5214 :has-determiner "THE" :raw-text "amount")
   (:var mv5214 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv5234 :isa vanish :cause mv5217 :raw-text "vanish")
   (:var mv5217 :isa bio-amount :measured-item mv5213 :has-determiner "THE" :raw-text "amount")
   (:var mv5213 :isa protein :predication mv5219 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv5219 :isa phosphorylate :substrate mv5213 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv5244 :isa show :|statement-OR-theme| mv5251 :beneficiary mv5245 :present "PRESENT")
   (:var mv5251 :isa evidence :statement mv5250 :has-determiner "THE")
   (:var mv5250 :isa regulate :agent mv5249 :object mv5243 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5249 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv5243 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv5245 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv5255 :isa increase :|agent-OR-cause| mv5253 :|affected-process-OR-object| mv5257
    :present "PRESENT" :raw-text "increases")
   (:var mv5253 :isa what)
   (:var mv5257 :isa bio-amount :measured-item mv5252 :has-determiner "THE" :raw-text "amount")
   (:var mv5252 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv5270 :isa copular-predication-of-pp :item mv5262 :value mv5269 :prep "IN" :predicate
    mv5263)
   (:var mv5262 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5269 :isa kinase :|context-OR-in-pathway| mv5260 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv5260 :isa signaling-pathway :has-determiner "THE" :modifier mv5266 :raw-text
    "signaling pathway")
   (:var mv5266 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv5263 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv5283 :isa polar-question :statement mv5281)
   (:var mv5281 :isa regulate :agent mv5272 :object mv5277 :raw-text "regulate")
   (:var mv5272 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5277 :isa gene :organ mv5280 :has-determiner "THE" :expresses mv5273 :raw-text "gene")
   (:var mv5280 :isa liver :has-determiner "THE")
   (:var mv5273 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv5290 :isa regulate :object mv5286 :agent mv5284 :present "PRESENT" :raw-text
    "regulated")
   (:var mv5286 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv5284 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv5299 :isa regulate :|affected-process-OR-object| mv5295 :agent mv5292 :present "PRESENT"
    :raw-text "regulated")
   (:var mv5295 :isa these :quantifier mv5293 :word "these") (:var mv5293 :isa which)
   (:var mv5292 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv5307 :isa regulate :|agent-OR-cause| mv5304 :object mv5308 :present "PRESENT" :adverb
    mv5305 :raw-text "regulate")
   (:var mv5304 :isa these :quantifier mv5302 :word "these") (:var mv5302 :isa which)
   (:var mv5308 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv5305 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv5313 :isa transcribe :agent mv5310 :object mv5311 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv5310 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv5311 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv5317 :isa transcribe :agent mv5314 :object mv5315 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv5314 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv5315 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv5321 :isa utilize :participant mv5320 :object mv5322 :present "PRESENT" :raw-text
    "utilize")
   (:var mv5320 :isa pathway :has-determiner "WHICH" :modifier mv5319 :raw-text "pathways")
   (:var mv5319 :isa database :name "KEGG" :uid "KEGG")
   (:var mv5322 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv5334 :isa copular-predication-of-pp :item mv5323 :value mv5333 :prep "IN" :predicate
    mv5325)
   (:var mv5323 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv5333 :isa transcription-factor :|context-OR-in-pathway| mv5330 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv5330 :isa pathway :has-determiner "THE" :predication mv5329 :raw-text "pathways")
   (:var mv5329 :isa regulate :affected-process mv5330 :agent mv5328 :raw-text "regulated")
   (:var mv5328 :isa calcium :raw-text "calcium") (:var mv5325 :isa be :present "PRESENT"))
  ("What pathways involve the immune system?"
   (:var mv5339 :isa involve :theme mv5338 :object mv5336 :present "PRESENT")
   (:var mv5338 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5336 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv5346 :isa involve :theme mv5345 :object mv5349 :present "PRESENT")
   (:var mv5345 :isa pathway :has-determiner "WHAT" :modifier mv5344 :raw-text "pathways")
   (:var mv5344 :isa database :name "KEGG" :uid "KEGG")
   (:var mv5349 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv5341 mv5347 mv5342))
   (:var mv5341 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv5347 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv5342 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv5357 :isa share :object mv5351 :participant mv5356 :present "PRESENT" :raw-text
    "shared")
   (:var mv5351 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5356 :isa gene :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv5365 :isa regulate :object mv5360 :agent mv5364 :present "PRESENT" :raw-text
    "regulated")
   (:var mv5360 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv5364 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv5368 :isa be :subject mv5367 :predicate mv5370 :present "PRESENT")
   (:var mv5367 :isa what)
   (:var mv5370 :isa pathway :pathwaycomponent mv5373 :predication mv5369 :raw-text "pathways")
   (:var mv5373 :isa gene :has-determiner "THESE" :raw-text "genes") (:var mv5369 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv5387 :isa share :object mv5380 :participant mv5385 :present "PRESENT" :raw-text
    "shared")
   (:var mv5380 :isa pathway :has-determiner "WHICH" :modifier mv5379 :raw-text "pathways")
   (:var mv5379 :isa immune :name "immune")
   (:var mv5385 :isa gene :expresses mv5386 :raw-text "genes")
   (:var mv5386 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv5375 mv5376 mv5377))
   (:var mv5375 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5376 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv5377 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv5396 :isa regulate :object mv5392 :agent mv5390 :present "PRESENT" :raw-text
    "regulated")
   (:var mv5392 :isa phosphatase :has-determiner "WHAT" :enzyme mv5389 :raw-text "phosphatase")
   (:var mv5389 :isa protein-family :raw-text "MAP kinase" :name "mitogen activated protein kinase"
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
   (:var mv5390 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv5402 :isa involve :theme mv5401 :object mv5398 :present "PRESENT")
   (:var mv5401 :isa pathway :has-determiner "WHAT" :modifier mv5400 :raw-text "pathways")
   (:var mv5400 :isa database :name "Reactome" :uid "Reactome")
   (:var mv5398 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv5407 :isa polar-question :statement mv5404)
   (:var mv5404 :isa be :subject mv5403 :predicate mv5406)
   (:var mv5403 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5406 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv5412 :isa polar-question :statement mv5410)
   (:var mv5410 :isa be :subject mv5408 :predicate mv5409)
   (:var mv5408 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5409 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv5416 :isa be :subject mv5415 :predicate mv5418 :present "PRESENT")
   (:var mv5415 :isa these :quantifier mv5413 :word "these") (:var mv5413 :isa which)
   (:var mv5418 :isa kinase :enzyme mv5417 :raw-text "kinases")
   (:var mv5417 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv5424 :isa be :subject mv5423 :predicate mv5420 :present "PRESENT")
   (:var mv5423 :isa these :quantifier mv5421 :word "these") (:var mv5421 :isa which)
   (:var mv5420 :isa protein-family :raw-text "tyrosine kinases" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are serine/threonine kinases?"
   (:var mv5429 :isa be :subject mv5428 :predicate mv5432 :present "PRESENT")
   (:var mv5428 :isa these :quantifier mv5426 :word "these") (:var mv5426 :isa which)
   (:var mv5432 :isa kinase :amino-acid mv5433 :raw-text "kinases")
   (:var mv5433 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv5430 mv5431))
   (:var mv5430 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv5431 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv5438 :isa be :subject mv5437 :predicate mv5439 :present "PRESENT")
   (:var mv5437 :isa these :quantifier mv5435 :word "these") (:var mv5435 :isa which)
   (:var mv5439 :isa phosphatase :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv5444 :isa be :subject mv5443 :predicate mv5445 :present "PRESENT")
   (:var mv5443 :isa these :quantifier mv5441 :word "these") (:var mv5441 :isa which)
   (:var mv5445 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv5450 :isa be :subject mv5449 :predicate mv5451 :present "PRESENT")
   (:var mv5449 :isa these :quantifier mv5447 :word "these") (:var mv5447 :isa which)
   (:var mv5451 :isa receptor :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv5457 :isa be :subject mv5456 :predicate mv5458 :present "PRESENT")
   (:var mv5456 :isa these :quantifier mv5454 :word "these") (:var mv5454 :isa which)
   (:var mv5458 :isa receptor :modifier mv5453 :raw-text "receptors")
   (:var mv5453 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv5464 :isa be :subject mv5463 :predicate mv5460 :present "PRESENT")
   (:var mv5463 :isa these :quantifier mv5461 :word "these") (:var mv5461 :isa which)
   (:var mv5460 :isa protein-family :raw-text "histone demethylases" :name "histone demethylase"
    :uid "GO:0032452"))
  ("Which of these are histone methylases?"
   (:var mv5470 :isa be :subject mv5469 :predicate mv5466 :present "PRESENT")
   (:var mv5469 :isa these :quantifier mv5467 :word "these") (:var mv5467 :isa which)
   (:var mv5466 :isa protein-family :raw-text "histone methylases" :name
    "histone methyltransferase" :uid "GO:0042054"))
  ("Which of these are histone methyltransferases?"
   (:var mv5476 :isa be :subject mv5475 :predicate mv5472 :present "PRESENT")
   (:var mv5475 :isa these :quantifier mv5473 :word "these") (:var mv5473 :isa which)
   (:var mv5472 :isa protein-family :raw-text "histone methyltransferases" :name
    "histone methyltransferase" :uid "GO:0042054"))
  ("Which of these are demethylases?"
   (:var mv5481 :isa be :subject mv5480 :predicate mv5482 :present "PRESENT")
   (:var mv5480 :isa these :quantifier mv5478 :word "these") (:var mv5478 :isa which)
   (:var mv5482 :isa protein-family :raw-text "demethylases" :name "demethylase" :uid
    "GO:0032451"))
  ("Which of these are methylases?"
   (:var mv5487 :isa be :subject mv5486 :predicate mv5488 :present "PRESENT")
   (:var mv5486 :isa these :quantifier mv5484 :word "these") (:var mv5484 :isa which)
   (:var mv5488 :isa protein-family :raw-text "methylases" :name "methyltransferase" :uid
    "GO:0008168"))
  ("Which of these are methyltransferases?"
   (:var mv5493 :isa be :subject mv5492 :predicate mv5494 :present "PRESENT")
   (:var mv5492 :isa these :quantifier mv5490 :word "these") (:var mv5490 :isa which)
   (:var mv5494 :isa protein-family :raw-text "methyltransferases" :name "methyltransferase" :uid
    "GO:0008168"))
  ("Which of these are steroid receptors?"
   (:var mv5499 :isa be :subject mv5498 :predicate mv5501 :present "PRESENT")
   (:var mv5498 :isa these :quantifier mv5496 :word "these") (:var mv5496 :isa which)
   (:var mv5501 :isa receptor :modifier mv5500 :raw-text "receptors")
   (:var mv5500 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv5507 :isa be :subject mv5506 :predicate mv5503 :present "PRESENT")
   (:var mv5506 :isa these :quantifier mv5504 :word "these") (:var mv5504 :isa which)
   (:var mv5503 :isa protein-family :raw-text "receptor tyrosine kinases" :name
    "receptor tyrosine kinase" :count 2 :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :uid "NCIT:C17660"))
  ("Which of these are transcription factors?"
   (:var mv5513 :isa be :subject mv5512 :predicate mv5509 :present "PRESENT")
   (:var mv5512 :isa these :quantifier mv5510 :word "these") (:var mv5510 :isa which)
   (:var mv5509 :isa transcription-factor :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv5519 :isa be :subject mv5518 :predicate mv5520 :present "PRESENT")
   (:var mv5518 :isa these :quantifier mv5516 :word "these") (:var mv5516 :isa which)
   (:var mv5520 :isa protein :modifier mv5515 :raw-text "proteins")
   (:var mv5515 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv5525 :isa be :subject mv5524 :predicate mv5528 :present "PRESENT")
   (:var mv5524 :isa these :quantifier mv5522 :word "these") (:var mv5522 :isa which)
   (:var mv5528 :isa phosphatase :modifier mv5529 :raw-text "phosphatases")
   (:var mv5529 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv5526 mv5527))
   (:var mv5526 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv5527 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv5534 :isa be :subject mv5533 :predicate mv5536 :present "PRESENT")
   (:var mv5533 :isa these :quantifier mv5531 :word "these") (:var mv5531 :isa which)
   (:var mv5536 :isa phosphatase :modifier mv5535 :raw-text "phosphatases")
   (:var mv5535 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv5541 :isa phosphorylate :amino-acid mv5538 :agent mv5540 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv5538 :isa what)
   (:var mv5540 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv5550 :isa gene-transcript-express :object mv5544 :organ mv5549 :present "PRESENT"
    :adverb mv5546 :raw-text "expressed")
   (:var mv5544 :isa these :quantifier mv5542 :word "these") (:var mv5542 :isa which)
   (:var mv5549 :isa liver) (:var mv5546 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv5555 :isa regulate :|agent-OR-cause| mv5554 :object mv5553 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5554 :isa what)
   (:var mv5553 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv5558 :isa increase :|agent-OR-cause| mv5556 :|affected-process-OR-object| mv5560
    :present "PRESENT" :raw-text "increases")
   (:var mv5556 :isa what)
   (:var mv5560 :isa bio-amount :measured-item mv5562 :has-determiner "THE" :raw-text "amount")
   (:var mv5562 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv5565 :isa upregulate :|agent-OR-cause| mv5564 :object mv5566 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv5564 :isa what)
   (:var mv5566 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv5568 :isa downregulate :|agent-OR-cause| mv5567 :object mv5569 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv5567 :isa what)
   (:var mv5569 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv5571 :isa decrease :|agent-OR-cause| mv5570 :|affected-process-OR-object| mv5573
    :present "PRESENT" :raw-text "decreases")
   (:var mv5570 :isa what)
   (:var mv5573 :isa bio-amount :measured-item mv5575 :has-determiner "THE" :raw-text "amount")
   (:var mv5575 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv5578 :isa regulate :|agent-OR-cause| mv5577 :object mv5579 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5577 :isa what)
   (:var mv5579 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv5581 :isa regulate :|agent-OR-cause| mv5580 :object mv5582 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5580 :isa what)
   (:var mv5582 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv5589 :isa regulate :|agent-OR-cause| mv5588 :object mv5590 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5588 :isa what)
   (:var mv5590 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("Which kinases regulate the cfos gene?"
   (:var mv5596 :isa regulate :agent mv5595 :object mv5599 :present "PRESENT" :raw-text "regulate")
   (:var mv5595 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5599 :isa gene :has-determiner "THE" :expresses mv5598 :raw-text "gene")
   (:var mv5598 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv5600 :isa downregulate :agent mv5602 :object mv5605 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv5602 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5605 :isa gene :has-determiner "THE" :expresses mv5604 :raw-text "gene")
   (:var mv5604 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv5608 :isa be :subject mv5607 :predicate mv5606 :present "PRESENT")
   (:var mv5607 :isa what)
   (:var mv5606 :isa positive-regulator :theme mv5612 :raw-text "positive regulators")
   (:var mv5612 :isa gene :has-determiner "THE" :expresses mv5611 :raw-text "gene")
   (:var mv5611 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv5616 :isa transcribe :|agent-OR-cause| mv5615 :object mv5614 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv5615 :isa what)
   (:var mv5614 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv5619 :isa show :|statement-OR-theme| mv5630 :beneficiary mv5620 :present "PRESENT")
   (:var mv5630 :isa evidence :statement mv5625 :has-determiner "THE")
   (:var mv5625 :isa increase :agent mv5617 :|affected-process-OR-object| mv5627 :present "PRESENT"
    :raw-text "increases")
   (:var mv5617 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv5627 :isa bio-amount :measured-item mv5618 :has-determiner "THE" :raw-text "amount")
   (:var mv5618 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv5620 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv5632 :isa show :|statement-OR-theme| mv5635 :beneficiary mv5633 :present "PRESENT")
   (:var mv5635 :isa evidence :has-determiner "THE")
   (:var mv5633 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv5645 :isa be :subject mv5644 :predicate mv5651 :present "PRESENT")
   (:var mv5644 :isa what) (:var mv5651 :isa evidence :statement mv5650 :has-determiner "THE")
   (:var mv5650 :isa regulate :agent mv5649 :object mv5643 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5649 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv5643 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv5653 :isa be :subject mv5652 :predicate mv5662 :present "PRESENT")
   (:var mv5652 :isa what) (:var mv5662 :isa evidence :statement mv5658 :has-determiner "THE")
   (:var mv5658 :isa binding :binder mv5657 :direct-bindee mv5661 :present "PRESENT" :raw-text
    "binds")
   (:var mv5657 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv5661 :isa gene :has-determiner "THE" :expresses mv5660 :raw-text "gene")
   (:var mv5660 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv5670 :isa gene-transcript-express :object mv5664 :organ mv5669 :present "PRESENT"
    :adverb mv5666 :raw-text "expressed")
   (:var mv5664 :isa gene :has-determiner "WHAT" :raw-text "genes") (:var mv5669 :isa liver)
   (:var mv5666 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv5678 :isa polar-question :statement mv5674)
   (:var mv5674 :isa gene-transcript-express :object mv5672 :organ mv5676 :past "PAST" :raw-text
    "expressed")
   (:var mv5672 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5676 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv5687 :isa polar-question :statement mv5685)
   (:var mv5685 :isa gene-transcript-express :object mv5679 :organ mv5684 :adverb mv5681 :raw-text
    "expressed")
   (:var mv5679 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5684 :isa liver) (:var mv5681 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv5692 :isa affect :manner mv5690 :agent mv5688 :object mv5689 :present "PRESENT"
    :raw-text "affect")
   (:var mv5690 :isa how)
   (:var mv5688 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv5689 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv5697 :isa affect :manner mv5694 :agent mv5696 :object mv5693 :present "PRESENT"
    :raw-text "affect")
   (:var mv5694 :isa how)
   (:var mv5696 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5693 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv5701 :isa be :subject mv5700 :predicate mv5706 :present "PRESENT")
   (:var mv5700 :isa what)
   (:var mv5706 :isa regulator :theme mv5709 :has-determiner "THE" :predication mv5703 :context
    mv5704 :raw-text "regulators")
   (:var mv5709 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv5698 mv5699))
   (:var mv5698 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5699 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv5703 :isa common) (:var mv5704 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv5714 :isa be :subject mv5713 :predicate mv5716 :present "PRESENT")
   (:var mv5713 :isa what) (:var mv5716 :isa path :endpoints mv5719 :has-determiner "THE")
   (:var mv5719 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv5711 mv5712))
   (:var mv5711 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5712 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv5726 :isa polar-question :statement mv5725)
   (:var mv5725 :isa affect :agent mv5721 :object mv5724 :raw-text "affect")
   (:var mv5721 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5724 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv5728 :isa regulate :agent mv5727 :object mv5729 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5727 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5729 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv5731 :isa upregulate :agent mv5730 :object mv5732 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv5730 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5732 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv5733 :isa upregulate :agent mv5735 :object mv5734 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv5735 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5734 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv5745 :isa polar-question :statement mv5744)
   (:var mv5744 :isa regulate :agent mv5739 :object mv5743 :raw-text "regulate")
   (:var mv5739 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5743 :isa gene :has-determiner "THE" :expresses mv5737 :raw-text "gene")
   (:var mv5737 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv5747 :isa show :|statement-OR-theme| mv5755 :beneficiary mv5748 :present "PRESENT")
   (:var mv5755 :isa evidence :statement mv5754 :has-determiner "THE")
   (:var mv5754 :isa regulate :agent mv5752 :object mv5746 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5752 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5746 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5748 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv5763 :isa polar-question :statement mv5762)
   (:var mv5762 :isa regulate :agent mv5758 :object mv5761 :raw-text "regulate")
   (:var mv5758 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5761 :isa gene :has-determiner "THE" :expresses mv5756 :raw-text "gene")
   (:var mv5756 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv5766 :isa decrease :agent mv5765 :|affected-process-OR-object| mv5768 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5765 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5768 :isa bio-amount :measured-item mv5764 :has-determiner "THE" :raw-text "amount")
   (:var mv5764 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv5776 :isa polar-question :statement mv5775)
   (:var mv5775 :isa regulate :agent mv5774 :object mv5773 :raw-text "regulate")
   (:var mv5774 :isa bio-entity :name "TNG")
   (:var mv5773 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv5784 :isa polar-question :statement mv5783)
   (:var mv5783 :isa regulate :agent mv5778 :object mv5782 :raw-text "regulate")
   (:var mv5778 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5782 :isa gene :has-determiner "THE" :expresses mv5781 :raw-text "gene")
   (:var mv5781 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv5786 :isa be :subject mv5785 :predicate mv5788 :present "PRESENT")
   (:var mv5785 :isa what)
   (:var mv5788 :isa pathway :pathwaycomponent mv5793 :has-determiner "THE" :raw-text "pathways")
   (:var mv5793 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv5790 mv5792))
   (:var mv5790 :isa bio-entity :name "TNG")
   (:var mv5792 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv5796 :isa be :subject mv5795 :predicate mv5798 :present "PRESENT")
   (:var mv5795 :isa what)
   (:var mv5798 :isa pathway :pathwaycomponent mv5803 :has-determiner "THE" :raw-text "pathways")
   (:var mv5803 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv5800 mv5802))
   (:var mv5800 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5802 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv5811 :isa polar-question :statement mv5810)
   (:var mv5810 :isa regulate :agent mv5806 :object mv5809 :raw-text "regulate")
   (:var mv5806 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5809 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv5820 :isa polar-question :statement mv5819)
   (:var mv5819 :isa regulate :agent mv5813 :object mv5818 :raw-text "regulate")
   (:var mv5813 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5818 :isa gene :has-determiner "THE" :expresses mv5817 :raw-text "gene")
   (:var mv5817 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv5833 :isa copular-predication-of-pp :item mv5822 :value mv5832 :prep "BETWEEN"
    :predicate mv5823)
   (:var mv5822 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5832 :isa pathway :pathwaycomponent mv5829 :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5829 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv5826 mv5828))
   (:var mv5826 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5828 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5823 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv5839 :isa affect :manner mv5835 :agent mv5837 :object mv5840 :present "PRESENT"
    :raw-text "affect")
   (:var mv5835 :isa how)
   (:var mv5837 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5840 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv5842 :isa bio-activate :agent mv5841 :object mv5843 :present "PRESENT" :raw-text
    "activates")
   (:var mv5841 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5843 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv5845 :isa bio-activate :agent mv5844 :object mv5846 :present "PRESENT" :raw-text
    "activates")
   (:var mv5844 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv5846 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv5848 :isa be :subject mv5847 :predicate mv5850 :present "PRESENT")
   (:var mv5847 :isa what) (:var mv5850 :isa path :endpoints mv5855 :has-determiner "THE")
   (:var mv5855 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv5852 mv5854))
   (:var mv5852 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5854 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv5862 :isa polar-question :statement mv5861)
   (:var mv5861 :isa regulate :agent mv5858 :object mv5860 :raw-text "regulate")
   (:var mv5858 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5860 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv5867 :isa affect :manner mv5865 :agent mv5863 :object mv5864 :present "PRESENT"
    :raw-text "affect")
   (:var mv5865 :isa how)
   (:var mv5863 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5864 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv5869 :isa bio-activate :agent mv5868 :object mv5870 :present "PRESENT" :raw-text
    "activates")
   (:var mv5868 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5870 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv5874 :isa decrease :agent mv5873 :|affected-process-OR-object| mv5876 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5873 :isa protein-family :predication mv5872 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5872 :isa active)
   (:var mv5876 :isa bio-amount :measured-item mv5871 :has-determiner "THE" :raw-text "amount")
   (:var mv5871 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv5882 :isa be :subject mv5881 :predicate mv5885 :present "PRESENT")
   (:var mv5881 :isa what)
   (:var mv5885 :isa upstream-segment :pathwaycomponent mv5888 :has-determiner "THE" :predication
    mv5884 :raw-text "upstreams")
   (:var mv5888 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv5879 mv5880))
   (:var mv5879 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5880 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv5884 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv5894 :isa affect :manner mv5892 :agent mv5890 :object mv5891 :present "PRESENT"
    :raw-text "affect")
   (:var mv5892 :isa how)
   (:var mv5890 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5891 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv5900 :isa polar-question :statement mv5899)
   (:var mv5899 :isa regulate :agent mv5895 :object mv5896 :raw-text "regulate")
   (:var mv5895 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5896 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv5908 :isa polar-question :statement mv5907)
   (:var mv5907 :isa regulate :agent mv5901 :object mv5906 :raw-text "regulate")
   (:var mv5901 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5906 :isa gene :has-determiner "THE" :expresses mv5902 :raw-text "gene")
   (:var mv5902 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv5913 :isa affect :manner mv5911 :agent mv5909 :object mv5910 :present "PRESENT"
    :raw-text "affect")
   (:var mv5911 :isa how)
   (:var mv5909 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5910 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv5916 :isa be :subject mv5915 :predicate mv5918 :present "PRESENT")
   (:var mv5915 :isa what) (:var mv5918 :isa path :endpoints mv5922 :has-determiner "THE")
   (:var mv5922 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv5920 mv5914))
   (:var mv5920 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5914 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv5933 :isa polar-question :statement mv5931)
   (:var mv5931 :isa regulate :agent mv5926 :affected-process mv5929 :raw-text "regulate")
   (:var mv5926 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5929 :isa gene-transcript-express :object mv5924 :has-determiner "THE" :raw-text
    "expression")
   (:var mv5924 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv5937 :isa decrease :agent mv5936 :affected-process mv5939 :present "PRESENT" :raw-text
    "decreases")
   (:var mv5936 :isa protein-family :predication mv5935 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5935 :isa active)
   (:var mv5939 :isa gene-transcript-express :object mv5934 :has-determiner "THE" :raw-text
    "expression")
   (:var mv5934 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv5945 :isa decrease :agent mv5944 :|affected-process-OR-object| mv5947 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5944 :isa protein-family :predication mv5943 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5943 :isa active)
   (:var mv5947 :isa bio-amount :measured-item mv5942 :has-determiner "THE" :raw-text "amount")
   (:var mv5942 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv5953 :isa decrease :agent mv5952 :|affected-process-OR-object| mv5955 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5952 :isa protein-family :predication mv5951 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5951 :isa active)
   (:var mv5955 :isa bio-amount :measured-item mv5950 :has-determiner "THE" :raw-text "amount")
   (:var mv5950 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv5960 :isa inhibit :agent mv5958 :affected-process mv5962 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv5958 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv5962 :isa bio-activity :participant mv5959 :has-determiner "THE" :raw-text "activity")
   (:var mv5959 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?" (:var mv5976 :isa polar-question :statement mv5974)
   (:var mv5974 :isa decrease :agent mv5965 :object mv5966 :raw-text "decrease")
   (:var mv5965 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv5966 :isa protein :info-context mv5973 :has-determiner "THE" :raw-text "CXCL8" :uid
    "UP:P10145" :name "IL8_HUMAN")
   (:var mv5973 :isa model :has-determiner "THE"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv5987 :isa polar-question :statement mv5985)
   (:var mv5985 :isa decrease :agent mv5977 :object mv5978 :raw-text "decrease")
   (:var mv5977 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv5978 :isa protein :info-context mv5984 :raw-text "CXCL10" :uid "UP:P02778" :name
    "CXL10_HUMAN")
   (:var mv5984 :isa model :has-determiner "THE"))
  ("TNF activates NFkappaB"
   (:var mv5989 :isa bio-activate :agent mv5988 :object mv5990 :present "PRESENT" :raw-text
    "activates")
   (:var mv5988 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5990 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv5996 :isa want :agent mv5993 :theme mv6007 :present "PRESENT")
   (:var mv5993 :isa interlocutor :name "speaker")
   (:var mv6007 :isa find-out :agent mv5993 :statement mv6004)
   (:var mv6004 :isa wh-question :statement mv6003 :var nil :wh how)
   (:var mv6003 :isa decrease :agent mv6002 :object mv5992 :present "PRESENT" :raw-text
    "decreases")
   (:var mv6002 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv5992 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv6012 :isa want :agent mv6009 :theme mv6027 :present "PRESENT")
   (:var mv6009 :isa interlocutor :name "speaker")
   (:var mv6027 :isa find-out :agent mv6009 :statement mv6024)
   (:var mv6024 :isa wh-question :statement mv6019 :var nil :wh how)
   (:var mv6019 :isa decrease :agent mv6018 :object mv6020 :present "PRESENT" :raw-text
    "decreases")
   (:var mv6018 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv6020 :isa protein :cell-type mv6022 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv6022 :isa cell-type :cell-line mv6008)
   (:var mv6008 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv6033 :isa want :agent mv6030 :theme mv6047 :present "PRESENT")
   (:var mv6030 :isa interlocutor :name "speaker")
   (:var mv6047 :isa find-out :agent mv6030 :statement mv6044)
   (:var mv6044 :isa wh-question :statement mv6039 :var nil :wh how)
   (:var mv6039 :isa bio-activate :agent mv6028 :object mv6040 :present "PRESENT" :raw-text
    "activates")
   (:var mv6028 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv6040 :isa protein :cell-type mv6042 :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv6042 :isa cell-type :cell-line mv6029)
   (:var mv6029 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv6053 :isa polar-question :statement mv6052)
   (:var mv6052 :isa phosphorylate :agent mv6049 :substrate mv6051 :raw-text "phosphorylate")
   (:var mv6049 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6051 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv6061 :isa polar-question :statement mv6060)
   (:var mv6060 :isa inhibit :agent mv6054 :object mv6059 :raw-text "inhibit")
   (:var mv6054 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv6059 :isa gene :has-determiner "THE" :expresses mv6055 :raw-text "gene")
   (:var mv6055 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv6069 :isa polar-question :statement mv6068)
   (:var mv6068 :isa stimulate :agent mv6062 :object mv6067 :raw-text "stimulate")
   (:var mv6062 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv6067 :isa gene :has-determiner "THE" :expresses mv6063 :raw-text "gene")
   (:var mv6063 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv6074 :isa want :agent mv6071 :theme mv6090 :present "PRESENT")
   (:var mv6071 :isa interlocutor :name "speaker")
   (:var mv6090 :isa find-out :agent mv6071 :statement mv6087)
   (:var mv6087 :isa wh-question :statement mv6081 :var nil :wh how)
   (:var mv6081 :isa decrease :agent mv6080 :object mv6082 :present "PRESENT" :raw-text
    "decreases")
   (:var mv6080 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv6082 :isa protein :cell-type mv6085 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv6085 :isa cell-type :cell-line mv6070 :|context-OR-associated-disease| mv6084)
   (:var mv6070 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv6084 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv6095 :isa polar-question :statement mv6092)
   (:var mv6092 :isa be :subject mv6093 :predicate mv6091)
   (:var mv6093 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv6091 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv6097 :isa list :theme mv6100 :present "PRESENT")
   (:var mv6100 :isa gene :predication mv6101 :quantifier mv6098 :has-determiner "THE" :raw-text
    "genes")
   (:var mv6101 :isa regulate :object mv6100 :agent mv6105 :past "PAST" :raw-text "regulated")
   (:var mv6105 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv6096 mv6104))
   (:var mv6096 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv6104 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv6098 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv6108 :isa list :theme mv6112 :present "PRESENT")
   (:var mv6112 :isa gene :predication mv6113 :quantifier mv6109 :has-determiner "THE" :raw-text
    "genes")
   (:var mv6113 :isa regulate :object mv6112 :agent mv6117 :past "PAST" :raw-text "regulated")
   (:var mv6117 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv6107 mv6116))
   (:var mv6107 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv6116 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv6109 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv6123 :isa show :|statement-OR-theme| mv6126 :beneficiary mv6124 :present "PRESENT")
   (:var mv6126 :isa mutation :object mv6131 :has-determiner "THE" :raw-text "mutations")
   (:var mv6131 :isa collection :context mv6122 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv6121 mv6129))
   (:var mv6122 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6121 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6129 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6124 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv6137 :isa be :subject mv6136 :predicate mv6139 :present "PRESENT")
   (:var mv6136 :isa what)
   (:var mv6139 :isa mutation :object mv6144 :has-determiner "THE" :raw-text "mutations")
   (:var mv6144 :isa collection :context mv6135 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv6134 mv6142))
   (:var mv6135 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6134 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6142 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv6151 :isa be :subject mv6150 :predicate mv6158 :present "PRESENT")
   (:var mv6150 :isa what)
   (:var mv6158 :isa gene :disease mv6149 :has-determiner "THE" :predication mv6147 :raw-text
    "genes")
   (:var mv6149 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv6147 :isa mutual-exclusivity :alternative mv6148)
   (:var mv6148 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv6163 :isa be :subject mv6162 :predicate mv6170 :present "PRESENT")
   (:var mv6162 :isa what)
   (:var mv6170 :isa gene :has-determiner "THE" :predication mv6159 :raw-text "genes")
   (:var mv6159 :isa mutual-exclusivity :alternative mv6160)
   (:var mv6160 :isa protein :context mv6161 :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv6161 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("What downregulates it?"
   (:var mv6172 :isa downregulate :|agent-OR-cause| mv6171 :|affected-process-OR-object| mv6173
    :present "PRESENT" :raw-text "downregulates")
   (:var mv6171 :isa what) (:var mv6173 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv6177 :isa have :possessor mv6176 :thing-possessed mv6179 :present "PRESENT")
   (:var mv6176 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6179 :isa evidence :fact mv6182 :predication mv6178)
   (:var mv6182 :isa regulate :agent mv6174 :progressive mv6181 :raw-text "regulated")
   (:var mv6174 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv6181 :isa be) (:var mv6178 :isa strong))
  ("What increases the amount of myc"
   (:var mv6188 :isa increase :|agent-OR-cause| mv6186 :|affected-process-OR-object| mv6190
    :present "PRESENT" :raw-text "increases")
   (:var mv6186 :isa what)
   (:var mv6190 :isa bio-amount :measured-item mv6192 :has-determiner "THE" :raw-text "amount")
   (:var mv6192 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv6196 :isa inhibit :|agent-OR-cause| mv6195 :object mv6194 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv6195 :isa what)
   (:var mv6194 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv6200 :isa be :subject mv6199 :predicate mv6212 :present "PRESENT")
   (:var mv6199 :isa what) (:var mv6212 :isa quality-predicate :item mv6210 :attribute mv6206)
   (:var mv6210 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv6197 mv6208 mv6198))
   (:var mv6197 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6208 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6198 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv6206 :isa location-of :has-determiner "THE" :predication mv6204 :modifier mv6205)
   (:var mv6204 :isa likely :comparative mv6202)
   (:var mv6202 :isa superlative-quantifier :name "most")
   (:var mv6205 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv6215 :isa be :subject mv6214 :predicate mv6224 :present "PRESENT")
   (:var mv6214 :isa what) (:var mv6224 :isa quality-predicate :item mv6213 :attribute mv6221)
   (:var mv6213 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6221 :isa location-of :has-determiner "THE" :predication mv6219 :modifier mv6220)
   (:var mv6219 :isa likely :comparative mv6217)
   (:var mv6217 :isa superlative-quantifier :name "most")
   (:var mv6220 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv6228 :isa be :subject mv6227 :predicate mv6231 :present "PRESENT")
   (:var mv6227 :isa what)
   (:var mv6231 :isa significance :agent mv6225 :has-determiner "THE" :modifier mv6230)
   (:var mv6225 :isa protein :context mv6226 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6226 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv6230 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv6243 :isa regulate :|affected-process-OR-object| mv6239 :agent mv6236 :present "PRESENT"
    :raw-text "regulated")
   (:var mv6239 :isa those :quantifier mv6237 :word "those") (:var mv6237 :isa which)
   (:var mv6236 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv6259 :isa copular-predication-of-pp :item mv6250 :value mv6258 :prep "IN" :predicate
    mv6251)
   (:var mv6250 :isa gene :quantifier mv6247 :has-determiner "THOSE" :raw-text "genes")
   (:var mv6247 :isa which)
   (:var mv6258 :isa gene :context mv6246 :quantifier mv6247 :has-determiner "THOSE" :raw-text
    "genes")
   (:var mv6246 :isa signaling-pathway :has-determiner "THE" :modifier mv6254 :raw-text
    "signaling pathway")
   (:var mv6254 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv6251 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv6270 :isa copular-predication-of-pp :item mv6264 :value mv6268 :prep mv6266 :predicate
    mv6265)
   (:var mv6264 :isa these :quantifier mv6262 :word "these") (:var mv6262 :isa which)
   (:var mv6268 :isa pathway :has-determiner "THE" :modifier mv6261 :raw-text "pathway")
   (:var mv6261 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv6266 :isa in :word "in") (:var mv6265 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv6279 :isa gene-transcript-express :object mv6274 :organ mv6278 :present "PRESENT"
    :raw-text "expressed")
   (:var mv6274 :isa pronoun/plural :quantifier mv6272 :word "them") (:var mv6272 :isa which)
   (:var mv6278 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv6294 :isa regulate :|affected-process-OR-object| mv6286 :agent mv6293 :present "PRESENT"
    :superlative mv6288 :adverb mv6289 :raw-text "regulated")
   (:var mv6286 :isa pronoun/plural :quantifier mv6284 :word "them") (:var mv6284 :isa which)
   (:var mv6293 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv6282 mv6283))
   (:var mv6282 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv6283 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv6288 :isa superlative-quantifier :name "most")
   (:var mv6289 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv6301 :isa target :agent mv6297 :object mv6298 :present "PRESENT" :raw-text "target")
   (:var mv6297 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv6298 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv6307 :isa target :|agent-OR-cause| mv6305 :object mv6302 :present "PRESENT" :raw-text
    "target")
   (:var mv6305 :isa those :quantifier mv6303 :word "those") (:var mv6303 :isa which)
   (:var mv6302 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv6310 :isa be :subject mv6309 :predicate mv6311 :present "PRESENT")
   (:var mv6309 :isa what)
   (:var mv6311 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv6314 :isa be :subject mv6313 :predicate mv6312 :present "PRESENT")
   (:var mv6313 :isa what)
   (:var mv6312 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv6320 :isa do :patient mv6315 :present "PRESENT")
   (:var mv6315 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv6330 :isa polar-question :statement mv6328)
   (:var mv6328 :isa there-exists :value mv6326 :predicate mv6323)
   (:var mv6326 :isa inhibitor :protein mv6321 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv6321 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv6323 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv6332 :isa name-something :patient mv6336 :present "PRESENT")
   (:var mv6336 :isa drug :predication mv6338 :quantifier mv6335 :raw-text "drugs")
   (:var mv6338 :isa inhibit :agent mv6336 :that-rel t :object mv6331 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv6331 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6335 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv6350 :isa polar-question :statement mv6349)
   (:var mv6349 :isa there-exists :value mv6347 :predicate mv6341)
   (:var mv6347 :isa inhibitor :quantifier mv6343 :protein mv6348 :raw-text "inhibitors")
   (:var mv6343 :isa any :word "any")
   (:var mv6348 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv6341 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv6360 :isa polar-question :statement mv6358)
   (:var mv6358 :isa there-exists :value mv6354 :predicate mv6352)
   (:var mv6354 :isa target-protein :agent mv6357 :raw-text "targets")
   (:var mv6357 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv6352 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv6364 :isa inhibit :object mv6361 :agent mv6363 :present "PRESENT" :raw-text "inhibit")
   (:var mv6361 :isa what)
   (:var mv6363 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv6369 :isa target :object mv6365 :agent mv6367 :present "PRESENT" :raw-text "target")
   (:var mv6365 :isa what)
   (:var mv6367 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv6376 :isa polar-question :statement mv6375)
   (:var mv6375 :isa target :agent mv6371 :object mv6374 :raw-text "target")
   (:var mv6371 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv6374 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv6379 :isa be :subject mv6378 :predicate mv6381 :present "PRESENT")
   (:var mv6378 :isa what)
   (:var mv6381 :isa target-protein :quantifier mv6380 :treatment mv6384 :raw-text "targets")
   (:var mv6380 :isa some :word "some")
   (:var mv6384 :isa treatment :disease mv6377 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv6377 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv6388 :isa be :subject mv6387 :predicate mv6390 :present "PRESENT")
   (:var mv6387 :isa what)
   (:var mv6390 :isa target-protein :quantifier mv6389 :disease mv6386 :raw-text "targets")
   (:var mv6389 :isa some :word "some")
   (:var mv6386 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv6399 :isa lead :agent mv6396 :theme mv6402 :modal mv6398 :raw-text "lead")
   (:var mv6396 :isa target-protein :has-determiner "WHAT" :raw-text "targets")
   (:var mv6402 :isa development :disease mv6394 :has-determiner "THE" :raw-text "development")
   (:var mv6394 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv6398 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv6410 :isa lead :agent mv6408 :theme mv6413 :modal mv6409 :raw-text "lead")
   (:var mv6408 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv6413 :isa development :disease mv6406 :has-determiner "THE" :raw-text "development")
   (:var mv6406 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv6409 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv6422 :isa lead :agent mv6420 :theme mv6417 :modal mv6421 :raw-text "lead")
   (:var mv6420 :isa gene :has-determiner "WHAT" :predication mv6419 :raw-text "genes")
   (:var mv6419 :isa mutation :object mv6420 :raw-text "mutated")
   (:var mv6417 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv6421 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv6427 :isa be :subject mv6426 :predicate mv6431 :present "PRESENT")
   (:var mv6426 :isa what)
   (:var mv6431 :isa mutation :predication mv6433 :has-determiner "THE" :modifier mv6429
    :|agent-OR-object| mv6430 :raw-text "mutation")
   (:var mv6433 :isa lead :agent mv6431 :that-rel t :theme mv6425 :present "PRESENT" :raw-text
    "leads")
   (:var mv6425 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv6429 :isa top-qua-location) (:var mv6430 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv6442 :isa like :agent mv6437 :modal mv6440)
   (:var mv6437 :isa interlocutor :name "speaker") (:var mv6440 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv6463 :isa bio-use :patient mv6453 :modal mv6454 :agent mv6455 :theme mv6462 :present
    "PRESENT" :raw-text "use")
   (:var mv6453 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv6454 :isa could)
   (:var mv6455 :isa interlocutor :name "speaker")
   (:var mv6462 :isa treatment :disease mv6451 :raw-text "treat")
   (:var mv6451 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv6466 :isa be :subject mv6465 :predicate mv6468 :present "PRESENT")
   (:var mv6465 :isa what)
   (:var mv6468 :isa drug :treatment mv6470 :quantifier mv6467 :raw-text "drugs")
   (:var mv6470 :isa treatment :disease mv6464 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv6464 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv6467 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv6478 :isa like :agent mv6474 :modal mv6485)
   (:var mv6474 :isa interlocutor :name "speaker") (:var mv6485 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv6489 :isa how))
  ("Does MEK act on ERK?" (:var mv6499 :isa polar-question :statement mv6497)
   (:var mv6497 :isa bio-act :agent mv6493 :acted-on mv6496 :raw-text "act")
   (:var mv6493 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6496 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv6504 :isa explicit-suggestion :suggestion mv6501 :marker let-as-directive)
   (:var mv6501 :isa build :artifact mv6503 :present "PRESENT")
   (:var mv6503 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv6507 :isa bio-activate :agent mv6506 :object mv6505 :present "PRESENT" :raw-text
    "activates")
   (:var mv6506 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6505 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv6509 :isa bio-activate :agent mv6508 :object mv6510 :present "PRESENT" :raw-text
    "activates")
   (:var mv6508 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv6510 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv6511 :isa remove :object mv6518 :present "PRESENT" :raw-text "Remove")
   (:var mv6518 :isa fact :statement mv6516 :has-determiner "THE")
   (:var mv6516 :isa bio-activate :agent mv6515 :object mv6517 :present "PRESENT" :raw-text
    "activates")
   (:var mv6515 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv6517 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv6530 :isa polar-question :statement mv6521)
   (:var mv6521 :isa tell :agent mv6520 :theme mv6529 :theme mv6522 :modal "CAN")
   (:var mv6520 :isa interlocutor :name "hearer")
   (:var mv6529 :isa copular-predication-of-pp :item mv6523 :value mv6527 :prep mv6525 :predicate
    mv6524)
   (:var mv6523 :isa what) (:var mv6527 :isa model :has-determiner "THE")
   (:var mv6525 :isa in :word "in") (:var mv6524 :isa be :modal "CAN")
   (:var mv6522 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv6534 :isa summarize :statement mv6533 :present "PRESENT")
   (:var mv6533 :isa model :has-determiner "THE"))
  ("Summarize the current model." (:var mv6539 :isa summarize :statement mv6538 :present "PRESENT")
   (:var mv6538 :isa model :has-determiner "THE" :predication mv6537) (:var mv6537 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv6541 :isa phosphorylate :|agent-OR-cause| mv6540 :substrate mv6542 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv6540 :isa what)
   (:var mv6542 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv6544 :isa binding :binder mv6543 :direct-bindee mv6545 :present "PRESENT" :raw-text
    "binds")
   (:var mv6543 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv6545 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv6550 :isa bio-activate :object mv6546 :present "PRESENT" :raw-text "activated")
   (:var mv6546 :isa protein :predication mv6547 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv6547 :isa phosphorylate :substrate mv6546 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv6554 :isa dephosphorylate :agent mv6551 :substrate mv6552 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv6551 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv6552 :isa protein :predication mv6560 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv6560 :isa binding :direct-bindee mv6552 :that-rel t :bindee mv6553 :present "PRESENT"
    :negation mv6557 :raw-text "bound")
   (:var mv6553 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv6557 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv6571 :isa phosphorylate :agent mv6562 :substrate mv6564 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv6562 :isa protein :predication mv6572 :predication mv6565 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv6572 :isa binding :direct-bindee mv6562 :that-rel t :bindee mv6563 :present "PRESENT"
    :negation mv6568 :raw-text "bound")
   (:var mv6563 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv6568 :isa not :word "not") (:var mv6565 :isa active)
   (:var mv6564 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv6578 :isa bio-activate :object mv6574 :present "PRESENT" :raw-text "activated")
   (:var mv6574 :isa protein :predication mv6575 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv6575 :isa phosphorylate :substrate mv6574 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv6582 :isa dephosphorylate :agent mv6579 :substrate mv6580 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv6579 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv6580 :isa protein :predication mv6588 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv6588 :isa binding :direct-bindee mv6580 :that-rel t :bindee mv6581 :present "PRESENT"
    :negation mv6585 :raw-text "bound")
   (:var mv6581 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv6585 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv6602 :isa phosphorylate :agent mv6591 :substrate mv6590 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv6591 :isa protein :predication mv6605 :mutation mv6604 :raw-text "BRAF" :uid "UP:P15056"
    :name "BRAF_HUMAN")
   (:var mv6605 :isa binding :direct-bindee mv6591 :that-rel t :bindee mv6601 :present "PRESENT"
    :negation mv6598 :raw-text "bound")
   (:var mv6601 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv6598 :isa not :word "not")
   (:var mv6604 :isa point-mutated-protein :position mv6593 :new-amino-acid mv6595
    :original-amino-acid mv6592)
   (:var mv6593 :isa number :value 600)
   (:var mv6595 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv6592 :isa amino-acid :name "valine" :letter "V")
   (:var mv6590 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv6611 :isa copular-predication :item mv6607 :value mv6610 :predicate mv6609)
   (:var mv6607 :isa protein :predication mv6608 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv6608 :isa phosphorylate :substrate mv6607 :raw-text "Phosphorylated")
   (:var mv6610 :isa active) (:var mv6609 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv6614 :isa phosphorylate :agent mv6612 :substrate mv6613 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv6612 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv6613 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv6623 :isa explicit-suggestion :suggestion mv6617 :marker let-as-directive)
   (:var mv6617 :isa move-something-somewhere :goal mv6621 :theme mv6616 :present "PRESENT")
   (:var mv6621 :isa top-qua-location :has-determiner "THE")
   (:var mv6616 :isa protein :predication mv6618 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv6618 :isa phosphorylate :substrate mv6616 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv6631 :isa explicit-suggestion :suggestion mv6626 :marker let-as-directive)
   (:var mv6626 :isa move-something-somewhere :at-relative-location mv6629 :theme mv6625 :present
    "PRESENT")
   (:var mv6629 :isa top-qua-location)
   (:var mv6625 :isa protein :predication mv6627 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv6627 :isa phosphorylate :substrate mv6625 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv6633 :isa show :at-relative-location mv6635 :|statement-OR-theme| mv6632 :present
    "PRESENT")
   (:var mv6635 :isa top-qua-location)
   (:var mv6632 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv6644 :isa explicit-suggestion :suggestion mv6639 :marker let-as-directive)
   (:var mv6639 :isa highlight :theme mv6640 :present "PRESENT")
   (:var mv6640 :isa upstream-segment :pathwaycomponent mv6638 :raw-text "upstream")
   (:var mv6638 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv6653 :isa explicit-suggestion :suggestion mv6646 :marker let-as-directive)
   (:var mv6646 :isa move-something-somewhere :goal mv6651 :theme mv6648 :present "PRESENT")
   (:var mv6651 :isa top-qua-location :has-determiner "THE")
   (:var mv6648 :isa element :modifier mv6647) (:var mv6647 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv6656 :isa be :subject mv6655 :predicate mv6659 :present "PRESENT")
   (:var mv6655 :isa what)
   (:var mv6659 :isa downstream-segment :pathwaycomponent mv6663 :has-determiner "THE" :predication
    mv6658 :raw-text "downstreams")
   (:var mv6663 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv6654 mv6662))
   (:var mv6654 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6662 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6658 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv6678 :isa polar-question :statement mv6675)
   (:var mv6675 :isa there-exists :value mv6671 :predicate mv6668)
   (:var mv6671 :isa upstream-segment :pathwaycomponent mv6676 :predication mv6670 :raw-text
    "upstreams")
   (:var mv6676 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv6665 mv6673 mv6666))
   (:var mv6665 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6673 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6666 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv6670 :isa common) (:var mv6668 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv6683 :isa be :subject mv6682 :predicate mv6688 :present "PRESENT")
   (:var mv6682 :isa what)
   (:var mv6688 :isa regulator :theme mv6691 :has-determiner "THE" :predication mv6685 :context
    mv6686 :raw-text "regulators")
   (:var mv6691 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv6679 mv6680 mv6681))
   (:var mv6679 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv6680 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6681 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6685 :isa common) (:var mv6686 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv6696 :isa be :subject mv6695 :predicate mv6700 :present "PRESENT")
   (:var mv6695 :isa what)
   (:var mv6700 :isa regulator :theme mv6703 :predication mv6697 :context mv6698 :raw-text
    "regulators")
   (:var mv6703 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv6693 mv6694))
   (:var mv6693 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6694 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6697 :isa common) (:var mv6698 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv6710 :isa be :subject mv6709 :predicate mv6705 :present "PRESENT")
   (:var mv6709 :isa what)
   (:var mv6705 :isa protein-family :molecule-type mv6716 :predication mv6711 :context mv6712
    :raw-text "transcriptional regulators" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv6716 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv6706 mv6707 mv6708))
   (:var mv6706 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv6707 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6708 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6711 :isa common) (:var mv6712 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv6721 :isa be :subject mv6720 :predicate mv6723 :present "PRESENT")
   (:var mv6720 :isa what)
   (:var mv6723 :isa mutation :object mv6729 :has-determiner "THE" :raw-text "mutations")
   (:var mv6729 :isa collection :context mv6719 :raw-text "PTEN, TP53 and BRAF" :type protein
    :number 3 :items (mv6725 mv6718 mv6727))
   (:var mv6719 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6725 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv6718 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6727 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv6735 :isa be :subject mv6734 :predicate mv6738 :present "PRESENT")
   (:var mv6734 :isa what)
   (:var mv6738 :isa frequency :measured-item mv6732 :has-determiner "THE" :measured-item mv6737
    :raw-text "frequency")
   (:var mv6732 :isa protein :context mv6733 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6733 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6737 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv6753 :isa copular-predication :item mv6747 :value mv6743 :predicate mv6748)
   (:var mv6747 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv6743 :isa mutual-exclusivity :disease mv6745 :alternative mv6744)
   (:var mv6745 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv6744 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv6748 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv6764 :isa copular-predication :item mv6758 :value mv6754 :predicate mv6759)
   (:var mv6758 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv6754 :isa mutual-exclusivity :alternative mv6755)
   (:var mv6755 :isa protein :context mv6756 :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv6756 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv6759 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv6767 :isa be :subject mv6766 :predicate mv6773 :present "PRESENT")
   (:var mv6766 :isa what) (:var mv6773 :isa quality-predicate :item mv6765 :attribute mv6770)
   (:var mv6765 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6770 :isa location-of :has-determiner "THE" :modifier mv6769)
   (:var mv6769 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv6777 :isa regulate :manner mv6774 :agent mv6776 :object mv6778 :present "PRESENT"
    :raw-text "regulate")
   (:var mv6774 :isa how)
   (:var mv6776 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv6778 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv6780 :isa be :subject mv6779 :predicate mv6781 :present "PRESENT")
   (:var mv6779 :isa what)
   (:var mv6781 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv6793 :isa polar-question :statement mv6782)
   (:var mv6782 :isa be :subject mv6783 :predicate mv6785)
   (:var mv6783 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6785 :isa member :set mv6791 :has-determiner "A")
   (:var mv6791 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv6800 :isa copular-predication-of-pp :item mv6795 :value mv6798 :prep mv6797 :predicate
    mv6796)
   (:var mv6795 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6798 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv6797 :isa in :word "in") (:var mv6796 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv6811 :isa copular-predication-of-pp :item mv6802 :value mv6809 :prep mv6804 :predicate
    mv6803)
   (:var mv6802 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6809 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv6804 :isa in :word "in") (:var mv6803 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv6813 :isa be :subject mv6812 :predicate mv6817 :present "PRESENT")
   (:var mv6812 :isa what)
   (:var mv6817 :isa has-name :item mv6820 :quantifier mv6814 :modifier mv6815)
   (:var mv6820 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6814 :isa some :word "some") (:var mv6815 :isa other :name "other"))
  ("What are synonyms for ERK?"
   (:var mv6823 :isa be :subject mv6822 :predicate mv6824 :present "PRESENT")
   (:var mv6822 :isa what) (:var mv6824 :isa has-synonym :item mv6826)
   (:var mv6826 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv6838 :isa share :object mv6828 :participant mv6837 :present "PRESENT" :raw-text
    "shared")
   (:var mv6828 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv6837 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv6829 mv6830 mv6831))
   (:var mv6829 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv6830 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv6831 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv6842 :isa be :subject mv6841 :predicate mv6844 :present "PRESENT")
   (:var mv6841 :isa what) (:var mv6844 :isa path :endpoints mv6848 :has-determiner "THE")
   (:var mv6848 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv6846 mv6840))
   (:var mv6846 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6840 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv6854 :isa polar-question :statement mv6852)
   (:var mv6852 :isa be :subject mv6850 :predicate mv6851)
   (:var mv6850 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv6851 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv6855 :isa remove :object mv6867 :present "PRESENT" :raw-text "Remove")
   (:var mv6867 :isa fact :statement mv6861 :has-determiner "THE")
   (:var mv6861 :isa bio-activate :agent mv6860 :object mv6862 :present "PRESENT" :raw-text
    "activates")
   (:var mv6860 :isa protein-family :predication mv6859 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6859 :isa active)
   (:var mv6862 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv6870 :isa bio-activate :agent mv6869 :object mv6871 :present "PRESENT" :raw-text
    "activates")
   (:var mv6869 :isa protein-family :predication mv6868 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6868 :isa active)
   (:var mv6871 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv6878 :isa copular-predication-of-pp :item mv6872 :value mv6876 :prep mv6874 :predicate
    mv6873)
   (:var mv6872 :isa what) (:var mv6876 :isa model :has-determiner "THE")
   (:var mv6874 :isa in :word "in") (:var mv6873 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv6889 :isa polar-question :statement mv6888)
   (:var mv6888 :isa copular-predication :item mv6881 :value mv6886 :predicate mv6879)
   (:var mv6881 :isa bio-amount :measured-item mv6884 :has-determiner "THE" :raw-text "amount")
   (:var mv6884 :isa protein-family :predication mv6883 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv6883 :isa phosphorylate :substrate mv6884 :raw-text "phosphorylated")
   (:var mv6886 :isa high :adverb mv6885) (:var mv6885 :isa ever :name "ever")
   (:var mv6879 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv6900 :isa copular-predication :item mv6893 :value mv6890 :predicate mv6894)
   (:var mv6893 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6890 :isa mutual-exclusivity :disease mv6891 :alternative mv6896)
   (:var mv6891 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv6896 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv6894 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv6910 :isa share :object mv6901 :participant mv6909 :present "PRESENT" :raw-text
    "shared")
   (:var mv6901 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv6909 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv6902 mv6903))
   (:var mv6902 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv6903 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv6919 :isa regulate :agent mv6916 :object mv6921 :present "PRESENT" :adverb mv6917
    :adverb mv6918 :raw-text "regulate")
   (:var mv6916 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv6921 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv6912 mv6913 mv6914))
   (:var mv6912 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv6913 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6914 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6917 :isa superlative-quantifier :name "most")
   (:var mv6918 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv6923 :isa be :subject mv6922 :predicate mv6933 :present "PRESENT")
   (:var mv6922 :isa what) (:var mv6933 :isa quality-predicate :item mv6931 :attribute mv6929)
   (:var mv6931 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv6929 :isa location-of :has-determiner "THE" :predication mv6927 :modifier mv6928)
   (:var mv6927 :isa likely :comparative mv6925)
   (:var mv6925 :isa superlative-quantifier :name "most")
   (:var mv6928 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv6938 :isa polar-question :statement mv6934)
   (:var mv6934 :isa be :subject mv6935 :predicate mv6937)
   (:var mv6935 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6937 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?" (:var mv6950 :isa polar-question :statement mv6941)
   (:var mv6941 :isa tell :agent mv6940 :theme mv6949 :theme mv6942 :modal "CAN")
   (:var mv6940 :isa interlocutor :name "hearer")
   (:var mv6949 :isa wh-question :statement mv6946 :wh whether)
   (:var mv6946 :isa be :subject mv6945 :predicate mv6948 :modal "CAN")
   (:var mv6945 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6948 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv6942 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv6954 :isa want :agent mv6951 :theme mv6964 :present "PRESENT")
   (:var mv6951 :isa interlocutor :name "speaker")
   (:var mv6964 :isa know :agent mv6951 :statement mv6963)
   (:var mv6963 :isa wh-question :statement mv6959 :wh if)
   (:var mv6959 :isa be :subject mv6958 :predicate mv6961 :present "PRESENT")
   (:var mv6958 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6961 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv6965 :isa what))
  ("What type of protein is BRAF?"
   (:var mv6973 :isa be :subject mv6970 :predicate mv6974 :present "PRESENT")
   (:var mv6970 :isa type :molecule-type mv6972 :has-determiner "WHAT" :raw-text "type")
   (:var mv6972 :isa protein :raw-text "protein")
   (:var mv6974 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv6977 :isa be :subject mv6976 :predicate mv6979 :present "PRESENT")
   (:var mv6976 :isa what)
   (:var mv6979 :isa bio-activity :participant mv6984 :has-determiner "THE" :raw-text "activity")
   (:var mv6984 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv6994 :isa polar-question :statement mv6987)
   (:var mv6987 :isa be :subject mv6988 :predicate mv6993)
   (:var mv6988 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6993 :isa collection :raw-text "a kinase or a transcription factor" :type kinase :number
    2 :items (mv6990 mv6986))
   (:var mv6990 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv6986 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv7001 :isa target :object mv6997 :agent mv6995 :present "PRESENT" :raw-text "targeted")
   (:var mv6997 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv6995 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv7007 :isa name-something :patient mv7003 :present "PRESENT")
   (:var mv7003 :isa transcription-factor :predication mv7010 :raw-text "transcription factors")
   (:var mv7010 :isa share :object mv7003 :participant mv7013 :past "PAST" :raw-text "shared")
   (:var mv7013 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv7004 mv7005 mv7006))
   (:var mv7004 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv7005 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv7006 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv7017 :isa tell :theme mv7022 :beneficiary mv7018 :present "PRESENT")
   (:var mv7022 :isa wh-question :statement mv7020 :wh if)
   (:var mv7020 :isa be :subject mv7015 :predicate mv7016 :present "PRESENT")
   (:var mv7015 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7016 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv7018 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv7026 :isa show :|statement-OR-theme| mv7023 :beneficiary mv7027 :present "PRESENT")
   (:var mv7023 :isa signaling-pathway :predication mv7028 :raw-text "signaling pathways")
   (:var mv7028 :isa share :object mv7023 :participant mv7031 :past "PAST" :raw-text "shared")
   (:var mv7031 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv7024 mv7025))
   (:var mv7024 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv7025 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7027 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv7036 :isa give :theme mv7033 :beneficiary mv7037 :present "PRESENT")
   (:var mv7033 :isa signaling-pathway :predication mv7038 :raw-text "signaling pathways")
   (:var mv7038 :isa share :object mv7033 :participant mv7041 :past "PAST" :raw-text "shared")
   (:var mv7041 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv7034 mv7035))
   (:var mv7034 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv7035 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7037 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv7072 :isa polar-question :statement mv7071)
   (:var mv7071 :isa event-relation :subordinated-event mv7067 :event mv7069)
   (:var mv7067 :isa wh-question :statement mv7054 :wh if)
   (:var mv7054 :isa increase :|agent-OR-cause| mv7052 :|multiplier-OR-cause| mv7064
    :|affected-process-OR-object| mv7056 :present "PRESENT" :raw-text "increase")
   (:var mv7052 :isa interlocutor :name "person-and-machine")
   (:var mv7064 :isa measurement :number mv7061) (:var mv7061 :isa number :value 10)
   (:var mv7056 :isa bio-amount :measured-item mv7058 :has-determiner "THE" :raw-text "amount")
   (:var mv7058 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7069 :isa copular-predication :item mv7045 :value mv7050 :predicate mv7043)
   (:var mv7045 :isa bio-amount :measured-item mv7048 :has-determiner "THE" :raw-text "amount")
   (:var mv7048 :isa protein-family :predication mv7047 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv7047 :isa phosphorylate :substrate mv7048 :raw-text "phosphorylated")
   (:var mv7050 :isa high :adverb mv7049) (:var mv7049 :isa ever :name "ever")
   (:var mv7043 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv7075 :isa phosphorylate :agent mv7074 :substrate mv7076 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv7074 :isa protein-family :predication mv7073 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7073 :isa active)
   (:var mv7076 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv7104 :isa polar-question :statement mv7103)
   (:var mv7103 :isa event-relation :subordinated-event mv7099 :event mv7101)
   (:var mv7099 :isa wh-question :statement mv7088 :wh if)
   (:var mv7088 :isa increase :|agent-OR-cause| mv7086 :|affected-process-OR-object| mv7090
    :present "PRESENT" :raw-text "increase")
   (:var mv7086 :isa interlocutor :name "person-and-machine")
   (:var mv7090 :isa bio-amount :measured-item mv7092 :has-determiner "THE" :raw-text "amount")
   (:var mv7092 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7101 :isa copular-predication :item mv7079 :value mv7084 :predicate mv7077)
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
  ("What are some pathways that affect BRAF?"
   (:var mv7106 :isa be :subject mv7105 :predicate mv7108 :present "PRESENT")
   (:var mv7105 :isa what)
   (:var mv7108 :isa pathway :predication mv7110 :quantifier mv7107 :raw-text "pathways")
   (:var mv7110 :isa affect :agent mv7108 :that-rel t :object mv7111 :present "PRESENT" :raw-text
    "affect")
   (:var mv7111 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7107 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv7113 :isa be :subject mv7112 :predicate mv7115 :present "PRESENT")
   (:var mv7112 :isa what)
   (:var mv7115 :isa pathway :predication mv7117 :has-determiner "THE" :raw-text "pathways")
   (:var mv7117 :isa affect :agent mv7115 :that-rel t :object mv7118 :present "PRESENT" :raw-text
    "affect")
   (:var mv7118 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv7128 :isa regulate :object mv7122 :agent mv7127 :present "PRESENT" :raw-text
    "regulated")
   (:var mv7122 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7127 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv7119 mv7120))
   (:var mv7119 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv7120 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv7132 :isa be :subject mv7131 :predicate mv7134 :present "PRESENT")
   (:var mv7131 :isa what)
   (:var mv7134 :isa gene :predication mv7139 :quantifier mv7133 :raw-text "genes")
   (:var mv7139 :isa regulate :object mv7134 :that-rel t :agent mv7130 :present "PRESENT" :raw-text
    "regulated")
   (:var mv7130 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7133 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv7145 :isa contain :theme mv7144 :patient mv7147 :present "PRESENT")
   (:var mv7144 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7147 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7141 mv7142))
   (:var mv7141 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7142 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv7150 :isa remove :object mv7159 :present "PRESENT" :raw-text "Remove")
   (:var mv7159 :isa fact :statement mv7154 :has-determiner "THE")
   (:var mv7154 :isa bio-activate :agent mv7148 :object mv7149 :present "PRESENT" :raw-text
    "activates")
   (:var mv7148 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7149 :isa protein :info-context mv7157 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv7157 :isa model :has-determiner "THE"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv7162 :isa remove :object mv7160 :present "PRESENT" :raw-text "Remove")
   (:var mv7160 :isa protein :predication mv7163 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv7163 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv7171 :isa be :subject mv7170 :predicate mv7173 :present "PRESENT")
   (:var mv7170 :isa what) (:var mv7173 :isa path :endpoints mv7177 :quantifier mv7172)
   (:var mv7177 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv7175 mv7169))
   (:var mv7175 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7169 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv7172 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv7184 :isa polar-question :statement mv7183)
   (:var mv7183 :isa bio-activate :agent mv7179 :object mv7180 :raw-text "activate")
   (:var mv7179 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7180 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv7187 :isa protein :has-determiner "WHAT" :modifier mv7186 :modifier mv7188 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7186 :isa drug :raw-text "drugs") (:var mv7188 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv7199 :isa copular-predication-of-pp :item mv7191 :value mv7198 :prep "IN" :predicate
    mv7192)
   (:var mv7191 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv7198 :isa kinase :|context-OR-in-pathway| mv7189 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv7189 :isa signaling-pathway :has-determiner "THE" :modifier mv7195 :raw-text
    "signalling pathway")
   (:var mv7195 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv7192 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv7205 :isa target :agent mv7207 :object mv7206 :present "PRESENT" :raw-text "target")
   (:var mv7207 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7206 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv7211 :isa bio-entity :has-determiner "WHAT" :modifier mv7212 :name "ELLK1")
   (:var mv7212 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv7225 :isa polar-question :statement mv7222)
   (:var mv7222 :isa increase :agent mv7213 :affected-process mv7218 :raw-text "increase")
   (:var mv7213 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7218 :isa gene-transcript-express :object mv7214 :raw-text "expression")
   (:var mv7214 :isa protein :organ mv7221 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv7221 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv7235 :isa polar-question :statement mv7233)
   (:var mv7233 :isa affect :agent mv7226 :affected-process mv7230 :raw-text "affect")
   (:var mv7226 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7230 :isa gene-transcript-express :organ mv7232 :object mv7227 :raw-text "expression")
   (:var mv7232 :isa liver)
   (:var mv7227 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv7242 :isa polar-question :statement mv7241)
   (:var mv7241 :isa alter :agent mv7236 :affected-process mv7240 :raw-text "alter")
   (:var mv7236 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7240 :isa gene-transcript-express :object mv7237 :raw-text "expression")
   (:var mv7237 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv7250 :isa polar-question :statement mv7246)
   (:var mv7246 :isa be :subject mv7243 :predicate mv7244)
   (:var mv7243 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7244 :isa protein-family :molecule-type mv7245 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv7245 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv7253 :isa inhibit :agent mv7252 :object mv7254 :present "PRESENT" :raw-text "inhibit")
   (:var mv7252 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7254 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv7257 :isa upregulate :agent mv7255 :object mv7256 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv7255 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7256 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv7261 :isa transcribe :object mv7259 :agent mv7258 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv7259 :isa what)
   (:var mv7258 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv7264 :isa be :subject mv7263 :predicate mv7262 :present "PRESENT")
   (:var mv7263 :isa what)
   (:var mv7262 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv7266 :isa be :subject mv7265 :predicate mv7267 :present "PRESENT")
   (:var mv7265 :isa what)
   (:var mv7267 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv7269 :isa phosphorylate :|agent-OR-cause| mv7268 :substrate mv7270 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv7268 :isa what)
   (:var mv7270 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv7274 :isa target :agent mv7272 :object mv7275 :present "PRESENT" :raw-text "target")
   (:var mv7272 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7275 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv7278 :isa regulate :|agent-OR-cause| mv7277 :object mv7276 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7277 :isa what) (:var mv7276 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv7281 :isa regulate :|agent-OR-cause| mv7280 :object mv7279 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7280 :isa what)
   (:var mv7279 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv7292 :isa polar-question :statement mv7291)
   (:var mv7291 :isa target :agent mv7290 :object mv7283 :raw-text "target")
   (:var mv7290 :isa bio-entity :name "miR-20b-5pp")
   (:var mv7283 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv7295 :isa be :subject mv7294 :predicate mv7297 :present "PRESENT")
   (:var mv7294 :isa what) (:var mv7297 :isa mutation :has-determiner "THE" :raw-text "mutations"))
  ("What does selumitinibib target?"
   (:var mv7306 :isa target :object mv7303 :agent mv7307 :present "PRESENT" :raw-text "target")
   (:var mv7303 :isa what) (:var mv7307 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv7312 :isa polar-question :statement mv7309)
   (:var mv7309 :isa be :subject mv7308 :predicate mv7311)
   (:var mv7308 :isa bio-entity :name "ELLK1")
   (:var mv7311 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv7314 :isa regulate :|agent-OR-cause| mv7313 :object mv7315 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7313 :isa what)
   (:var mv7315 :isa protein :variant-number mv7317 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv7317 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv7321 :isa target :object mv7318 :agent mv7322 :present "PRESENT" :raw-text "target")
   (:var mv7318 :isa what) (:var mv7322 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv7326 :isa be :subject mv7325 :predicate mv7331 :present "PRESENT")
   (:var mv7325 :isa what) (:var mv7331 :isa evidence :statement mv7330 :has-determiner "THE")
   (:var mv7330 :isa phosphorylate :agent mv7323 :substrate mv7324 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv7323 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7324 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv7333 :isa remove :object mv7332 :present "PRESENT" :raw-text "Remove")
   (:var mv7332 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv7338 :isa remove :object mv7341 :present "PRESENT" :raw-text "Remove")
   (:var mv7341 :isa interact :has-determiner "THE" :predication mv7340 :raw-text "interaction")
   (:var mv7340 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv7348 :isa bio-activate :agent mv7346 :object mv7347 :present "PRESENT" :raw-text
    "activates")
   (:var mv7346 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7347 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv7359 :isa copular-predication-of-pp :item mv7351 :value mv7358 :prep "IN" :predicate
    mv7352)
   (:var mv7351 :isa interact :has-determiner "HOW" :quantifier mv7350 :raw-text "interactions")
   (:var mv7350 :isa many :word "many")
   (:var mv7358 :isa interact :info-context mv7355 :has-determiner "HOW" :quantifier mv7350
    :raw-text "interactions")
   (:var mv7355 :isa model :has-determiner "THE") (:var mv7352 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv7372 :isa polar-question :statement mv7370)
   (:var mv7370 :isa decrease :agent mv7363 :|affected-process-OR-object| mv7367 :raw-text
    "decrease")
   (:var mv7363 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv7367 :isa bio-amount :measured-item mv7361 :has-determiner "THE" :raw-text "amount")
   (:var mv7361 :isa protein :predication mv7369 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv7369 :isa phosphorylate :substrate mv7361 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv7377 :isa bio-activate :object mv7375 :agent mv7373 :present "PRESENT" :raw-text
    "activate")
   (:var mv7375 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7373 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv7382 :isa bio-activate :object mv7380 :agent mv7378 :present "PRESENT" :raw-text
    "activate")
   (:var mv7380 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7378 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv7386 :isa bio-activate :object mv7384 :agent mv7383 :present "PRESENT" :raw-text
    "activate")
   (:var mv7384 :isa what)
   (:var mv7383 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv7390 :isa phosphorylate :amino-acid mv7388 :agent mv7387 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv7388 :isa what)
   (:var mv7387 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv7395 :isa regulate :object mv7393 :agent mv7391 :present "PRESENT" :raw-text "regulate")
   (:var mv7393 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7391 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv7405 :isa collection :type involve :number 2 :items (mv7398 mv7404))
   (:var mv7398 :isa involve :theme mv7397 :object mv7399 :present "PRESENT")
   (:var mv7397 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7399 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv7404 :isa binding :direct-bindee mv7401 :binder mv7403 :present "PRESENT" :raw-text
    "bind")
   (:var mv7401 :isa what)
   (:var mv7403 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv7408 :isa involve :theme mv7407 :object mv7409 :present "PRESENT")
   (:var mv7407 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7409 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv7413 :isa binding :direct-bindee mv7410 :binder mv7412 :present "PRESENT" :raw-text
    "bind")
   (:var mv7410 :isa what)
   (:var mv7412 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv7423 :isa collection :type involve :number 2 :items (mv7416 mv7419))
   (:var mv7416 :isa involve :theme mv7415 :object mv7417 :present "PRESENT")
   (:var mv7415 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7417 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv7419 :isa be :subject mv7415 :predicate mv7420 :present "PRESENT")
   (:var mv7420 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv7434 :isa polar-question :statement mv7433)
   (:var mv7433 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv7440 :isa polar-question :statement mv7439)
   (:var mv7439 :isa phosphorylate :agent mv7435 :substrate mv7436 :raw-text "phosphorylate")
   (:var mv7435 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7436 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv7444 :isa bio-activate :agent mv7443 :object mv7441 :present "PRESENT" :raw-text
    "activate")
   (:var mv7443 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv7441 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv7450 :isa target :agent mv7448 :affected-process mv7451 :present "PRESENT" :raw-text
    "target")
   (:var mv7448 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7451 :isa upstream-segment :pathwaycomponent mv7454 :raw-text "upstreams")
   (:var mv7454 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7445 mv7446))
   (:var mv7445 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7446 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv7460 :isa target :agent mv7458 :object mv7456 :present "PRESENT" :raw-text "target")
   (:var mv7458 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7456 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv7465 :isa target :agent mv7463 :object mv7461 :present "PRESENT" :raw-text "target")
   (:var mv7463 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7461 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv7472 :isa target :agent mv7470 :object mv7466 :present "PRESENT" :raw-text "target")
   (:var mv7470 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7466 :isa transcription-factor :predication mv7473 :raw-text "transcription factors")
   (:var mv7473 :isa share :object mv7466 :participant mv7476 :past "PAST" :raw-text "shared")
   (:var mv7476 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7467 mv7468))
   (:var mv7467 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7468 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv7483 :isa target :object mv7480 :agent mv7478 :present "PRESENT" :raw-text "target")
   (:var mv7480 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7478 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv7489 :isa target :object mv7484 :agent mv7485 :present "PRESENT" :raw-text "target")
   (:var mv7484 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7485 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv7500 :isa copular-predication :item mv7494 :value mv7490 :predicate mv7495)
   (:var mv7494 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7490 :isa mutual-exclusivity :disease mv7492 :alternative mv7491)
   (:var mv7492 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv7491 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv7495 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv7504 :isa target :agent mv7502 :object mv7505 :present "PRESENT" :raw-text "target")
   (:var mv7502 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7505 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv7516 :isa copular-predication-of-pp :item mv7508 :value mv7515 :prep "IN" :predicate
    mv7509)
   (:var mv7508 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv7515 :isa kinase :|context-OR-in-pathway| mv7506 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv7506 :isa signaling-pathway :has-determiner "THE" :modifier mv7512 :raw-text
    "signaling pathway")
   (:var mv7512 :isa bio-entity :name "FAKE") (:var mv7509 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv7519 :isa be :subject mv7518 :predicate mv7521 :present "PRESENT")
   (:var mv7518 :isa what)
   (:var mv7521 :isa mutation :object mv7523 :has-determiner "THE" :raw-text "mutations")
   (:var mv7523 :isa protein :context mv7526 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv7526 :isa cancer :predication mv7525) (:var mv7525 :isa fictional))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv7530 :isa be :subject mv7529 :predicate mv7532 :present "PRESENT")
   (:var mv7529 :isa what)
   (:var mv7532 :isa mutation :object mv7534 :has-determiner "THE" :raw-text "mutations")
   (:var mv7534 :isa protein :context mv7537 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv7537 :isa cancer :organ mv7536) (:var mv7536 :isa liver))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv7541 :isa remove :object mv7551 :present "PRESENT" :raw-text "Remove")
   (:var mv7551 :isa fact :statement mv7545 :has-determiner "THE")
   (:var mv7545 :isa transcribe :agent mv7540 :object mv7546 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv7540 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7546 :isa bio-entity :info-context mv7549 :name "FAKE")
   (:var mv7549 :isa model :has-determiner "THE"))
  ("ELK1 transcribes FOS"
   (:var mv7553 :isa transcribe :agent mv7552 :object mv7554 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv7552 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7554 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv7556 :isa remove :object mv7566 :present "PRESENT" :raw-text "Remove")
   (:var mv7566 :isa fact :statement mv7560 :has-determiner "THE")
   (:var mv7560 :isa transcribe :agent mv7555 :object mv7561 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv7555 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7561 :isa protein :info-context mv7564 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv7564 :isa model :has-determiner "THE"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv7579 :isa share :object mv7567 :participant mv7578 :present "PRESENT" :raw-text
    "shared")
   (:var mv7567 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7578 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv7568 mv7577))
   (:var mv7568 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7577 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv7590 :isa share :object mv7581 :participant mv7589 :present "PRESENT" :raw-text
    "shared")
   (:var mv7581 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7589 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7582 mv7583))
   (:var mv7582 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7583 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?"
   (:var mv7597 :isa bio-use :object mv7593 :agent mv7595 :present "PRESENT" :raw-text "use")
   (:var mv7593 :isa database :has-determiner "WHAT")
   (:var mv7595 :isa interlocutor :name "hearer"))
  ("What is the MSA?" (:var mv7599 :isa be :subject mv7598 :predicate mv7601 :present "PRESENT")
   (:var mv7598 :isa what)
   (:var mv7601 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv7610 :isa ask :patient mv7603 :modal mv7604 :agent mv7605 :present "PRESENT")
   (:var mv7603 :isa tissue :has-determiner "WHAT") (:var mv7604 :isa can)
   (:var mv7605 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv7619 :isa ask :patient mv7612 :modal mv7613 :agent mv7614 :present "PRESENT")
   (:var mv7612 :isa cancer :has-determiner "WHAT") (:var mv7613 :isa can)
   (:var mv7614 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv7628 :isa ask :patient mv7621 :modal mv7622 :agent mv7623 :present "PRESENT")
   (:var mv7621 :isa bio-mechanism :has-determiner "WHAT") (:var mv7622 :isa can)
   (:var mv7623 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv7632 :isa regulate :object mv7630 :agent mv7629 :present "PRESENT" :raw-text "regulate")
   (:var mv7630 :isa what)
   (:var mv7629 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv7636 :isa be :subject mv7635 :predicate mv7637 :present "PRESENT")
   (:var mv7635 :isa these :quantifier mv7633 :word "these") (:var mv7633 :isa which)
   (:var mv7637 :isa kinase :raw-text "kinases"))
  ("What pathways is ERK1 in?"
   (:var mv7642 :isa be :subject mv7641 :predicate mv7639 :present "PRESENT")
   (:var mv7641 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7639 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which of these is AKT1 in?"
   (:var mv7648 :isa be :subject mv7647 :predicate mv7644 :present "PRESENT")
   (:var mv7647 :isa these :quantifier mv7645 :word "these") (:var mv7645 :isa which)
   (:var mv7644 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv7655 :isa be :subject mv7654 :predicate mv7658 :present "PRESENT")
   (:var mv7654 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7658 :isa collection :raw-text "ERK1 and AKT1" :type protein :number 2 :items
    (mv7651 mv7652))
   (:var mv7651 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv7652 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What microRNAs target STAT3?"
   (:var mv7663 :isa target :agent mv7661 :object mv7659 :present "PRESENT" :raw-text "target")
   (:var mv7661 :isa micro-rna :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv7659 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv7669 :isa target :|agent-OR-cause| mv7667 :object mv7664 :present "PRESENT" :raw-text
    "target")
   (:var mv7667 :isa these :quantifier mv7665 :word "these") (:var mv7665 :isa which)
   (:var mv7664 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv7679 :isa polar-question :statement mv7677)
   (:var mv7677 :isa regulate :|agent-OR-cause| mv7675 :object mv7671 :raw-text "regulate")
   (:var mv7675 :isa these :quantifier mv7673 :word "these") (:var mv7673 :isa any :word "any")
   (:var mv7671 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv7682 :isa regulate :|agent-OR-cause| mv7681 :object mv7680 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7681 :isa what)
   (:var mv7680 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv7685 :isa involve :theme mv7684 :object mv7686 :present "PRESENT")
   (:var mv7684 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7686 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv7689 :isa be :subject mv7688 :predicate mv7691 :present "PRESENT")
   (:var mv7688 :isa what)
   (:var mv7691 :isa target-protein :agent mv7687 :has-determiner "THE" :raw-text "targets")
   (:var mv7687 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv7696 :isa be :subject mv7695 :predicate mv7702 :present "PRESENT")
   (:var mv7695 :isa what)
   (:var mv7702 :isa location-of :theme mv7697 :predication mv7700 :modifier mv7701)
   (:var mv7697 :isa pronoun/plural :word "their") (:var mv7700 :isa likely :comparative mv7698)
   (:var mv7698 :isa superlative-quantifier :name "most")
   (:var mv7701 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv7707 :isa polar-question :statement mv7705)
   (:var mv7705 :isa be :subject mv7703 :predicate mv7704)
   (:var mv7703 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv7704 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv7712 :isa polar-question :statement mv7708)
   (:var mv7708 :isa be :subject mv7709 :predicate mv7711)
   (:var mv7709 :isa pronoun/inanimate :word "it")
   (:var mv7711 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?" (:var mv7715 :isa be :subject mv7714 :predicate mv7713 :present "PRESENT")
   (:var mv7714 :isa what)
   (:var mv7713 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv7720 :isa target :object mv7716 :|agent-OR-cause| mv7718 :present "PRESENT" :raw-text
    "target")
   (:var mv7716 :isa what) (:var mv7718 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv7725 :isa regulate :object mv7723 :agent mv7721 :present "PRESENT" :raw-text "regulate")
   (:var mv7723 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7721 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?"
   (:var mv7728 :isa be :subject mv7727 :predicate mv7729 :present "PRESENT")
   (:var mv7727 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7729 :isa pronoun/inanimate :word "it"))
  ("What are the targets of PLX-4720?"
   (:var mv7733 :isa be :subject mv7732 :predicate mv7735 :present "PRESENT")
   (:var mv7732 :isa what)
   (:var mv7735 :isa target-protein :agent mv7731 :has-determiner "THE" :raw-text "targets")
   (:var mv7731 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv7745 :isa polar-question :statement mv7744)
   (:var mv7744 :isa target :|agent-OR-cause| mv7740 :object mv7743 :raw-text "target")
   (:var mv7740 :isa pronoun/inanimate :word "it")
   (:var mv7743 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv7750 :isa inhibit :agent mv7749 :object mv7754 :present "PRESENT" :raw-text "inhibits")
   (:var mv7749 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv7754 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv7746 mv7747))
   (:var mv7746 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv7747 :isa protein :predication mv7752 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv7752 :isa active))
  ("JAK1 activates STAT3"
   (:var mv7757 :isa bio-activate :agent mv7755 :object mv7756 :present "PRESENT" :raw-text
    "activates")
   (:var mv7755 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv7756 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv7763 :isa want :agent mv7760 :theme mv7773 :present "PRESENT")
   (:var mv7760 :isa interlocutor :name "speaker")
   (:var mv7773 :isa find-out :agent mv7760 :statement mv7770)
   (:var mv7770 :isa wh-question :statement mv7769 :var nil :wh how)
   (:var mv7769 :isa bio-activate :agent mv7758 :object mv7759 :present "PRESENT" :raw-text
    "activates")
   (:var mv7758 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv7759 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv7779 :isa want :agent mv7776 :theme mv7793 :present "PRESENT")
   (:var mv7776 :isa interlocutor :name "speaker")
   (:var mv7793 :isa find-out :agent mv7776 :statement mv7790)
   (:var mv7790 :isa wh-question :statement mv7785 :var nil :wh how)
   (:var mv7785 :isa bio-activate :agent mv7774 :object mv7786 :present "PRESENT" :raw-text
    "activates")
   (:var mv7774 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv7786 :isa protein :cell-type mv7788 :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv7788 :isa cell-type :cell-line mv7775)
   (:var mv7775 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv7798 :isa explicit-suggestion :suggestion mv7795 :marker let-as-directive)
   (:var mv7795 :isa build :artifact mv7797 :present "PRESENT")
   (:var mv7797 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv7800 :isa phosphorylate :agent mv7799 :substrate mv7801 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv7799 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7801 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv7808 :isa regulate :agent mv7807 :object mv7805 :present "PRESENT" :raw-text "regulate")
   (:var mv7807 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7805 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv7809 :isa upregulate :|agent-OR-cause| mv7811 :object mv7810 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv7811 :isa what)
   (:var mv7810 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv7815 :isa have :possessor mv7813 :thing-possessed mv7817 :modal mv7814)
   (:var mv7813 :isa what)
   (:var mv7817 :isa effect :object mv7812 :affected-process mv7820 :has-determiner "THE" :raw-text
    "effect")
   (:var mv7812 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7820 :isa bio-activate :raw-text "activation") (:var mv7814 :isa can))
  ("Are there any drugs for IL10?" (:var mv7833 :isa polar-question :statement mv7831)
   (:var mv7831 :isa there-exists :value mv7829 :predicate mv7826)
   (:var mv7829 :isa drug :target mv7824 :quantifier mv7828 :raw-text "drugs")
   (:var mv7824 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7828 :isa any :word "any") (:var mv7826 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv7837 :isa gene-transcript-express :agent mv7836 :object mv7834 :present "PRESENT"
    :raw-text "express")
   (:var mv7836 :isa tissue :has-determiner "WHICH")
   (:var mv7834 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv7842 :isa regulate :manner mv7840 :agent mv7838 :object mv7839 :present "PRESENT"
    :raw-text "regulate")
   (:var mv7840 :isa how)
   (:var mv7838 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7839 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv7847 :isa be :subject mv7846 :predicate mv7843 :present "PRESENT")
   (:var mv7846 :isa what)
   (:var mv7843 :isa transcription-factor :predication mv7849 :raw-text "transcription factors")
   (:var mv7849 :isa binding :binder mv7843 :that-rel t :direct-bindee mv7852 :present "PRESENT"
    :raw-text "bind")
   (:var mv7852 :isa gene :has-determiner "THE" :expresses mv7853 :raw-text "genes")
   (:var mv7853 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv7844 mv7845))
   (:var mv7844 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv7845 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv7858 :isa regulate :agent mv7857 :object mv7861 :present "PRESENT" :raw-text "regulate")
   (:var mv7857 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7861 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv7854 mv7855))
   (:var mv7854 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv7855 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv7865 :isa factor :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv7875 :isa relation :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv7886 :isa be :subject mv7885 :predicate mv7884 :present "PRESENT")
   (:var mv7885 :isa what)
   (:var mv7884 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv7891 :isa polar-question :statement mv7888)
   (:var mv7888 :isa be :subject mv7887 :predicate mv7890)
   (:var mv7887 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv7890 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv7895 :isa transcribe :object mv7893 :agent mv7892 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv7893 :isa what)
   (:var mv7892 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv7904 :isa polar-question :statement mv7902)
   (:var mv7902 :isa there-exists :value mv7900 :predicate mv7898)
   (:var mv7900 :isa drug :target mv7896 :raw-text "drugs")
   (:var mv7896 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7898 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv7906 :isa relation :has-determiner "WHAT"))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv7917 :isa relation :has-determiner "WHAT"))))