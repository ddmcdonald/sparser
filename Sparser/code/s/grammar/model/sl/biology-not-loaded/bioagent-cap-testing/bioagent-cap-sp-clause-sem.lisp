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
   (:var mv448 :isa involve :theme mv446 :theme mv450 :past "PAST")
   (:var mv446 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv450 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?" (:var mv461 :isa polar-question :statement mv455)
   (:var mv455 :isa involve :theme mv453 :theme mv459 :past "PAST")
   (:var mv453 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv459 :isa regulate :|cellular-process-OR-agent| mv457 :raw-text "regulation")
   (:var mv457 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?" (:var mv469 :isa polar-question :statement mv464)
   (:var mv464 :isa involve :theme mv462 :theme mv466 :past "PAST")
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
   (:var mv494 :isa involve :theme mv487 :theme mv493 :present "PRESENT")
   (:var mv487 :isa gene :predication mv488 :has-determiner "WHAT" :raw-text "genes")
   (:var mv488 :isa regulate :object mv487 :agent mv485 :past "PAST" :raw-text "regulated")
   (:var mv485 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv493 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv498 :isa list :theme mv499 :present "PRESENT")
   (:var mv499 :isa gene :predication mv500 :raw-text "genes")
   (:var mv500 :isa regulate :object mv499 :agent mv497 :past "PAST" :raw-text "regulated")
   (:var mv497 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv509 :isa involve :theme mv504 :theme mv508 :present "PRESENT")
   (:var mv504 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv508 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv520 :isa involve :theme mv513 :theme mv519 :present "PRESENT")
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
   (:var mv548 :isa involve :theme mv543 :theme mv547 :present "PRESENT")
   (:var mv543 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv547 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv560 :isa wh-question :statement mv559 :var nil :wh what)
   (:var mv559 :isa prepositional-phrase :pobj mv557 :prep "IN") (:var mv557 :isa aptosis))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv562 :isa let :complement mv579 :present "PRESENT")
   (:var mv579 :isa know :agent mv563 :statement mv578 :present "PRESENT")
   (:var mv563 :isa interlocutor :name "speaker")
   (:var mv578 :isa wh-question :statement mv575 :wh if)
   (:var mv575 :isa involve :theme mv569 :theme mv574 :present "PRESENT")
   (:var mv569 :isa gene :quantifier mv566 :predication mv570 :has-determiner "THE" :raw-text
    "genes")
   (:var mv566 :isa any :word "any")
   (:var mv570 :isa regulate :object mv569 :agent mv561 :present "PRESENT" :raw-text "regulates")
   (:var mv561 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv574 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv581 :isa let :complement mv599 :present "PRESENT")
   (:var mv599 :isa know :agent mv582 :statement mv598 :present "PRESENT")
   (:var mv582 :isa interlocutor :name "speaker")
   (:var mv598 :isa wh-question :statement mv595 :wh whether)
   (:var mv595 :isa involve :theme mv589 :theme mv594 :present "PRESENT")
   (:var mv589 :isa gene :quantifier mv586 :predication mv590 :has-determiner "THE" :raw-text
    "genes")
   (:var mv586 :isa any :word "any")
   (:var mv590 :isa regulate :object mv589 :agent mv580 :present "PRESENT" :raw-text "regulates")
   (:var mv580 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv594 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv616 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv618 :isa tell :beneficiary mv619 :present "PRESENT")
   (:var mv619 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv629 :isa tell :theme mv638 :beneficiary mv630 :present "PRESENT")
   (:var mv638 :isa wh-question :statement mv636 :wh if)
   (:var mv636 :isa involve :theme mv628 :theme mv635 :present "PRESENT")
   (:var mv628 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv635 :isa apoptosis :raw-text "apoptosis")
   (:var mv630 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv640 :isa tell :theme mv650 :theme mv641 :present "PRESENT")
   (:var mv650 :isa wh-question :statement mv648 :wh whether)
   (:var mv648 :isa involve :theme mv639 :theme mv647 :present "PRESENT")
   (:var mv639 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv647 :isa apoptosis :raw-text "apoptosis")
   (:var mv641 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv653 :isa be :subject mv652 :predicate mv655 :present "PRESENT") (:var mv652 :isa what)
   (:var mv655 :isa gene :predication mv661 :predication mv654 :raw-text "genes")
   (:var mv661 :isa involve :theme mv655 :that-rel t :theme mv660 :present "PRESENT")
   (:var mv660 :isa apoptosis :raw-text "apoptosis")
   (:var mv654 :isa regulate :object mv655 :agent mv651 :raw-text "regulated")
   (:var mv651 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv665 :isa be :subject mv664 :predicate mv667 :present "PRESENT") (:var mv664 :isa what)
   (:var mv667 :isa gene :predication mv673 :predication mv666 :raw-text "genes")
   (:var mv673 :isa involve :theme mv667 :that-rel t :theme mv672 :present "PRESENT")
   (:var mv672 :isa apoptosis :raw-text "apoptosis")
   (:var mv666 :isa regulate :object mv667 :agent mv663 :raw-text "regulated")
   (:var mv663 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv685 :isa involve :theme mv678 :theme mv684 :present "PRESENT")
   (:var mv678 :isa downstream-segment :pathwaycomponent mv675 :has-determiner "WHAT" :modifier
    mv677 :raw-text "downstream")
   (:var mv675 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv677 :isa gene :raw-text "genes") (:var mv684 :isa apoptosis :raw-text "apoptosis"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv690 :isa be :subject mv689 :predicate mv692 :present "PRESENT") (:var mv689 :isa what)
   (:var mv692 :isa involve :theme mv697 :participant mv688 :has-determiner "THE")
   (:var mv697 :isa regulate :|cellular-process-OR-agent| mv695 :raw-text "regulation")
   (:var mv695 :isa apoptosis :raw-text "apoptotic")
   (:var mv688 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv702 :isa involve :theme mv701 :theme mv703 :present "PRESENT")
   (:var mv701 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv703 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv707 :isa involve :theme mv705 :theme mv708 :present "PRESENT")
   (:var mv705 :isa bio-process :has-determiner "WHAT" :raw-text "processes")
   (:var mv708 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv717 :isa involve :theme mv712 :theme mv716 :present "PRESENT")
   (:var mv712 :isa gene :has-determiner "WHICH" :predication mv711 :raw-text "genes")
   (:var mv711 :isa regulate :object mv712 :agent mv709 :raw-text "regulated")
   (:var mv709 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv716 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv730 :isa involve :theme mv722 :theme mv729 :present "PRESENT")
   (:var mv722 :isa gene :organ mv725 :has-determiner "WHICH" :predication mv721 :raw-text "genes")
   (:var mv725 :isa liver :has-determiner "THE")
   (:var mv721 :isa regulate :object mv722 :agent mv719 :raw-text "regulated")
   (:var mv719 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv729 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv741 :isa involve :theme mv736 :theme mv740 :present "PRESENT")
   (:var mv736 :isa gene :has-determiner "WHICH" :predication mv735 :raw-text "genes")
   (:var mv735 :isa regulate :object mv736 :agent mv733 :raw-text "regulated")
   (:var mv733 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv740 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv745 :isa bio-activate :agent mv744 :object mv743 :present "PRESENT" :raw-text
    "activates")
   (:var mv744 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv743 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv747 :isa bio-activate :agent mv746 :object mv748 :present "PRESENT" :raw-text
    "activates")
   (:var mv746 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv748 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv751 :isa phosphorylate :agent mv749 :substrate mv750 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv749 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv750 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv754 :isa dephosphorylate :agent mv752 :substrate mv753 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv752 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv753 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv756 :isa upregulate :agent mv755 :object mv757 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv755 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv757 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv761 :isa binding :binder mv760 :direct-bindee mv764 :present "PRESENT" :raw-text
    "binds")
   (:var mv760 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv764 :isa protein :has-determiner "THE" :modifier mv759 :modifier mv763 :raw-text "EGF"
    :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv759 :isa growth-factor :raw-text "growth factor")
   (:var mv763 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv765 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv771 :isa binding :binder mv778 :direct-bindee mv779 :present "PRESENT" :raw-text
    "binds")
   (:var mv778 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv769
    :component mv768)
   (:var mv769 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv768 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv779 :isa bio-complex :quantifier mv772 :raw-text "EGFR-EGF" :component mv774 :component
    mv773)
   (:var mv772 :isa another :word "another")
   (:var mv774 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv773 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv785 :isa binding :binder mv787 :direct-bindee mv780 :present "PRESENT" :raw-text
    "binds")
   (:var mv787 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv782
    :component mv782)
   (:var mv782 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv780 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv788 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv794 :isa binding :binder mv790 :direct-bindee mv791 :present "PRESENT" :raw-text
    "binds")
   (:var mv790 :isa protein :predication mv793 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv793 :isa binding :direct-bindee mv790 :binder mv792 :raw-text "bound")
   (:var mv792 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv791 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv798 :isa binding :binder mv796 :direct-bindee mv799 :present "PRESENT" :raw-text
    "binds")
   (:var mv796 :isa protein :predication mv797 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv797 :isa binding :direct-bindee mv796 :binder mv795 :raw-text "bound")
   (:var mv795 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv799 :isa protein :predication mv806 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv806 :isa binding :direct-bindee mv799 :that-rel t :bindee mv805 :present "PRESENT"
    :negation mv802 :raw-text "bound")
   (:var mv805 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv802 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv811 :isa binding :binder mv810 :direct-bindee mv812 :present "PRESENT" :raw-text
    "binds")
   (:var mv810 :isa protein :predication mv809 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv809 :isa binding :direct-bindee mv810 :binder mv808 :raw-text "bound")
   (:var mv808 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv812 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv822 :isa binding :binder mv816 :direct-bindee mv823 :present "PRESENT" :raw-text
    "binds")
   (:var mv816 :isa protein :predication mv824 :predication mv815 :raw-text "NRAS" :uid "UP:P01111"
    :name "RASN_HUMAN")
   (:var mv824 :isa binding :direct-bindee mv816 :that-rel t :bindee mv813 :present "PRESENT"
    :negation mv819 :raw-text "bound")
   (:var mv813 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv819 :isa not :word "not")
   (:var mv815 :isa binding :direct-bindee mv816 :binder mv814 :raw-text "bound")
   (:var mv814 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv823 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv826 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv831 :isa affect :manner mv828 :agent mv830 :object mv827 :present "PRESENT" :raw-text
    "affect")
   (:var mv828 :isa how)
   (:var mv830 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv827 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv840 :isa explicit-suggestion :suggestion mv834 :marker let-as-directive)
   (:var mv834 :isa highlight :theme mv836 :present "PRESENT")
   (:var mv836 :isa downstream-segment :pathwaycomponent mv833 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv833 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv849 :isa explicit-suggestion :suggestion mv843 :marker let-as-directive)
   (:var mv843 :isa move-something-somewhere :goal mv847 :theme mv842 :present "PRESENT")
   (:var mv847 :isa bottom :has-determiner "THE")
   (:var mv842 :isa protein :predication mv844 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv844 :isa phosphorylate :substrate mv842 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv858 :isa explicit-suggestion :suggestion mv854 :marker let-as-directive)
   (:var mv854 :isa put-something-somewhere :theme mv851 :present "PRESENT")
   (:var mv851 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv866 :isa explicit-suggestion :suggestion mv861 :marker let-as-directive)
   (:var mv861 :isa show :at-relative-location mv864 :|statement-OR-theme| mv860 :present
    "PRESENT")
   (:var mv864 :isa top-qua-location :has-determiner "THE")
   (:var mv860 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv877 :isa polar-question :statement mv875)
   (:var mv875 :isa decrease :agent mv867 :object mv871 :raw-text "decrease")
   (:var mv867 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv871 :isa protein :info-context mv874 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv874 :isa model :has-determiner "THE"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv892 :isa polar-question :statement mv889)
   (:var mv889 :isa decrease :agent mv878 :|affected-process-OR-object| mv883 :raw-text "decrease")
   (:var mv878 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv883 :isa bio-amount :measured-item mv885 :has-determiner "THE" :raw-text "amount")
   (:var mv885 :isa protein :info-context mv888 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv888 :isa model :has-determiner "THE"))
  ("Does FOS decrease ELK1 in the model?" (:var mv903 :isa polar-question :statement mv901)
   (:var mv901 :isa decrease :agent mv895 :object mv893 :raw-text "decrease")
   (:var mv895 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv893 :isa protein :info-context mv900 :raw-text "ELK1" :uid "UP:P19419" :name
    "ELK1_HUMAN")
   (:var mv900 :isa model :has-determiner "THE"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv927 :isa polar-question :statement mv926)
   (:var mv926 :isa event-relation :subordinated-event mv924 :event mv920)
   (:var mv924 :isa wh-question :statement mv921 :wh if)
   (:var mv921 :isa increase :|agent-OR-cause| mv909 :|affected-process-OR-object| mv913 :raw-text
    "increase")
   (:var mv909 :isa interlocutor :name "person-and-machine")
   (:var mv913 :isa bio-amount :has-determiner "THE" :raw-text "amount")
   (:var mv920 :isa vanish :agent mv906 :raw-text "vanish")
   (:var mv906 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv952 :isa polar-question :statement mv951)
   (:var mv951 :isa event-relation :subordinated-event mv949 :event mv945)
   (:var mv949 :isa wh-question :statement mv946 :wh if)
   (:var mv946 :isa increase :|agent-OR-cause| mv933 :cause mv944 :|affected-process-OR-object|
    mv937 :raw-text "increase")
   (:var mv933 :isa interlocutor :name "person-and-machine")
   (:var mv944 :isa measurement :number mv941) (:var mv941 :isa number :value 10)
   (:var mv937 :isa bio-amount :measured-item mv928 :has-determiner "THE" :raw-text "amount")
   (:var mv928 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv945 :isa vanish :agent mv930 :raw-text "vanish")
   (:var mv930 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv974 :isa polar-question :statement mv973)
   (:var mv973 :isa event-relation :subordinated-event mv971 :event mv968)
   (:var mv971 :isa wh-question :statement mv969 :wh if)
   (:var mv969 :isa increase :|agent-OR-cause| mv959 :cause mv967 :object mv954 :raw-text
    "increase")
   (:var mv959 :isa interlocutor :name "person-and-machine")
   (:var mv967 :isa measurement :number mv964) (:var mv964 :isa number :value 10)
   (:var mv954 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv968 :isa vanish :agent mv953 :raw-text "vanish")
   (:var mv953 :isa protein :predication mv956 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv956 :isa phosphorylate :substrate mv953 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv1000 :isa polar-question :statement mv999)
   (:var mv999 :isa event-relation :subordinated-event mv997 :event mv993)
   (:var mv997 :isa wh-question :statement mv994 :wh if)
   (:var mv994 :isa increase :|agent-OR-cause| mv981 :cause mv992 :|affected-process-OR-object|
    mv985 :raw-text "increase")
   (:var mv981 :isa interlocutor :name "person-and-machine")
   (:var mv992 :isa measurement :number mv989) (:var mv989 :isa number :value 10)
   (:var mv985 :isa bio-amount :measured-item mv976 :has-determiner "THE" :raw-text "amount")
   (:var mv976 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv993 :isa vanish :agent mv975 :raw-text "vanish")
   (:var mv975 :isa protein :predication mv978 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv978 :isa phosphorylate :substrate mv975 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv1012 :isa polar-question :statement mv1010)
   (:var mv1010 :isa increase :cause mv1004 :adverb mv1007 :raw-text "increase")
   (:var mv1004 :isa bio-amount :measured-item mv1001 :has-determiner "THE" :raw-text "amount")
   (:var mv1001 :isa protein :predication mv1006 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1006 :isa phosphorylate :substrate mv1001 :raw-text "phosphorylated")
   (:var mv1007 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?" (:var mv1015 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv1023 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv1034 :isa polar-question :statement mv1033)
   (:var mv1033 :isa sustained :participant mv1029 :past "PAST")
   (:var mv1029 :isa protein :predication mv1031 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv1031 :isa binding :direct-bindee mv1029 :binder mv1028 :raw-text "bound")
   (:var mv1028 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv1041 :isa polar-question :statement mv1040)
   (:var mv1040 :isa copular-predication :item mv1035 :value mv1039 :predicate mv1036)
   (:var mv1035 :isa protein :predication mv1037 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1037 :isa phosphorylate :substrate mv1035 :raw-text "phosphorylated")
   (:var mv1039 :isa high :adverb mv1038) (:var mv1038 :isa always :name "always")
   (:var mv1036 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv1048 :isa polar-question :statement mv1047)
   (:var mv1047 :isa copular-predication :item mv1042 :value mv1046 :predicate mv1043)
   (:var mv1042 :isa protein :predication mv1044 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1044 :isa phosphorylate :substrate mv1042 :raw-text "phosphorylated")
   (:var mv1046 :isa high :adverb mv1045) (:var mv1045 :isa eventually :name "eventually")
   (:var mv1043 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv1055 :isa polar-question :statement mv1054)
   (:var mv1054 :isa copular-predication :item mv1049 :value mv1053 :predicate mv1050)
   (:var mv1049 :isa protein :predication mv1051 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1051 :isa phosphorylate :substrate mv1049 :raw-text "phosphorylated")
   (:var mv1053 :isa high :adverb mv1052) (:var mv1052 :isa ever :name "ever")
   (:var mv1050 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv1065 :isa polar-question :statement mv1064)
   (:var mv1064 :isa copular-predication :item mv1056 :value mv1059 :predicate mv1057)
   (:var mv1056 :isa protein :predication mv1058 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1058 :isa phosphorylate :substrate mv1056 :raw-text "phosphorylated")
   (:var mv1059 :isa high) (:var mv1057 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv1071 :isa polar-question :statement mv1070)
   (:var mv1070 :isa copular-predication :item mv1066 :value mv1069 :predicate mv1067)
   (:var mv1066 :isa protein :predication mv1068 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1068 :isa phosphorylate :substrate mv1066 :raw-text "phosphorylated")
   (:var mv1069 :isa high) (:var mv1067 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv1083 :isa polar-question :statement mv1082)
   (:var mv1082 :isa sustained :level mv1080 :past "PAST")
   (:var mv1080 :isa level :has-determiner "A" :predication mv1079 :raw-text "level")
   (:var mv1079 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv1089 :isa polar-question :statement mv1088)
   (:var mv1088 :isa sustained :participant mv1084 :past "PAST")
   (:var mv1084 :isa protein :predication mv1086 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1086 :isa phosphorylate :substrate mv1084 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv1095 :isa polar-question :statement mv1094)
   (:var mv1094 :isa copular-predication :item mv1090 :value mv1093 :predicate mv1091)
   (:var mv1090 :isa protein :predication mv1092 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1092 :isa phosphorylate :substrate mv1090 :raw-text "phosphorylated")
   (:var mv1093 :isa transient) (:var mv1091 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv1106 :isa polar-question :statement mv1105)
   (:var mv1105 :isa copular-predication :item mv1104 :value mv1102 :predicate mv1098)
   (:var mv1104 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv1097
    :component mv1096)
   (:var mv1097 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1096 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv1102 :isa high :adverb mv1101) (:var mv1101 :isa ever :name "ever")
   (:var mv1098 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv1115 :isa polar-question :statement mv1112)
   (:var mv1112 :isa bio-form :agent mv1114 :past "PAST" :raw-text "formed")
   (:var mv1114 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv1108
    :component mv1107)
   (:var mv1108 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1107 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv1139 :isa polar-question :statement mv1138)
   (:var mv1138 :isa event-relation :subordinated-event mv1134 :event mv1136)
   (:var mv1134 :isa wh-question :statement mv1127 :wh if)
   (:var mv1127 :isa increase :|agent-OR-cause| mv1125 :present "PRESENT" :raw-text "increase")
   (:var mv1125 :isa interlocutor :name "person-and-machine")
   (:var mv1136 :isa copular-predication :item mv1119 :value mv1123 :predicate mv1117)
   (:var mv1119 :isa bio-amount :measured-item mv1121 :has-determiner "THE" :raw-text "amount")
   (:var mv1121 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1123 :isa low :adverb mv1122) (:var mv1122 :isa always :name "always")
   (:var mv1117 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv1164 :isa polar-question :statement mv1163)
   (:var mv1163 :isa event-relation :subordinated-event mv1159 :event mv1161)
   (:var mv1159 :isa wh-question :statement mv1151 :wh if)
   (:var mv1151 :isa increase :|agent-OR-cause| mv1149 :cause mv1157 :object mv1140 :present
    "PRESENT" :raw-text "increase")
   (:var mv1149 :isa interlocutor :name "person-and-machine")
   (:var mv1157 :isa measurement :number mv1154) (:var mv1154 :isa number :value 100)
   (:var mv1140 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1161 :isa copular-predication :item mv1143 :value mv1147 :predicate mv1141)
   (:var mv1143 :isa bio-amount :measured-item mv1145 :has-determiner "THE" :raw-text "amount")
   (:var mv1145 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1147 :isa low :adverb mv1146) (:var mv1146 :isa always :name "always")
   (:var mv1141 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv1192 :isa polar-question :statement mv1191)
   (:var mv1191 :isa event-relation :subordinated-event mv1187 :event mv1189)
   (:var mv1187 :isa wh-question :statement mv1176 :wh if)
   (:var mv1176 :isa increase :|agent-OR-cause| mv1174 :|affected-process-OR-object| mv1178
    :present "PRESENT" :raw-text "increase")
   (:var mv1174 :isa interlocutor :name "person-and-machine")
   (:var mv1178 :isa bio-amount :has-determiner "THE" :raw-text "amount")
   (:var mv1189 :isa copular-predication :item mv1168 :value mv1172 :predicate mv1166)
   (:var mv1168 :isa bio-amount :measured-item mv1170 :has-determiner "THE" :raw-text "amount")
   (:var mv1170 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1172 :isa high :adverb mv1171) (:var mv1171 :isa ever :name "ever")
   (:var mv1166 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv1221 :isa polar-question :statement mv1220)
   (:var mv1220 :isa event-relation :subordinated-event mv1216 :event mv1218)
   (:var mv1216 :isa wh-question :statement mv1204 :wh if)
   (:var mv1204 :isa increase :|agent-OR-cause| mv1202 :cause mv1213 :|affected-process-OR-object|
    mv1206 :present "PRESENT" :raw-text "increase")
   (:var mv1202 :isa interlocutor :name "person-and-machine")
   (:var mv1213 :isa measurement :number mv1210) (:var mv1210 :isa number :value 100)
   (:var mv1206 :isa bio-amount :measured-item mv1193 :has-determiner "THE" :raw-text "amount")
   (:var mv1193 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1218 :isa copular-predication :item mv1196 :value mv1200 :predicate mv1194)
   (:var mv1196 :isa bio-amount :measured-item mv1198 :has-determiner "THE" :raw-text "amount")
   (:var mv1198 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1200 :isa high :adverb mv1199) (:var mv1199 :isa ever :name "ever")
   (:var mv1194 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv1231 :isa polar-question :statement mv1227)
   (:var mv1227 :isa phosphorylate :cause mv1225 :past "PAST" :raw-text "phosphorylated")
   (:var mv1225 :isa bio-amount :measured-item mv1222 :has-determiner "THE" :raw-text "amount")
   (:var mv1222 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv1242 :isa polar-question :statement mv1241)
   (:var mv1241 :isa copular-predication :item mv1235 :value mv1239 :predicate mv1233)
   (:var mv1235 :isa bio-amount :measured-item mv1232 :has-determiner "THE" :raw-text "amount")
   (:var mv1232 :isa protein :predication mv1237 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1237 :isa phosphorylate :substrate mv1232 :raw-text "phosphorylated")
   (:var mv1239 :isa high :adverb mv1238) (:var mv1238 :isa eventually :name "eventually")
   (:var mv1233 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv1253 :isa polar-question :statement mv1252)
   (:var mv1252 :isa copular-predication :item mv1246 :value mv1250 :predicate mv1244)
   (:var mv1246 :isa bio-amount :measured-item mv1243 :has-determiner "THE" :raw-text "amount")
   (:var mv1243 :isa protein :predication mv1248 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1248 :isa phosphorylate :substrate mv1243 :raw-text "phosphorylated")
   (:var mv1250 :isa high :adverb mv1249) (:var mv1249 :isa ever :name "ever")
   (:var mv1244 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv1264 :isa polar-question :statement mv1262)
   (:var mv1262 :isa increase :cause mv1257 :adverb mv1260 :raw-text "increasing")
   (:var mv1257 :isa bio-amount :measured-item mv1254 :has-determiner "THE" :raw-text "amount")
   (:var mv1254 :isa protein :predication mv1259 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1259 :isa phosphorylate :substrate mv1254 :raw-text "phosphorylated")
   (:var mv1260 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv1274 :isa polar-question :statement mv1273)
   (:var mv1273 :isa copular-predication :item mv1268 :value mv1271 :predicate mv1266)
   (:var mv1268 :isa bio-amount :measured-item mv1265 :has-determiner "THE" :raw-text "amount")
   (:var mv1265 :isa protein :predication mv1270 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1270 :isa phosphorylate :substrate mv1265 :raw-text "phosphorylated")
   (:var mv1271 :isa high) (:var mv1266 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv1285 :isa polar-question :statement mv1284)
   (:var mv1284 :isa copular-predication :item mv1278 :value mv1282 :predicate mv1276)
   (:var mv1278 :isa bio-amount :measured-item mv1275 :has-determiner "THE" :raw-text "amount")
   (:var mv1275 :isa protein :predication mv1280 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1280 :isa phosphorylate :substrate mv1275 :raw-text "phosphorylated")
   (:var mv1282 :isa high :adverb mv1281) (:var mv1281 :isa sometimes) (:var mv1276 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv1300 :isa polar-question :statement mv1293)
   (:var mv1293 :isa sustained :theme mv1289 :level mv1297 :past "PAST")
   (:var mv1289 :isa bio-amount :measured-item mv1286 :has-determiner "THE" :raw-text "amount")
   (:var mv1286 :isa protein :predication mv1291 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1291 :isa phosphorylate :substrate mv1286 :raw-text "phosphorylated")
   (:var mv1297 :isa level :has-determiner "A" :predication mv1296 :raw-text "level")
   (:var mv1296 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv1310 :isa polar-question :statement mv1308)
   (:var mv1308 :isa sustained :participant mv1304 :past "PAST")
   (:var mv1304 :isa bio-amount :measured-item mv1301 :has-determiner "THE" :raw-text "amount")
   (:var mv1301 :isa protein :predication mv1306 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1306 :isa phosphorylate :substrate mv1301 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv1320 :isa polar-question :statement mv1319)
   (:var mv1319 :isa copular-predication :item mv1314 :value mv1317 :predicate mv1312)
   (:var mv1314 :isa bio-amount :measured-item mv1311 :has-determiner "THE" :raw-text "amount")
   (:var mv1311 :isa protein :predication mv1316 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1316 :isa phosphorylate :substrate mv1311 :raw-text "phosphorylated")
   (:var mv1317 :isa transient) (:var mv1312 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv1331 :isa polar-question :statement mv1329)
   (:var mv1329 :isa copular-predication :item mv1324 :value mv1328 :predicate mv1327)
   (:var mv1324 :isa bio-amount :measured-item mv1321 :has-determiner "THE" :raw-text "amount")
   (:var mv1321 :isa protein :predication mv1326 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1326 :isa phosphorylate :substrate mv1321 :raw-text "phosphorylated")
   (:var mv1328 :isa high) (:var mv1327 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv1355 :isa polar-question :statement mv1354)
   (:var mv1354 :isa event-relation :subordinated-event mv1351 :event mv1352)
   (:var mv1351 :isa wh-question :statement mv1340 :wh if)
   (:var mv1340 :isa increase :|agent-OR-cause| mv1338 :|affected-process-OR-object| mv1342
    :present "PRESENT" :raw-text "increase")
   (:var mv1338 :isa interlocutor :name "person-and-machine")
   (:var mv1342 :isa bio-amount :has-determiner "THE" :raw-text "amount")
   (:var mv1352 :isa copular-predication :item mv1332 :value mv1336 :predicate mv1334)
   (:var mv1332 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv1336 :isa low :adverb mv1335) (:var mv1335 :isa eventually :name "eventually")
   (:var mv1334 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv1382 :isa polar-question :statement mv1381)
   (:var mv1381 :isa event-relation :subordinated-event mv1378 :event mv1379)
   (:var mv1378 :isa wh-question :statement mv1375 :wh if)
   (:var mv1375 :isa increase :|affected-process-OR-object| mv1364 :cause mv1373 :raw-text
    "increased")
   (:var mv1364 :isa bio-amount :measured-item mv1357 :has-determiner "THE" :raw-text "amount")
   (:var mv1357 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv1373 :isa measurement :number mv1370) (:var mv1370 :isa number :value 100)
   (:var mv1379 :isa copular-predication :item mv1356 :value mv1361 :predicate mv1358)
   (:var mv1356 :isa protein :predication mv1359 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv1359 :isa active) (:var mv1361 :isa low :adverb mv1360)
   (:var mv1360 :isa eventually :name "eventually") (:var mv1358 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv1410 :isa polar-question :statement mv1409)
   (:var mv1409 :isa event-relation :subordinated-event mv1405 :event mv1407)
   (:var mv1405 :isa wh-question :statement mv1394 :wh if)
   (:var mv1394 :isa increase :|agent-OR-cause| mv1392 :|affected-process-OR-object| mv1396
    :present "PRESENT" :raw-text "increase")
   (:var mv1392 :isa interlocutor :name "person-and-machine")
   (:var mv1396 :isa bio-amount :has-determiner "THE" :raw-text "amount")
   (:var mv1407 :isa copular-predication :item mv1387 :value mv1390 :predicate mv1385)
   (:var mv1387 :isa bio-amount :measured-item mv1383 :has-determiner "THE" :raw-text "amount")
   (:var mv1383 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv1390 :isa low :adverb mv1389) (:var mv1389 :isa eventually :name "eventually")
   (:var mv1385 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv1439 :isa polar-question :statement mv1438)
   (:var mv1438 :isa event-relation :subordinated-event mv1434 :event mv1436)
   (:var mv1434 :isa wh-question :statement mv1423 :wh if)
   (:var mv1423 :isa increase :|agent-OR-cause| mv1421 :|affected-process-OR-object| mv1425
    :present "PRESENT" :raw-text "increase")
   (:var mv1421 :isa interlocutor :name "person-and-machine")
   (:var mv1425 :isa bio-amount :has-determiner "THE" :raw-text "amount")
   (:var mv1436 :isa copular-predication :item mv1415 :value mv1419 :predicate mv1413)
   (:var mv1415 :isa bio-amount :measured-item mv1411 :has-determiner "THE" :raw-text "amount")
   (:var mv1411 :isa protein :predication mv1417 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv1417 :isa active) (:var mv1419 :isa low :adverb mv1418)
   (:var mv1418 :isa always :name "always") (:var mv1413 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv1449 :isa explicit-suggestion :suggestion mv1443 :marker let-as-directive)
   (:var mv1443 :isa move-something-somewhere :at-relative-location mv1446 :theme mv1447 :present
    "PRESENT")
   (:var mv1446 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv1447 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv1441 mv1442))
   (:var mv1441 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1442 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv1452 :isa phosphorylate :agent mv1450 :substrate mv1451 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1450 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv1451 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv1453 :isa move-something-somewhere :at-relative-location mv1456 :theme mv1458 :present
    "PRESENT")
   (:var mv1456 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv1458 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv1461 :isa phosphorylate :agent mv1459 :substrate mv1460 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1459 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1460 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv1471 :isa explicit-suggestion :suggestion mv1464 :marker let-as-directive)
   (:var mv1464 :isa highlight :theme mv1466 :present "PRESENT")
   (:var mv1466 :isa upstream-segment :pathwaycomponent mv1463 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv1463 :isa protein :predication mv1469 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1469 :isa phosphorylate :substrate mv1463 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv1480 :isa explicit-suggestion :suggestion mv1474 :marker let-as-directive)
   (:var mv1474 :isa show :at-relative-location mv1478 :|statement-OR-theme| mv1473 :present
    "PRESENT")
   (:var mv1478 :isa top-qua-location :has-determiner "THE")
   (:var mv1473 :isa protein :predication mv1475 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1475 :isa phosphorylate :substrate mv1473 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv1493 :isa explicit-suggestion :suggestion mv1483 :marker let-as-directive)
   (:var mv1483 :isa show :at-relative-location mv1490 :|statement-OR-theme| mv1485 :present
    "PRESENT")
   (:var mv1490 :isa top-qua-location :has-determiner "THE")
   (:var mv1485 :isa downstream-segment :pathwaycomponent mv1482 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv1482 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv1502 :isa explicit-suggestion :suggestion mv1495 :marker let-as-directive)
   (:var mv1495 :isa move-something-somewhere :goal mv1500 :theme mv1497 :present "PRESENT")
   (:var mv1500 :isa top-qua-location :has-determiner "THE")
   (:var mv1497 :isa element :modifier mv1496)
   (:var mv1496 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv1507 :isa affect :manner mv1504 :agent mv1506 :object mv1503 :present "PRESENT"
    :raw-text "affect")
   (:var mv1504 :isa how)
   (:var mv1506 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1503 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv1511 :isa affect :manner mv1509 :agent mv1508 :object mv1512 :present "PRESENT"
    :raw-text "affect")
   (:var mv1509 :isa how)
   (:var mv1508 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1512 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv1515 :isa be :subject mv1514 :predicate mv1517 :present "PRESENT")
   (:var mv1514 :isa what) (:var mv1517 :isa path :endpoints mv1521 :has-determiner "THE")
   (:var mv1521 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv1519 mv1513))
   (:var mv1519 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1513 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv1526 :isa affect :manner mv1524 :agent mv1523 :object mv1527 :present "PRESENT"
    :raw-text "affect")
   (:var mv1524 :isa how)
   (:var mv1523 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1527 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv1532 :isa affect :manner mv1530 :agent mv1528 :object mv1529 :present "PRESENT"
    :raw-text "affect")
   (:var mv1530 :isa how)
   (:var mv1528 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv1529 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv1537 :isa affect :manner mv1534 :agent mv1536 :object mv1533 :present "PRESENT"
    :raw-text "affect")
   (:var mv1534 :isa how)
   (:var mv1536 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv1533 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv1541 :isa affect :manner mv1538 :agent mv1540 :object mv1542 :present "PRESENT"
    :raw-text "affect")
   (:var mv1538 :isa how)
   (:var mv1540 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv1542 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv1547 :isa phosphorylate :amino-acid mv1545 :agent mv1543 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv1545 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv1543 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What pathways affect BRAF?"
   (:var mv1550 :isa affect :agent mv1549 :object mv1551 :present "PRESENT" :raw-text "affect")
   (:var mv1549 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv1551 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv1554 :isa bio-activate :agent mv1553 :object mv1555 :present "PRESENT" :raw-text
    "activate")
   (:var mv1553 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv1555 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv1564 :isa explicit-suggestion :suggestion mv1559 :marker let-as-directive)
   (:var mv1559 :isa learning :statement mv1557 :present "PRESENT")
   (:var mv1557 :isa protein :context mv1558 :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1558 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is its relationship with BRAF?"
   (:var mv1566 :isa be :subject mv1565 :predicate mv1568 :present "PRESENT")
   (:var mv1565 :isa what) (:var mv1568 :isa relationship :patient mv1570 :modifier mv1567)
   (:var mv1570 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1567 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv1574 :isa be :subject mv1573 :predicate mv1576 :present "PRESENT")
   (:var mv1573 :isa what) (:var mv1576 :isa relationship :patient mv1572 :modifier mv1575)
   (:var mv1572 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv1575 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv1581 :isa phosphorylate :agent mv1579 :substrate mv1580 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1579 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1580 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv1583 :isa what))
  ("Let's stop learning about AKT1." (:var mv1591 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv1600 :isa be :subject mv1599 :predicate mv1603 :present "PRESENT")
   (:var mv1599 :isa what)
   (:var mv1603 :isa response :beneficiary mv1605 :has-determiner "THE" :modifier mv1602 :raw-text
    "response")
   (:var mv1605 :isa cell-type :mutation mv1607)
   (:var mv1607 :isa alter :|agent-OR-object| mv1598 :raw-text "alterations")
   (:var mv1598 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1602 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv1612 :isa be :subject mv1611 :predicate mv1615 :present "PRESENT")
   (:var mv1611 :isa what)
   (:var mv1615 :isa response :cell-type mv1617 :has-determiner "THE" :modifier mv1614 :raw-text
    "response")
   (:var mv1617 :isa cell-type :mutation mv1619)
   (:var mv1619 :isa alter :|agent-OR-object| mv1610 :raw-text "alterations")
   (:var mv1610 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1614 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv1623 :isa be :subject mv1622 :predicate mv1626 :present "PRESENT")
   (:var mv1622 :isa what)
   (:var mv1626 :isa frequency :measured-item mv1628 :has-determiner "THE" :measured-item mv1625
    :raw-text "frequency")
   (:var mv1628 :isa protein :context mv1630 :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv1630 :isa glioblastoma) (:var mv1625 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv1636 :isa be :subject mv1635 :predicate mv1639 :present "PRESENT")
   (:var mv1635 :isa what)
   (:var mv1639 :isa frequency :measured-item mv1633 :has-determiner "THE" :measured-item mv1638
    :raw-text "frequency")
   (:var mv1633 :isa protein :context mv1634 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1634 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv1638 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv1645 :isa show :|statement-OR-theme| mv1648 :beneficiary mv1646 :present "PRESENT")
   (:var mv1648 :isa mutation :object mv1654 :has-determiner "THE" :raw-text "mutations")
   (:var mv1654 :isa collection :context mv1644 :raw-text "PTEN and BRAF" :type protein :number 2
    :items (mv1650 mv1652))
   (:var mv1644 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv1650 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1652 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1646 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv1658 :isa show :|statement-OR-theme| mv1661 :beneficiary mv1659 :present "PRESENT")
   (:var mv1661 :isa mutation :object mv1663 :has-determiner "THE" :raw-text "mutations")
   (:var mv1663 :isa protein :context mv1657 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1657 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv1659 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv1669 :isa be :subject mv1668 :predicate mv1671 :present "PRESENT")
   (:var mv1668 :isa what)
   (:var mv1671 :isa mutation :object mv1673 :has-determiner "THE" :raw-text "mutations")
   (:var mv1673 :isa protein :context mv1667 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1667 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv1679 :isa be :subject mv1678 :predicate mv1691 :present "PRESENT")
   (:var mv1678 :isa what) (:var mv1691 :isa quality-predicate :item mv1689 :attribute mv1685)
   (:var mv1689 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv1677 mv1688))
   (:var mv1677 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1688 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1685 :isa location-of :has-determiner "THE" :predication mv1683 :modifier mv1684)
   (:var mv1683 :isa likely :comparative mv1681)
   (:var mv1681 :isa superlative-quantifier :name "most")
   (:var mv1684 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv1704 :isa polar-question :statement mv1701)
   (:var mv1701 :isa there-exists :value mv1697 :predicate mv1694)
   (:var mv1697 :isa upstream-segment :pathwaycomponent mv1702 :predication mv1696 :raw-text
    "upstreams")
   (:var mv1702 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv1692 mv1700))
   (:var mv1692 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1700 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1696 :isa common) (:var mv1694 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv1708 :isa be :subject mv1707 :predicate mv1711 :present "PRESENT")
   (:var mv1707 :isa what)
   (:var mv1711 :isa upstream-segment :pathwaycomponent mv1715 :has-determiner "THE" :predication
    mv1710 :raw-text "upstreams")
   (:var mv1715 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv1705 mv1713 mv1706))
   (:var mv1705 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv1713 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1706 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv1710 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv1727 :isa copular-predication :item mv1721 :value mv1717 :predicate mv1722)
   (:var mv1721 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv1717 :isa mutual-exclusivity :disease mv1719 :alternative mv1718)
   (:var mv1719 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv1718 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv1722 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv1732 :isa be :subject mv1731 :predicate mv1739 :present "PRESENT")
   (:var mv1731 :isa what)
   (:var mv1739 :isa gene :disease mv1730 :has-determiner "THE" :predication mv1728 :raw-text
    "genes")
   (:var mv1730 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv1728 :isa mutual-exclusivity :alternative mv1729)
   (:var mv1729 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv1743 :isa be :subject mv1742 :predicate mv1746 :present "PRESENT")
   (:var mv1742 :isa what)
   (:var mv1746 :isa significance :result mv1741 :agent mv1740 :has-determiner "THE" :modifier
    mv1745)
   (:var mv1741 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv1740 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1745 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv1754 :isa be :subject mv1753 :predicate mv1757 :present "PRESENT")
   (:var mv1753 :isa what)
   (:var mv1757 :isa significance :agent mv1751 :has-determiner "THE" :modifier mv1756)
   (:var mv1751 :isa protein :context mv1752 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv1752 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv1756 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv1763 :isa be :subject mv1762 :predicate mv1766 :present "PRESENT")
   (:var mv1762 :isa what)
   (:var mv1766 :isa significance :agent mv1768 :has-determiner "THE" :modifier mv1765)
   (:var mv1768 :isa protein :context mv1771 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv1771 :isa cancer :organ mv1770 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv1770 :isa pancreas) (:var mv1765 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv1775 :isa be :subject mv1774 :predicate mv1778 :present "PRESENT")
   (:var mv1774 :isa what)
   (:var mv1778 :isa significance :agent mv1780 :has-determiner "THE" :modifier mv1777)
   (:var mv1780 :isa protein :context mv1783 :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1783 :isa cancer :modifier mv1782 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv1782 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv1777 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv1787 :isa phosphorylate :agent mv1786 :substrate mv1788 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv1786 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv1788 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv1790 :isa binding :binder mv1789 :direct-bindee mv1791 :present "PRESENT" :raw-text
    "binds")
   (:var mv1789 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv1791 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv1797 :isa binding :binder mv1793 :direct-bindee mv1792 :present "PRESENT" :raw-text
    "binds")
   (:var mv1793 :isa protein :predication mv1794 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv1794 :isa binding :direct-bindee mv1793 :bindee mv1796 :past "PAST" :raw-text "bound")
   (:var mv1796 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv1792 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv1803 :isa copular-predication :item mv1800 :value mv1802 :predicate mv1801)
   (:var mv1800 :isa protein-family :predication mv1799 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv1799 :isa phosphorylate :substrate mv1800 :raw-text "Phosphorylated")
   (:var mv1802 :isa active) (:var mv1801 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv1804 :isa protein :predication mv1806 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv1806 :isa phosphorylate :substrate mv1804 :target mv1805 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv1805 :isa protein :site mv1811 :modifier mv1812 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv1811 :isa residue-on-protein :raw-text "S220" :position mv1810 :amino-acid mv1809)
   (:var mv1810 :isa number :value 220) (:var mv1809 :isa amino-acid :name "serine" :letter "S")
   (:var mv1812 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv1817 :isa transcribe :agent mv1814 :object mv1815 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv1814 :isa protein :predication mv1816 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv1816 :isa active)
   (:var mv1815 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv1846 :isa polar-question :statement mv1845)
   (:var mv1845 :isa event-relation :subordinated-event mv1841 :event mv1843)
   (:var mv1841 :isa wh-question :statement mv1829 :wh if)
   (:var mv1829 :isa increase :|agent-OR-cause| mv1827 :cause mv1838 :|affected-process-OR-object|
    mv1831 :present "PRESENT" :raw-text "increase")
   (:var mv1827 :isa interlocutor :name "person-and-machine")
   (:var mv1838 :isa measurement :number mv1835) (:var mv1835 :isa number :value 10)
   (:var mv1831 :isa bio-amount :measured-item mv1818 :has-determiner "THE" :raw-text "amount")
   (:var mv1818 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1843 :isa copular-predication :item mv1821 :value mv1825 :predicate mv1819)
   (:var mv1821 :isa bio-amount :measured-item mv1823 :has-determiner "THE" :raw-text "amount")
   (:var mv1823 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv1825 :isa high :adverb mv1824) (:var mv1824 :isa ever :name "ever")
   (:var mv1819 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv1858 :isa polar-question :statement mv1856)
   (:var mv1856 :isa decrease :agent mv1848 :object mv1852 :raw-text "decrease")
   (:var mv1848 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv1852 :isa protein-family :info-context mv1855 :predication mv1851 :raw-text "ERK" :name
    "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv1855 :isa model :has-determiner "THE")
   (:var mv1851 :isa phosphorylate :substrate mv1852 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv1869 :isa polar-question :statement mv1867)
   (:var mv1867 :isa decrease :agent mv1860 :object mv1863 :raw-text "decrease")
   (:var mv1860 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv1863 :isa protein :info-context mv1866 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv1866 :isa model :has-determiner "THE"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv1874 :isa regulate :manner mv1871 :agent mv1873 :object mv1870 :present "PRESENT"
    :raw-text "regulate")
   (:var mv1871 :isa how)
   (:var mv1873 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv1870 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv1879 :isa bio-activate :manner mv1876 :agent mv1878 :object mv1875 :present "PRESENT"
    :raw-text "activate")
   (:var mv1876 :isa how)
   (:var mv1878 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv1875 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv1885 :isa polar-question :statement mv1884)
   (:var mv1884 :isa inhibit :agent mv1881 :object mv1883 :raw-text "inhibit")
   (:var mv1881 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv1883 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv1896 :isa share :object mv1886 :participant mv1895 :present "PRESENT" :raw-text
    "shared")
   (:var mv1886 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv1895 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv1892 mv1893 mv1887))
   (:var mv1892 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv1893 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv1887 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv1899 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv1908 :isa be :subject mv1907 :predicate mv1909 :present "PRESENT")
   (:var mv1907 :isa what)
   (:var mv1909 :isa upstream-segment :pathwaycomponent mv1906 :raw-text "upstream")
   (:var mv1906 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv1917 :isa want :agent mv1914 :theme mv1925 :present "PRESENT")
   (:var mv1914 :isa interlocutor :name "speaker")
   (:var mv1925 :isa bio-find :agent mv1914 :object mv1922 :present "PRESENT" :raw-text "find")
   (:var mv1922 :isa treatment :disease mv1913 :has-determiner "A" :raw-text "treatment")
   (:var mv1913 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv1934 :isa bio-use :object mv1927 :modal mv1928 :agent mv1929 :present "PRESENT"
    :raw-text "use")
   (:var mv1927 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv1928 :isa could)
   (:var mv1929 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv1944 :isa polar-question :statement mv1942)
   (:var mv1942 :isa there-exists :value mv1939 :predicate mv1936)
   (:var mv1939 :isa drug :target mv1941 :quantifier mv1938 :raw-text "drugs")
   (:var mv1941 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1938 :isa any :word "any") (:var mv1936 :isa syntactic-there))
  ("Are they kinases?" (:var mv1948 :isa polar-question :statement mv1945)
   (:var mv1945 :isa be :subject mv1946 :predicate mv1947)
   (:var mv1946 :isa pronoun/plural :word "they") (:var mv1947 :isa kinase :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv1958 :isa polar-question :statement mv1952)
   (:var mv1952 :isa bio-find :agent mv1950 :object mv1954 :modal "CAN" :raw-text "find")
   (:var mv1950 :isa interlocutor :name "hearer")
   (:var mv1954 :isa drug :target mv1956 :has-determiner "A" :raw-text "drug")
   (:var mv1956 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv1976 :isa polar-question :statement mv1963)
   (:var mv1963 :isa tell :agent mv1962 :theme mv1959 :beneficiary mv1964 :modal "CAN")
   (:var mv1962 :isa interlocutor :name "hearer")
   (:var mv1959 :isa transcription-factor :predication mv1974 :quantifier mv1965 :has-determiner
    "THE" :raw-text "transcription factors")
   (:var mv1974 :isa share :object mv1959 :that-rel t :participant mv1973 :modal "CAN" :raw-text
    "shared")
   (:var mv1973 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv1960 mv1972))
   (:var mv1960 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1972 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv1965 :isa all :word "all") (:var mv1964 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv1992 :isa polar-question :statement mv1981)
   (:var mv1981 :isa tell :agent mv1980 :theme mv1990 :theme mv1982 :modal "CAN")
   (:var mv1980 :isa interlocutor :name "hearer")
   (:var mv1990 :isa share :object mv1977 :participant mv1989 :modal "CAN" :raw-text "shared")
   (:var mv1977 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv1989 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv1978 mv1988))
   (:var mv1978 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv1988 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv1982 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv2003 :isa polar-question :statement mv2002)
   (:var mv2002 :isa know :agent mv1994 :statement mv1997)
   (:var mv1994 :isa interlocutor :name "hearer")
   (:var mv1997 :isa drug :target mv1999 :quantifier mv1996 :raw-text "drugs")
   (:var mv1999 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv1996 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv2015 :isa polar-question :statement mv2013)
   (:var mv2013 :isa regulate :agent mv2004 :object mv2009 :raw-text "regulate")
   (:var mv2004 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2009 :isa gene :organ mv2012 :has-determiner "THE" :expresses mv2008 :raw-text "gene")
   (:var mv2012 :isa lung :has-determiner "THE")
   (:var mv2008 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv2026 :isa polar-question :statement mv2024)
   (:var mv2024 :isa regulate :agent mv2016 :object mv2021 :raw-text "regulate")
   (:var mv2016 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2021 :isa gene :organ mv2023 :has-determiner "THE" :expresses mv2017 :raw-text "gene")
   (:var mv2023 :isa liver)
   (:var mv2017 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv2034 :isa polar-question :statement mv2033)
   (:var mv2033 :isa regulate :agent mv2027 :object mv2032 :raw-text "regulate")
   (:var mv2027 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2032 :isa gene :has-determiner "THE" :expresses mv2028 :raw-text "gene")
   (:var mv2028 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv2046 :isa polar-question :statement mv2044)
   (:var mv2044 :isa regulate :agent mv2035 :object mv2040 :raw-text "regulate")
   (:var mv2035 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2040 :isa gene :organ mv2043 :has-determiner "THE" :expresses mv2039 :raw-text "gene")
   (:var mv2043 :isa lung :has-determiner "THE")
   (:var mv2039 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv2053 :isa polar-question :statement mv2052)
   (:var mv2052 :isa target :agent mv2047 :object mv2048 :raw-text "target")
   (:var mv2047 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv2048 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv2060 :isa polar-question :statement mv2059)
   (:var mv2059 :isa target :agent mv2054 :object mv2055 :raw-text "target")
   (:var mv2054 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv2055 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv2067 :isa polar-question :statement mv2066)
   (:var mv2066 :isa target :agent mv2061 :object mv2062 :raw-text "target")
   (:var mv2061 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv2062 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv2074 :isa polar-question :statement mv2073)
   (:var mv2073 :isa target :agent mv2068 :object mv2069 :raw-text "target")
   (:var mv2068 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv2069 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv2083 :isa polar-question :statement mv2081)
   (:var mv2081 :isa regulate :agent mv2075 :object mv2080 :raw-text "regulate")
   (:var mv2075 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2080 :isa bio-entity :organ mv2079 :name "cfors") (:var mv2079 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv2092 :isa polar-question :statement mv2090)
   (:var mv2090 :isa regulate :agent mv2084 :object mv2087 :raw-text "regulate")
   (:var mv2084 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2087 :isa protein :organ mv2089 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv2089 :isa liver))
  ("Does it regulate cfos in brain" (:var mv2101 :isa polar-question :statement mv2099)
   (:var mv2099 :isa regulate :|agent-OR-cause| mv2094 :object mv2096 :raw-text "regulate")
   (:var mv2094 :isa pronoun/inanimate :word "it")
   (:var mv2096 :isa protein :organ mv2098 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv2098 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv2107 :isa polar-question :statement mv2106)
   (:var mv2106 :isa regulate :agent mv2102 :object mv2105 :raw-text "regulate")
   (:var mv2102 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2105 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv2119 :isa polar-question :statement mv2117)
   (:var mv2117 :isa regulate :agent mv2108 :object mv2113 :raw-text "regulate")
   (:var mv2108 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2113 :isa gene :cell-type mv2116 :has-determiner "THE" :expresses mv2112 :raw-text
    "gene")
   (:var mv2116 :isa cell-type :non-cellular-location mv2115)
   (:var mv2115 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv2112 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv2129 :isa polar-question :statement mv2128)
   (:var mv2128 :isa utilize :participant mv2125 :object mv2120 :raw-text "utilize")
   (:var mv2125 :isa pathway :has-determiner "THE" :modifier mv2127 :raw-text "pathway")
   (:var mv2127 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv2120 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv2139 :isa polar-question :statement mv2138)
   (:var mv2138 :isa utilize :participant mv2136 :object mv2130 :raw-text "utilize")
   (:var mv2136 :isa pathway :has-determiner "THE" :modifier mv2133 :raw-text "pathway")
   (:var mv2133 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv2130 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv2141 :isa give :theme mv2148 :beneficiary mv2142 :present "PRESENT")
   (:var mv2148 :isa evidence :statement mv2147 :has-determiner "THE")
   (:var mv2147 :isa decrease :agent mv2146 :object mv2140 :present "PRESENT" :raw-text
    "decreases")
   (:var mv2146 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2140 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2142 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv2150 :isa give :theme mv2157 :beneficiary mv2151 :present "PRESENT")
   (:var mv2157 :isa evidence :statement mv2156 :has-determiner "THE")
   (:var mv2156 :isa regulate :agent mv2155 :object mv2149 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2155 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2149 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2151 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv2162 :isa polar-question :statement mv2158)
   (:var mv2158 :isa be :subject mv2159 :predicate mv2161)
   (:var mv2159 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2161 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv2169 :isa polar-question :statement mv2165)
   (:var mv2165 :isa inhibit :object mv2163 :agent mv2167 :past "PAST" :raw-text "inhibited")
   (:var mv2163 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv2167 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv2178 :isa polar-question :statement mv2173)
   (:var mv2173 :isa be :subject mv2170 :predicate mv2171)
   (:var mv2170 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2171 :isa transcription-factor :controlled-gene mv2176 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv2176 :isa gene :expresses mv2172 :raw-text "gene")
   (:var mv2172 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv2193 :isa polar-question :statement mv2181)
   (:var mv2181 :isa be :subject mv2179 :predicate mv2187)
   (:var mv2179 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2187 :isa regulator :quantifier mv2184 :theme mv2190 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv2184 :isa number :value 1)
   (:var mv2190 :isa gene :has-determiner "THE" :expresses mv2180 :raw-text "gene")
   (:var mv2180 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv2201 :isa polar-question :statement mv2195)
   (:var mv2195 :isa be :subject mv2196 :predicate mv2198)
   (:var mv2196 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv2198 :isa inhibitor :protein mv2194 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv2194 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv2209 :isa polar-question :statement mv2202)
   (:var mv2202 :isa be :subject mv2203 :predicate mv2205)
   (:var mv2203 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv2205 :isa inhibitor :|target-OR-protein| mv2207 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv2207 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv2214 :isa polar-question :statement mv2210)
   (:var mv2210 :isa be :subject mv2213 :predicate mv2212)
   (:var mv2213 :isa bio-entity :name "fakeprotein")
   (:var mv2212 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv2219 :isa polar-question :statement mv2216)
   (:var mv2216 :isa be :subject mv2215 :predicate mv2218)
   (:var mv2215 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv2218 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv2226 :isa polar-question :statement mv2221)
   (:var mv2221 :isa be :subject mv2220 :predicate mv2225)
   (:var mv2220 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2225 :isa regulator :has-determiner "AN" :cellular-process mv2223 :raw-text "regulator")
   (:var mv2223 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv2237 :isa polar-question :statement mv2236)
   (:var mv2236 :isa involve :theme mv2227 :context mv2234 :past "PAST")
   (:var mv2227 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2234 :isa pathway :quantifier mv2231 :cellular-process mv2232 :raw-text "pathways")
   (:var mv2231 :isa any :word "any") (:var mv2232 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?" (:var mv2246 :isa polar-question :statement mv2240)
   (:var mv2240 :isa involve :theme mv2238 :theme mv2244 :past "PAST")
   (:var mv2238 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2244 :isa regulate :|cellular-process-OR-agent| mv2242 :raw-text "regulation")
   (:var mv2242 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?" (:var mv2254 :isa polar-question :statement mv2249)
   (:var mv2249 :isa involve :theme mv2247 :theme mv2251 :past "PAST")
   (:var mv2247 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2251 :isa regulate :affected-process mv2252 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv2252 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv2259 :isa phosphorylate :amino-acid mv2256 :agent mv2258 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv2256 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv2258 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv2268 :isa polar-question :statement mv2260)
   (:var mv2260 :isa be :subject mv2265 :predicate mv2267)
   (:var mv2265 :isa number :quantifier mv2262 :value 1)
   (:var mv2262 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv2267 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv2279 :isa polar-question :statement mv2278)
   (:var mv2278 :isa there-exists :value mv2273 :predicate mv2270)
   (:var mv2273 :isa drug :predication mv2276 :has-determiner "A" :raw-text "drug")
   (:var mv2276 :isa target :agent mv2273 :that-rel t :object mv2277 :present "PRESENT" :raw-text
    "targets")
   (:var mv2277 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv2270 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv2292 :isa polar-question :statement mv2290)
   (:var mv2290 :isa there-exists :value mv2287 :predicate mv2282)
   (:var mv2287 :isa pathway :predication mv2288 :has-determiner "AN" :cellular-process mv2285
    :raw-text "pathway")
   (:var mv2288 :isa regulate :affected-process mv2287 :agent mv2280 :past "PAST" :raw-text
    "regulated")
   (:var mv2280 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2285 :isa apoptosis :raw-text "apoptotic") (:var mv2282 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv2308 :isa polar-question :statement mv2305)
   (:var mv2305 :isa there-exists :value mv2300 :predicate mv2295)
   (:var mv2300 :isa pathway :predication mv2306 :has-determiner "AN" :cellular-process mv2298
    :raw-text "pathway")
   (:var mv2306 :isa regulate :affected-process mv2300 :that-rel t :agent mv2293 :present "PRESENT"
    :raw-text "regulated")
   (:var mv2293 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2298 :isa apoptosis :raw-text "apoptotic") (:var mv2295 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv2310 :isa let :complement mv2324 :present "PRESENT")
   (:var mv2324 :isa know :agent mv2311 :statement mv2323 :present "PRESENT")
   (:var mv2311 :isa interlocutor :name "speaker")
   (:var mv2323 :isa wh-question :statement mv2322 :wh if)
   (:var mv2322 :isa there-exists :value mv2320 :predicate mv2316)
   (:var mv2320 :isa gene :predication mv2321 :quantifier mv2317 :cellular-process mv2318 :raw-text
    "genes")
   (:var mv2321 :isa regulate :object mv2320 :agent mv2309 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2309 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2317 :isa any :word "any") (:var mv2318 :isa apoptosis :raw-text "apoptotic")
   (:var mv2316 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv2326 :isa let :complement mv2332 :present "PRESENT")
   (:var mv2332 :isa know :agent mv2327 :statement mv2330 :present "PRESENT")
   (:var mv2327 :isa interlocutor :name "speaker")
   (:var mv2330 :isa gene :predication mv2331 :has-determiner "WHICH" :raw-text "genes")
   (:var mv2331 :isa regulate :object mv2330 :agent mv2325 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2325 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv2334 :isa list :theme mv2337 :present "PRESENT")
   (:var mv2337 :isa gene :predication mv2338 :quantifier mv2335 :has-determiner "THE" :raw-text
    "genes")
   (:var mv2338 :isa regulate :object mv2337 :agent mv2342 :past "PAST" :raw-text "regulated")
   (:var mv2342 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2333 mv2341))
   (:var mv2333 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2341 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2335 :isa all :word "all"))
  ("List genes regulated by elk1 and srf" (:var mv2345 :isa list :theme mv2346 :present "PRESENT")
   (:var mv2346 :isa gene :predication mv2347 :raw-text "genes")
   (:var mv2347 :isa regulate :object mv2346 :agent mv2351 :past "PAST" :raw-text "regulated")
   (:var mv2351 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2344 mv2350))
   (:var mv2344 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2350 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv2354 :isa list :theme mv2356 :present "PRESENT")
   (:var mv2356 :isa gene :predication mv2364 :quantifier mv2355 :raw-text "genes")
   (:var mv2364 :isa regulate :object mv2356 :that-rel t :agent mv2363 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2363 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2353 mv2362))
   (:var mv2353 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2362 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2355 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv2367 :isa list :theme mv2373 :present "PRESENT")
   (:var mv2373 :isa evidence :statement mv2372 :has-determiner "THE")
   (:var mv2372 :isa decrease :agent mv2371 :object mv2366 :present "PRESENT" :raw-text
    "decreases")
   (:var mv2371 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2366 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv2375 :isa name-something :patient mv2378 :present "PRESENT")
   (:var mv2378 :isa gene :predication mv2379 :raw-text "genes")
   (:var mv2379 :isa regulate :object mv2378 :agent mv2383 :past "PAST" :raw-text "regulated")
   (:var mv2383 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2374 mv2382))
   (:var mv2374 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2382 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv2400 :isa copular-predication :item mv2390 :value mv2395 :predicate mv2394)
   (:var mv2390 :isa gene :has-determiner "WHICH" :predication mv2391 :has-determiner "THE"
    :cellular-process mv2388 :raw-text "genes")
   (:var mv2391 :isa regulate :object mv2390 :agent mv2385 :past "PAST" :raw-text "regulated")
   (:var mv2385 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2388 :isa apoptosis :raw-text "apoptotic") (:var mv2395 :isa active :organ mv2398)
   (:var mv2398 :isa liver :has-determiner "THE") (:var mv2394 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv2418 :isa copular-predication :item mv2409 :value mv2413 :predicate mv2412)
   (:var mv2409 :isa gene :has-determiner "WHICH" :predication mv2410 :has-determiner "THE"
    :cellular-process mv2407 :raw-text "genes")
   (:var mv2410 :isa regulate :object mv2409 :agent mv2404 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2404 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2407 :isa apoptosis :raw-text "apoptotic") (:var mv2413 :isa active :organ mv2416)
   (:var mv2416 :isa liver :has-determiner "THE") (:var mv2412 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv2433 :isa copular-predication :item mv2424 :value mv2431 :predicate mv2430)
   (:var mv2424 :isa gene :has-determiner "WHICH" :predication mv2425 :has-determiner "THE"
    :raw-text "genes")
   (:var mv2425 :isa regulate :object mv2424 :agent mv2421 :organ mv2428 :present "PRESENT"
    :raw-text "regulates")
   (:var mv2421 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2428 :isa liver :has-determiner "THE")
   (:var mv2431 :isa apoptosis :raw-text "apoptotic") (:var mv2430 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv2447 :isa copular-predication :item mv2441 :value mv2445 :predicate mv2444)
   (:var mv2441 :isa gene :has-determiner "WHICH" :predication mv2442 :has-determiner "THE"
    :non-cellular-location mv2440 :raw-text "genes")
   (:var mv2442 :isa regulate :object mv2441 :agent mv2437 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2437 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2440 :isa liver) (:var mv2445 :isa apoptosis :raw-text "apoptotic")
   (:var mv2444 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv2460 :isa copular-predication :item mv2454 :value mv2458 :predicate mv2457)
   (:var mv2454 :isa gene :has-determiner "WHICH" :predication mv2455 :has-determiner "THE"
    :non-cellular-location mv2453 :raw-text "genes")
   (:var mv2455 :isa regulate :object mv2454 :agent mv2450 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2450 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2453 :isa liver) (:var mv2458 :isa apoptosis :raw-text "apoptotic")
   (:var mv2457 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv2465 :isa bio-find :object mv2466 :present "PRESENT" :adverb mv2463 :raw-text "find")
   (:var mv2466 :isa pathway :raw-text "pathways") (:var mv2463 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv2470 :isa show :|statement-OR-theme| mv2473 :beneficiary mv2471 :present "PRESENT"
    :adverb mv2469)
   (:var mv2473 :isa pathway :predication mv2474 :modifier mv2472 :raw-text "pathways")
   (:var mv2474 :isa involve :theme mv2473 :theme mv2475 :progressive "PROGRESSIVE")
   (:var mv2475 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2472 :isa database :name "KEGG" :uid "KEGG")
   (:var mv2471 :isa interlocutor :name "speaker") (:var mv2469 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv2477 :isa show :|statement-OR-theme| mv2479 :beneficiary mv2478 :present "PRESENT"
    :adverb mv2476)
   (:var mv2479 :isa pathway :predication mv2480 :raw-text "pathways")
   (:var mv2480 :isa involve :theme mv2479 :theme mv2481 :progressive "PROGRESSIVE")
   (:var mv2481 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2478 :isa interlocutor :name "speaker") (:var mv2476 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv2483 :isa bio-activate :agent mv2482 :object mv2484 :present "PRESENT" :raw-text
    "activates")
   (:var mv2482 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2484 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv2485 :isa remove :object mv2492 :present "PRESENT" :raw-text "Remove")
   (:var mv2492 :isa fact :statement mv2490 :has-determiner "THE")
   (:var mv2490 :isa bio-activate :agent mv2489 :object mv2491 :present "PRESENT" :raw-text
    "activates")
   (:var mv2489 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2491 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv2495 :isa bio-activate :agent mv2494 :object mv2496 :present "PRESENT" :raw-text
    "activates")
   (:var mv2494 :isa protein-family :predication mv2493 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2493 :isa inactive)
   (:var mv2496 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv2497 :isa remove :object mv2505 :present "PRESENT" :raw-text "Remove")
   (:var mv2505 :isa fact :statement mv2503 :has-determiner "THE")
   (:var mv2503 :isa bio-activate :agent mv2502 :object mv2504 :present "PRESENT" :raw-text
    "activates")
   (:var mv2502 :isa protein-family :predication mv2501 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv2501 :isa inactive)
   (:var mv2504 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv2507 :isa show :|statement-OR-theme| mv2508 :present "PRESENT")
   (:var mv2508 :isa pathway :non-cellular-location mv2506 :raw-text "pathways")
   (:var mv2506 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv2509 :isa show :|statement-OR-theme| mv2511 :beneficiary mv2510 :present "PRESENT")
   (:var mv2511 :isa pathway :predication mv2512 :raw-text "pathways")
   (:var mv2512 :isa involve :theme mv2511 :theme mv2513 :progressive "PROGRESSIVE")
   (:var mv2513 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2510 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv2514 :isa show :|statement-OR-theme| mv2516 :beneficiary mv2515 :present "PRESENT")
   (:var mv2516 :isa pathway :pathwaycomponent mv2518 :raw-text "pathways")
   (:var mv2518 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-info-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway|
    mv2520 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2520 :isa pronoun/plural :word "them") (:var mv2515 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv2523 :isa show :|statement-OR-theme| mv2525 :beneficiary mv2524 :present "PRESENT")
   (:var mv2525 :isa pathway :pathwaycomponent mv2527 :raw-text "pathways")
   (:var mv2527 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2524 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv2530 :isa show :|statement-OR-theme| mv2537 :beneficiary mv2531 :present "PRESENT")
   (:var mv2537 :isa evidence :statement mv2536 :has-determiner "THE")
   (:var mv2536 :isa decrease :agent mv2535 :object mv2529 :present "PRESENT" :raw-text
    "decreases")
   (:var mv2535 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2529 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2531 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv2539 :isa show :|statement-OR-theme| mv2550 :beneficiary mv2540 :present "PRESENT")
   (:var mv2550 :isa evidence :statement mv2545 :has-determiner "THE")
   (:var mv2545 :isa decrease :agent mv2544 :|affected-process-OR-object| mv2547 :present "PRESENT"
    :raw-text "decreases")
   (:var mv2544 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2547 :isa bio-amount :measured-item mv2538 :has-determiner "THE" :raw-text "amount")
   (:var mv2538 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2540 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv2552 :isa show :|statement-OR-theme| mv2559 :beneficiary mv2553 :present "PRESENT")
   (:var mv2559 :isa evidence :statement mv2558 :has-determiner "THE")
   (:var mv2558 :isa regulate :agent mv2557 :object mv2551 :present "PRESENT" :raw-text
    "regulates")
   (:var mv2557 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv2551 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv2553 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv2562 :isa show :|statement-OR-theme| mv2560 :present "PRESENT")
   (:var mv2560 :isa transcription-factor :predication mv2563 :raw-text "transcription factors")
   (:var mv2563 :isa share :object mv2560 :participant mv2567 :past "PAST" :raw-text "shared")
   (:var mv2567 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2561 mv2566))
   (:var mv2561 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2566 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv2570 :isa tell :beneficiary mv2571 :present "PRESENT")
   (:var mv2571 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv2577 :isa tell :theme mv2589 :theme mv2578 :present "PRESENT")
   (:var mv2589 :isa regulate :affected-process mv2582 :agent mv2576 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2582 :isa pathway :has-determiner "WHAT" :cellular-process mv2580 :raw-text "pathways")
   (:var mv2580 :isa apoptosis :raw-text "apoptotic")
   (:var mv2576 :isa protein :organ mv2588 :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2588 :isa liver :has-determiner "THE") (:var mv2578 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv2593 :isa tell :theme mv2596 :beneficiary mv2594 :present "PRESENT")
   (:var mv2596 :isa gene :predication mv2599 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2599 :isa regulate :object mv2596 :agent mv2600 :present "PRESENT" :raw-text "regulate")
   (:var mv2600 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv2592 mv2598))
   (:var mv2592 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2598 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2594 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv2602 :isa tell :theme mv2612 :theme mv2603 :present "PRESENT")
   (:var mv2612 :isa regulate :affected-process mv2605 :agent mv2601 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2605 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv2601 :isa protein :organ mv2611 :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2611 :isa liver :has-determiner "THE") (:var mv2603 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv2618 :isa involve :theme mv2617 :theme mv2620 :present "PRESENT")
   (:var mv2617 :isa pathway :has-determiner "WHAT" :modifier mv2616 :raw-text "pathways")
   (:var mv2616 :isa database :name "KEGG" :uid "KEGG")
   (:var mv2620 :isa signal :modifier mv2619 :raw-text "signaling")
   (:var mv2619 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv2628 :isa regulate :object mv2624 :agent mv2622 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2624 :isa phosphatase :has-determiner "WHAT" :enzyme mv2621 :raw-text "phosphatases")
   (:var mv2621 :isa protein-family :raw-text "MAP kinase" :name "mitogen activated protein kinase"
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
   (:var mv2622 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv2635 :isa be :subject mv2634 :predicate mv2636 :present "PRESENT")
   (:var mv2634 :isa gene :has-determiner "WHAT" :cellular-process mv2632 :raw-text "genes")
   (:var mv2632 :isa apoptosis :raw-text "apoptotic")
   (:var mv2636 :isa downstream-segment :pathwaycomponent mv2630 :raw-text "downstream")
   (:var mv2630 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv2646 :isa regulate :object mv2644 :agent mv2640 :organ mv2649 :present "PRESENT"
    :raw-text "regulate")
   (:var mv2644 :isa gene :has-determiner "WHAT" :cellular-process mv2642 :raw-text "genes")
   (:var mv2642 :isa apoptosis :raw-text "apoptotic")
   (:var mv2640 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2649 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv2657 :isa regulate :object mv2655 :agent mv2651 :present "PRESENT" :raw-text "regulate")
   (:var mv2655 :isa gene :has-determiner "WHAT" :cellular-process mv2653 :raw-text "genes")
   (:var mv2653 :isa apoptosis :raw-text "apoptotic")
   (:var mv2651 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv2663 :isa be :subject mv2662 :predicate mv2664 :present "PRESENT")
   (:var mv2662 :isa gene :has-determiner "WHAT" :cellular-process mv2660 :raw-text "genes")
   (:var mv2660 :isa apoptosis :raw-text "apoptotic")
   (:var mv2664 :isa upstream-segment :pathwaycomponent mv2662 :modifier mv2658 :raw-text
    "upstream")
   (:var mv2658 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv2672 :isa involve :theme mv2671 :theme mv2667 :present "PRESENT")
   (:var mv2671 :isa pathway :has-determiner "WHAT" :cellular-process mv2669 :raw-text "pathways")
   (:var mv2669 :isa apoptosis :raw-text "apoptotic")
   (:var mv2667 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv2674 :isa be :subject mv2673 :predicate mv2677 :present "PRESENT")
   (:var mv2673 :isa what) (:var mv2677 :isa target-protein :agent mv2676 :raw-text "targets")
   (:var mv2676 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv2681 :isa be :subject mv2680 :predicate mv2683 :present "PRESENT")
   (:var mv2680 :isa what)
   (:var mv2683 :isa inhibitor :quantifier mv2682 :protein mv2679 :raw-text "inhibitors")
   (:var mv2682 :isa some :word "some")
   (:var mv2679 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv2685 :isa be :subject mv2684 :predicate mv2687 :present "PRESENT")
   (:var mv2684 :isa what)
   (:var mv2687 :isa drug :predication mv2689 :quantifier mv2686 :raw-text "drugs")
   (:var mv2689 :isa inhibit :agent mv2687 :that-rel t :object mv2690 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv2690 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv2686 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv2693 :isa be :subject mv2692 :predicate mv2695 :present "PRESENT")
   (:var mv2692 :isa what)
   (:var mv2695 :isa gene :context mv2691 :quantifier mv2694 :raw-text "genes")
   (:var mv2691 :isa signaling-pathway :has-determiner "THE" :modifier mv2698 :raw-text
    "signaling pathway")
   (:var mv2698 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2694 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv2702 :isa be :subject mv2701 :predicate mv2704 :present "PRESENT")
   (:var mv2701 :isa what)
   (:var mv2704 :isa protein :|context-OR-in-pathway| mv2700 :quantifier mv2703 :raw-text
    "proteins")
   (:var mv2700 :isa signaling-pathway :has-determiner "THE" :modifier mv2707 :raw-text
    "signaling pathway")
   (:var mv2707 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2703 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv2710 :isa be :subject mv2709 :predicate mv2712 :present "PRESENT")
   (:var mv2709 :isa what) (:var mv2712 :isa member :set mv2714 :has-determiner "THE")
   (:var mv2714 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv2720 :isa be :subject mv2719 :predicate mv2722 :present "PRESENT")
   (:var mv2719 :isa what)
   (:var mv2722 :isa micro-rna :predication mv2724 :has-determiner "THE" :raw-text "miRNAS")
   (:var mv2724 :isa regulate :agent mv2722 :that-rel t :object mv2728 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2728 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv2725 mv2726 mv2716 mv2717 mv2718))
   (:var mv2725 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv2726 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2716 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2717 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv2718 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv2730 :isa be :subject mv2729 :predicate mv2732 :present "PRESENT")
   (:var mv2729 :isa what)
   (:var mv2732 :isa regulator :theme mv2738 :has-determiner "THE" :raw-text "regulators")
   (:var mv2738 :isa bio-entity :organ mv2737 :name "MAPPK14")
   (:var mv2737 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv2743 :isa be :subject mv2742 :predicate mv2745 :present "PRESENT")
   (:var mv2742 :isa what)
   (:var mv2745 :isa regulator :theme mv2741 :has-determiner "THE" :raw-text "regulators")
   (:var mv2741 :isa protein :organ mv2748 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv2748 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv2753 :isa be :subject mv2752 :predicate mv2755 :present "PRESENT")
   (:var mv2752 :isa what)
   (:var mv2755 :isa regulator :theme mv2751 :has-determiner "THE" :raw-text "regulators")
   (:var mv2751 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv2760 :isa be :subject mv2759 :predicate mv2762 :present "PRESENT")
   (:var mv2759 :isa what)
   (:var mv2762 :isa regulator :theme mv2758 :has-determiner "THE" :raw-text "regulators")
   (:var mv2758 :isa protein :organ mv2765 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv2765 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv2781 :isa wh-question :statement mv2779 :wh what)
   (:var mv2779 :isa prepositional-phrase :pobj mv2778 :prep "IN")
   (:var mv2778 :isa bio-entity :name "bladeeer"))
  ("What are the regulators of mapk14"
   (:var mv2784 :isa be :subject mv2783 :predicate mv2786 :present "PRESENT")
   (:var mv2783 :isa what)
   (:var mv2786 :isa regulator :theme mv2782 :has-determiner "THE" :raw-text "regulators")
   (:var mv2782 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv2803 :isa copular-predication :item mv2792 :value mv2790 :predicate mv2793)
   (:var mv2792 :isa what) (:var mv2790 :isa in-common :theme mv2800)
   (:var mv2800 :isa gene :has-determiner "THE" :expresses mv2801 :raw-text "genes")
   (:var mv2801 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv2797 mv2798 mv2791))
   (:var mv2797 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2798 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv2791 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv2793 :isa be :predicate mv2789 :present "PRESENT")
   (:var mv2789 :isa transcription-factor :has-determiner "THE" :raw-text "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv2806 :isa be :subject mv2805 :predicate mv2804 :present "PRESENT")
   (:var mv2805 :isa what)
   (:var mv2804 :isa transcription-factor :predication mv2809 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv2809 :isa regulate :agent mv2804 :that-rel t :object mv2815 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2815 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv2814 mv2813))
   (:var mv2814 :isa bio-entity :name "EELK1")
   (:var mv2813 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv2820 :isa be :subject mv2819 :predicate mv2816 :present "PRESENT")
   (:var mv2819 :isa what)
   (:var mv2816 :isa transcription-factor :predication mv2823 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv2823 :isa regulate :agent mv2816 :that-rel t :object mv2830 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2830 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv2824 mv2825 mv2829 mv2817 mv2818))
   (:var mv2824 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv2825 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2829 :isa bio-entity :name "STAAT3")
   (:var mv2817 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv2818 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv2836 :isa be :subject mv2835 :predicate mv2831 :present "PRESENT")
   (:var mv2835 :isa what)
   (:var mv2831 :isa transcription-factor :predication mv2839 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv2839 :isa regulate :agent mv2831 :that-rel t :object mv2843 :present "PRESENT" :raw-text
    "regulate")
   (:var mv2843 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv2840 mv2841 mv2832 mv2833 mv2834))
   (:var mv2840 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv2841 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv2832 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv2833 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv2834 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv2848 :isa be :subject mv2847 :predicate mv2852 :present "PRESENT")
   (:var mv2847 :isa what)
   (:var mv2852 :isa regulator :theme mv2856 :has-determiner "THE" :context mv2850 :raw-text
    "regulators")
   (:var mv2856 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv2844 mv2845 mv2854 mv2846))
   (:var mv2844 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv2845 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv2854 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv2846 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv2850 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv2865 :isa regulate :object mv2860 :agent mv2864 :present "PRESENT" :raw-text
    "regulated")
   (:var mv2860 :isa gene :has-determiner "WHAT" :cellular-process mv2858 :raw-text "genes")
   (:var mv2858 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv2864 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv2870 :isa regulate :object mv2867 :agent mv2869 :present "PRESENT" :raw-text "regulate")
   (:var mv2867 :isa what)
   (:var mv2869 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv2874 :isa regulate :object mv2871 :|agent-OR-cause| mv2873 :organ mv2876 :present
    "PRESENT" :raw-text "regulate")
   (:var mv2871 :isa what) (:var mv2873 :isa pronoun/inanimate :word "it")
   (:var mv2876 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv2882 :isa target :object mv2879 :agent mv2878 :present "PRESENT" :raw-text "target")
   (:var mv2879 :isa what)
   (:var mv2878 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv2886 :isa regulate :object mv2884 :agent mv2883 :present "PRESENT" :raw-text "regulate")
   (:var mv2884 :isa what)
   (:var mv2883 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv2890 :isa regulate :object mv2888 :agent mv2887 :present "PRESENT" :raw-text "regulate")
   (:var mv2888 :isa what)
   (:var mv2887 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv2894 :isa regulate :object mv2892 :agent mv2891 :present "PRESENT" :raw-text "regulate")
   (:var mv2892 :isa what)
   (:var mv2891 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv2898 :isa regulate :object mv2895 :agent mv2897 :present "PRESENT" :raw-text "regulate")
   (:var mv2895 :isa what)
   (:var mv2897 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv2901 :isa downregulate :|agent-OR-cause| mv2900 :object mv2899 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv2900 :isa what)
   (:var mv2899 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv2915 :isa bio-use :patient mv2904 :modal mv2905 :agent mv2906 :theme mv2914 :present
    "PRESENT" :raw-text "use")
   (:var mv2904 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv2905 :isa could)
   (:var mv2906 :isa interlocutor :name "speaker")
   (:var mv2914 :isa target :object mv2902 :raw-text "target")
   (:var mv2902 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv2927 :isa bio-use :object mv2918 :modal mv2919 :agent mv2920 :disease mv2916 :present
    "PRESENT" :raw-text "use")
   (:var mv2918 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv2919 :isa should)
   (:var mv2920 :isa interlocutor :name "speaker")
   (:var mv2916 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv2931 :isa be :subject mv2930 :predicate mv2932 :present "PRESENT")
   (:var mv2930 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2932 :isa inhibitor :protein mv2928 :raw-text "inhibitors")
   (:var mv2928 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv2938 :isa inhibit :agent mv2937 :object mv2935 :present "PRESENT" :raw-text "inhibit")
   (:var mv2937 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2935 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv2941 :isa regulate :agent mv2940 :object mv2942 :present "PRESENT" :raw-text "regulate")
   (:var mv2940 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2942 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv2946 :isa target :agent mv2944 :object mv2947 :present "PRESENT" :raw-text "target")
   (:var mv2944 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv2947 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv2951 :isa be :subject mv2950 :predicate mv2952 :present "PRESENT")
   (:var mv2950 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2952 :isa downstream-segment :pathwaycomponent mv2948 :raw-text "downstream")
   (:var mv2948 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv2966 :isa copular-predication-of-pp :item mv2958 :value mv2965 :prep "IN" :predicate
    mv2959)
   (:var mv2958 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2965 :isa gene :context mv2956 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2956 :isa signaling-pathway :has-determiner "THE" :modifier mv2962 :raw-text
    "signaling pathway")
   (:var mv2962 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2959 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv2978 :isa copular-predication-of-pp :item mv2970 :value mv2977 :prep "IN" :predicate
    mv2971)
   (:var mv2970 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2977 :isa gene :context mv2968 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2968 :isa signaling-pathway :has-determiner "THE" :modifier mv2974 :raw-text
    "signaling pathways")
   (:var mv2974 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv2971 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv2990 :isa copular-predication-of-pp :item mv2982 :value mv2989 :prep "IN" :predicate
    mv2983)
   (:var mv2982 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv2989 :isa gene :context mv2986 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2986 :isa pathway :has-determiner "THE" :non-cellular-location mv2980 :raw-text
    "pathway")
   (:var mv2980 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv2983 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv3002 :isa copular-predication-of-pp :item mv2994 :value mv3001 :prep "IN" :predicate
    mv2995)
   (:var mv2994 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3001 :isa gene :context mv2992 :has-determiner "WHAT" :raw-text "genes")
   (:var mv2992 :isa signaling-pathway :has-determiner "THE" :modifier mv2998 :raw-text
    "signaling pathway")
   (:var mv2998 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv2995 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv3015 :isa involve :theme mv3007 :context mv3012 :present "PRESENT")
   (:var mv3007 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3012 :isa pathway :has-determiner "THE" :modifier mv3005 :raw-text "pathway")
   (:var mv3005 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv3026 :isa involve :theme mv3017 :context mv3023 :present "PRESENT")
   (:var mv3017 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3023 :isa pathway :has-determiner "THE" :modifier mv3022 :raw-text "pathway")
   (:var mv3022 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv3037 :isa involve :theme mv3029 :context mv3034 :present "PRESENT")
   (:var mv3029 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3034 :isa pathway :has-determiner "THE" :modifier mv3027 :raw-text "pathway")
   (:var mv3027 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv3048 :isa involve :theme mv3040 :context mv3045 :present "PRESENT")
   (:var mv3040 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3045 :isa pathway :has-determiner "THE" :non-cellular-location mv3038 :raw-text
    "pathway")
   (:var mv3038 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv3061 :isa regulate :object mv3053 :agent mv3060 :present "PRESENT" :superlative mv3055
    :adverb mv3056 :raw-text "regulated")
   (:var mv3053 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3060 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv3049 mv3050 mv3051))
   (:var mv3049 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv3050 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv3051 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv3055 :isa superlative-quantifier :name "most")
   (:var mv3056 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv3076 :isa regulate :object mv3068 :agent mv3075 :present "PRESENT" :superlative mv3070
    :adverb mv3071 :raw-text "regulated")
   (:var mv3068 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3075 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :type
    micro-rna :number 4 :items (mv3063 mv3064 mv3065 mv3066))
   (:var mv3063 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv3064 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv3065 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv3066 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid "MIMAT0000075")
   (:var mv3070 :isa superlative-quantifier :name "most")
   (:var mv3071 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv3091 :isa regulate :object mv3083 :agent mv3090 :present "PRESENT" :superlative mv3085
    :adverb mv3086 :raw-text "regulated")
   (:var mv3083 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3090 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv3078 mv3079 mv3080 mv3081))
   (:var mv3078 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv3079 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv3080 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv3081 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid "MIMAT0000075")
   (:var mv3085 :isa superlative-quantifier :name "most")
   (:var mv3086 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv3099 :isa regulate :object mv3094 :agent mv3098 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3094 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3098 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv3110 :isa regulate :object mv3103 :agent mv3109 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3103 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3109 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv3101 mv3108))
   (:var mv3101 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv3108 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv3121 :isa regulate :object mv3115 :agent mv3120 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3115 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3120 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv3112 mv3113))
   (:var mv3112 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv3113 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv3131 :isa regulate :object mv3124 :agent mv3130 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3124 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3130 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv3139 :isa regulate :object mv3134 :agent mv3138 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3134 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3138 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv3150 :isa regulate :object mv3143 :agent mv3149 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3143 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3149 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv3141 mv3148))
   (:var mv3141 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3148 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv3158 :isa target :object mv3154 :cause mv3152 :present "PRESENT" :raw-text "targeted")
   (:var mv3154 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3152 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv3172 :isa copular-predication-of-pp :item mv3162 :value mv3171 :prep "IN" :predicate
    mv3163)
   (:var mv3162 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3171 :isa gene :context mv3160 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3160 :isa signaling-pathway :has-determiner "THE" :modifier mv3168 :raw-text
    "signaling pathway")
   (:var mv3168 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv3163 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv3182 :isa bio-use :object mv3176 :context mv3174 :present "PRESENT" :raw-text "used")
   (:var mv3176 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3174 :isa signaling-pathway :has-determiner "THE" :modifier mv3181 :raw-text
    "signaling pathway")
   (:var mv3181 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv3189 :isa target :object mv3186 :cause mv3184 :present "PRESENT" :raw-text "target")
   (:var mv3186 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3184 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv3195 :isa target :object mv3192 :agent mv3190 :present "PRESENT" :raw-text "target")
   (:var mv3192 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3190 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv3201 :isa target :object mv3198 :agent mv3196 :present "PRESENT" :raw-text "target")
   (:var mv3198 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3196 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv3206 :isa upregulate :object mv3204 :agent mv3202 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv3204 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3202 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv3211 :isa regulate :object mv3209 :agent mv3207 :cell-type mv3214 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3209 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3207 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3214 :isa cell-type :non-cellular-location mv3213) (:var mv3213 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv3220 :isa regulate :object mv3218 :agent mv3216 :organ mv3222 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3218 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3216 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3222 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv3228 :isa regulate :object mv3226 :agent mv3224 :organ mv3230 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3226 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3224 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3230 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv3236 :isa regulate :object mv3234 :agent mv3232 :present "PRESENT" :raw-text "regulate")
   (:var mv3234 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3232 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv3244 :isa regulate :object mv3239 :agent mv3237 :present "PRESENT" :raw-text "regulate")
   (:var mv3239 :isa gene :organ mv3242 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3242 :isa liver :has-determiner "THE")
   (:var mv3237 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv3253 :isa wh-question :statement mv3252 :var nil :wh what)
   (:var mv3252 :isa from :word "from"))
  ("What genes is stat3 upstream of?"
   (:var mv3257 :isa be :subject mv3256 :predicate mv3258 :present "PRESENT")
   (:var mv3256 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3258 :isa upstream-segment :pathwaycomponent mv3256 :modifier mv3254 :raw-text
    "upstream")
   (:var mv3254 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv3266 :isa be :subject mv3262 :predicate mv3267 :present "PRESENT")
   (:var mv3262 :isa gene :predication mv3263 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3263 :isa regulate :object mv3262 :agent mv3265 :past "PAST" :raw-text "regulated")
   (:var mv3265 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv3267 :isa kinase :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv3274 :isa be :subject mv3271 :predicate mv3275 :present "PRESENT")
   (:var mv3271 :isa gene :predication mv3272 :has-determiner "WHAT" :raw-text "genes")
   (:var mv3272 :isa regulate :object mv3271 :agent mv3269 :past "PAST" :raw-text "regulated")
   (:var mv3269 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3275 :isa kinase :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv3281 :isa involve :theme mv3280 :theme mv3284 :present "PRESENT")
   (:var mv3280 :isa pathway :has-determiner "WHAT" :modifier mv3279 :raw-text "pathways")
   (:var mv3279 :isa immune :name "immune")
   (:var mv3284 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv3282 mv3277))
   (:var mv3282 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3277 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv3288 :isa involve :theme mv3287 :theme mv3289 :present "PRESENT")
   (:var mv3287 :isa pathway :has-determiner "WHAT" :modifier mv3286 :raw-text "pathways")
   (:var mv3286 :isa immune :name "immune")
   (:var mv3289 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv3294 :isa involve :theme mv3293 :theme mv3297 :present "PRESENT")
   (:var mv3293 :isa pathway :has-determiner "WHAT" :modifier mv3292 :raw-text "pathways")
   (:var mv3292 :isa immune :name "immune")
   (:var mv3297 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv3295 mv3290))
   (:var mv3295 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3290 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv3301 :isa involve :theme mv3300 :theme mv3311 :present "PRESENT")
   (:var mv3300 :isa pathway :has-determiner "WHAT" :modifier mv3299 :raw-text "pathways")
   (:var mv3299 :isa immune :name "immune")
   (:var mv3311 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv3309 mv3310))
   (:var mv3309 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv3310 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv3313 :isa inhibit :|agent-OR-cause| mv3312 :object mv3314 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv3312 :isa what)
   (:var mv3314 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv3317 :isa be :subject mv3316 :predicate mv3315 :present "PRESENT")
   (:var mv3316 :isa what)
   (:var mv3315 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv3319 :isa be :subject mv3318 :predicate mv3320 :present "PRESENT")
   (:var mv3318 :isa what)
   (:var mv3320 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv3323 :isa be :subject mv3322 :predicate mv3324 :present "PRESENT")
   (:var mv3322 :isa what)
   (:var mv3324 :isa downstream-segment :pathwaycomponent mv3321 :raw-text "downstream")
   (:var mv3321 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv3329 :isa be :subject mv3328 :predicate mv3330 :present "PRESENT")
   (:var mv3328 :isa what)
   (:var mv3330 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv3332 :isa be :subject mv3331 :predicate mv3333 :present "PRESENT")
   (:var mv3331 :isa what) (:var mv3333 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv3339 :isa regulate :|affected-process-OR-object| mv3335 :agent mv3334 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3335 :isa what)
   (:var mv3334 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv3343 :isa be :subject mv3342 :predicate mv3349 :present "PRESENT")
   (:var mv3342 :isa what) (:var mv3349 :isa evidence :statement mv3348 :has-determiner "THE")
   (:var mv3348 :isa decrease :agent mv3347 :object mv3341 :present "PRESENT" :raw-text
    "decreases")
   (:var mv3347 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3341 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv3352 :isa be :subject mv3351 :predicate mv3362 :present "PRESENT")
   (:var mv3351 :isa what) (:var mv3362 :isa evidence :statement mv3357 :has-determiner "THE")
   (:var mv3357 :isa decrease :agent mv3356 :|affected-process-OR-object| mv3359 :present "PRESENT"
    :raw-text "decreases")
   (:var mv3356 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3359 :isa bio-amount :measured-item mv3350 :has-determiner "THE" :raw-text "amount")
   (:var mv3350 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv3364 :isa be :subject mv3363 :predicate mv3366 :present "PRESENT")
   (:var mv3363 :isa what)
   (:var mv3366 :isa target-protein :agent mv3369 :has-determiner "THE" :raw-text "target")
   (:var mv3369 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv3375 :isa regulate :object mv3373 :agent mv3371 :present "PRESENT" :raw-text "regulate")
   (:var mv3373 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv3371 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv3383 :isa regulate :agent mv3380 :object mv3387 :present "PRESENT" :adverb mv3381
    :adverb mv3382 :raw-text "regulate")
   (:var mv3380 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv3387 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv3384 mv3385 mv3376 mv3377 mv3378))
   (:var mv3384 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv3385 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3376 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3377 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv3378 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv3381 :isa superlative-quantifier :name "most")
   (:var mv3382 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv3393 :isa regulate :agent mv3392 :object mv3397 :present "PRESENT" :raw-text "regulate")
   (:var mv3392 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv3397 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv3394 mv3395 mv3388 mv3389 mv3390))
   (:var mv3394 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv3395 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3388 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3389 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv3390 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv3404 :isa regulate :object mv3400 :agent mv3398 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3400 :isa micro-rna :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv3398 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv3409 :isa regulate :agent mv3408 :object mv3410 :present "PRESENT" :raw-text "regulate")
   (:var mv3408 :isa micro-rna :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv3410 :isa gene :context mv3406 :raw-text "genes")
   (:var mv3406 :isa signaling-pathway :has-determiner "THE" :modifier mv3413 :raw-text
    "signaling pathways")
   (:var mv3413 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv3416 :isa involve :theme mv3418 :theme mv3417 :present "PRESENT")
   (:var mv3418 :isa bio-entity :has-determiner "WHAT" :name "pahtways")
   (:var mv3417 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv3429 :isa copular-predication :item mv3421 :value mv3423 :predicate mv3422)
   (:var mv3421 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3423 :isa common :theme mv3427)
   (:var mv3427 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv3419 mv3426))
   (:var mv3419 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3426 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3422 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv3432 :isa involve :theme mv3431 :theme mv3433 :present "PRESENT")
   (:var mv3431 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3433 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv3437 :isa involve :theme mv3436 :theme mv3440 :present "PRESENT")
   (:var mv3436 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3440 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv3438 mv3434))
   (:var mv3438 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv3434 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv3444 :isa involve :theme mv3443 :theme mv3441 :present "PRESENT")
   (:var mv3443 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv3441 :isa transcription-factor :has-determiner "THE" :modifier mv3446 :raw-text
    "transcription factor")
   (:var mv3446 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv3457 :isa wh-question :statement mv3455 :var nil :wh what)
   (:var mv3455 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What proteins are in the MAPK family?"
   (:var mv3468 :isa copular-predication-of-pp :item mv3459 :value mv3466 :prep mv3461 :predicate
    mv3460)
   (:var mv3459 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3466 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
   (:var mv3461 :isa in :word "in") (:var mv3460 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv3475 :isa target :object mv3471 :cause mv3469 :present "PRESENT" :raw-text "targeted")
   (:var mv3471 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3469 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv3482 :isa target :object mv3479 :agent mv3477 :present "PRESENT" :raw-text "target")
   (:var mv3479 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3477 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv3488 :isa target :object mv3485 :cause mv3483 :present "PRESENT" :raw-text "target")
   (:var mv3485 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3483 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv3494 :isa target :object mv3490 :agent mv3492 :present "PRESENT" :raw-text "target")
   (:var mv3490 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3492 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv3499 :isa lead :agent mv3497 :theme mv3502 :modal mv3498 :raw-text "lead")
   (:var mv3497 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3502 :isa development :disease mv3495 :has-determiner "THE" :raw-text "development")
   (:var mv3495 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv3498 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv3510 :isa lead :agent mv3508 :theme mv3513 :modal mv3509 :raw-text "lead")
   (:var mv3508 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3513 :isa development :disease mv3506 :has-determiner "THE" :raw-text "development")
   (:var mv3506 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv3509 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv3520 :isa involve :theme mv3519 :theme mv3522 :present "PRESENT")
   (:var mv3519 :isa pathway :has-determiner "WHAT" :modifier mv3518 :raw-text "pathways")
   (:var mv3518 :isa database :name "Reactome" :uid "Reactome")
   (:var mv3522 :isa signal :modifier mv3521 :raw-text "signaling")
   (:var mv3521 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv3524 :isa regulate :|agent-OR-cause| mv3523 :object mv3525 :present "PRESENT" :raw-text
    "regulates")
   (:var mv3523 :isa what)
   (:var mv3525 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv3528 :isa regulate :|agent-OR-cause| mv3527 :object mv3526 :present "PRESENT" :raw-text
    "regulates")
   (:var mv3527 :isa what)
   (:var mv3526 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv3531 :isa regulate :|agent-OR-cause| mv3530 :object mv3529 :present "PRESENT" :raw-text
    "regulates")
   (:var mv3530 :isa what)
   (:var mv3529 :isa protein :organ mv3533 :raw-text "smurf2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv3533 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv3544 :isa share :object mv3535 :participant mv3543 :present "PRESENT" :raw-text
    "shared")
   (:var mv3535 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv3543 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv3541 mv3536))
   (:var mv3541 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv3536 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv3555 :isa share :object mv3546 :participant mv3554 :present "PRESENT" :raw-text
    "shared")
   (:var mv3546 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv3554 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv3547 mv3553))
   (:var mv3547 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3553 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv3567 :isa share :object mv3557 :participant mv3566 :present "PRESENT" :raw-text
    "shared")
   (:var mv3557 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv3566 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv3558 mv3559 mv3565))
   (:var mv3558 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3559 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3565 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?" (:var mv3571 :isa tissue :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv3578 :isa bio-produce :agent mv3575 :object mv3576 :present "PRESENT" :raw-text
    "produces")
   (:var mv3575 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv3576 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv3582 :isa transcribe :agent mv3579 :object mv3580 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv3579 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv3580 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3598 :isa copular-predication :item mv3583 :value mv3590 :predicate mv3589)
   (:var mv3583 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3590 :isa common :theme mv3595)
   (:var mv3595 :isa gene :has-determiner "THE" :expresses mv3596 :raw-text "genes")
   (:var mv3596 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3584 mv3585 mv3593 mv3586 mv3587))
   (:var mv3584 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3585 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3593 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3586 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3587 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3589 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv3612 :isa copular-predication :item mv3599 :value mv3605 :predicate mv3604)
   (:var mv3599 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3605 :isa common :theme mv3609)
   (:var mv3609 :isa gene :has-determiner "THE" :expresses mv3610 :raw-text "genes")
   (:var mv3610 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv3600 mv3601 mv3602))
   (:var mv3600 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3601 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3602 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3604 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv3617 :isa regulate :object mv3615 :agent mv3613 :present "PRESENT" :raw-text "regulate")
   (:var mv3615 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv3613 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv3626 :isa copular-predication :item mv3618 :value mv3621 :predicate mv3620)
   (:var mv3618 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3621 :isa common :theme mv3624)
   (:var mv3624 :isa gene :has-determiner "THESE" :raw-text "genes")
   (:var mv3620 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3642 :isa copular-predication :item mv3627 :value mv3628 :predicate mv3634)
   (:var mv3627 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3628 :isa in-common :theme mv3639)
   (:var mv3639 :isa gene :has-determiner "THE" :expresses mv3640 :raw-text "genes")
   (:var mv3640 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3629 mv3630 mv3637 mv3631 mv3632))
   (:var mv3629 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3630 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3637 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3631 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3632 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3634 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv3656 :isa copular-predication :item mv3643 :value mv3644 :predicate mv3649)
   (:var mv3643 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3644 :isa in-common :theme mv3653)
   (:var mv3653 :isa gene :has-determiner "THE" :expresses mv3654 :raw-text "genes")
   (:var mv3654 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv3645 mv3646 mv3647))
   (:var mv3645 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3646 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3647 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv3649 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv3660 :isa be :subject mv3657 :predicate mv3661 :present "PRESENT")
   (:var mv3657 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3661 :isa regulator :theme mv3658 :raw-text "regulators")
   (:var mv3658 :isa protein :organ mv3664 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv3664 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv3670 :isa be :subject mv3667 :predicate mv3671 :present "PRESENT")
   (:var mv3667 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3671 :isa regulator :theme mv3668 :raw-text "regulators")
   (:var mv3668 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv3686 :isa share :object mv3674 :participant mv3684 :present "PRESENT" :raw-text
    "shared")
   (:var mv3674 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3684 :isa gene :has-determiner "THE" :expresses mv3685 :raw-text "genes")
   (:var mv3685 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv3681 mv3682 mv3675))
   (:var mv3681 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3682 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv3675 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv3691 :isa regulate :agent mv3688 :object mv3689 :present "PRESENT" :raw-text "regulate")
   (:var mv3688 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3689 :isa protein :organ mv3693 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv3693 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv3698 :isa regulate :agent mv3695 :object mv3696 :present "PRESENT" :raw-text "regulate")
   (:var mv3695 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3696 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv3701 :isa regulate :agent mv3699 :object mv3702 :present "PRESENT" :raw-text "regulate")
   (:var mv3699 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3702 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv3705 :isa regulate :agent mv3703 :theme mv3711 :object mv3706 :present "PRESENT"
    :raw-text "regulate")
   (:var mv3703 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3711 :isa bio-entity :has-determiner "THE" :modifier mv3709 :cellular-process mv3710
    :name "pathwya")
   (:var mv3709 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv3710 :isa signal :raw-text "signaling") (:var mv3706 :isa gene :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv3714 :isa protein :has-determiner "WHAT" :predication mv3716 :raw-text "frizzled8" :uid
    "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv3716 :isa regulate :object mv3714 :agent mv3713 :raw-text "regulated")
   (:var mv3713 :isa transcription-factor :raw-text "transcription factors"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv3720 :isa transcribe :agent mv3717 :object mv3718 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv3717 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3718 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv3723 :isa upregulate :|agent-OR-cause| mv3722 :object mv3721 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv3722 :isa what)
   (:var mv3721 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv3729 :isa gene-transcript-express :location mv3725 :object mv3724 :past "PAST" :raw-text
    "expressed")
   (:var mv3725 :isa where)
   (:var mv3724 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv3733 :isa involve :theme mv3732 :theme mv3734 :present "PRESENT")
   (:var mv3732 :isa pathway :has-determiner "WHICH" :modifier mv3731 :raw-text "pathways")
   (:var mv3731 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3734 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv3739 :isa bio-use :agent mv3737 :object mv3740 :present "PRESENT" :raw-text "use")
   (:var mv3737 :isa pathway :has-determiner "WHICH" :modifier mv3736 :raw-text "pathways")
   (:var mv3736 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3740 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv3744 :isa regulate :agent mv3741 :object mv3742 :present "PRESENT" :raw-text "regulate")
   (:var mv3741 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv3742 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv3748 :isa regulate :|agent-OR-cause| mv3745 :object mv3749 :present "PRESENT" :adverb
    mv3746 :raw-text "regulate")
   (:var mv3745 :isa which)
   (:var mv3749 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv3746 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv3758 :isa regulate :object mv3754 :agent mv3750 :present "PRESENT" :raw-text
    "regulated")
   (:var mv3754 :isa gene :has-determiner "WHICH" :cellular-process mv3752 :raw-text "genes")
   (:var mv3752 :isa apoptosis :raw-text "apoptotic")
   (:var mv3750 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv3765 :isa be :subject mv3764 :predicate mv3766 :present "PRESENT")
   (:var mv3764 :isa gene :has-determiner "WHICH" :cellular-process mv3762 :raw-text "genes")
   (:var mv3762 :isa apoptosis :raw-text "apoptotic")
   (:var mv3766 :isa upstream-segment :pathwaycomponent mv3764 :modifier mv3760 :raw-text
    "upstream")
   (:var mv3760 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv3775 :isa target :object mv3771 :agent mv3769 :present "PRESENT" :raw-text "targeted")
   (:var mv3771 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv3769 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv3782 :isa be :subject mv3779 :predicate mv3783 :present "PRESENT")
   (:var mv3779 :isa gene :predication mv3780 :has-determiner "WHICH" :raw-text "genes")
   (:var mv3780 :isa regulate :object mv3779 :agent mv3777 :past "PAST" :raw-text "regulated")
   (:var mv3777 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3783 :isa kinase :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3799 :isa share :object mv3791 :participant mv3797 :present "PRESENT" :raw-text
    "shared")
   (:var mv3791 :isa pathway :has-determiner "WHICH" :modifier mv3790 :raw-text "pathways")
   (:var mv3790 :isa immune :name "immune")
   (:var mv3797 :isa gene :expresses mv3798 :raw-text "genes")
   (:var mv3798 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3785 mv3786 mv3795 mv3787 mv3788))
   (:var mv3785 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3786 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3795 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3787 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3788 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv3814 :isa share :object mv3806 :participant mv3812 :present "PRESENT" :raw-text
    "shared")
   (:var mv3806 :isa pathway :has-determiner "WHICH" :modifier mv3805 :raw-text "pathways")
   (:var mv3805 :isa immune :name "immune")
   (:var mv3812 :isa gene :has-determiner "THE" :expresses mv3813 :raw-text "genes")
   (:var mv3813 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv3801 mv3802 mv3803))
   (:var mv3801 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3802 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3803 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv3820 :isa utilize :participant mv3819 :object mv3821 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3819 :isa pathway :has-determiner "WHICH" :modifier mv3818 :raw-text "pathways")
   (:var mv3818 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3821 :isa gene :predication mv3822 :raw-text "genes")
   (:var mv3822 :isa regulate :object mv3821 :agent mv3816 :past "PAST" :raw-text "regulated")
   (:var mv3816 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv3828 :isa utilize :participant mv3827 :object mv3829 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3827 :isa pathway :has-determiner "WHICH" :modifier mv3826 :raw-text "pathways")
   (:var mv3826 :isa database :name "Reactome" :uid "Reactome")
   (:var mv3829 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv3833 :isa utilize :participant mv3832 :object mv3834 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3832 :isa pathway :has-determiner "WHICH" :modifier mv3831 :raw-text "pathways")
   (:var mv3831 :isa database :name "KEGG" :uid "KEGG")
   (:var mv3834 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv3842 :isa regulate :|affected-process-OR-object| mv3838 :agent mv3835 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3838 :isa pronoun/plural :quantifier mv3836 :word "them") (:var mv3836 :isa which)
   (:var mv3835 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv3852 :isa gene-transcript-express :object mv3847 :organ mv3851 :present "PRESENT"
    :raw-text "expressed")
   (:var mv3847 :isa these :quantifier mv3845 :word "these") (:var mv3845 :isa which)
   (:var mv3851 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv3863 :isa copular-predication-of-pp :item mv3857 :value mv3861 :prep mv3859 :predicate
    mv3858)
   (:var mv3857 :isa these :quantifier mv3855 :word "these") (:var mv3855 :isa which)
   (:var mv3861 :isa pathway :modifier mv3860 :raw-text "pathways")
   (:var mv3860 :isa immune :name "immune") (:var mv3859 :isa in :word "in")
   (:var mv3858 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv3869 :isa phosphorylate :amino-acid mv3866 :agent mv3868 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv3866 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv3868 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv3873 :isa be :subject mv3872 :predicate mv3874 :present "PRESENT")
   (:var mv3872 :isa these :quantifier mv3870 :word "these") (:var mv3870 :isa which)
   (:var mv3874 :isa kinase :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv3883 :isa regulate :|affected-process-OR-object| mv3879 :agent mv3876 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3879 :isa those :quantifier mv3877 :word "those") (:var mv3877 :isa which)
   (:var mv3876 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv3893 :isa regulate :|affected-process-OR-object| mv3889 :agent mv3886 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3889 :isa these :quantifier mv3887 :word "these") (:var mv3887 :isa which)
   (:var mv3886 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv3903 :isa regulate :|affected-process-OR-object| mv3898 :agent mv3902 :present "PRESENT"
    :raw-text "regulated")
   (:var mv3898 :isa these :quantifier mv3896 :word "these") (:var mv3896 :isa which)
   (:var mv3902 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3919 :isa share :object mv3911 :participant mv3917 :present "PRESENT" :raw-text
    "shared")
   (:var mv3911 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3917 :isa gene :expresses mv3918 :raw-text "genes")
   (:var mv3918 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3906 mv3907 mv3915 mv3908 mv3909))
   (:var mv3906 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3907 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3915 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3908 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3909 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv3933 :isa share :object mv3924 :participant mv3932 :present "PRESENT" :raw-text
    "shared")
   (:var mv3924 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3932 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv3921 mv3922 mv3931))
   (:var mv3921 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3922 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3931 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv3949 :isa share :object mv3940 :participant mv3947 :present "PRESENT" :raw-text
    "shared")
   (:var mv3940 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3947 :isa gene :has-determiner "THE" :expresses mv3948 :raw-text "genes")
   (:var mv3948 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv3935 mv3936 mv3945 mv3937 mv3938))
   (:var mv3935 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv3936 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv3945 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv3937 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv3938 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv3955 :isa involve :theme mv3954 :theme mv3957 :present "PRESENT")
   (:var mv3954 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3957 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv3951 mv3952))
   (:var mv3951 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv3952 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv3960 :isa involve :theme mv3959 :theme mv3961 :present "PRESENT")
   (:var mv3959 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3961 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv3965 :isa bio-use :agent mv3963 :object mv3966 :present "PRESENT" :raw-text "use")
   (:var mv3963 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3966 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv3970 :isa bio-use :agent mv3968 :object mv3971 :present "PRESENT" :raw-text "use")
   (:var mv3968 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3971 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv3974 :isa utilize :participant mv3973 :object mv3975 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3973 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3975 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv3978 :isa utilize :participant mv3977 :object mv3980 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3977 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv3980 :isa gene :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv3987 :isa target :object mv3983 :agent mv3981 :present "PRESENT" :raw-text "targeted")
   (:var mv3983 :isa protein :has-determiner "WHICH" :raw-text "proteins")
   (:var mv3981 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv3992 :isa utilize :participant mv3991 :object mv3993 :present "PRESENT" :raw-text
    "utilize")
   (:var mv3991 :isa pathway :has-determiner "WHICH" :modifier mv3990 :raw-text "pathways")
   (:var mv3990 :isa database :name "Reactome" :uid "Reactome")
   (:var mv3993 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv4004 :isa copular-predication-of-pp :item mv3994 :value mv4003 :prep "IN" :predicate
    mv3997)
   (:var mv3994 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv4003 :isa transcription-factor :|context-OR-in-pathway| mv3995 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv3995 :isa signaling-pathway :has-determiner "THE" :modifier mv4000 :raw-text
    "signaling pathway")
   (:var mv4000 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv3997 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv4009 :isa regulate :agent mv4006 :object mv4007 :present "PRESENT" :raw-text "regulate")
   (:var mv4006 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv4007 :isa protein :organ mv4012 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv4012 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv4017 :isa regulate :agent mv4014 :object mv4015 :present "PRESENT" :raw-text "regulate")
   (:var mv4014 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv4015 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv4024 :isa explicit-suggestion :suggestion mv4020 :marker let-as-directive)
   (:var mv4020 :isa move-something-somewhere :at-relative-location mv4022 :theme mv4019 :present
    "PRESENT")
   (:var mv4022 :isa top-qua-location)
   (:var mv4019 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv4033 :isa explicit-suggestion :suggestion mv4027 :marker let-as-directive)
   (:var mv4027 :isa show :at-relative-location mv4031 :|statement-OR-theme| mv4026 :present
    "PRESENT")
   (:var mv4031 :isa top-qua-location)
   (:var mv4026 :isa protein :has-determiner "THE" :predication mv4029 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv4029 :isa phosphorylate :substrate mv4026 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv4036 :isa be :subject mv4035 :predicate mv4039 :present "PRESENT")
   (:var mv4035 :isa what)
   (:var mv4039 :isa upstream-segment :pathwaycomponent mv4043 :has-determiner "THE" :predication
    mv4038 :raw-text "upstreams")
   (:var mv4043 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv4034 mv4042))
   (:var mv4034 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv4042 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv4038 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv4052 :isa polar-question :statement mv4047)
   (:var mv4047 :isa gene-transcript-express :object mv4045 :organ mv4050 :past "PAST" :raw-text
    "expressed")
   (:var mv4045 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4050 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv4059 :isa polar-question :statement mv4055)
   (:var mv4055 :isa gene-transcript-express :object mv4053 :organ mv4057 :past "PAST" :raw-text
    "expressed")
   (:var mv4053 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4057 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv4061 :isa show :at-relative-location mv4064 :|statement-OR-theme| mv4060 :present
    "PRESENT")
   (:var mv4064 :isa top-qua-location)
   (:var mv4060 :isa protein :predication mv4062 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv4062 :isa phosphorylate :substrate mv4060 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv4068 :isa be :subject mv4067 :predicate mv4071 :present "PRESENT")
   (:var mv4067 :isa what)
   (:var mv4071 :isa upstream-segment :pathwaycomponent mv4075 :has-determiner "THE" :predication
    mv4070 :raw-text "upstreams")
   (:var mv4075 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv4066 mv4074))
   (:var mv4066 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv4074 :isa bio-entity :name "BRA") (:var mv4070 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv4084 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv4078 mv4082))
   (:var mv4078 :isa bio-activate :agent mv4077 :object mv4079 :present "PRESENT" :raw-text
    "activates")
   (:var mv4077 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv4079 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4082 :isa bio-activate :agent mv4081 :object mv4083 :present "PRESENT" :raw-text
    "activates")
   (:var mv4081 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4083 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv4086 :isa be :subject mv4085 :predicate mv4088 :present "PRESENT")
   (:var mv4085 :isa what) (:var mv4088 :isa path :end mv4092 :start mv4090 :has-determiner "THE")
   (:var mv4092 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4090 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv4095 :isa remove :object mv4102 :present "PRESENT" :raw-text "remove")
   (:var mv4102 :isa fact :statement mv4100 :has-determiner "THE")
   (:var mv4100 :isa bio-activate :agent mv4099 :object mv4101 :present "PRESENT" :raw-text
    "activates")
   (:var mv4099 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4101 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv4110 :isa explicit-suggestion :suggestion mv4105 :marker let-as-directive)
   (:var mv4105 :isa show :at-relative-location mv4108 :|statement-OR-theme| mv4104 :present
    "PRESENT")
   (:var mv4108 :isa top-qua-location)
   (:var mv4104 :isa protein :predication mv4106 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv4106 :isa phosphorylate :substrate mv4104 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv4113 :isa be :subject mv4112 :predicate mv4111 :present "PRESENT")
   (:var mv4112 :isa what)
   (:var mv4111 :isa positive-regulator :theme mv4117 :raw-text "positive regulators")
   (:var mv4117 :isa gene :has-determiner "THE" :expresses mv4116 :raw-text "gene")
   (:var mv4116 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv4122 :isa regulate :agent mv4119 :object mv4123 :present "PRESENT" :raw-text "regulate")
   (:var mv4119 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv4123 :isa protein :organ mv4120 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv4120 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv4134 :isa polar-question :statement mv4133)
   (:var mv4133 :isa there-exists :value mv4130 :predicate mv4127)
   (:var mv4130 :isa drug :predication mv4131 :quantifier mv4129 :raw-text "drugs")
   (:var mv4131 :isa inhibit :agent mv4130 :object mv4132 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv4132 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv4129 :isa any :word "any") (:var mv4127 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv4143 :isa polar-question :statement mv4142)
   (:var mv4142 :isa there-exists :value mv4139 :predicate mv4136)
   (:var mv4139 :isa drug :predication mv4140 :quantifier mv4138 :raw-text "drugs")
   (:var mv4140 :isa target :agent mv4139 :object mv4141 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv4141 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv4138 :isa any :word "any") (:var mv4136 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv4161 :isa polar-question :statement mv4157)
   (:var mv4157 :isa there-exists :value mv4149 :predicate mv4146)
   (:var mv4149 :isa gene :predication mv4158 :organ mv4152 :quantifier mv4148 :raw-text "genes")
   (:var mv4158 :isa regulate :object mv4149 :that-rel t :agent mv4144 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4144 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4152 :isa liver :has-determiner "THE") (:var mv4148 :isa any :word "any")
   (:var mv4146 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv4179 :isa polar-question :statement mv4175)
   (:var mv4175 :isa there-exists :value mv4167 :predicate mv4164)
   (:var mv4167 :isa gene :predication mv4168 :quantifier mv4166 :raw-text "genes")
   (:var mv4168 :isa involve :theme mv4167 :theme mv4170 :past "PAST")
   (:var mv4170 :isa apoptosis :predication mv4176 :raw-text "apoptosis")
   (:var mv4176 :isa regulate :affected-process mv4170 :that-rel t :agent mv4162 :present "PRESENT"
    :raw-text "regulated")
   (:var mv4162 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4166 :isa any :word "any") (:var mv4164 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv4190 :isa there-exists :predicate mv4182)
   (:var mv4182 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv4200 :isa polar-question :statement mv4198)
   (:var mv4198 :isa there-exists :value mv4196 :predicate mv4193)
   (:var mv4196 :isa inhibitor :|target-OR-protein| mv4191 :quantifier mv4195 :raw-text
    "inhibitors")
   (:var mv4191 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv4195 :isa any :word "any") (:var mv4193 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf" (:var mv4213 :isa polar-question :statement mv4210)
   (:var mv4210 :isa there-exists :value mv4205 :predicate mv4203)
   (:var mv4205 :isa gene :predication mv4206 :raw-text "genes")
   (:var mv4206 :isa regulate :object mv4205 :agent mv4211 :past "PAST" :raw-text "regulated")
   (:var mv4211 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4201 mv4209))
   (:var mv4201 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4209 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4203 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv4227 :isa polar-question :statement mv4218)
   (:var mv4218 :isa bio-find :agent mv4216 :object mv4214 :modal "CAN" :raw-text "find")
   (:var mv4216 :isa interlocutor :name "hearer")
   (:var mv4214 :isa protein :quantifier mv4219 :cellular-process mv4220 :context mv4222 :raw-text
    "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4219 :isa any :word "any") (:var mv4220 :isa apoptosis :raw-text "apoptotic")
   (:var mv4222 :isa pathway :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?"
   (:var mv4243 :isa polar-question :statement mv4242)
   (:var mv4242 :isa bio-find :agent mv4230 :statement mv4241 :object mv4236 :modal mv4229
    :raw-text "find")
   (:var mv4230 :isa interlocutor :name "hearer")
   (:var mv4241 :isa involve :theme mv4228 :modal "CAN")
   (:var mv4228 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4236 :isa pathway :quantifier mv4233 :cellular-process mv4234 :raw-text "pathways")
   (:var mv4233 :isa any :word "any") (:var mv4234 :isa apoptosis :raw-text "apoptotic")
   (:var mv4229 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv4263 :isa polar-question :statement mv4262) (:var mv4262 :isa look-up :actor mv4246)
   (:var mv4246 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv4273 :isa polar-question :statement mv4267)
   (:var mv4267 :isa show :agent mv4266 :|statement-OR-theme| mv4269 :beneficiary mv4268 :modal
    "CAN")
   (:var mv4266 :isa interlocutor :name "hearer")
   (:var mv4269 :isa gene :predication mv4270 :raw-text "genes")
   (:var mv4270 :isa regulate :object mv4269 :agent mv4264 :past "PAST" :raw-text "regulated")
   (:var mv4264 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4268 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv4286 :isa polar-question :statement mv4277)
   (:var mv4277 :isa show :agent mv4276 :|statement-OR-theme| mv4279 :beneficiary mv4278 :modal
    "CAN")
   (:var mv4276 :isa interlocutor :name "hearer")
   (:var mv4279 :isa gene :predication mv4284 :raw-text "genes")
   (:var mv4284 :isa regulate :object mv4279 :that-rel t :agent mv4274 :modal "CAN" :raw-text
    "regulated")
   (:var mv4274 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4278 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv4296 :isa polar-question :statement mv4289)
   (:var mv4289 :isa show :agent mv4288 :|statement-OR-theme| mv4292 :beneficiary mv4290 :modal
    "CAN")
   (:var mv4288 :isa interlocutor :name "hearer")
   (:var mv4292 :isa bio-entity :predication mv4294 :has-determiner "THE" :name "pahtways")
   (:var mv4294 :isa involve :theme mv4292 :that-rel t :theme mv4295 :modal "CAN")
   (:var mv4295 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4290 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv4307 :isa polar-question :statement mv4300)
   (:var mv4300 :isa tell :agent mv4299 :theme mv4303 :beneficiary mv4301 :modal "CAN")
   (:var mv4299 :isa interlocutor :name "hearer")
   (:var mv4303 :isa gene :predication mv4304 :has-determiner "THE" :raw-text "genes")
   (:var mv4304 :isa regulate :object mv4303 :agent mv4297 :past "PAST" :raw-text "regulated")
   (:var mv4297 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4301 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv4317 :isa polar-question :statement mv4311)
   (:var mv4311 :isa tell :agent mv4310 :theme mv4314 :beneficiary mv4312 :modal "CAN")
   (:var mv4310 :isa interlocutor :name "hearer")
   (:var mv4314 :isa gene :predication mv4316 :has-determiner "THE" :raw-text "genes")
   (:var mv4316 :isa regulate :object mv4314 :that-rel t :agent mv4308 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4308 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4312 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv4331 :isa polar-question :statement mv4321)
   (:var mv4321 :isa tell :agent mv4320 :theme mv4324 :beneficiary mv4322 :modal "CAN")
   (:var mv4320 :isa interlocutor :name "hearer")
   (:var mv4324 :isa gene :predication mv4329 :has-determiner "THE" :raw-text "genes")
   (:var mv4329 :isa regulate :object mv4324 :that-rel t :agent mv4318 :modal "CAN" :raw-text
    "regulated")
   (:var mv4318 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4322 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv4346 :isa polar-question :statement mv4335)
   (:var mv4335 :isa tell :agent mv4334 :theme mv4338 :beneficiary mv4336 :modal "CAN")
   (:var mv4334 :isa interlocutor :name "hearer")
   (:var mv4338 :isa gene :predication mv4345 :has-determiner "THE" :raw-text "genes")
   (:var mv4345 :isa regulate :object mv4338 :agent mv4332 :modal mv4333 :raw-text "regulated")
   (:var mv4332 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4333 :isa can) (:var mv4336 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv4362 :isa polar-question :statement mv4351)
   (:var mv4351 :isa tell :agent mv4350 :theme mv4360 :theme mv4352 :modal "CAN")
   (:var mv4350 :isa interlocutor :name "hearer")
   (:var mv4360 :isa share :object mv4347 :participant mv4359 :modal "CAN" :raw-text "shared")
   (:var mv4347 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv4359 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4348 mv4358))
   (:var mv4348 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4358 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4352 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv4375 :isa polar-question :statement mv4366)
   (:var mv4366 :isa tell :agent mv4365 :theme mv4373 :theme mv4367 :modal "CAN")
   (:var mv4365 :isa interlocutor :name "hearer")
   (:var mv4373 :isa regulate :object mv4369 :agent mv4363 :modal "CAN" :raw-text "regulated")
   (:var mv4369 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv4363 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4367 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv4392 :isa polar-question :statement mv4379)
   (:var mv4379 :isa tell :agent mv4378 :theme mv4389 :theme mv4380 :modal "CAN")
   (:var mv4378 :isa interlocutor :name "hearer")
   (:var mv4389 :isa regulate :object mv4382 :agent mv4376 :modal "CAN" :raw-text "regulated")
   (:var mv4382 :isa gene :organ mv4385 :has-determiner "WHICH" :raw-text "genes")
   (:var mv4385 :isa liver :has-determiner "THE")
   (:var mv4376 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4380 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv4401 :isa polar-question :statement mv4396)
   (:var mv4396 :isa tell :agent mv4395 :theme mv4399 :beneficiary mv4397 :modal "CAN")
   (:var mv4395 :isa interlocutor :name "hearer")
   (:var mv4399 :isa gene :predication mv4400 :has-determiner "WHICH" :raw-text "genes")
   (:var mv4400 :isa regulate :object mv4399 :agent mv4393 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4393 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4397 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?" (:var mv4411 :isa polar-question :statement mv4409)
   (:var mv4409 :isa affect :agent mv4402 :affected-process mv4407 :raw-text "affect")
   (:var mv4402 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4407 :isa gene-transcript-express :object mv4403 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4403 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv4423 :isa polar-question :statement mv4421)
   (:var mv4421 :isa affect :agent mv4412 :affected-process mv4417 :raw-text "affect")
   (:var mv4412 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4417 :isa gene-transcript-express :object mv4420 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4420 :isa gene :has-determiner "THE" :expresses mv4413 :raw-text "gene")
   (:var mv4413 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv4436 :isa polar-question :statement mv4434)
   (:var mv4434 :isa increase :agent mv4424 :affected-process mv4430 :raw-text "increase")
   (:var mv4424 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4430 :isa gene-transcript-express :object mv4433 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4433 :isa gene :has-determiner "THE" :expresses mv4425 :raw-text "gene")
   (:var mv4425 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv4448 :isa polar-question :statement mv4446)
   (:var mv4446 :isa increase :agent mv4437 :affected-process mv4442 :raw-text "increase")
   (:var mv4437 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4442 :isa transcribe :object mv4445 :raw-text "transcription")
   (:var mv4445 :isa gene :has-determiner "THE" :expresses mv4438 :raw-text "gene")
   (:var mv4438 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?" (:var mv4458 :isa polar-question :statement mv4456)
   (:var mv4456 :isa affect :agent mv4449 :affected-process mv4453 :raw-text "affect")
   (:var mv4449 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4453 :isa gene-transcript-express :object mv4455 :has-determiner "THE" :raw-text
    "expression")
   (:var mv4455 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv4468 :isa polar-question :statement mv4467)
   (:var mv4467 :isa contain :theme mv4465 :patient mv4459)
   (:var mv4465 :isa pathway :has-determiner "THE" :modifier mv4462 :raw-text "pathway")
   (:var mv4462 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv4459 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv4471 :isa bio-find :object mv4473 :present "PRESENT" :raw-text "Find")
   (:var mv4473 :isa treatment :disease mv4469 :has-determiner "A" :raw-text "treatment")
   (:var mv4469 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv4478 :isa bio-find :object mv4479 :present "PRESENT" :raw-text "Find")
   (:var mv4479 :isa gene :predication mv4483 :organ mv4482 :raw-text "genes")
   (:var mv4483 :isa regulate :object mv4479 :agent mv4476 :past "PAST" :raw-text "regulated")
   (:var mv4476 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4482 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv4489 :isa bio-find :object mv4490 :present "PRESENT" :raw-text "Find")
   (:var mv4490 :isa gene :predication mv4492 :raw-text "genes")
   (:var mv4492 :isa regulate :object mv4490 :that-rel t :agent mv4487 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4487 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv4496 :isa bio-find :object mv4493 :present "PRESENT" :raw-text "Find")
   (:var mv4493 :isa transcription-factor :predication mv4497 :raw-text "transcription factors")
   (:var mv4497 :isa share :object mv4493 :participant mv4501 :past "PAST" :raw-text "shared")
   (:var mv4501 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4494 mv4500))
   (:var mv4494 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4500 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv4507 :isa bio-activate :manner mv4504 :agent mv4506 :object mv4503 :present "PRESENT"
    :raw-text "activate")
   (:var mv4504 :isa how)
   (:var mv4506 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv4503 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv4512 :isa regulate :manner mv4510 :agent mv4508 :object mv4514 :present "PRESENT"
    :raw-text "regulate")
   (:var mv4510 :isa how)
   (:var mv4508 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4514 :isa gene :has-determiner "THE" :expresses mv4509 :raw-text "gene")
   (:var mv4509 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv4529 :isa knock-out :raw-text "knocking out" :cause mv4516 :object mv4533)
   (:var mv4516 :isa how) (:var mv4533 :isa cancer :modifier mv4520 :modifier mv4520)
   (:var mv4520 :isa cause :by-means-of mv4531 :raw-text "cause")
   (:var mv4531 :isa effect :object mv4528 :participant mv4524 :raw-text "effect")
   (:var mv4528 :isa micro-rna :raw-text "miRNAs")
   (:var mv4524 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv4537 :isa regulate :manner mv4535 :agent mv4534 :affected-process mv4538 :present
    "PRESENT" :raw-text "regulate")
   (:var mv4535 :isa how)
   (:var mv4534 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4538 :isa apoptosis :organ mv4541 :raw-text "apoptosis")
   (:var mv4541 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv4546 :isa regulate :manner mv4544 :agent mv4543 :affected-process mv4547 :present
    "PRESENT" :raw-text "regulate")
   (:var mv4544 :isa how)
   (:var mv4543 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4547 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv4551 :isa regulate :manner mv4549 :agent mv4548 :object mv4554 :present "PRESENT"
    :raw-text "regulate")
   (:var mv4549 :isa how)
   (:var mv4548 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4554 :isa gene :cellular-process mv4552 :raw-text "genes")
   (:var mv4552 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv4564 :isa wh-question :statement mv4557 :wh how)
   (:var mv4557 :isa be :predicate mv4555 :present "PRESENT")
   (:var mv4555 :isa protein :predication mv4558 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4558 :isa involve :theme mv4555 :theme mv4562 :past "PAST")
   (:var mv4562 :isa regulate :|cellular-process-OR-agent| mv4560 :raw-text "regulation")
   (:var mv4560 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv4577 :isa wh-question :statement mv4567 :wh how)
   (:var mv4567 :isa be :predicate mv4565 :present "PRESENT")
   (:var mv4565 :isa protein :predication mv4568 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4568 :isa involve :theme mv4565 :theme mv4570 :past "PAST")
   (:var mv4570 :isa regulate :organ mv4573 :|agent-OR-object| mv4574 :raw-text "regulation")
   (:var mv4573 :isa liver :has-determiner "THE") (:var mv4574 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv4586 :isa wh-question :statement mv4580 :wh how)
   (:var mv4580 :isa be :predicate mv4578 :present "PRESENT")
   (:var mv4578 :isa protein :predication mv4581 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4581 :isa involve :theme mv4578 :theme mv4583 :past "PAST")
   (:var mv4583 :isa regulate :affected-process mv4584 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv4584 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv4595 :isa wh-question :statement mv4589 :wh how)
   (:var mv4589 :isa be :predicate mv4587 :present "PRESENT")
   (:var mv4587 :isa protein :predication mv4590 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv4590 :isa bio-use :object mv4587 :theme mv4594 :past "PAST" :raw-text "used")
   (:var mv4594 :isa regulate :affected-process mv4593 :raw-text "regulate")
   (:var mv4593 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv4607 :isa copular-predication-of-pp :item mv4599 :value mv4606 :prep "IN" :predicate
    mv4600)
   (:var mv4599 :isa gene :has-determiner "HOW" :quantifier mv4598 :raw-text "genes")
   (:var mv4598 :isa many :word "many")
   (:var mv4606 :isa gene :context mv4596 :has-determiner "HOW" :quantifier mv4598 :raw-text
    "genes")
   (:var mv4596 :isa signaling-pathway :has-determiner "THE" :modifier mv4603 :raw-text
    "signaling pathway")
   (:var mv4603 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv4600 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv4616 :isa affect :manner mv4611 :modal mv4612 :agent mv4614 :object mv4610 :present
    "PRESENT" :raw-text "affect")
   (:var mv4611 :isa how) (:var mv4612 :isa might)
   (:var mv4614 :isa mutation :has-determiner "A" :|agent-OR-object| mv4609 :raw-text "mutation")
   (:var mv4609 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4610 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv4624 :isa polar-question :statement mv4619)
   (:var mv4619 :isa be :subject mv4617 :predicate mv4621)
   (:var mv4617 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4621 :isa regulator :theme mv4618 :has-determiner "A" :raw-text "regulator")
   (:var mv4618 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv4632 :isa polar-question :statement mv4627)
   (:var mv4627 :isa be :subject mv4625 :predicate mv4629)
   (:var mv4625 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4629 :isa regulator :theme mv4626 :has-determiner "A" :raw-text "regulator")
   (:var mv4626 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv4642 :isa polar-question :statement mv4635)
   (:var mv4635 :isa be :subject mv4633 :predicate mv4637)
   (:var mv4633 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4637 :isa regulator :theme mv4640 :has-determiner "A" :raw-text "regulator")
   (:var mv4640 :isa gene :has-determiner "THE" :expresses mv4634 :raw-text "gene")
   (:var mv4634 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv4652 :isa polar-question :statement mv4645)
   (:var mv4645 :isa be :subject mv4643 :predicate mv4647)
   (:var mv4643 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4647 :isa regulator :theme mv4650 :has-determiner "A" :raw-text "regulator")
   (:var mv4650 :isa gene :has-determiner "THE" :expresses mv4644 :raw-text "gene")
   (:var mv4644 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv4661 :isa polar-question :statement mv4656)
   (:var mv4656 :isa be :subject mv4653 :predicate mv4654)
   (:var mv4653 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4654 :isa transcription-factor :controlled-gene mv4659 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4659 :isa gene :expresses mv4655 :raw-text "gene")
   (:var mv4655 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos" (:var mv4669 :isa polar-question :statement mv4665)
   (:var mv4665 :isa be :subject mv4662 :predicate mv4663)
   (:var mv4662 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4663 :isa transcription-factor :controlled-gene mv4664 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4664 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?" (:var mv4677 :isa polar-question :statement mv4673)
   (:var mv4673 :isa be :subject mv4670 :predicate mv4671)
   (:var mv4670 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4671 :isa transcription-factor :controlled-gene mv4672 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4672 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv4687 :isa polar-question :statement mv4681)
   (:var mv4681 :isa be :subject mv4678 :predicate mv4679)
   (:var mv4678 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4679 :isa transcription-factor :controlled-gene mv4685 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4685 :isa gene :has-determiner "THE" :expresses mv4680 :raw-text "gene")
   (:var mv4680 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv4694 :isa polar-question :statement mv4691)
   (:var mv4691 :isa regulate :object mv4688 :agent mv4689 :past "PAST" :raw-text "regulated")
   (:var mv4688 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4689 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv4704 :isa polar-question :statement mv4698)
   (:var mv4698 :isa be :subject mv4695 :predicate mv4696)
   (:var mv4695 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4696 :isa transcription-factor :controlled-gene mv4702 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv4702 :isa gene :has-determiner "THE" :expresses mv4697 :raw-text "gene")
   (:var mv4697 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv4706 :isa list :theme mv4707 :present "PRESENT")
   (:var mv4707 :isa gene :predication mv4708 :raw-text "genes")
   (:var mv4708 :isa regulate :object mv4707 :agent mv4705 :past "PAST" :raw-text "regulated")
   (:var mv4705 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1" (:var mv4712 :isa list :theme mv4713 :present "PRESENT")
   (:var mv4713 :isa gene :predication mv4718 :raw-text "genes")
   (:var mv4718 :isa regulate :object mv4713 :that-rel t :agent mv4711 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4711 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates" (:var mv4721 :isa list :theme mv4723 :present "PRESENT")
   (:var mv4723 :isa gene :predication mv4725 :quantifier mv4722 :raw-text "genes")
   (:var mv4725 :isa regulate :object mv4723 :that-rel t :agent mv4720 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4720 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4722 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv4727 :isa list :theme mv4729 :present "PRESENT")
   (:var mv4729 :isa gene :predication mv4730 :has-determiner "THE" :raw-text "genes")
   (:var mv4730 :isa regulate :object mv4729 :agent mv4726 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4726 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv4732 :isa list :theme mv4734 :present "PRESENT")
   (:var mv4734 :isa gene :predication mv4739 :has-determiner "THE" :raw-text "genes")
   (:var mv4739 :isa regulate :object mv4734 :that-rel t :agent mv4731 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4731 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates" (:var mv4742 :isa list :theme mv4744 :present "PRESENT")
   (:var mv4744 :isa gene :predication mv4746 :has-determiner "THE" :raw-text "genes")
   (:var mv4746 :isa regulate :object mv4744 :agent mv4741 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4741 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv4747 :isa list :theme mv4749 :present "PRESENT")
   (:var mv4749 :isa bio-entity :predication mv4751 :has-determiner "THE" :name "pahtways")
   (:var mv4751 :isa involve :theme mv4749 :that-rel t :theme mv4752 :present "PRESENT")
   (:var mv4752 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Show me genes regulated by ELK1"
   (:var mv4754 :isa show :|statement-OR-theme| mv4756 :beneficiary mv4755 :present "PRESENT")
   (:var mv4756 :isa gene :predication mv4757 :raw-text "genes")
   (:var mv4757 :isa regulate :object mv4756 :agent mv4753 :past "PAST" :raw-text "regulated")
   (:var mv4753 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4755 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv4761 :isa show :|statement-OR-theme| mv4763 :beneficiary mv4762 :present "PRESENT")
   (:var mv4763 :isa gene :predication mv4768 :raw-text "genes")
   (:var mv4768 :isa regulate :object mv4763 :that-rel t :agent mv4760 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4760 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4762 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv4771 :isa show :|statement-OR-theme| mv4773 :beneficiary mv4772 :present "PRESENT")
   (:var mv4773 :isa gene :predication mv4775 :raw-text "genes")
   (:var mv4775 :isa regulate :object mv4773 :that-rel t :agent mv4770 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4770 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4772 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv4776 :isa show :|statement-OR-theme| mv4779 :beneficiary mv4777 :present "PRESENT")
   (:var mv4779 :isa bio-entity :predication mv4781 :has-determiner "THE" :name "pahtways")
   (:var mv4781 :isa involve :theme mv4779 :that-rel t :theme mv4782 :present "PRESENT")
   (:var mv4782 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4777 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv4796 :isa show :statement mv4794 :theme mv4786 :present "PRESENT")
   (:var mv4794 :isa share :object mv4783 :participant mv4793 :present "PRESENT" :raw-text
    "shared")
   (:var mv4783 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv4793 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4784 mv4792))
   (:var mv4784 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4792 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4786 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv4807 :isa show :statement mv4805 :theme mv4799 :present "PRESENT")
   (:var mv4805 :isa regulate :object mv4801 :agent mv4797 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4801 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv4797 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4799 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv4809 :isa show :|statement-OR-theme| mv4811 :present "PRESENT")
   (:var mv4811 :isa gene :predication mv4813 :has-determiner "THE" :raw-text "genes")
   (:var mv4813 :isa regulate :object mv4811 :agent mv4808 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4808 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv4814 :isa show :|statement-OR-theme| mv4816 :present "PRESENT")
   (:var mv4816 :isa bio-entity :predication mv4818 :has-determiner "THE" :name "pahtways")
   (:var mv4818 :isa involve :theme mv4816 :that-rel t :theme mv4819 :present "PRESENT")
   (:var mv4819 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv4822 :isa show :|statement-OR-theme| mv4820 :present "PRESENT")
   (:var mv4820 :isa transcription-factor :predication mv4830 :raw-text "transcription factors")
   (:var mv4830 :isa share :object mv4820 :that-rel t :participant mv4829 :present "PRESENT"
    :raw-text "shared")
   (:var mv4829 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4821 mv4828))
   (:var mv4821 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4828 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv4833 :isa tell :theme mv4836 :beneficiary mv4834 :present "PRESENT")
   (:var mv4836 :isa gene :predication mv4843 :has-determiner "THE" :raw-text "genes")
   (:var mv4843 :isa regulate :object mv4836 :agent mv4832 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4832 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4834 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv4845 :isa tell :theme mv4855 :theme mv4846 :present "PRESENT")
   (:var mv4855 :isa regulate :object mv4848 :agent mv4854 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4848 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv4854 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4844 mv4853))
   (:var mv4844 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4853 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4846 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv4858 :isa tell :theme mv4865 :theme mv4859 :present "PRESENT")
   (:var mv4865 :isa regulate :object mv4861 :agent mv4857 :present "PRESENT" :raw-text
    "regulated")
   (:var mv4861 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv4857 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4859 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv4869 :isa be :subject mv4868 :predicate mv4867 :present "PRESENT")
   (:var mv4868 :isa what)
   (:var mv4867 :isa positive-regulator :theme mv4871 :raw-text "positive regulators")
   (:var mv4871 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv4875 :isa be :subject mv4874 :predicate mv4877 :present "PRESENT")
   (:var mv4874 :isa what)
   (:var mv4877 :isa regulator :theme mv4873 :quantifier mv4876 :raw-text "regulators")
   (:var mv4873 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv4876 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv4886 :isa be :subject mv4885 :predicate mv4889 :present "PRESENT")
   (:var mv4885 :isa what)
   (:var mv4889 :isa regulator :theme mv4893 :has-determiner "THE" :predication mv4888 :raw-text
    "regulators")
   (:var mv4893 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv4880 mv4881 mv4891 mv4882 mv4883 mv4884))
   (:var mv4880 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv4881 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv4891 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv4882 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv4883 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv4884 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv4888 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv4897 :isa be :subject mv4896 :predicate mv4900 :present "PRESENT")
   (:var mv4896 :isa what)
   (:var mv4900 :isa regulator :theme mv4904 :has-determiner "THE" :predication mv4899 :raw-text
    "regulators")
   (:var mv4904 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv4895 mv4903))
   (:var mv4895 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4903 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4899 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv4908 :isa be :subject mv4907 :predicate mv4911 :present "PRESENT")
   (:var mv4907 :isa what)
   (:var mv4911 :isa regulator :theme mv4915 :has-determiner "THE" :predication mv4910 :raw-text
    "regulators")
   (:var mv4915 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv4906 mv4914))
   (:var mv4906 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv4914 :isa bio-entity :name "srg") (:var mv4910 :isa common))
  ("What are the common regulators of those genes"
   (:var mv4918 :isa be :subject mv4917 :predicate mv4921 :present "PRESENT")
   (:var mv4917 :isa what)
   (:var mv4921 :isa regulator :theme mv4924 :has-determiner "THE" :predication mv4920 :raw-text
    "regulators")
   (:var mv4924 :isa gene :has-determiner "THOSE" :raw-text "genes") (:var mv4920 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv4928 :isa be :subject mv4927 :predicate mv4930 :present "PRESENT")
   (:var mv4927 :isa what)
   (:var mv4930 :isa gene :predication mv4931 :has-determiner "THE" :raw-text "genes")
   (:var mv4931 :isa regulate :object mv4930 :agent mv4926 :past "PAST" :raw-text "regulated")
   (:var mv4926 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv4936 :isa be :subject mv4935 :predicate mv4938 :present "PRESENT")
   (:var mv4935 :isa what)
   (:var mv4938 :isa gene :predication mv4940 :has-determiner "THE" :raw-text "genes")
   (:var mv4940 :isa regulate :object mv4938 :agent mv4934 :present "PRESENT" :raw-text
    "regulates")
   (:var mv4934 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv4945 :isa be :subject mv4944 :predicate mv4949 :present "PRESENT")
   (:var mv4944 :isa what)
   (:var mv4949 :isa regulator :theme mv4954 :has-determiner "THE" :modifier mv4948 :raw-text
    "regulators")
   (:var mv4954 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein :number
    5 :items (mv4951 mv4952 mv4941 mv4942 mv4943))
   (:var mv4951 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv4952 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4941 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4942 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv4943 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv4948 :isa frequent :comparative mv4947 :name "frequent")
   (:var mv4947 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv4961 :isa be :subject mv4960 :predicate mv4956 :present "PRESENT")
   (:var mv4960 :isa what)
   (:var mv4956 :isa transcription-factor :predication mv4964 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv4964 :isa regulate :agent mv4956 :that-rel t :object mv4968 :present "PRESENT" :raw-text
    "regulate")
   (:var mv4968 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv4965 mv4966 mv4957 mv4958 mv4959))
   (:var mv4965 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv4966 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv4957 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv4958 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv4959 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv4980 :isa copular-predication-of-pp :item mv4971 :value mv4979 :prep "IN" :predicate
    mv4972)
   (:var mv4971 :isa gene :has-determiner "WHAT" :quantifier mv4970 :raw-text "genes")
   (:var mv4970 :isa other :word "other")
   (:var mv4979 :isa gene :context mv4976 :has-determiner "WHAT" :quantifier mv4970 :raw-text
    "genes")
   (:var mv4976 :isa pathway :quantifier mv4975 :raw-text "pathway")
   (:var mv4975 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv4972 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv4993 :isa copular-predication-of-pp :item mv4984 :value mv4992 :prep "IN" :predicate
    mv4985)
   (:var mv4984 :isa protein :has-determiner "WHAT" :quantifier mv4983 :raw-text "proteins")
   (:var mv4983 :isa other :word "other")
   (:var mv4992 :isa protein :|context-OR-in-pathway| mv4989 :has-determiner "WHAT" :quantifier
    mv4983 :raw-text "proteins")
   (:var mv4989 :isa pathway :quantifier mv4988 :raw-text "pathway")
   (:var mv4988 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv4985 :isa be :present "PRESENT"))
  ("What pathways are they in?" (:var mv5000 :isa wh-question :statement mv4999 :var nil :wh what)
   (:var mv4999 :isa in :word "in"))
  ("What proteins are in the first pathway"
   (:var mv5015 :isa copular-predication-of-pp :item mv5006 :value mv5014 :prep "IN" :predicate
    mv5007)
   (:var mv5006 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv5014 :isa protein :|context-OR-in-pathway| mv5011 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv5011 :isa pathway :quantifier mv5010 :raw-text "pathway")
   (:var mv5010 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv5007 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv5020 :isa involve :theme mv5019 :theme mv5017 :present "PRESENT")
   (:var mv5019 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5017 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv5031 :isa copular-predication-of-pp :item mv5022 :value mv5030 :prep "IN" :predicate
    mv5023)
   (:var mv5022 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv5030 :isa gene :context mv5027 :has-determiner "WHAT" :raw-text "genes")
   (:var mv5027 :isa pathway :quantifier mv5026 :raw-text "pathway")
   (:var mv5026 :isa ordinal :has-determiner "THE" :word "first" :number 1)
   (:var mv5023 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv5043 :isa answer :patient mv5034 :modal mv5036 :agent mv5037 :theme mv5041 :present
    "PRESENT")
   (:var mv5034 :isa bio-question :has-determiner "WHAT") (:var mv5036 :isa can)
   (:var mv5037 :isa interlocutor :name "hearer")
   (:var mv5041 :isa micro-rna :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv5047 :isa regulate :agent mv5044 :object mv5045 :present "PRESENT" :raw-text "regulate")
   (:var mv5044 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv5045 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD" :count
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
   (:var mv5051 :isa regulate :location mv5049 :agent mv5048 :object mv5052 :present "PRESENT"
    :raw-text "regulate")
   (:var mv5049 :isa where)
   (:var mv5048 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5052 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv5056 :isa involve :theme mv5055 :theme mv5057 :present "PRESENT")
   (:var mv5055 :isa pathway :has-determiner "WHICH" :modifier mv5054 :raw-text "pathways")
   (:var mv5054 :isa database :name "KEGG" :uid "KEGG")
   (:var mv5057 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv5068 :isa copular-predication-of-pp :item mv5060 :value mv5067 :prep "IN" :predicate
    mv5061)
   (:var mv5060 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv5067 :isa gene :context mv5058 :has-determiner "WHICH" :raw-text "genes")
   (:var mv5058 :isa signaling-pathway :has-determiner "THE" :modifier mv5064 :raw-text
    "signaling pathway")
   (:var mv5064 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv5061 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv5081 :isa involve :theme mv5072 :context mv5070 :present "PRESENT")
   (:var mv5072 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv5070 :isa signaling-pathway :has-determiner "THE" :predication mv5077 :modifier mv5078
    :raw-text "signaling pathway")
   (:var mv5077 :isa oncogenic)
   (:var mv5078 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv5084 :isa regulate :agent mv5083 :object mv5085 :present "PRESENT" :raw-text "regulate")
   (:var mv5083 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5085 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv5086 :isa downregulate :agent mv5088 :object mv5089 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv5088 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5089 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv5090 :isa upregulate :agent mv5092 :object mv5093 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv5092 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5093 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv5102 :isa copular-predication-of-pp :item mv5096 :value mv5100 :prep mv5098 :predicate
    mv5097)
   (:var mv5096 :isa these :quantifier mv5094 :word "these") (:var mv5094 :isa which)
   (:var mv5100 :isa pathway :modifier mv5099 :raw-text "pathways")
   (:var mv5099 :isa immune :name "immune") (:var mv5098 :isa in :word "in")
   (:var mv5097 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv5112 :isa copular-predication-of-pp :item mv5107 :value mv5110 :prep mv5109 :predicate
    mv5108)
   (:var mv5107 :isa these :quantifier mv5105 :word "these") (:var mv5105 :isa which)
   (:var mv5110 :isa pathway :non-cellular-location mv5104 :raw-text "pathways")
   (:var mv5104 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv5109 :isa in :word "in") (:var mv5108 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv5116 :isa be :subject mv5115 :predicate mv5118 :present "PRESENT")
   (:var mv5115 :isa what)
   (:var mv5118 :isa gene :predication mv5119 :has-determiner "THE" :raw-text "genes")
   (:var mv5119 :isa regulate :object mv5118 :agent mv5114 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5114 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv5129 :isa copular-predication-of-pp :item mv5122 :value mv5127 :prep mv5124 :predicate
    mv5123)
   (:var mv5122 :isa those :quantifier mv5120 :word "those") (:var mv5120 :isa which)
   (:var mv5127 :isa pathway :has-determiner "THE" :modifier mv5126 :raw-text "pathway")
   (:var mv5126 :isa immune :name "immune") (:var mv5124 :isa in :word "in")
   (:var mv5123 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv5134 :isa involve :theme mv5133 :theme mv5131 :present "PRESENT")
   (:var mv5133 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv5131 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv5144 :isa polar-question :statement mv5137)
   (:var mv5137 :isa show :agent mv5136 :|statement-OR-theme| mv5140 :beneficiary mv5138 :modal
    "CAN")
   (:var mv5136 :isa interlocutor :name "hearer")
   (:var mv5140 :isa bio-entity :predication mv5142 :has-determiner "THE" :name "pahtways")
   (:var mv5142 :isa involve :theme mv5140 :that-rel t :theme mv5143 :modal "CAN")
   (:var mv5143 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv5138 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv5150 :isa polar-question :statement mv5149)
   (:var mv5149 :isa inhibit :agent mv5147 :object mv5145 :raw-text "inhibit")
   (:var mv5147 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv5145 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv5160 :isa explicit-suggestion :suggestion mv5152 :marker let-as-directive)
   (:var mv5152 :isa build :artifact mv5154 :present "PRESENT")
   (:var mv5154 :isa model :object mv5158 :has-determiner "A")
   (:var mv5158 :isa neighborhood :has-determiner "THE" :modifier mv5157)
   (:var mv5157 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv5178 :isa collection :type know :number 2 :items (mv5176 mv5177))
   (:var mv5176 :isa know :agent mv5161 :statement mv5167 :present "PRESENT")
   (:var mv5161 :isa interlocutor :name "speaker")
   (:var mv5167 :isa bio-activate :agent mv5166 :object mv5168 :present "PRESENT" :raw-text
    "activates")
   (:var mv5166 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv5168 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv5177 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv5170 mv5174))
   (:var mv5170 :isa bio-activate :agent mv5169 :object mv5171 :present "PRESENT" :raw-text
    "activates")
   (:var mv5169 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv5171 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv5174 :isa bio-activate :agent mv5173 :object mv5175 :present "PRESENT" :raw-text
    "activates")
   (:var mv5173 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv5175 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv5181 :isa phosphorylate :agent mv5179 :substrate mv5180 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv5179 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv5180 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv5184 :isa dephosphorylate :agent mv5182 :substrate mv5183 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv5182 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv5183 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv5195 :isa polar-question :statement mv5194)
   (:var mv5194 :isa copular-predication :item mv5188 :value mv5192 :predicate mv5186)
   (:var mv5188 :isa bio-amount :measured-item mv5185 :has-determiner "THE" :raw-text "amount")
   (:var mv5185 :isa protein :predication mv5190 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv5190 :isa phosphorylate :substrate mv5185 :raw-text "phosphorylated")
   (:var mv5192 :isa high :adverb mv5191) (:var mv5191 :isa always :name "always")
   (:var mv5186 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv5206 :isa polar-question :statement mv5205)
   (:var mv5205 :isa copular-predication :item mv5199 :value mv5203 :predicate mv5197)
   (:var mv5199 :isa bio-amount :measured-item mv5196 :has-determiner "THE" :raw-text "amount")
   (:var mv5196 :isa protein :predication mv5201 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv5201 :isa phosphorylate :substrate mv5196 :raw-text "phosphorylated")
   (:var mv5203 :isa low :adverb mv5202) (:var mv5202 :isa always :name "always")
   (:var mv5197 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv5216 :isa polar-question :statement mv5215)
   (:var mv5215 :isa vanish :agent mv5214 :raw-text "vanish")
   (:var mv5214 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv5208
    :component mv5207)
   (:var mv5208 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv5207 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv5226 :isa polar-question :statement mv5225)
   (:var mv5225 :isa vanish :agent mv5224 :raw-text "vanish")
   (:var mv5224 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv5218
    :component mv5217)
   (:var mv5218 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv5217 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv5256 :isa polar-question :statement mv5255)
   (:var mv5255 :isa event-relation :subordinated-event mv5252 :event mv5248)
   (:var mv5252 :isa wh-question :statement mv5249 :wh if)
   (:var mv5249 :isa increase :|agent-OR-cause| mv5236 :cause mv5247 :|affected-process-OR-object|
    mv5240 :raw-text "increase")
   (:var mv5236 :isa interlocutor :name "person-and-machine")
   (:var mv5247 :isa measurement :number mv5244) (:var mv5244 :isa number :value 10)
   (:var mv5240 :isa bio-amount :measured-item mv5228 :has-determiner "THE" :raw-text "amount")
   (:var mv5228 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv5248 :isa vanish :cause mv5231 :raw-text "vanish")
   (:var mv5231 :isa bio-amount :measured-item mv5227 :has-determiner "THE" :raw-text "amount")
   (:var mv5227 :isa protein :predication mv5233 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv5233 :isa phosphorylate :substrate mv5227 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv5258 :isa show :|statement-OR-theme| mv5265 :beneficiary mv5259 :present "PRESENT")
   (:var mv5265 :isa evidence :statement mv5264 :has-determiner "THE")
   (:var mv5264 :isa regulate :agent mv5263 :object mv5257 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5263 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv5257 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv5259 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv5269 :isa increase :|agent-OR-cause| mv5267 :|affected-process-OR-object| mv5271
    :present "PRESENT" :raw-text "increases")
   (:var mv5267 :isa what)
   (:var mv5271 :isa bio-amount :measured-item mv5266 :has-determiner "THE" :raw-text "amount")
   (:var mv5266 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv5284 :isa copular-predication-of-pp :item mv5276 :value mv5283 :prep "IN" :predicate
    mv5277)
   (:var mv5276 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5283 :isa kinase :|context-OR-in-pathway| mv5274 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv5274 :isa signaling-pathway :has-determiner "THE" :modifier mv5280 :raw-text
    "signaling pathway")
   (:var mv5280 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv5277 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv5297 :isa polar-question :statement mv5295)
   (:var mv5295 :isa regulate :agent mv5286 :object mv5291 :raw-text "regulate")
   (:var mv5286 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5291 :isa gene :organ mv5294 :has-determiner "THE" :expresses mv5287 :raw-text "gene")
   (:var mv5294 :isa liver :has-determiner "THE")
   (:var mv5287 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv5304 :isa regulate :object mv5300 :agent mv5298 :present "PRESENT" :raw-text
    "regulated")
   (:var mv5300 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv5298 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv5313 :isa regulate :|affected-process-OR-object| mv5309 :agent mv5306 :present "PRESENT"
    :raw-text "regulated")
   (:var mv5309 :isa these :quantifier mv5307 :word "these") (:var mv5307 :isa which)
   (:var mv5306 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv5321 :isa regulate :|agent-OR-cause| mv5318 :object mv5322 :present "PRESENT" :adverb
    mv5319 :raw-text "regulate")
   (:var mv5318 :isa these :quantifier mv5316 :word "these") (:var mv5316 :isa which)
   (:var mv5322 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv5319 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv5327 :isa transcribe :agent mv5324 :object mv5325 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv5324 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv5325 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv5331 :isa transcribe :agent mv5328 :object mv5329 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv5328 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv5329 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv5335 :isa utilize :participant mv5334 :object mv5336 :present "PRESENT" :raw-text
    "utilize")
   (:var mv5334 :isa pathway :has-determiner "WHICH" :modifier mv5333 :raw-text "pathways")
   (:var mv5333 :isa database :name "KEGG" :uid "KEGG")
   (:var mv5336 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv5347 :isa wh-question :statement mv5343 :var nil :wh what)
   (:var mv5343 :isa regulate :affected-process mv5344 :past "PAST" :raw-text "regulated")
   (:var mv5344 :isa pathway :raw-text "pathways"))
  ("What pathways involve the immune system?"
   (:var mv5351 :isa involve :theme mv5350 :theme mv5348 :present "PRESENT")
   (:var mv5350 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5348 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv5358 :isa involve :theme mv5357 :theme mv5361 :present "PRESENT")
   (:var mv5357 :isa pathway :has-determiner "WHAT" :modifier mv5356 :raw-text "pathways")
   (:var mv5356 :isa database :name "KEGG" :uid "KEGG")
   (:var mv5361 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv5353 mv5359 mv5354))
   (:var mv5353 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv5359 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv5354 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv5369 :isa share :object mv5363 :participant mv5368 :present "PRESENT" :raw-text
    "shared")
   (:var mv5363 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5368 :isa gene :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv5377 :isa regulate :object mv5372 :agent mv5376 :present "PRESENT" :raw-text
    "regulated")
   (:var mv5372 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv5376 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv5380 :isa be :subject mv5379 :predicate mv5382 :present "PRESENT")
   (:var mv5379 :isa what)
   (:var mv5382 :isa pathway :pathwaycomponent mv5385 :predication mv5381 :raw-text "pathways")
   (:var mv5385 :isa gene :has-determiner "THESE" :raw-text "genes") (:var mv5381 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv5399 :isa share :object mv5392 :participant mv5397 :present "PRESENT" :raw-text
    "shared")
   (:var mv5392 :isa pathway :has-determiner "WHICH" :modifier mv5391 :raw-text "pathways")
   (:var mv5391 :isa immune :name "immune")
   (:var mv5397 :isa gene :expresses mv5398 :raw-text "genes")
   (:var mv5398 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv5387 mv5388 mv5389))
   (:var mv5387 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5388 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv5389 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv5408 :isa regulate :object mv5404 :agent mv5402 :present "PRESENT" :raw-text
    "regulated")
   (:var mv5404 :isa phosphatase :has-determiner "WHAT" :enzyme mv5401 :raw-text "phosphatase")
   (:var mv5401 :isa protein-family :raw-text "MAP kinase" :name "mitogen activated protein kinase"
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
   (:var mv5402 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv5414 :isa involve :theme mv5413 :theme mv5410 :present "PRESENT")
   (:var mv5413 :isa pathway :has-determiner "WHAT" :modifier mv5412 :raw-text "pathways")
   (:var mv5412 :isa database :name "Reactome" :uid "Reactome")
   (:var mv5410 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv5419 :isa polar-question :statement mv5416)
   (:var mv5416 :isa be :subject mv5415 :predicate mv5418)
   (:var mv5415 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5418 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv5424 :isa polar-question :statement mv5422)
   (:var mv5422 :isa be :subject mv5420 :predicate mv5421)
   (:var mv5420 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5421 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv5428 :isa be :subject mv5427 :predicate mv5430 :present "PRESENT")
   (:var mv5427 :isa these :quantifier mv5425 :word "these") (:var mv5425 :isa which)
   (:var mv5430 :isa kinase :enzyme mv5429 :raw-text "kinases")
   (:var mv5429 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv5436 :isa be :subject mv5435 :predicate mv5432 :present "PRESENT")
   (:var mv5435 :isa these :quantifier mv5433 :word "these") (:var mv5433 :isa which)
   (:var mv5432 :isa protein-family :raw-text "tyrosine kinases" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are serine/threonine kinases?"
   (:var mv5441 :isa be :subject mv5440 :predicate mv5444 :present "PRESENT")
   (:var mv5440 :isa these :quantifier mv5438 :word "these") (:var mv5438 :isa which)
   (:var mv5444 :isa kinase :amino-acid mv5445 :raw-text "kinases")
   (:var mv5445 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv5442 mv5443))
   (:var mv5442 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv5443 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv5450 :isa be :subject mv5449 :predicate mv5451 :present "PRESENT")
   (:var mv5449 :isa these :quantifier mv5447 :word "these") (:var mv5447 :isa which)
   (:var mv5451 :isa phosphatase :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv5456 :isa be :subject mv5455 :predicate mv5457 :present "PRESENT")
   (:var mv5455 :isa these :quantifier mv5453 :word "these") (:var mv5453 :isa which)
   (:var mv5457 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv5462 :isa be :subject mv5461 :predicate mv5463 :present "PRESENT")
   (:var mv5461 :isa these :quantifier mv5459 :word "these") (:var mv5459 :isa which)
   (:var mv5463 :isa receptor :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv5469 :isa be :subject mv5468 :predicate mv5470 :present "PRESENT")
   (:var mv5468 :isa these :quantifier mv5466 :word "these") (:var mv5466 :isa which)
   (:var mv5470 :isa receptor :modifier mv5465 :raw-text "receptors")
   (:var mv5465 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv5476 :isa be :subject mv5475 :predicate mv5472 :present "PRESENT")
   (:var mv5475 :isa these :quantifier mv5473 :word "these") (:var mv5473 :isa which)
   (:var mv5472 :isa protein-family :raw-text "histone demethylases" :name "histone demethylase"
    :uid "GO:0032452"))
  ("Which of these are histone methylases?"
   (:var mv5482 :isa be :subject mv5481 :predicate mv5478 :present "PRESENT")
   (:var mv5481 :isa these :quantifier mv5479 :word "these") (:var mv5479 :isa which)
   (:var mv5478 :isa protein-family :raw-text "histone methylases" :name
    "histone methyltransferase" :uid "GO:0042054"))
  ("Which of these are histone methyltransferases?"
   (:var mv5488 :isa be :subject mv5487 :predicate mv5484 :present "PRESENT")
   (:var mv5487 :isa these :quantifier mv5485 :word "these") (:var mv5485 :isa which)
   (:var mv5484 :isa protein-family :raw-text "histone methyltransferases" :name
    "histone methyltransferase" :uid "GO:0042054"))
  ("Which of these are demethylases?"
   (:var mv5493 :isa be :subject mv5492 :predicate mv5494 :present "PRESENT")
   (:var mv5492 :isa these :quantifier mv5490 :word "these") (:var mv5490 :isa which)
   (:var mv5494 :isa protein-family :raw-text "demethylases" :name "demethylase" :uid
    "GO:0032451"))
  ("Which of these are methylases?"
   (:var mv5499 :isa be :subject mv5498 :predicate mv5500 :present "PRESENT")
   (:var mv5498 :isa these :quantifier mv5496 :word "these") (:var mv5496 :isa which)
   (:var mv5500 :isa protein-family :raw-text "methylases" :name "methyltransferase" :uid
    "GO:0008168"))
  ("Which of these are methyltransferases?"
   (:var mv5505 :isa be :subject mv5504 :predicate mv5506 :present "PRESENT")
   (:var mv5504 :isa these :quantifier mv5502 :word "these") (:var mv5502 :isa which)
   (:var mv5506 :isa protein-family :raw-text "methyltransferases" :name "methyltransferase" :uid
    "GO:0008168"))
  ("Which of these are steroid receptors?"
   (:var mv5511 :isa be :subject mv5510 :predicate mv5513 :present "PRESENT")
   (:var mv5510 :isa these :quantifier mv5508 :word "these") (:var mv5508 :isa which)
   (:var mv5513 :isa receptor :modifier mv5512 :raw-text "receptors")
   (:var mv5512 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv5519 :isa be :subject mv5518 :predicate mv5515 :present "PRESENT")
   (:var mv5518 :isa these :quantifier mv5516 :word "these") (:var mv5516 :isa which)
   (:var mv5515 :isa protein-family :raw-text "receptor tyrosine kinases" :name
    "receptor tyrosine kinase" :count 2 :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :uid "NCIT:C17660"))
  ("Which of these are transcription factors?"
   (:var mv5525 :isa be :subject mv5524 :predicate mv5521 :present "PRESENT")
   (:var mv5524 :isa these :quantifier mv5522 :word "these") (:var mv5522 :isa which)
   (:var mv5521 :isa transcription-factor :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv5531 :isa be :subject mv5530 :predicate mv5532 :present "PRESENT")
   (:var mv5530 :isa these :quantifier mv5528 :word "these") (:var mv5528 :isa which)
   (:var mv5532 :isa protein :modifier mv5527 :raw-text "proteins")
   (:var mv5527 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv5537 :isa be :subject mv5536 :predicate mv5540 :present "PRESENT")
   (:var mv5536 :isa these :quantifier mv5534 :word "these") (:var mv5534 :isa which)
   (:var mv5540 :isa phosphatase :modifier mv5541 :raw-text "phosphatases")
   (:var mv5541 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv5538 mv5539))
   (:var mv5538 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv5539 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv5546 :isa be :subject mv5545 :predicate mv5548 :present "PRESENT")
   (:var mv5545 :isa these :quantifier mv5543 :word "these") (:var mv5543 :isa which)
   (:var mv5548 :isa phosphatase :modifier mv5547 :raw-text "phosphatases")
   (:var mv5547 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv5553 :isa phosphorylate :amino-acid mv5550 :agent mv5552 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv5550 :isa what)
   (:var mv5552 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv5562 :isa gene-transcript-express :object mv5556 :organ mv5561 :present "PRESENT"
    :adverb mv5558 :raw-text "expressed")
   (:var mv5556 :isa these :quantifier mv5554 :word "these") (:var mv5554 :isa which)
   (:var mv5561 :isa liver) (:var mv5558 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv5567 :isa regulate :|agent-OR-cause| mv5566 :object mv5565 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5566 :isa what)
   (:var mv5565 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv5570 :isa increase :|agent-OR-cause| mv5568 :|affected-process-OR-object| mv5572
    :present "PRESENT" :raw-text "increases")
   (:var mv5568 :isa what)
   (:var mv5572 :isa bio-amount :measured-item mv5574 :has-determiner "THE" :raw-text "amount")
   (:var mv5574 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv5577 :isa upregulate :|agent-OR-cause| mv5576 :object mv5578 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv5576 :isa what)
   (:var mv5578 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv5580 :isa downregulate :|agent-OR-cause| mv5579 :object mv5581 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv5579 :isa what)
   (:var mv5581 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv5583 :isa decrease :|agent-OR-cause| mv5582 :|affected-process-OR-object| mv5585
    :present "PRESENT" :raw-text "decreases")
   (:var mv5582 :isa what)
   (:var mv5585 :isa bio-amount :measured-item mv5587 :has-determiner "THE" :raw-text "amount")
   (:var mv5587 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv5590 :isa regulate :|agent-OR-cause| mv5589 :object mv5591 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5589 :isa what)
   (:var mv5591 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv5599 :isa wh-question :statement mv5598 :wh what)
   (:var mv5598 :isa prepositional-phrase :pobj mv5597 :prep "FROM")
   (:var mv5597 :isa literature :has-determiner "THE"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv5607 :isa wh-question :statement mv5606 :wh what)
   (:var mv5606 :isa prepositional-phrase :pobj mv5600 :prep "FROM")
   (:var mv5600 :isa database :has-determiner "THE" :name "GEO RNAi database" :uid "GEO-RNAi"))
  ("Which kinases regulate the cfos gene?"
   (:var mv5610 :isa regulate :agent mv5609 :object mv5613 :present "PRESENT" :raw-text "regulate")
   (:var mv5609 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5613 :isa gene :has-determiner "THE" :expresses mv5612 :raw-text "gene")
   (:var mv5612 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv5614 :isa downregulate :agent mv5616 :object mv5619 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv5616 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv5619 :isa gene :has-determiner "THE" :expresses mv5618 :raw-text "gene")
   (:var mv5618 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv5622 :isa be :subject mv5621 :predicate mv5620 :present "PRESENT")
   (:var mv5621 :isa what)
   (:var mv5620 :isa positive-regulator :theme mv5626 :raw-text "positive regulators")
   (:var mv5626 :isa gene :has-determiner "THE" :expresses mv5625 :raw-text "gene")
   (:var mv5625 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv5630 :isa transcribe :|agent-OR-cause| mv5629 :object mv5628 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv5629 :isa what)
   (:var mv5628 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv5633 :isa show :|statement-OR-theme| mv5644 :beneficiary mv5634 :present "PRESENT")
   (:var mv5644 :isa evidence :statement mv5639 :has-determiner "THE")
   (:var mv5639 :isa increase :agent mv5631 :|affected-process-OR-object| mv5641 :present "PRESENT"
    :raw-text "increases")
   (:var mv5631 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv5641 :isa bio-amount :measured-item mv5632 :has-determiner "THE" :raw-text "amount")
   (:var mv5632 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv5634 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv5646 :isa show :|statement-OR-theme| mv5649 :beneficiary mv5647 :present "PRESENT")
   (:var mv5649 :isa evidence :has-determiner "THE")
   (:var mv5647 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv5659 :isa be :subject mv5658 :predicate mv5665 :present "PRESENT")
   (:var mv5658 :isa what) (:var mv5665 :isa evidence :statement mv5664 :has-determiner "THE")
   (:var mv5664 :isa regulate :agent mv5663 :object mv5657 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5663 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv5657 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv5667 :isa be :subject mv5666 :predicate mv5676 :present "PRESENT")
   (:var mv5666 :isa what) (:var mv5676 :isa evidence :statement mv5672 :has-determiner "THE")
   (:var mv5672 :isa binding :binder mv5671 :direct-bindee mv5675 :present "PRESENT" :raw-text
    "binds")
   (:var mv5671 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv5675 :isa gene :has-determiner "THE" :expresses mv5674 :raw-text "gene")
   (:var mv5674 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv5684 :isa gene-transcript-express :object mv5678 :organ mv5683 :present "PRESENT"
    :adverb mv5680 :raw-text "expressed")
   (:var mv5678 :isa gene :has-determiner "WHAT" :raw-text "genes") (:var mv5683 :isa liver)
   (:var mv5680 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv5692 :isa polar-question :statement mv5688)
   (:var mv5688 :isa gene-transcript-express :object mv5686 :organ mv5690 :past "PAST" :raw-text
    "expressed")
   (:var mv5686 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5690 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv5701 :isa polar-question :statement mv5699)
   (:var mv5699 :isa gene-transcript-express :object mv5693 :organ mv5698 :adverb mv5695 :raw-text
    "expressed")
   (:var mv5693 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv5698 :isa liver) (:var mv5695 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv5706 :isa affect :manner mv5704 :agent mv5702 :object mv5703 :present "PRESENT"
    :raw-text "affect")
   (:var mv5704 :isa how)
   (:var mv5702 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv5703 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv5711 :isa affect :manner mv5708 :agent mv5710 :object mv5707 :present "PRESENT"
    :raw-text "affect")
   (:var mv5708 :isa how)
   (:var mv5710 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5707 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv5715 :isa be :subject mv5714 :predicate mv5720 :present "PRESENT")
   (:var mv5714 :isa what)
   (:var mv5720 :isa regulator :theme mv5723 :has-determiner "THE" :predication mv5717 :context
    mv5718 :raw-text "regulators")
   (:var mv5723 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv5712 mv5713))
   (:var mv5712 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5713 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv5717 :isa common) (:var mv5718 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv5728 :isa be :subject mv5727 :predicate mv5730 :present "PRESENT")
   (:var mv5727 :isa what) (:var mv5730 :isa path :endpoints mv5733 :has-determiner "THE")
   (:var mv5733 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv5725 mv5726))
   (:var mv5725 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5726 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv5740 :isa polar-question :statement mv5739)
   (:var mv5739 :isa affect :agent mv5735 :object mv5738 :raw-text "affect")
   (:var mv5735 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5738 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv5742 :isa regulate :agent mv5741 :object mv5743 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5741 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5743 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv5745 :isa upregulate :agent mv5744 :object mv5746 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv5744 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5746 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv5747 :isa upregulate :agent mv5749 :object mv5748 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv5749 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5748 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv5759 :isa polar-question :statement mv5758)
   (:var mv5758 :isa regulate :agent mv5753 :object mv5757 :raw-text "regulate")
   (:var mv5753 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5757 :isa gene :has-determiner "THE" :expresses mv5751 :raw-text "gene")
   (:var mv5751 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv5761 :isa show :|statement-OR-theme| mv5769 :beneficiary mv5762 :present "PRESENT")
   (:var mv5769 :isa evidence :statement mv5768 :has-determiner "THE")
   (:var mv5768 :isa regulate :agent mv5766 :object mv5760 :present "PRESENT" :raw-text
    "regulates")
   (:var mv5766 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5760 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5762 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv5777 :isa polar-question :statement mv5776)
   (:var mv5776 :isa regulate :agent mv5772 :object mv5775 :raw-text "regulate")
   (:var mv5772 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5775 :isa gene :has-determiner "THE" :expresses mv5770 :raw-text "gene")
   (:var mv5770 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv5780 :isa decrease :agent mv5779 :|affected-process-OR-object| mv5782 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5779 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5782 :isa bio-amount :measured-item mv5778 :has-determiner "THE" :raw-text "amount")
   (:var mv5778 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv5790 :isa polar-question :statement mv5789)
   (:var mv5789 :isa regulate :agent mv5788 :object mv5787 :raw-text "regulate")
   (:var mv5788 :isa bio-entity :name "TNG")
   (:var mv5787 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv5798 :isa polar-question :statement mv5797)
   (:var mv5797 :isa regulate :agent mv5792 :object mv5796 :raw-text "regulate")
   (:var mv5792 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5796 :isa gene :has-determiner "THE" :expresses mv5795 :raw-text "gene")
   (:var mv5795 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv5800 :isa be :subject mv5799 :predicate mv5802 :present "PRESENT")
   (:var mv5799 :isa what)
   (:var mv5802 :isa pathway :pathwaycomponent mv5807 :has-determiner "THE" :raw-text "pathways")
   (:var mv5807 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv5804 mv5806))
   (:var mv5804 :isa bio-entity :name "TNG")
   (:var mv5806 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv5810 :isa be :subject mv5809 :predicate mv5812 :present "PRESENT")
   (:var mv5809 :isa what)
   (:var mv5812 :isa pathway :pathwaycomponent mv5817 :has-determiner "THE" :raw-text "pathways")
   (:var mv5817 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv5814 mv5816))
   (:var mv5814 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5816 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv5825 :isa polar-question :statement mv5824)
   (:var mv5824 :isa regulate :agent mv5820 :object mv5823 :raw-text "regulate")
   (:var mv5820 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5823 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv5834 :isa polar-question :statement mv5833)
   (:var mv5833 :isa regulate :agent mv5827 :object mv5832 :raw-text "regulate")
   (:var mv5827 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5832 :isa gene :has-determiner "THE" :expresses mv5831 :raw-text "gene")
   (:var mv5831 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv5847 :isa copular-predication-of-pp :item mv5836 :value mv5846 :prep "BETWEEN"
    :predicate mv5837)
   (:var mv5836 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5846 :isa pathway :pathwaycomponent mv5843 :has-determiner "WHAT" :raw-text "pathways")
   (:var mv5843 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv5840 mv5842))
   (:var mv5840 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5842 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5837 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv5853 :isa affect :manner mv5849 :agent mv5851 :object mv5854 :present "PRESENT"
    :raw-text "affect")
   (:var mv5849 :isa how)
   (:var mv5851 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv5854 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv5856 :isa bio-activate :agent mv5855 :object mv5857 :present "PRESENT" :raw-text
    "activates")
   (:var mv5855 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5857 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv5859 :isa bio-activate :agent mv5858 :object mv5860 :present "PRESENT" :raw-text
    "activates")
   (:var mv5858 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv5860 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv5862 :isa be :subject mv5861 :predicate mv5864 :present "PRESENT")
   (:var mv5861 :isa what) (:var mv5864 :isa path :endpoints mv5869 :has-determiner "THE")
   (:var mv5869 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv5866 mv5868))
   (:var mv5866 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5868 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv5876 :isa polar-question :statement mv5875)
   (:var mv5875 :isa regulate :agent mv5872 :object mv5874 :raw-text "regulate")
   (:var mv5872 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5874 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv5881 :isa affect :manner mv5879 :agent mv5877 :object mv5878 :present "PRESENT"
    :raw-text "affect")
   (:var mv5879 :isa how)
   (:var mv5877 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5878 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv5883 :isa bio-activate :agent mv5882 :object mv5884 :present "PRESENT" :raw-text
    "activates")
   (:var mv5882 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5884 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv5888 :isa decrease :agent mv5887 :|affected-process-OR-object| mv5890 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5887 :isa protein-family :predication mv5886 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5886 :isa active)
   (:var mv5890 :isa bio-amount :measured-item mv5885 :has-determiner "THE" :raw-text "amount")
   (:var mv5885 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv5896 :isa be :subject mv5895 :predicate mv5899 :present "PRESENT")
   (:var mv5895 :isa what)
   (:var mv5899 :isa upstream-segment :pathwaycomponent mv5902 :has-determiner "THE" :predication
    mv5898 :raw-text "upstreams")
   (:var mv5902 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv5893 mv5894))
   (:var mv5893 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5894 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv5898 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv5908 :isa affect :manner mv5906 :agent mv5904 :object mv5905 :present "PRESENT"
    :raw-text "affect")
   (:var mv5906 :isa how)
   (:var mv5904 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5905 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv5914 :isa polar-question :statement mv5913)
   (:var mv5913 :isa regulate :agent mv5909 :object mv5910 :raw-text "regulate")
   (:var mv5909 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5910 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv5922 :isa polar-question :statement mv5921)
   (:var mv5921 :isa regulate :agent mv5915 :object mv5920 :raw-text "regulate")
   (:var mv5915 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv5920 :isa gene :has-determiner "THE" :expresses mv5916 :raw-text "gene")
   (:var mv5916 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv5927 :isa affect :manner mv5925 :agent mv5923 :object mv5924 :present "PRESENT"
    :raw-text "affect")
   (:var mv5925 :isa how)
   (:var mv5923 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv5924 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv5930 :isa be :subject mv5929 :predicate mv5932 :present "PRESENT")
   (:var mv5929 :isa what) (:var mv5932 :isa path :endpoints mv5936 :has-determiner "THE")
   (:var mv5936 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv5934 mv5928))
   (:var mv5934 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv5928 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv5947 :isa polar-question :statement mv5945)
   (:var mv5945 :isa regulate :agent mv5940 :affected-process mv5943 :raw-text "regulate")
   (:var mv5940 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5943 :isa gene-transcript-express :object mv5938 :has-determiner "THE" :raw-text
    "expression")
   (:var mv5938 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv5951 :isa decrease :agent mv5950 :affected-process mv5953 :present "PRESENT" :raw-text
    "decreases")
   (:var mv5950 :isa protein-family :predication mv5949 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5949 :isa active)
   (:var mv5953 :isa gene-transcript-express :object mv5948 :has-determiner "THE" :raw-text
    "expression")
   (:var mv5948 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv5959 :isa decrease :agent mv5958 :|affected-process-OR-object| mv5961 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5958 :isa protein-family :predication mv5957 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5957 :isa active)
   (:var mv5961 :isa bio-amount :measured-item mv5956 :has-determiner "THE" :raw-text "amount")
   (:var mv5956 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv5967 :isa decrease :agent mv5966 :|affected-process-OR-object| mv5969 :present "PRESENT"
    :raw-text "decreases")
   (:var mv5966 :isa protein-family :predication mv5965 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv5965 :isa active)
   (:var mv5969 :isa bio-amount :measured-item mv5964 :has-determiner "THE" :raw-text "amount")
   (:var mv5964 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv5974 :isa inhibit :agent mv5972 :affected-process mv5976 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv5972 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv5976 :isa bio-activity :participant mv5973 :has-determiner "THE" :raw-text "activity")
   (:var mv5973 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?" (:var mv5990 :isa polar-question :statement mv5988)
   (:var mv5988 :isa decrease :agent mv5979 :object mv5980 :raw-text "decrease")
   (:var mv5979 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv5980 :isa protein :info-context mv5987 :has-determiner "THE" :raw-text "CXCL8" :uid
    "UP:P10145" :name "IL8_HUMAN")
   (:var mv5987 :isa model :has-determiner "THE"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv6001 :isa polar-question :statement mv5999)
   (:var mv5999 :isa decrease :agent mv5991 :object mv5992 :raw-text "decrease")
   (:var mv5991 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv5992 :isa protein :info-context mv5998 :raw-text "CXCL10" :uid "UP:P02778" :name
    "CXL10_HUMAN")
   (:var mv5998 :isa model :has-determiner "THE"))
  ("TNF activates NFkappaB"
   (:var mv6003 :isa bio-activate :agent mv6002 :object mv6004 :present "PRESENT" :raw-text
    "activates")
   (:var mv6002 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv6004 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2 :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv6010 :isa want :agent mv6007 :theme mv6021 :present "PRESENT")
   (:var mv6007 :isa interlocutor :name "speaker")
   (:var mv6021 :isa find-out :agent mv6007 :statement mv6018)
   (:var mv6018 :isa wh-question :statement mv6017 :var nil :wh how)
   (:var mv6017 :isa decrease :agent mv6016 :object mv6006 :present "PRESENT" :raw-text
    "decreases")
   (:var mv6016 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv6006 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv6026 :isa want :agent mv6023 :theme mv6041 :present "PRESENT")
   (:var mv6023 :isa interlocutor :name "speaker")
   (:var mv6041 :isa find-out :agent mv6023 :statement mv6038)
   (:var mv6038 :isa wh-question :statement mv6033 :var nil :wh how)
   (:var mv6033 :isa decrease :agent mv6032 :object mv6034 :present "PRESENT" :raw-text
    "decreases")
   (:var mv6032 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv6034 :isa protein :cell-type mv6036 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv6036 :isa cell-type :cell-line mv6022)
   (:var mv6022 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv6047 :isa want :agent mv6044 :theme mv6061 :present "PRESENT")
   (:var mv6044 :isa interlocutor :name "speaker")
   (:var mv6061 :isa find-out :agent mv6044 :statement mv6058)
   (:var mv6058 :isa wh-question :statement mv6053 :var nil :wh how)
   (:var mv6053 :isa bio-activate :agent mv6042 :object mv6054 :present "PRESENT" :raw-text
    "activates")
   (:var mv6042 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv6054 :isa protein :cell-type mv6056 :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv6056 :isa cell-type :cell-line mv6043)
   (:var mv6043 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv6067 :isa polar-question :statement mv6066)
   (:var mv6066 :isa phosphorylate :agent mv6063 :substrate mv6065 :raw-text "phosphorylate")
   (:var mv6063 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6065 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv6075 :isa polar-question :statement mv6074)
   (:var mv6074 :isa inhibit :agent mv6068 :object mv6073 :raw-text "inhibit")
   (:var mv6068 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv6073 :isa gene :has-determiner "THE" :expresses mv6069 :raw-text "gene")
   (:var mv6069 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv6083 :isa polar-question :statement mv6082)
   (:var mv6082 :isa stimulate :agent mv6076 :object mv6081 :raw-text "stimulate")
   (:var mv6076 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv6081 :isa gene :has-determiner "THE" :expresses mv6077 :raw-text "gene")
   (:var mv6077 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv6088 :isa want :agent mv6085 :theme mv6104 :present "PRESENT")
   (:var mv6085 :isa interlocutor :name "speaker")
   (:var mv6104 :isa find-out :agent mv6085 :statement mv6101)
   (:var mv6101 :isa wh-question :statement mv6095 :var nil :wh how)
   (:var mv6095 :isa decrease :agent mv6094 :object mv6096 :present "PRESENT" :raw-text
    "decreases")
   (:var mv6094 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv6096 :isa protein :cell-type mv6099 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv6099 :isa cell-type :cell-line mv6084 :|context-OR-associated-disease| mv6098)
   (:var mv6084 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv6098 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv6109 :isa polar-question :statement mv6106)
   (:var mv6106 :isa be :subject mv6107 :predicate mv6105)
   (:var mv6107 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv6105 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv6111 :isa list :theme mv6114 :present "PRESENT")
   (:var mv6114 :isa gene :predication mv6115 :quantifier mv6112 :has-determiner "THE" :raw-text
    "genes")
   (:var mv6115 :isa regulate :object mv6114 :agent mv6119 :past "PAST" :raw-text "regulated")
   (:var mv6119 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv6110 mv6118))
   (:var mv6110 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv6118 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv6112 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv6122 :isa list :theme mv6126 :present "PRESENT")
   (:var mv6126 :isa gene :predication mv6127 :quantifier mv6123 :has-determiner "THE" :raw-text
    "genes")
   (:var mv6127 :isa regulate :object mv6126 :agent mv6131 :past "PAST" :raw-text "regulated")
   (:var mv6131 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv6121 mv6130))
   (:var mv6121 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv6130 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv6123 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv6137 :isa show :|statement-OR-theme| mv6140 :beneficiary mv6138 :present "PRESENT")
   (:var mv6140 :isa mutation :object mv6145 :has-determiner "THE" :raw-text "mutations")
   (:var mv6145 :isa collection :context mv6136 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv6135 mv6143))
   (:var mv6136 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6135 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6143 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6138 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv6151 :isa be :subject mv6150 :predicate mv6153 :present "PRESENT")
   (:var mv6150 :isa what)
   (:var mv6153 :isa mutation :object mv6158 :has-determiner "THE" :raw-text "mutations")
   (:var mv6158 :isa collection :context mv6149 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv6148 mv6156))
   (:var mv6149 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6148 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6156 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv6165 :isa be :subject mv6164 :predicate mv6172 :present "PRESENT")
   (:var mv6164 :isa what)
   (:var mv6172 :isa gene :disease mv6163 :has-determiner "THE" :predication mv6161 :raw-text
    "genes")
   (:var mv6163 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv6161 :isa mutual-exclusivity :alternative mv6162)
   (:var mv6162 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv6177 :isa be :subject mv6176 :predicate mv6184 :present "PRESENT")
   (:var mv6176 :isa what)
   (:var mv6184 :isa gene :has-determiner "THE" :predication mv6173 :raw-text "genes")
   (:var mv6173 :isa mutual-exclusivity :alternative mv6174)
   (:var mv6174 :isa protein :context mv6175 :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv6175 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("What downregulates it?"
   (:var mv6186 :isa downregulate :|agent-OR-cause| mv6185 :|affected-process-OR-object| mv6187
    :present "PRESENT" :raw-text "downregulates")
   (:var mv6185 :isa what) (:var mv6187 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv6191 :isa have :possessor mv6190 :thing-possessed mv6193 :present "PRESENT")
   (:var mv6190 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6193 :isa evidence :fact mv6196 :predication mv6192)
   (:var mv6196 :isa regulate :agent mv6188 :progressive mv6195 :raw-text "regulated")
   (:var mv6188 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv6195 :isa be) (:var mv6192 :isa strong))
  ("What increases the amount of myc"
   (:var mv6202 :isa increase :|agent-OR-cause| mv6200 :|affected-process-OR-object| mv6204
    :present "PRESENT" :raw-text "increases")
   (:var mv6200 :isa what)
   (:var mv6204 :isa bio-amount :measured-item mv6206 :has-determiner "THE" :raw-text "amount")
   (:var mv6206 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv6210 :isa inhibit :|agent-OR-cause| mv6209 :object mv6208 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv6209 :isa what)
   (:var mv6208 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv6214 :isa be :subject mv6213 :predicate mv6226 :present "PRESENT")
   (:var mv6213 :isa what) (:var mv6226 :isa quality-predicate :item mv6224 :attribute mv6220)
   (:var mv6224 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv6211 mv6222 mv6212))
   (:var mv6211 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6222 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6212 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv6220 :isa location-of :has-determiner "THE" :predication mv6218 :modifier mv6219)
   (:var mv6218 :isa likely :comparative mv6216)
   (:var mv6216 :isa superlative-quantifier :name "most")
   (:var mv6219 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv6229 :isa be :subject mv6228 :predicate mv6238 :present "PRESENT")
   (:var mv6228 :isa what) (:var mv6238 :isa quality-predicate :item mv6227 :attribute mv6235)
   (:var mv6227 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6235 :isa location-of :has-determiner "THE" :predication mv6233 :modifier mv6234)
   (:var mv6233 :isa likely :comparative mv6231)
   (:var mv6231 :isa superlative-quantifier :name "most")
   (:var mv6234 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv6242 :isa be :subject mv6241 :predicate mv6245 :present "PRESENT")
   (:var mv6241 :isa what)
   (:var mv6245 :isa significance :agent mv6239 :has-determiner "THE" :modifier mv6244)
   (:var mv6239 :isa protein :context mv6240 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6240 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv6244 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv6257 :isa regulate :|affected-process-OR-object| mv6253 :agent mv6250 :present "PRESENT"
    :raw-text "regulated")
   (:var mv6253 :isa those :quantifier mv6251 :word "those") (:var mv6251 :isa which)
   (:var mv6250 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv6273 :isa copular-predication-of-pp :item mv6264 :value mv6272 :prep "IN" :predicate
    mv6265)
   (:var mv6264 :isa gene :quantifier mv6261 :has-determiner "THOSE" :raw-text "genes")
   (:var mv6261 :isa which)
   (:var mv6272 :isa gene :context mv6260 :quantifier mv6261 :has-determiner "THOSE" :raw-text
    "genes")
   (:var mv6260 :isa signaling-pathway :has-determiner "THE" :modifier mv6268 :raw-text
    "signaling pathway")
   (:var mv6268 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv6265 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv6284 :isa copular-predication-of-pp :item mv6278 :value mv6282 :prep mv6280 :predicate
    mv6279)
   (:var mv6278 :isa these :quantifier mv6276 :word "these") (:var mv6276 :isa which)
   (:var mv6282 :isa pathway :has-determiner "THE" :modifier mv6275 :raw-text "pathway")
   (:var mv6275 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv6280 :isa in :word "in") (:var mv6279 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv6293 :isa gene-transcript-express :object mv6288 :organ mv6292 :present "PRESENT"
    :raw-text "expressed")
   (:var mv6288 :isa pronoun/plural :quantifier mv6286 :word "them") (:var mv6286 :isa which)
   (:var mv6292 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv6308 :isa regulate :|affected-process-OR-object| mv6300 :agent mv6307 :present "PRESENT"
    :superlative mv6302 :adverb mv6303 :raw-text "regulated")
   (:var mv6300 :isa pronoun/plural :quantifier mv6298 :word "them") (:var mv6298 :isa which)
   (:var mv6307 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv6296 mv6297))
   (:var mv6296 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv6297 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv6302 :isa superlative-quantifier :name "most")
   (:var mv6303 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv6315 :isa target :agent mv6311 :object mv6312 :present "PRESENT" :raw-text "target")
   (:var mv6311 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv6312 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv6321 :isa target :|agent-OR-cause| mv6319 :object mv6316 :present "PRESENT" :raw-text
    "target")
   (:var mv6319 :isa those :quantifier mv6317 :word "those") (:var mv6317 :isa which)
   (:var mv6316 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv6324 :isa be :subject mv6323 :predicate mv6325 :present "PRESENT")
   (:var mv6323 :isa what)
   (:var mv6325 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv6328 :isa be :subject mv6327 :predicate mv6326 :present "PRESENT")
   (:var mv6327 :isa what)
   (:var mv6326 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv6334 :isa do :patient mv6329 :present "PRESENT")
   (:var mv6329 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv6344 :isa polar-question :statement mv6342)
   (:var mv6342 :isa there-exists :value mv6340 :predicate mv6337)
   (:var mv6340 :isa inhibitor :protein mv6335 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv6335 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv6337 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv6346 :isa name-something :patient mv6350 :present "PRESENT")
   (:var mv6350 :isa drug :predication mv6352 :quantifier mv6349 :raw-text "drugs")
   (:var mv6352 :isa inhibit :agent mv6350 :that-rel t :object mv6345 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv6345 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6349 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv6364 :isa polar-question :statement mv6363)
   (:var mv6363 :isa there-exists :value mv6361 :predicate mv6355)
   (:var mv6361 :isa inhibitor :quantifier mv6357 :protein mv6362 :raw-text "inhibitors")
   (:var mv6357 :isa any :word "any")
   (:var mv6362 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv6355 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv6374 :isa polar-question :statement mv6372)
   (:var mv6372 :isa there-exists :value mv6368 :predicate mv6366)
   (:var mv6368 :isa target-protein :agent mv6371 :raw-text "targets")
   (:var mv6371 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv6366 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv6378 :isa inhibit :object mv6375 :agent mv6377 :present "PRESENT" :raw-text "inhibit")
   (:var mv6375 :isa what)
   (:var mv6377 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv6383 :isa target :object mv6379 :agent mv6381 :present "PRESENT" :raw-text "target")
   (:var mv6379 :isa what)
   (:var mv6381 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv6390 :isa polar-question :statement mv6389)
   (:var mv6389 :isa target :agent mv6385 :object mv6388 :raw-text "target")
   (:var mv6385 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv6388 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv6393 :isa be :subject mv6392 :predicate mv6395 :present "PRESENT")
   (:var mv6392 :isa what)
   (:var mv6395 :isa target-protein :quantifier mv6394 :treatment mv6398 :raw-text "targets")
   (:var mv6394 :isa some :word "some")
   (:var mv6398 :isa treatment :disease mv6391 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv6391 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv6402 :isa be :subject mv6401 :predicate mv6404 :present "PRESENT")
   (:var mv6401 :isa what)
   (:var mv6404 :isa target-protein :quantifier mv6403 :disease mv6400 :raw-text "targets")
   (:var mv6403 :isa some :word "some")
   (:var mv6400 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv6413 :isa lead :agent mv6410 :theme mv6416 :modal mv6412 :raw-text "lead")
   (:var mv6410 :isa target-protein :has-determiner "WHAT" :raw-text "targets")
   (:var mv6416 :isa development :disease mv6408 :has-determiner "THE" :raw-text "development")
   (:var mv6408 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv6412 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv6424 :isa lead :agent mv6422 :theme mv6427 :modal mv6423 :raw-text "lead")
   (:var mv6422 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv6427 :isa development :disease mv6420 :has-determiner "THE" :raw-text "development")
   (:var mv6420 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv6423 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv6436 :isa lead :agent mv6434 :theme mv6431 :modal mv6435 :raw-text "lead")
   (:var mv6434 :isa gene :has-determiner "WHAT" :predication mv6433 :raw-text "genes")
   (:var mv6433 :isa mutation :object mv6434 :raw-text "mutated")
   (:var mv6431 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv6435 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv6441 :isa be :subject mv6440 :predicate mv6445 :present "PRESENT")
   (:var mv6440 :isa what)
   (:var mv6445 :isa mutation :predication mv6447 :has-determiner "THE" :modifier mv6443
    :|agent-OR-object| mv6444 :raw-text "mutation")
   (:var mv6447 :isa lead :agent mv6445 :that-rel t :theme mv6439 :present "PRESENT" :raw-text
    "leads")
   (:var mv6439 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv6443 :isa top-qua-location) (:var mv6444 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv6456 :isa like :agent mv6451 :modal mv6454)
   (:var mv6451 :isa interlocutor :name "speaker") (:var mv6454 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv6477 :isa bio-use :patient mv6467 :modal mv6468 :agent mv6469 :theme mv6476 :present
    "PRESENT" :raw-text "use")
   (:var mv6467 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv6468 :isa could)
   (:var mv6469 :isa interlocutor :name "speaker")
   (:var mv6476 :isa treatment :disease mv6465 :raw-text "treat")
   (:var mv6465 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv6480 :isa be :subject mv6479 :predicate mv6482 :present "PRESENT")
   (:var mv6479 :isa what)
   (:var mv6482 :isa drug :treatment mv6484 :quantifier mv6481 :raw-text "drugs")
   (:var mv6484 :isa treatment :disease mv6478 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv6478 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv6481 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv6492 :isa like :agent mv6488 :modal mv6499)
   (:var mv6488 :isa interlocutor :name "speaker") (:var mv6499 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv6503 :isa how))
  ("Does MEK act on ERK?" (:var mv6513 :isa polar-question :statement mv6511)
   (:var mv6511 :isa bio-act :agent mv6507 :acted-on mv6510 :raw-text "act")
   (:var mv6507 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6510 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv6518 :isa explicit-suggestion :suggestion mv6515 :marker let-as-directive)
   (:var mv6515 :isa build :artifact mv6517 :present "PRESENT")
   (:var mv6517 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv6521 :isa bio-activate :agent mv6520 :object mv6519 :present "PRESENT" :raw-text
    "activates")
   (:var mv6520 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6519 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv6523 :isa bio-activate :agent mv6522 :object mv6524 :present "PRESENT" :raw-text
    "activates")
   (:var mv6522 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv6524 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv6525 :isa remove :object mv6532 :present "PRESENT" :raw-text "Remove")
   (:var mv6532 :isa fact :statement mv6530 :has-determiner "THE")
   (:var mv6530 :isa bio-activate :agent mv6529 :object mv6531 :present "PRESENT" :raw-text
    "activates")
   (:var mv6529 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv6531 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv6544 :isa polar-question :statement mv6535)
   (:var mv6535 :isa tell :agent mv6534 :theme mv6543 :theme mv6536 :modal "CAN")
   (:var mv6534 :isa interlocutor :name "hearer")
   (:var mv6543 :isa copular-predication-of-pp :item mv6537 :value mv6541 :prep mv6539 :predicate
    mv6538)
   (:var mv6537 :isa what) (:var mv6541 :isa model :has-determiner "THE")
   (:var mv6539 :isa in :word "in") (:var mv6538 :isa be :modal "CAN")
   (:var mv6536 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv6548 :isa summarize :statement mv6547 :present "PRESENT")
   (:var mv6547 :isa model :has-determiner "THE"))
  ("Summarize the current model." (:var mv6553 :isa summarize :statement mv6552 :present "PRESENT")
   (:var mv6552 :isa model :has-determiner "THE" :predication mv6551) (:var mv6551 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv6555 :isa phosphorylate :|agent-OR-cause| mv6554 :substrate mv6556 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv6554 :isa what)
   (:var mv6556 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv6558 :isa binding :binder mv6557 :direct-bindee mv6559 :present "PRESENT" :raw-text
    "binds")
   (:var mv6557 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv6559 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv6564 :isa bio-activate :object mv6560 :present "PRESENT" :raw-text "activated")
   (:var mv6560 :isa protein :predication mv6561 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv6561 :isa phosphorylate :substrate mv6560 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv6568 :isa dephosphorylate :agent mv6565 :substrate mv6566 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv6565 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv6566 :isa protein :predication mv6574 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv6574 :isa binding :direct-bindee mv6566 :that-rel t :bindee mv6567 :present "PRESENT"
    :negation mv6571 :raw-text "bound")
   (:var mv6567 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv6571 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv6585 :isa phosphorylate :agent mv6576 :substrate mv6578 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv6576 :isa protein :predication mv6586 :predication mv6579 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv6586 :isa binding :direct-bindee mv6576 :that-rel t :bindee mv6577 :present "PRESENT"
    :negation mv6582 :raw-text "bound")
   (:var mv6577 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv6582 :isa not :word "not") (:var mv6579 :isa active)
   (:var mv6578 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv6592 :isa bio-activate :object mv6588 :present "PRESENT" :raw-text "activated")
   (:var mv6588 :isa protein :predication mv6589 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv6589 :isa phosphorylate :substrate mv6588 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv6596 :isa dephosphorylate :agent mv6593 :substrate mv6594 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv6593 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv6594 :isa protein :predication mv6602 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv6602 :isa binding :direct-bindee mv6594 :that-rel t :bindee mv6595 :present "PRESENT"
    :negation mv6599 :raw-text "bound")
   (:var mv6595 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv6599 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv6616 :isa phosphorylate :agent mv6605 :substrate mv6604 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv6605 :isa protein :predication mv6619 :mutation mv6618 :raw-text "BRAF" :uid "UP:P15056"
    :name "BRAF_HUMAN")
   (:var mv6619 :isa binding :direct-bindee mv6605 :that-rel t :bindee mv6615 :present "PRESENT"
    :negation mv6612 :raw-text "bound")
   (:var mv6615 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv6612 :isa not :word "not")
   (:var mv6618 :isa point-mutated-protein :position mv6607 :new-amino-acid mv6609
    :original-amino-acid mv6606)
   (:var mv6607 :isa number :value 600)
   (:var mv6609 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv6606 :isa amino-acid :name "valine" :letter "V")
   (:var mv6604 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv6625 :isa copular-predication :item mv6621 :value mv6624 :predicate mv6623)
   (:var mv6621 :isa protein :predication mv6622 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv6622 :isa phosphorylate :substrate mv6621 :raw-text "Phosphorylated")
   (:var mv6624 :isa active) (:var mv6623 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv6628 :isa phosphorylate :agent mv6626 :substrate mv6627 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv6626 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv6627 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv6637 :isa explicit-suggestion :suggestion mv6631 :marker let-as-directive)
   (:var mv6631 :isa move-something-somewhere :goal mv6635 :theme mv6630 :present "PRESENT")
   (:var mv6635 :isa top-qua-location :has-determiner "THE")
   (:var mv6630 :isa protein :predication mv6632 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv6632 :isa phosphorylate :substrate mv6630 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv6645 :isa explicit-suggestion :suggestion mv6640 :marker let-as-directive)
   (:var mv6640 :isa move-something-somewhere :at-relative-location mv6643 :theme mv6639 :present
    "PRESENT")
   (:var mv6643 :isa top-qua-location)
   (:var mv6639 :isa protein :predication mv6641 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv6641 :isa phosphorylate :substrate mv6639 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv6647 :isa show :at-relative-location mv6649 :|statement-OR-theme| mv6646 :present
    "PRESENT")
   (:var mv6649 :isa top-qua-location)
   (:var mv6646 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv6658 :isa explicit-suggestion :suggestion mv6653 :marker let-as-directive)
   (:var mv6653 :isa highlight :theme mv6654 :present "PRESENT")
   (:var mv6654 :isa upstream-segment :pathwaycomponent mv6652 :raw-text "upstream")
   (:var mv6652 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv6667 :isa explicit-suggestion :suggestion mv6660 :marker let-as-directive)
   (:var mv6660 :isa move-something-somewhere :goal mv6665 :theme mv6662 :present "PRESENT")
   (:var mv6665 :isa top-qua-location :has-determiner "THE")
   (:var mv6662 :isa element :modifier mv6661) (:var mv6661 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv6670 :isa be :subject mv6669 :predicate mv6673 :present "PRESENT")
   (:var mv6669 :isa what)
   (:var mv6673 :isa downstream-segment :pathwaycomponent mv6677 :has-determiner "THE" :predication
    mv6672 :raw-text "downstreams")
   (:var mv6677 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv6668 mv6676))
   (:var mv6668 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6676 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6672 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv6692 :isa polar-question :statement mv6689)
   (:var mv6689 :isa there-exists :value mv6685 :predicate mv6682)
   (:var mv6685 :isa upstream-segment :pathwaycomponent mv6690 :predication mv6684 :raw-text
    "upstreams")
   (:var mv6690 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv6679 mv6687 mv6680))
   (:var mv6679 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6687 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6680 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv6684 :isa common) (:var mv6682 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv6697 :isa be :subject mv6696 :predicate mv6702 :present "PRESENT")
   (:var mv6696 :isa what)
   (:var mv6702 :isa regulator :theme mv6705 :has-determiner "THE" :predication mv6699 :context
    mv6700 :raw-text "regulators")
   (:var mv6705 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv6693 mv6694 mv6695))
   (:var mv6693 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv6694 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6695 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6699 :isa common) (:var mv6700 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv6710 :isa be :subject mv6709 :predicate mv6714 :present "PRESENT")
   (:var mv6709 :isa what)
   (:var mv6714 :isa regulator :theme mv6717 :predication mv6711 :context mv6712 :raw-text
    "regulators")
   (:var mv6717 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv6707 mv6708))
   (:var mv6707 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6708 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6711 :isa common) (:var mv6712 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv6724 :isa be :subject mv6723 :predicate mv6719 :present "PRESENT")
   (:var mv6723 :isa what)
   (:var mv6719 :isa protein-family :molecule-type mv6730 :predication mv6725 :context mv6726
    :raw-text "transcriptional regulators" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv6730 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv6720 mv6721 mv6722))
   (:var mv6720 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv6721 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6722 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6725 :isa common) (:var mv6726 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv6735 :isa be :subject mv6734 :predicate mv6737 :present "PRESENT")
   (:var mv6734 :isa what)
   (:var mv6737 :isa mutation :object mv6743 :has-determiner "THE" :raw-text "mutations")
   (:var mv6743 :isa collection :context mv6733 :raw-text "PTEN, TP53 and BRAF" :type protein
    :number 3 :items (mv6739 mv6732 mv6741))
   (:var mv6733 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6739 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv6732 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6741 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv6749 :isa be :subject mv6748 :predicate mv6752 :present "PRESENT")
   (:var mv6748 :isa what)
   (:var mv6752 :isa frequency :measured-item mv6746 :has-determiner "THE" :measured-item mv6751
    :raw-text "frequency")
   (:var mv6746 :isa protein :context mv6747 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv6747 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv6751 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv6767 :isa copular-predication :item mv6761 :value mv6757 :predicate mv6762)
   (:var mv6761 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv6757 :isa mutual-exclusivity :disease mv6759 :alternative mv6758)
   (:var mv6759 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv6758 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv6762 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv6778 :isa copular-predication :item mv6772 :value mv6768 :predicate mv6773)
   (:var mv6772 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv6768 :isa mutual-exclusivity :alternative mv6769)
   (:var mv6769 :isa protein :context mv6770 :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv6770 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv6773 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv6781 :isa be :subject mv6780 :predicate mv6787 :present "PRESENT")
   (:var mv6780 :isa what) (:var mv6787 :isa quality-predicate :item mv6779 :attribute mv6784)
   (:var mv6779 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv6784 :isa location-of :has-determiner "THE" :modifier mv6783)
   (:var mv6783 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv6791 :isa regulate :manner mv6788 :agent mv6790 :object mv6792 :present "PRESENT"
    :raw-text "regulate")
   (:var mv6788 :isa how)
   (:var mv6790 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv6792 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv6794 :isa be :subject mv6793 :predicate mv6795 :present "PRESENT")
   (:var mv6793 :isa what)
   (:var mv6795 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv6807 :isa polar-question :statement mv6796)
   (:var mv6796 :isa be :subject mv6797 :predicate mv6799)
   (:var mv6797 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6799 :isa member :set mv6805 :has-determiner "A")
   (:var mv6805 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv6814 :isa copular-predication-of-pp :item mv6809 :value mv6812 :prep mv6811 :predicate
    mv6810)
   (:var mv6809 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6812 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv6811 :isa in :word "in") (:var mv6810 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv6825 :isa copular-predication-of-pp :item mv6816 :value mv6823 :prep mv6818 :predicate
    mv6817)
   (:var mv6816 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6823 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv6818 :isa in :word "in") (:var mv6817 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv6827 :isa be :subject mv6826 :predicate mv6831 :present "PRESENT")
   (:var mv6826 :isa what)
   (:var mv6831 :isa has-name :quantifier mv6828 :quantifier mv6829 :item mv6834)
   (:var mv6828 :isa some :word "some") (:var mv6829 :isa other :word "other")
   (:var mv6834 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are synonyms for ERK?"
   (:var mv6837 :isa be :subject mv6836 :predicate mv6838 :present "PRESENT")
   (:var mv6836 :isa what) (:var mv6838 :isa has-synonym :item mv6840)
   (:var mv6840 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv6852 :isa share :object mv6842 :participant mv6851 :present "PRESENT" :raw-text
    "shared")
   (:var mv6842 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv6851 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv6843 mv6844 mv6845))
   (:var mv6843 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv6844 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv6845 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv6856 :isa be :subject mv6855 :predicate mv6858 :present "PRESENT")
   (:var mv6855 :isa what) (:var mv6858 :isa path :endpoints mv6862 :has-determiner "THE")
   (:var mv6862 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv6860 mv6854))
   (:var mv6860 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6854 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv6868 :isa polar-question :statement mv6866)
   (:var mv6866 :isa be :subject mv6864 :predicate mv6865)
   (:var mv6864 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv6865 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv6869 :isa remove :object mv6881 :present "PRESENT" :raw-text "Remove")
   (:var mv6881 :isa fact :statement mv6875 :has-determiner "THE")
   (:var mv6875 :isa bio-activate :agent mv6874 :object mv6876 :present "PRESENT" :raw-text
    "activates")
   (:var mv6874 :isa protein-family :predication mv6873 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6873 :isa active)
   (:var mv6876 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv6884 :isa bio-activate :agent mv6883 :object mv6885 :present "PRESENT" :raw-text
    "activates")
   (:var mv6883 :isa protein-family :predication mv6882 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv6882 :isa active)
   (:var mv6885 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv6892 :isa copular-predication-of-pp :item mv6886 :value mv6890 :prep mv6888 :predicate
    mv6887)
   (:var mv6886 :isa what) (:var mv6890 :isa model :has-determiner "THE")
   (:var mv6888 :isa in :word "in") (:var mv6887 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv6903 :isa polar-question :statement mv6902)
   (:var mv6902 :isa copular-predication :item mv6895 :value mv6900 :predicate mv6893)
   (:var mv6895 :isa bio-amount :measured-item mv6898 :has-determiner "THE" :raw-text "amount")
   (:var mv6898 :isa protein-family :predication mv6897 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv6897 :isa phosphorylate :substrate mv6898 :raw-text "phosphorylated")
   (:var mv6900 :isa high :adverb mv6899) (:var mv6899 :isa ever :name "ever")
   (:var mv6893 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv6914 :isa copular-predication :item mv6907 :value mv6904 :predicate mv6908)
   (:var mv6907 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv6904 :isa mutual-exclusivity :disease mv6905 :alternative mv6910)
   (:var mv6905 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv6910 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv6908 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv6924 :isa share :object mv6915 :participant mv6923 :present "PRESENT" :raw-text
    "shared")
   (:var mv6915 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv6923 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv6916 mv6917))
   (:var mv6916 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv6917 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv6933 :isa regulate :agent mv6930 :object mv6935 :present "PRESENT" :adverb mv6931
    :adverb mv6932 :raw-text "regulate")
   (:var mv6930 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv6935 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv6926 mv6927 mv6928))
   (:var mv6926 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv6927 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv6928 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv6931 :isa superlative-quantifier :name "most")
   (:var mv6932 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv6937 :isa be :subject mv6936 :predicate mv6947 :present "PRESENT")
   (:var mv6936 :isa what) (:var mv6947 :isa quality-predicate :item mv6945 :attribute mv6943)
   (:var mv6945 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv6943 :isa location-of :has-determiner "THE" :predication mv6941 :modifier mv6942)
   (:var mv6941 :isa likely :comparative mv6939)
   (:var mv6939 :isa superlative-quantifier :name "most")
   (:var mv6942 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv6952 :isa polar-question :statement mv6948)
   (:var mv6948 :isa be :subject mv6949 :predicate mv6951)
   (:var mv6949 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6951 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?" (:var mv6964 :isa polar-question :statement mv6955)
   (:var mv6955 :isa tell :agent mv6954 :theme mv6963 :theme mv6956 :modal "CAN")
   (:var mv6954 :isa interlocutor :name "hearer")
   (:var mv6963 :isa wh-question :statement mv6960 :wh whether)
   (:var mv6960 :isa be :subject mv6959 :predicate mv6962 :modal "CAN")
   (:var mv6959 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6962 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv6956 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv6968 :isa want :agent mv6965 :theme mv6978 :present "PRESENT")
   (:var mv6965 :isa interlocutor :name "speaker")
   (:var mv6978 :isa know :agent mv6965 :statement mv6977)
   (:var mv6977 :isa wh-question :statement mv6973 :wh if)
   (:var mv6973 :isa be :subject mv6972 :predicate mv6975 :present "PRESENT")
   (:var mv6972 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv6975 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv6979 :isa what))
  ("What type of protein is BRAF?"
   (:var mv6987 :isa be :subject mv6984 :predicate mv6988 :present "PRESENT")
   (:var mv6984 :isa type :molecule-type mv6986 :has-determiner "WHAT" :raw-text "type")
   (:var mv6986 :isa protein :raw-text "protein")
   (:var mv6988 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv6991 :isa be :subject mv6990 :predicate mv6993 :present "PRESENT")
   (:var mv6990 :isa what)
   (:var mv6993 :isa bio-activity :participant mv6998 :has-determiner "THE" :raw-text "activity")
   (:var mv6998 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv7008 :isa polar-question :statement mv7001)
   (:var mv7001 :isa be :subject mv7002 :predicate mv7007)
   (:var mv7002 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7007 :isa collection :raw-text "a kinase or a transcription factor" :type kinase :number
    2 :items (mv7004 mv7000))
   (:var mv7004 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv7000 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv7015 :isa target :object mv7011 :agent mv7009 :present "PRESENT" :raw-text "targeted")
   (:var mv7011 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv7009 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv7021 :isa name-something :patient mv7017 :present "PRESENT")
   (:var mv7017 :isa transcription-factor :predication mv7024 :raw-text "transcription factors")
   (:var mv7024 :isa share :object mv7017 :participant mv7027 :past "PAST" :raw-text "shared")
   (:var mv7027 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv7018 mv7019 mv7020))
   (:var mv7018 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv7019 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv7020 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv7031 :isa tell :theme mv7036 :beneficiary mv7032 :present "PRESENT")
   (:var mv7036 :isa wh-question :statement mv7034 :wh if)
   (:var mv7034 :isa be :subject mv7029 :predicate mv7030 :present "PRESENT")
   (:var mv7029 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7030 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv7032 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv7040 :isa show :|statement-OR-theme| mv7037 :beneficiary mv7041 :present "PRESENT")
   (:var mv7037 :isa signaling-pathway :predication mv7042 :raw-text "signaling pathways")
   (:var mv7042 :isa share :object mv7037 :participant mv7045 :past "PAST" :raw-text "shared")
   (:var mv7045 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv7038 mv7039))
   (:var mv7038 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv7039 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7041 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv7050 :isa give :theme mv7047 :beneficiary mv7051 :present "PRESENT")
   (:var mv7047 :isa signaling-pathway :predication mv7052 :raw-text "signaling pathways")
   (:var mv7052 :isa share :object mv7047 :participant mv7055 :past "PAST" :raw-text "shared")
   (:var mv7055 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv7048 mv7049))
   (:var mv7048 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv7049 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7051 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv7086 :isa polar-question :statement mv7085)
   (:var mv7085 :isa event-relation :subordinated-event mv7081 :event mv7083)
   (:var mv7081 :isa wh-question :statement mv7068 :wh if)
   (:var mv7068 :isa increase :|agent-OR-cause| mv7066 :cause mv7078 :|affected-process-OR-object|
    mv7070 :present "PRESENT" :raw-text "increase")
   (:var mv7066 :isa interlocutor :name "person-and-machine")
   (:var mv7078 :isa measurement :number mv7075) (:var mv7075 :isa number :value 10)
   (:var mv7070 :isa bio-amount :measured-item mv7072 :has-determiner "THE" :raw-text "amount")
   (:var mv7072 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7083 :isa copular-predication :item mv7059 :value mv7064 :predicate mv7057)
   (:var mv7059 :isa bio-amount :measured-item mv7062 :has-determiner "THE" :raw-text "amount")
   (:var mv7062 :isa protein-family :predication mv7061 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv7061 :isa phosphorylate :substrate mv7062 :raw-text "phosphorylated")
   (:var mv7064 :isa high :adverb mv7063) (:var mv7063 :isa ever :name "ever")
   (:var mv7057 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv7089 :isa phosphorylate :agent mv7088 :substrate mv7090 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv7088 :isa protein-family :predication mv7087 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7087 :isa active)
   (:var mv7090 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv7119 :isa polar-question :statement mv7118)
   (:var mv7118 :isa event-relation :subordinated-event mv7114 :event mv7116)
   (:var mv7114 :isa wh-question :statement mv7102 :wh if)
   (:var mv7102 :isa increase :|agent-OR-cause| mv7100 :|affected-process-OR-object| mv7104
    :present "PRESENT" :raw-text "increase")
   (:var mv7100 :isa interlocutor :name "person-and-machine")
   (:var mv7104 :isa bio-amount :has-determiner "THE" :raw-text "amount")
   (:var mv7116 :isa copular-predication :item mv7093 :value mv7098 :predicate mv7091)
   (:var mv7093 :isa bio-amount :measured-item mv7096 :has-determiner "THE" :raw-text "amount")
   (:var mv7096 :isa protein-family :predication mv7095 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv7095 :isa phosphorylate :substrate mv7096 :raw-text "phosphorylated")
   (:var mv7098 :isa high :adverb mv7097) (:var mv7097 :isa ever :name "ever")
   (:var mv7091 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv7121 :isa be :subject mv7120 :predicate mv7123 :present "PRESENT")
   (:var mv7120 :isa what)
   (:var mv7123 :isa pathway :predication mv7125 :quantifier mv7122 :raw-text "pathways")
   (:var mv7125 :isa affect :agent mv7123 :that-rel t :object mv7126 :present "PRESENT" :raw-text
    "affect")
   (:var mv7126 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7122 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv7128 :isa be :subject mv7127 :predicate mv7130 :present "PRESENT")
   (:var mv7127 :isa what)
   (:var mv7130 :isa pathway :predication mv7132 :has-determiner "THE" :raw-text "pathways")
   (:var mv7132 :isa affect :agent mv7130 :that-rel t :object mv7133 :present "PRESENT" :raw-text
    "affect")
   (:var mv7133 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv7143 :isa regulate :object mv7137 :agent mv7142 :present "PRESENT" :raw-text
    "regulated")
   (:var mv7137 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7142 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv7134 mv7135))
   (:var mv7134 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv7135 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv7147 :isa be :subject mv7146 :predicate mv7149 :present "PRESENT")
   (:var mv7146 :isa what)
   (:var mv7149 :isa gene :predication mv7154 :quantifier mv7148 :raw-text "genes")
   (:var mv7154 :isa regulate :object mv7149 :that-rel t :agent mv7145 :present "PRESENT" :raw-text
    "regulated")
   (:var mv7145 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7148 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv7160 :isa contain :theme mv7159 :patient mv7162 :present "PRESENT")
   (:var mv7159 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7162 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7156 mv7157))
   (:var mv7156 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7157 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv7165 :isa remove :object mv7174 :present "PRESENT" :raw-text "Remove")
   (:var mv7174 :isa fact :statement mv7169 :has-determiner "THE")
   (:var mv7169 :isa bio-activate :agent mv7163 :object mv7164 :present "PRESENT" :raw-text
    "activates")
   (:var mv7163 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7164 :isa protein :info-context mv7172 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv7172 :isa model :has-determiner "THE"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv7177 :isa remove :object mv7175 :present "PRESENT" :raw-text "Remove")
   (:var mv7175 :isa protein :predication mv7178 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv7178 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv7186 :isa be :subject mv7185 :predicate mv7188 :present "PRESENT")
   (:var mv7185 :isa what) (:var mv7188 :isa path :endpoints mv7192 :quantifier mv7187)
   (:var mv7192 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv7190 mv7184))
   (:var mv7190 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7184 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv7187 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv7199 :isa polar-question :statement mv7198)
   (:var mv7198 :isa bio-activate :agent mv7194 :object mv7195 :raw-text "activate")
   (:var mv7194 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7195 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv7202 :isa protein :has-determiner "WHAT" :modifier mv7201 :modifier mv7203 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7201 :isa drug :raw-text "drugs") (:var mv7203 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv7214 :isa copular-predication-of-pp :item mv7206 :value mv7213 :prep "IN" :predicate
    mv7207)
   (:var mv7206 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv7213 :isa kinase :|context-OR-in-pathway| mv7204 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv7204 :isa signaling-pathway :has-determiner "THE" :modifier mv7210 :raw-text
    "signalling pathway")
   (:var mv7210 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv7207 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv7220 :isa target :agent mv7222 :object mv7221 :present "PRESENT" :raw-text "target")
   (:var mv7222 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7221 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv7226 :isa bio-entity :has-determiner "WHAT" :modifier mv7227 :name "ELLK1")
   (:var mv7227 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv7240 :isa polar-question :statement mv7237)
   (:var mv7237 :isa increase :agent mv7228 :affected-process mv7233 :raw-text "increase")
   (:var mv7228 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7233 :isa gene-transcript-express :object mv7229 :raw-text "expression")
   (:var mv7229 :isa protein :organ mv7236 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv7236 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv7250 :isa polar-question :statement mv7248)
   (:var mv7248 :isa affect :agent mv7241 :affected-process mv7245 :raw-text "affect")
   (:var mv7241 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7245 :isa gene-transcript-express :organ mv7247 :object mv7242 :raw-text "expression")
   (:var mv7247 :isa liver)
   (:var mv7242 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv7257 :isa polar-question :statement mv7256)
   (:var mv7256 :isa alter :agent mv7251 :affected-process mv7255 :raw-text "alter")
   (:var mv7251 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7255 :isa gene-transcript-express :object mv7252 :raw-text "expression")
   (:var mv7252 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv7265 :isa polar-question :statement mv7261)
   (:var mv7261 :isa be :subject mv7258 :predicate mv7259)
   (:var mv7258 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7259 :isa protein-family :molecule-type mv7260 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv7260 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv7268 :isa inhibit :agent mv7267 :object mv7269 :present "PRESENT" :raw-text "inhibit")
   (:var mv7267 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7269 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv7272 :isa upregulate :agent mv7270 :object mv7271 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv7270 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7271 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv7276 :isa transcribe :object mv7274 :agent mv7273 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv7274 :isa what)
   (:var mv7273 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv7279 :isa be :subject mv7278 :predicate mv7277 :present "PRESENT")
   (:var mv7278 :isa what)
   (:var mv7277 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv7281 :isa be :subject mv7280 :predicate mv7282 :present "PRESENT")
   (:var mv7280 :isa what)
   (:var mv7282 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv7284 :isa phosphorylate :|agent-OR-cause| mv7283 :substrate mv7285 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv7283 :isa what)
   (:var mv7285 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv7289 :isa target :agent mv7287 :object mv7290 :present "PRESENT" :raw-text "target")
   (:var mv7287 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7290 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv7293 :isa regulate :|agent-OR-cause| mv7292 :object mv7291 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7292 :isa what) (:var mv7291 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv7296 :isa regulate :|agent-OR-cause| mv7295 :object mv7294 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7295 :isa what)
   (:var mv7294 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv7307 :isa polar-question :statement mv7306)
   (:var mv7306 :isa target :agent mv7305 :object mv7298 :raw-text "target")
   (:var mv7305 :isa bio-entity :name "miR-20b-5pp")
   (:var mv7298 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv7318 :isa wh-question :statement mv7317 :wh what)
   (:var mv7317 :isa prepositional-phrase :pobj mv7315 :prep "OF")
   (:var mv7315 :isa bio-entity :context mv7308 :name "PTEEN")
   (:var mv7308 :isa cancer :name "prostate cancer" :uid "TS-1224"))
  ("What does selumitinibib target?"
   (:var mv7322 :isa target :object mv7319 :agent mv7323 :present "PRESENT" :raw-text "target")
   (:var mv7319 :isa what) (:var mv7323 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv7328 :isa polar-question :statement mv7325)
   (:var mv7325 :isa be :subject mv7324 :predicate mv7327)
   (:var mv7324 :isa bio-entity :name "ELLK1")
   (:var mv7327 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv7330 :isa regulate :|agent-OR-cause| mv7329 :object mv7331 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7329 :isa what)
   (:var mv7331 :isa protein :variant-number mv7333 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv7333 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv7337 :isa target :object mv7334 :agent mv7338 :present "PRESENT" :raw-text "target")
   (:var mv7334 :isa what) (:var mv7338 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv7342 :isa be :subject mv7341 :predicate mv7347 :present "PRESENT")
   (:var mv7341 :isa what) (:var mv7347 :isa evidence :statement mv7346 :has-determiner "THE")
   (:var mv7346 :isa phosphorylate :agent mv7339 :substrate mv7340 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv7339 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7340 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv7349 :isa remove :object mv7348 :present "PRESENT" :raw-text "Remove")
   (:var mv7348 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv7354 :isa remove :object mv7357 :present "PRESENT" :raw-text "Remove")
   (:var mv7357 :isa interact :has-determiner "THE" :predication mv7356 :raw-text "interaction")
   (:var mv7356 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv7364 :isa bio-activate :agent mv7362 :object mv7363 :present "PRESENT" :raw-text
    "activates")
   (:var mv7362 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7363 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv7375 :isa copular-predication-of-pp :item mv7367 :value mv7374 :prep "IN" :predicate
    mv7368)
   (:var mv7367 :isa interact :has-determiner "HOW" :quantifier mv7366 :raw-text "interactions")
   (:var mv7366 :isa many :word "many")
   (:var mv7374 :isa interact :info-context mv7371 :has-determiner "HOW" :quantifier mv7366
    :raw-text "interactions")
   (:var mv7371 :isa model :has-determiner "THE") (:var mv7368 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv7388 :isa polar-question :statement mv7386)
   (:var mv7386 :isa decrease :agent mv7379 :|affected-process-OR-object| mv7383 :raw-text
    "decrease")
   (:var mv7379 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv7383 :isa bio-amount :measured-item mv7377 :has-determiner "THE" :raw-text "amount")
   (:var mv7377 :isa protein :predication mv7385 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv7385 :isa phosphorylate :substrate mv7377 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv7393 :isa bio-activate :object mv7391 :agent mv7389 :present "PRESENT" :raw-text
    "activate")
   (:var mv7391 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7389 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv7398 :isa bio-activate :object mv7396 :agent mv7394 :present "PRESENT" :raw-text
    "activate")
   (:var mv7396 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7394 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv7402 :isa bio-activate :object mv7400 :agent mv7399 :present "PRESENT" :raw-text
    "activate")
   (:var mv7400 :isa what)
   (:var mv7399 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv7406 :isa phosphorylate :amino-acid mv7404 :agent mv7403 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv7404 :isa what)
   (:var mv7403 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv7411 :isa regulate :object mv7409 :agent mv7407 :present "PRESENT" :raw-text "regulate")
   (:var mv7409 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7407 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv7421 :isa collection :type involve :number 2 :items (mv7414 mv7420))
   (:var mv7414 :isa involve :theme mv7413 :theme mv7415 :present "PRESENT")
   (:var mv7413 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7415 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv7420 :isa binding :direct-bindee mv7417 :binder mv7419 :present "PRESENT" :raw-text
    "bind")
   (:var mv7417 :isa what)
   (:var mv7419 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv7424 :isa involve :theme mv7423 :theme mv7425 :present "PRESENT")
   (:var mv7423 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7425 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv7429 :isa binding :direct-bindee mv7426 :binder mv7428 :present "PRESENT" :raw-text
    "bind")
   (:var mv7426 :isa what)
   (:var mv7428 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv7440 :isa wh-question :statement mv7438 :var nil :wh what)
   (:var mv7438 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv7451 :isa polar-question :statement mv7450)
   (:var mv7450 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv7457 :isa polar-question :statement mv7456)
   (:var mv7456 :isa phosphorylate :agent mv7452 :substrate mv7453 :raw-text "phosphorylate")
   (:var mv7452 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7453 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv7461 :isa bio-activate :agent mv7460 :object mv7458 :present "PRESENT" :raw-text
    "activate")
   (:var mv7460 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv7458 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv7467 :isa target :agent mv7465 :affected-process mv7468 :present "PRESENT" :raw-text
    "target")
   (:var mv7465 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7468 :isa upstream-segment :pathwaycomponent mv7471 :raw-text "upstreams")
   (:var mv7471 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7462 mv7463))
   (:var mv7462 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7463 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv7477 :isa target :agent mv7475 :object mv7473 :present "PRESENT" :raw-text "target")
   (:var mv7475 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7473 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv7482 :isa target :agent mv7480 :object mv7478 :present "PRESENT" :raw-text "target")
   (:var mv7480 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv7478 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv7489 :isa target :agent mv7487 :object mv7483 :present "PRESENT" :raw-text "target")
   (:var mv7487 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7483 :isa transcription-factor :predication mv7490 :raw-text "transcription factors")
   (:var mv7490 :isa share :object mv7483 :participant mv7493 :past "PAST" :raw-text "shared")
   (:var mv7493 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7484 mv7485))
   (:var mv7484 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7485 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv7500 :isa target :object mv7497 :agent mv7495 :present "PRESENT" :raw-text "target")
   (:var mv7497 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7495 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv7506 :isa target :object mv7501 :agent mv7502 :present "PRESENT" :raw-text "target")
   (:var mv7501 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7502 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv7517 :isa copular-predication :item mv7511 :value mv7507 :predicate mv7512)
   (:var mv7511 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7507 :isa mutual-exclusivity :disease mv7509 :alternative mv7508)
   (:var mv7509 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv7508 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv7512 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv7521 :isa target :agent mv7519 :object mv7522 :present "PRESENT" :raw-text "target")
   (:var mv7519 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv7522 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv7533 :isa copular-predication-of-pp :item mv7525 :value mv7532 :prep "IN" :predicate
    mv7526)
   (:var mv7525 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv7532 :isa kinase :|context-OR-in-pathway| mv7523 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv7523 :isa signaling-pathway :has-determiner "THE" :modifier mv7529 :raw-text
    "signaling pathway")
   (:var mv7529 :isa bio-entity :name "FAKE") (:var mv7526 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv7536 :isa be :subject mv7535 :predicate mv7538 :present "PRESENT")
   (:var mv7535 :isa what)
   (:var mv7538 :isa mutation :object mv7540 :has-determiner "THE" :raw-text "mutations")
   (:var mv7540 :isa protein :context mv7543 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv7543 :isa cancer :predication mv7542) (:var mv7542 :isa fictional))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv7547 :isa be :subject mv7546 :predicate mv7549 :present "PRESENT")
   (:var mv7546 :isa what)
   (:var mv7549 :isa mutation :object mv7551 :has-determiner "THE" :raw-text "mutations")
   (:var mv7551 :isa protein :context mv7554 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv7554 :isa cancer :organ mv7553) (:var mv7553 :isa liver))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv7558 :isa remove :object mv7568 :present "PRESENT" :raw-text "Remove")
   (:var mv7568 :isa fact :statement mv7562 :has-determiner "THE")
   (:var mv7562 :isa transcribe :agent mv7557 :object mv7563 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv7557 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7563 :isa bio-entity :info-context mv7566 :name "FAKE")
   (:var mv7566 :isa model :has-determiner "THE"))
  ("ELK1 transcribes FOS"
   (:var mv7570 :isa transcribe :agent mv7569 :object mv7571 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv7569 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7571 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv7573 :isa remove :object mv7583 :present "PRESENT" :raw-text "Remove")
   (:var mv7583 :isa fact :statement mv7577 :has-determiner "THE")
   (:var mv7577 :isa transcribe :agent mv7572 :object mv7578 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv7572 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7578 :isa protein :info-context mv7581 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv7581 :isa model :has-determiner "THE"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv7596 :isa share :object mv7584 :participant mv7595 :present "PRESENT" :raw-text
    "shared")
   (:var mv7584 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7595 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv7585 mv7594))
   (:var mv7585 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7594 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv7607 :isa share :object mv7598 :participant mv7606 :present "PRESENT" :raw-text
    "shared")
   (:var mv7598 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7606 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv7599 mv7600))
   (:var mv7599 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv7600 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?"
   (:var mv7614 :isa bio-use :object mv7610 :agent mv7612 :present "PRESENT" :raw-text "use")
   (:var mv7610 :isa database :has-determiner "WHAT")
   (:var mv7612 :isa interlocutor :name "hearer"))
  ("What is the MSA?" (:var mv7616 :isa be :subject mv7615 :predicate mv7618 :present "PRESENT")
   (:var mv7615 :isa what)
   (:var mv7618 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv7627 :isa ask :patient mv7620 :modal mv7621 :agent mv7622 :present "PRESENT")
   (:var mv7620 :isa tissue :has-determiner "WHAT") (:var mv7621 :isa can)
   (:var mv7622 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv7636 :isa ask :patient mv7629 :modal mv7630 :agent mv7631 :present "PRESENT")
   (:var mv7629 :isa cancer :has-determiner "WHAT") (:var mv7630 :isa can)
   (:var mv7631 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv7645 :isa ask :patient mv7638 :modal mv7639 :agent mv7640 :present "PRESENT")
   (:var mv7638 :isa bio-mechanism :has-determiner "WHAT") (:var mv7639 :isa can)
   (:var mv7640 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv7649 :isa regulate :object mv7647 :agent mv7646 :present "PRESENT" :raw-text "regulate")
   (:var mv7647 :isa what)
   (:var mv7646 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv7653 :isa be :subject mv7652 :predicate mv7654 :present "PRESENT")
   (:var mv7652 :isa these :quantifier mv7650 :word "these") (:var mv7650 :isa which)
   (:var mv7654 :isa kinase :raw-text "kinases"))
  ("What pathways is ERK1 in?" (:var mv7661 :isa wh-question :statement mv7660 :var nil :wh what)
   (:var mv7660 :isa in :word "in"))
  ("Which of these is AKT1 in?" (:var mv7669 :isa wh-question :statement mv7667 :wh which)
   (:var mv7667 :isa in :word "in"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv7678 :isa wh-question :statement mv7676 :var nil :wh what)
   (:var mv7676 :isa in :word "in"))
  ("What microRNAs target STAT3?"
   (:var mv7683 :isa target :agent mv7681 :object mv7679 :present "PRESENT" :raw-text "target")
   (:var mv7681 :isa micro-rna :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv7679 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv7689 :isa target :|agent-OR-cause| mv7687 :object mv7684 :present "PRESENT" :raw-text
    "target")
   (:var mv7687 :isa these :quantifier mv7685 :word "these") (:var mv7685 :isa which)
   (:var mv7684 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv7699 :isa polar-question :statement mv7697)
   (:var mv7697 :isa regulate :|agent-OR-cause| mv7695 :object mv7691 :raw-text "regulate")
   (:var mv7695 :isa these :quantifier mv7693 :word "these") (:var mv7693 :isa any :word "any")
   (:var mv7691 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv7702 :isa regulate :|agent-OR-cause| mv7701 :object mv7700 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7701 :isa what)
   (:var mv7700 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv7705 :isa involve :theme mv7704 :theme mv7706 :present "PRESENT")
   (:var mv7704 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv7706 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv7709 :isa be :subject mv7708 :predicate mv7711 :present "PRESENT")
   (:var mv7708 :isa what)
   (:var mv7711 :isa target-protein :agent mv7707 :has-determiner "THE" :raw-text "targets")
   (:var mv7707 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv7716 :isa be :subject mv7715 :predicate mv7722 :present "PRESENT")
   (:var mv7715 :isa what)
   (:var mv7722 :isa location-of :theme mv7717 :predication mv7720 :modifier mv7721)
   (:var mv7717 :isa pronoun/plural :word "their") (:var mv7720 :isa likely :comparative mv7718)
   (:var mv7718 :isa superlative-quantifier :name "most")
   (:var mv7721 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv7727 :isa polar-question :statement mv7725)
   (:var mv7725 :isa be :subject mv7723 :predicate mv7724)
   (:var mv7723 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv7724 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv7732 :isa polar-question :statement mv7728)
   (:var mv7728 :isa be :subject mv7729 :predicate mv7731)
   (:var mv7729 :isa pronoun/inanimate :word "it")
   (:var mv7731 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?" (:var mv7735 :isa be :subject mv7734 :predicate mv7733 :present "PRESENT")
   (:var mv7734 :isa what)
   (:var mv7733 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv7740 :isa target :object mv7736 :|agent-OR-cause| mv7738 :present "PRESENT" :raw-text
    "target")
   (:var mv7736 :isa what) (:var mv7738 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv7745 :isa regulate :object mv7743 :agent mv7741 :present "PRESENT" :raw-text "regulate")
   (:var mv7743 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7741 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?" (:var mv7751 :isa wh-question :statement mv7750 :var nil :wh what)
   (:var mv7750 :isa in :word "in"))
  ("What are the targets of PLX-4720?"
   (:var mv7754 :isa be :subject mv7753 :predicate mv7756 :present "PRESENT")
   (:var mv7753 :isa what)
   (:var mv7756 :isa target-protein :agent mv7752 :has-determiner "THE" :raw-text "targets")
   (:var mv7752 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv7766 :isa polar-question :statement mv7765)
   (:var mv7765 :isa target :|agent-OR-cause| mv7761 :object mv7764 :raw-text "target")
   (:var mv7761 :isa pronoun/inanimate :word "it")
   (:var mv7764 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv7771 :isa inhibit :agent mv7770 :object mv7775 :present "PRESENT" :raw-text "inhibits")
   (:var mv7770 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv7775 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv7767 mv7768))
   (:var mv7767 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv7768 :isa protein :predication mv7773 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv7773 :isa active))
  ("JAK1 activates STAT3"
   (:var mv7778 :isa bio-activate :agent mv7776 :object mv7777 :present "PRESENT" :raw-text
    "activates")
   (:var mv7776 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv7777 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv7784 :isa want :agent mv7781 :theme mv7794 :present "PRESENT")
   (:var mv7781 :isa interlocutor :name "speaker")
   (:var mv7794 :isa find-out :agent mv7781 :statement mv7791)
   (:var mv7791 :isa wh-question :statement mv7790 :var nil :wh how)
   (:var mv7790 :isa bio-activate :agent mv7779 :object mv7780 :present "PRESENT" :raw-text
    "activates")
   (:var mv7779 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv7780 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv7800 :isa want :agent mv7797 :theme mv7814 :present "PRESENT")
   (:var mv7797 :isa interlocutor :name "speaker")
   (:var mv7814 :isa find-out :agent mv7797 :statement mv7811)
   (:var mv7811 :isa wh-question :statement mv7806 :var nil :wh how)
   (:var mv7806 :isa bio-activate :agent mv7795 :object mv7807 :present "PRESENT" :raw-text
    "activates")
   (:var mv7795 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv7807 :isa protein :cell-type mv7809 :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv7809 :isa cell-type :cell-line mv7796)
   (:var mv7796 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv7819 :isa explicit-suggestion :suggestion mv7816 :marker let-as-directive)
   (:var mv7816 :isa build :artifact mv7818 :present "PRESENT")
   (:var mv7818 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv7821 :isa phosphorylate :agent mv7820 :substrate mv7822 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv7820 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv7822 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv7829 :isa regulate :agent mv7828 :object mv7826 :present "PRESENT" :raw-text "regulate")
   (:var mv7828 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7826 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv7830 :isa upregulate :|agent-OR-cause| mv7832 :object mv7831 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv7832 :isa what)
   (:var mv7831 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv7836 :isa have :possessor mv7834 :thing-possessed mv7838 :modal mv7835)
   (:var mv7834 :isa what)
   (:var mv7838 :isa effect :object mv7833 :affected-process mv7841 :has-determiner "THE" :raw-text
    "effect")
   (:var mv7833 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7841 :isa bio-activate :raw-text "activation") (:var mv7835 :isa can))
  ("Are there any drugs for IL10?" (:var mv7854 :isa polar-question :statement mv7852)
   (:var mv7852 :isa there-exists :value mv7850 :predicate mv7847)
   (:var mv7850 :isa drug :target mv7845 :quantifier mv7849 :raw-text "drugs")
   (:var mv7845 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7849 :isa any :word "any") (:var mv7847 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv7858 :isa gene-transcript-express :agent mv7857 :object mv7855 :present "PRESENT"
    :raw-text "express")
   (:var mv7857 :isa tissue :has-determiner "WHICH")
   (:var mv7855 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv7863 :isa regulate :manner mv7861 :agent mv7859 :object mv7860 :present "PRESENT"
    :raw-text "regulate")
   (:var mv7861 :isa how)
   (:var mv7859 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7860 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv7868 :isa be :subject mv7867 :predicate mv7864 :present "PRESENT")
   (:var mv7867 :isa what)
   (:var mv7864 :isa transcription-factor :predication mv7870 :raw-text "transcription factors")
   (:var mv7870 :isa binding :binder mv7864 :that-rel t :direct-bindee mv7873 :present "PRESENT"
    :raw-text "bind")
   (:var mv7873 :isa gene :has-determiner "THE" :expresses mv7874 :raw-text "genes")
   (:var mv7874 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv7865 mv7866))
   (:var mv7865 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv7866 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv7879 :isa regulate :agent mv7878 :object mv7882 :present "PRESENT" :raw-text "regulate")
   (:var mv7878 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv7882 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv7875 mv7876))
   (:var mv7875 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv7876 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv7886 :isa factor :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv7896 :isa relation :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv7907 :isa be :subject mv7906 :predicate mv7905 :present "PRESENT")
   (:var mv7906 :isa what)
   (:var mv7905 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv7912 :isa polar-question :statement mv7909)
   (:var mv7909 :isa be :subject mv7908 :predicate mv7911)
   (:var mv7908 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv7911 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv7916 :isa transcribe :object mv7914 :agent mv7913 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv7914 :isa what)
   (:var mv7913 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv7925 :isa polar-question :statement mv7923)
   (:var mv7923 :isa there-exists :value mv7921 :predicate mv7919)
   (:var mv7921 :isa drug :target mv7917 :raw-text "drugs")
   (:var mv7917 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv7919 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv7935 :isa wh-question :statement mv7934 :var nil :wh what)
   (:var mv7934 :isa prepositional-phrase :pobj mv7933 :prep "IN")
   (:var mv7933 :isa drug :has-determiner "THE" :modifier mv7930 :modifier mv7932 :raw-text
    "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv7930 :isa literature) (:var mv7932 :isa match-endurant))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv7939 :isa relation :has-determiner "WHAT"))))
