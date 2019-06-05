(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("What genes does mir-128 regulate?"
   (:var mv25894 :isa regulate :object mv25896 :agent mv25895 :present "PRESENT" :raw-text
    "regulate")
   (:var mv25896 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25895 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv25902 :isa regulate :object mv25903 :agent mv25899 :present "PRESENT" :raw-text
    "regulate")
   (:var mv25903 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv25899 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv25905 :isa tell :theme mv25909 :theme mv25906 :present "PRESENT")
   (:var mv25909 :isa involve :theme mv25911 :participant mv25908)
   (:var mv25911 :isa apoptosis :raw-text "apoptosis")
   (:var mv25908 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25906 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv25916 :isa be :subject mv25915 :predicate mv25931 :present "PRESENT")
   (:var mv25915 :isa what)
   (:var mv25931 :isa gene :plural t :predication mv25921 :has-determiner "THE" :raw-text "genes")
   (:var mv25921 :isa have :possessor mv25931 :that-rel t :thing-possessed mv25923 :present
    "PRESENT")
   (:var mv25923 :isa evidence :fact mv25926 :predication mv25922)
   (:var mv25926 :isa regulate :agent mv25914 :progressive mv25925 :raw-text "regulated")
   (:var mv25914 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv25925 :isa be) (:var mv25922 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv25934 :isa be :subject mv25933 :predicate mv25936 :present "PRESENT")
   (:var mv25933 :isa what) (:var mv25936 :isa involve :theme mv25938 :participant mv25935)
   (:var mv25938 :isa apoptosis :raw-text "apoptosis")
   (:var mv25935 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv25942 :isa be :subject mv25941 :predicate mv25944 :present "PRESENT")
   (:var mv25941 :isa what) (:var mv25944 :isa role :process mv25946 :participant mv25943)
   (:var mv25946 :isa apoptosis :raw-text "apoptosis")
   (:var mv25943 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv25950 :isa be :subject mv25949 :predicate mv25952 :present "PRESENT")
   (:var mv25949 :isa what) (:var mv25952 :isa role :process mv25956 :participant mv25951)
   (:var mv25956 :isa regulate :cellular-process mv25954 :raw-text "regulation")
   (:var mv25954 :isa apoptosis :raw-text "apoptotic")
   (:var mv25951 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv25961 :isa be :subject mv25960 :predicate mv25968 :present "PRESENT")
   (:var mv25960 :isa what) (:var mv25968 :isa evidence :statement mv25967 :has-determiner "THE")
   (:var mv25967 :isa target :agent mv25958 :object mv25959 :present "PRESENT" :raw-text "targets")
   (:var mv25958 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid
    "MIMAT0000243")
   (:var mv25959 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv25974 :isa regulate :object mv25975 :agent mv25971 :present "PRESENT" :raw-text
    "regulate")
   (:var mv25975 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv25971 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid
    "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv25981 :isa regulate :object mv25982 :agent mv25978 :present "PRESENT" :raw-text
    "regulate")
   (:var mv25982 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv25978 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid
    "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv25986 :isa be :subject mv25985 :predicate mv25989 :present "PRESENT")
   (:var mv25985 :isa what)
   (:var mv25989 :isa significance :context mv25984 :agent mv25983 :has-determiner "THE" :modifier
    mv25988)
   (:var mv25984 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25983 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25988 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv25997 :isa be :subject mv25996 :predicate mv26000 :present "PRESENT")
   (:var mv25996 :isa what)
   (:var mv26000 :isa significance :result mv25995 :agent mv25994 :has-determiner "THE" :modifier
    mv25999)
   (:var mv25995 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25994 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25999 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv26006 :isa be :subject mv26005 :predicate mv26012 :present "PRESENT")
   (:var mv26005 :isa what) (:var mv26012 :isa has-synonym :plural t :item mv26010)
   (:var mv26010 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv26015 :isa be :subject mv26014 :predicate mv26026 :present "PRESENT")
   (:var mv26014 :isa what)
   (:var mv26026 :isa gene :plural t :predication mv26024 :quantifier mv26016 :raw-text "genes")
   (:var mv26024 :isa mutation :object mv26026 :that-rel t :context mv26013 :present "PRESENT"
    :raw-text "mutated")
   (:var mv26013 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv26016 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv26035 :isa mutation :object mv26034 :context mv26027 :present "PRESENT" :raw-text
    "mutated")
   (:var mv26034 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv26027 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv26049 :isa polar-question :statement mv26047)
   (:var mv26047 :isa bio-activate :agent mv26039 :object mv26037 :raw-text "activate")
   (:var mv26039 :isa phosphorylate :site mv26046 :raw-text "phosphorylation")
   (:var mv26046 :isa residue-on-protein :raw-text "S221" :position mv26044 :amino-acid mv26042)
   (:var mv26044 :isa number :value 221) (:var mv26042 :isa amino-acid :name "serine" :letter "S")
   (:var mv26037 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv26062 :isa polar-question :statement mv26060)
   (:var mv26060 :isa bio-activate :agent mv26052 :object mv26050 :raw-text "activate")
   (:var mv26052 :isa phosphorylate :site mv26059 :raw-text "phosphorylation")
   (:var mv26059 :isa residue-on-protein :raw-text "S222" :position mv26057 :amino-acid mv26055)
   (:var mv26057 :isa number :value 222) (:var mv26055 :isa amino-acid :name "serine" :letter "S")
   (:var mv26050 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv26065 :isa simulate :object mv26069 :present "PRESENT" :raw-text "Simulate")
   (:var mv26069 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv26064
    :component mv26063)
   (:var mv26064 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv26063 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv26071 :isa be :subject mv26070 :predicate mv26079 :present "PRESENT")
   (:var mv26070 :isa what) (:var mv26079 :isa member :plural t :set mv26076 :has-determiner "THE")
   (:var mv26076 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv26081 :isa be :subject mv26080 :predicate mv26089 :present "PRESENT")
   (:var mv26080 :isa what) (:var mv26089 :isa member :plural t :set mv26086 :has-determiner "THE")
   (:var mv26086 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv26091 :isa be :subject mv26090 :predicate mv26099 :present "PRESENT")
   (:var mv26090 :isa what) (:var mv26099 :isa member :plural t :set mv26096 :has-determiner "THE")
   (:var mv26096 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv26101 :isa be :subject mv26100 :predicate mv26113 :present "PRESENT")
   (:var mv26100 :isa what) (:var mv26113 :isa member :plural t :set mv26111 :has-determiner "THE")
   (:var mv26111 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv26116 :isa be :subject mv26115 :predicate mv26124 :present "PRESENT")
   (:var mv26115 :isa what) (:var mv26124 :isa member :plural t :set mv26114 :has-determiner "THE")
   (:var mv26114 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras"
    :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv26126 :isa be :subject mv26125 :predicate mv26129 :present "PRESENT")
   (:var mv26125 :isa what) (:var mv26129 :isa has-name :item mv26132 :quantifier mv26127)
   (:var mv26132 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv26127 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv26136 :isa be :subject mv26135 :predicate mv26139 :present "PRESENT")
   (:var mv26135 :isa what) (:var mv26139 :isa has-name :item mv26134 :quantifier mv26137)
   (:var mv26134 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv26137 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv26147 :isa affect :manner mv26145 :agent mv26143 :object mv26144 :present "PRESENT"
    :raw-text "affect")
   (:var mv26145 :isa how)
   (:var mv26143 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26144 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv26149 :isa list :theme mv26155 :present "PRESENT")
   (:var mv26155 :isa gene :plural t :predication mv26153 :quantifier mv26150 :raw-text "genes")
   (:var mv26153 :isa regulate :object mv26155 :agent mv26148 :past "PAST" :raw-text "regulated")
   (:var mv26148 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26150 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv26159 :isa list :theme mv26170 :present "PRESENT")
   (:var mv26170 :isa gene :plural t :predication mv26165 :quantifier mv26160 :has-determiner "THE"
    :raw-text "genes")
   (:var mv26165 :isa regulate :object mv26170 :agent mv26158 :past "PAST" :raw-text "regulated")
   (:var mv26158 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26160 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv26174 :isa list :theme mv26180 :present "PRESENT")
   (:var mv26180 :isa gene :plural t :predication mv26178 :has-determiner "THE" :raw-text "genes")
   (:var mv26178 :isa regulate :object mv26180 :agent mv26173 :past "PAST" :raw-text "regulated")
   (:var mv26173 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv26185 :isa be :subject mv26184 :predicate mv26200 :present "PRESENT")
   (:var mv26184 :isa what)
   (:var mv26200 :isa regulator :plural t :theme mv26195 :has-determiner "THE" :predication mv26187
    :context mv26188 :raw-text "regulators")
   (:var mv26195 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv26183 mv26194))
   (:var mv26183 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv26194 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv26187 :isa common) (:var mv26188 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv26202 :isa be :subject mv26201 :predicate mv26215 :present "PRESENT")
   (:var mv26201 :isa what)
   (:var mv26215 :isa upstream-segment :plural t :pathwaycomponent mv26211 :has-determiner "THE"
    :predication mv26204 :raw-text "upstreams")
   (:var mv26211 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv26208 mv26210))
   (:var mv26208 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv26210 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv26204 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv26218 :isa be :subject mv26217 :predicate mv26230 :present "PRESENT")
   (:var mv26217 :isa what)
   (:var mv26230 :isa upstream-segment :plural t :pathwaycomponent mv26226 :has-determiner "THE"
    :predication mv26220 :raw-text "upstreams")
   (:var mv26226 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv26216 mv26225))
   (:var mv26216 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv26225 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv26220 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv26233 :isa be :subject mv26232 :predicate mv26240 :present "PRESENT")
   (:var mv26232 :isa what)
   (:var mv26240 :isa gene :plural t :predication mv26238 :has-determiner "THE" :raw-text "genes")
   (:var mv26238 :isa regulate :object mv26240 :that-rel t :agent mv26231 :present "PRESENT"
    :raw-text "regulates")
   (:var mv26231 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv26245 :isa be :subject mv26244 :predicate mv26256 :present "PRESENT")
   (:var mv26244 :isa what)
   (:var mv26256 :isa micro-rna :plural t :predication mv26250 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv26250 :isa regulate :agent mv26256 :that-rel t :object mv26254 :present "PRESENT"
    :raw-text "regulate")
   (:var mv26254 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv26251 mv26252 mv26241 mv26242 mv26243))
   (:var mv26251 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv26252 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26241 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26242 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv26243 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv26259 :isa be :subject mv26258 :predicate mv26270 :present "PRESENT")
   (:var mv26258 :isa what)
   (:var mv26270 :isa micro-rna :plural t :predication mv26264 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv26264 :isa regulate :agent mv26270 :that-rel t :object mv26268 :present "PRESENT"
    :raw-text "regulate")
   (:var mv26268 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv26265 mv26266 mv26257))
   (:var mv26265 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv26266 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26257 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv26272 :isa be :subject mv26271 :predicate mv26280 :present "PRESENT")
   (:var mv26271 :isa what)
   (:var mv26280 :isa regulator :plural t :theme mv26277 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv26277 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv26284 :isa regulate :|affected-process-OR-object| mv26282 :agent mv26281 :organ mv26287
    :present "PRESENT" :raw-text "regulate")
   (:var mv26282 :isa what)
   (:var mv26281 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26287 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv26292 :isa regulate :|affected-process-OR-object| mv26289 :|agent-OR-cause| mv26291
    :organ mv26295 :present "PRESENT" :raw-text "regulate")
   (:var mv26289 :isa what) (:var mv26291 :isa pronoun/inanimate :word "it")
   (:var mv26295 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv26305 :isa regulate :object mv26304 :agent mv26297 :present "PRESENT" :raw-text
    "regulated")
   (:var mv26304 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv26297 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv26317 :isa regulate :object mv26316 :agent mv26315 :present "PRESENT" :raw-text
    "regulated")
   (:var mv26316 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv26315 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv26327 :isa regulate :object mv26326 :agent mv26325 :present "PRESENT" :raw-text
    "regulated")
   (:var mv26326 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv26325 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv26336 :isa regulate :|affected-process-OR-object| mv26332 :agent mv26329 :present
    "PRESENT" :raw-text "regulated")
   (:var mv26332 :isa these :quantifier mv26330 :word "these") (:var mv26330 :isa which)
   (:var mv26329 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv26346 :isa regulate :|affected-process-OR-object| mv26342 :agent mv26339 :present
    "PRESENT" :raw-text "regulated")
   (:var mv26342 :isa these :quantifier mv26340 :word "these") (:var mv26340 :isa which)
   (:var mv26339 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv26353 :isa bio-use :agent mv26355 :object mv26354 :present "PRESENT" :raw-text "use")
   (:var mv26355 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv26354 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv26360 :isa regulate :location mv26358 :agent mv26356 :affected-process mv26362 :present
    "PRESENT" :raw-text "regulate")
   (:var mv26358 :isa where)
   (:var mv26356 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26362 :isa gene-transcript-express :object mv26357 :has-determiner "THE" :raw-text
    "expression")
   (:var mv26357 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv26386 :isa polar-question :statement mv26370)
   (:var mv26370 :isa tell :agent mv26369 :theme mv26385 :beneficiary mv26371 :modal "CAN")
   (:var mv26369 :isa interlocutor :name "hearer")
   (:var mv26385 :isa transcription-factor :plural t :predication mv26383 :quantifier mv26372
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv26383 :isa share :object mv26385 :that-rel t :participant mv26380 :modal "CAN" :raw-text
    "shared")
   (:var mv26380 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv26367 mv26379))
   (:var mv26367 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26379 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26372 :isa all :word "all") (:var mv26371 :isa interlocutor :name "speaker"))
  ("can you tell me which transcription factors are shared by elk1 and srf"
   (:var mv26404 :isa polar-question :statement mv26392)
   (:var mv26392 :isa tell :agent mv26391 :theme mv26402 :theme mv26393 :modal "CAN")
   (:var mv26391 :isa interlocutor :name "hearer")
   (:var mv26402 :isa share :object mv26401 :participant mv26400 :modal "CAN" :raw-text "shared")
   (:var mv26401 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv26400 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv26389 mv26399))
   (:var mv26389 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26399 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26393 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv26406 :isa be :subject mv26405 :predicate mv26414 :present "PRESENT")
   (:var mv26405 :isa what)
   (:var mv26414 :isa regulator :plural t :theme mv26411 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv26411 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv26418 :isa regulate :|affected-process-OR-object| mv26415 :agent mv26417 :present
    "PRESENT" :raw-text "regulate")
   (:var mv26415 :isa what)
   (:var mv26417 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv26420 :isa be :subject mv26419 :predicate mv26421 :present "PRESENT")
   (:var mv26419 :isa what)
   (:var mv26421 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv26428 :isa polar-question :statement mv26424)
   (:var mv26424 :isa involve :object mv26422 :theme mv26426 :past "PAST")
   (:var mv26422 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26426 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?"
   (:var mv26437 :isa polar-question :statement mv26431)
   (:var mv26431 :isa involve :object mv26429 :theme mv26435 :past "PAST")
   (:var mv26429 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26435 :isa regulate :cellular-process mv26433 :raw-text "regulation")
   (:var mv26433 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?"
   (:var mv26445 :isa polar-question :statement mv26440)
   (:var mv26440 :isa involve :object mv26438 :theme mv26442 :past "PAST")
   (:var mv26438 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26442 :isa regulate :affected-process mv26443 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv26443 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv26457 :isa regulate :object mv26456 :agent mv26446 :present "PRESENT" :raw-text
    "regulated")
   (:var mv26456 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv26448 :raw-text
    "genes")
   (:var mv26448 :isa apoptosis :raw-text "apoptotic")
   (:var mv26446 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv26459 :isa list :theme mv26466 :present "PRESENT")
   (:var mv26466 :isa gene :plural t :has-determiner "THE" :cellular-process mv26461 :raw-text
    "genes")
   (:var mv26461 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv26478 :isa involve :object mv26481 :theme mv26476 :present "PRESENT")
   (:var mv26481 :isa gene :plural t :predication mv26471 :has-determiner "WHAT" :raw-text "genes")
   (:var mv26471 :isa regulate :object mv26481 :agent mv26467 :past "PAST" :raw-text "regulated")
   (:var mv26467 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26476 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv26483 :isa list :theme mv26485 :present "PRESENT")
   (:var mv26485 :isa gene :plural t :predication mv26486 :raw-text "genes")
   (:var mv26486 :isa regulate :object mv26485 :agent mv26482 :past "PAST" :raw-text "regulated")
   (:var mv26482 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv26498 :isa involve :object mv26497 :theme mv26496 :present "PRESENT")
   (:var mv26497 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv26496 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv26511 :isa involve :object mv26513 :theme mv26509 :present "PRESENT")
   (:var mv26513 :isa gene :plural t :predication mv26505 :has-determiner "WHAT" :raw-text "genes")
   (:var mv26505 :isa regulate :object mv26513 :that-rel t :agent mv26500 :present "PRESENT"
    :raw-text "regulates")
   (:var mv26500 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26509 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv26515 :isa list :theme mv26521 :present "PRESENT")
   (:var mv26521 :isa gene :plural t :predication mv26519 :has-determiner "THE" :raw-text "genes")
   (:var mv26519 :isa regulate :object mv26521 :agent mv26514 :past "PAST" :raw-text "regulated")
   (:var mv26514 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv26525 :isa list :theme mv26531 :present "PRESENT")
   (:var mv26531 :isa gene :plural t :has-determiner "THE" :predication mv26527 :raw-text "genes")
   (:var mv26527 :isa regulate :object mv26531 :agent mv26524 :raw-text "regulated")
   (:var mv26524 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv26540 :isa regulate :object mv26539 :agent mv26532 :present "PRESENT" :raw-text
    "regulated")
   (:var mv26539 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26532 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv26550 :isa involve :object mv26549 :theme mv26548 :present "PRESENT")
   (:var mv26549 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26548 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv26563 :isa involve :object mv26562 :present "PRESENT")
   (:var mv26562 :isa gene :plural t :has-determiner "WHAT" :predication mv26554 :raw-text "genes")
   (:var mv26554 :isa regulate :object mv26562 :agent mv26552 :raw-text "regulated")
   (:var mv26552 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv26566 :isa let :complement mv26587 :present "PRESENT")
   (:var mv26587 :isa know :agent mv26567 :statement mv26586 :present "PRESENT")
   (:var mv26567 :isa interlocutor :name "speaker")
   (:var mv26586 :isa wh-question :statement mv26581 :wh if)
   (:var mv26581 :isa involve :object mv26585 :theme mv26579 :present "PRESENT")
   (:var mv26585 :isa gene :plural t :quantifier mv26570 :predication mv26575 :has-determiner "THE"
    :raw-text "genes")
   (:var mv26570 :isa any :word "any")
   (:var mv26575 :isa regulate :object mv26585 :agent mv26565 :present "PRESENT" :raw-text
    "regulates")
   (:var mv26565 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26579 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv26589 :isa let :complement mv26611 :present "PRESENT")
   (:var mv26611 :isa know :agent mv26590 :statement mv26610 :present "PRESENT")
   (:var mv26590 :isa interlocutor :name "speaker")
   (:var mv26610 :isa wh-question :statement mv26605 :wh whether)
   (:var mv26605 :isa involve :object mv26609 :theme mv26603 :present "PRESENT")
   (:var mv26609 :isa gene :plural t :quantifier mv26594 :predication mv26599 :has-determiner "THE"
    :raw-text "genes")
   (:var mv26594 :isa any :word "any")
   (:var mv26599 :isa regulate :object mv26609 :agent mv26588 :present "PRESENT" :raw-text
    "regulates")
   (:var mv26588 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26603 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv26630 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv26632 :isa tell :beneficiary mv26633 :present "PRESENT")
   (:var mv26633 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv26643 :isa tell :theme mv26652 :beneficiary mv26644 :present "PRESENT")
   (:var mv26652 :isa wh-question :statement mv26650 :wh if)
   (:var mv26650 :isa involve :object mv26642 :theme mv26649 :present "PRESENT")
   (:var mv26642 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26649 :isa apoptosis :raw-text "apoptosis")
   (:var mv26644 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv26654 :isa tell :theme mv26664 :theme mv26655 :present "PRESENT")
   (:var mv26664 :isa wh-question :statement mv26662 :wh whether)
   (:var mv26662 :isa involve :object mv26653 :theme mv26661 :present "PRESENT")
   (:var mv26653 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26661 :isa apoptosis :raw-text "apoptosis")
   (:var mv26655 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv26667 :isa be :subject mv26666 :predicate mv26679 :present "PRESENT")
   (:var mv26666 :isa what)
   (:var mv26679 :isa gene :plural t :predication mv26677 :predication mv26668 :raw-text "genes")
   (:var mv26677 :isa involve :object mv26679 :that-rel t :theme mv26675 :present "PRESENT")
   (:var mv26675 :isa apoptosis :raw-text "apoptosis")
   (:var mv26668 :isa regulate :object mv26679 :agent mv26665 :raw-text "regulated")
   (:var mv26665 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv26682 :isa be :subject mv26681 :predicate mv26694 :present "PRESENT")
   (:var mv26681 :isa what)
   (:var mv26694 :isa gene :plural t :predication mv26692 :predication mv26683 :raw-text "genes")
   (:var mv26692 :isa involve :object mv26694 :that-rel t :theme mv26690 :present "PRESENT")
   (:var mv26690 :isa apoptosis :raw-text "apoptosis")
   (:var mv26683 :isa regulate :object mv26694 :agent mv26680 :raw-text "regulated")
   (:var mv26680 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv26706 :isa involve :object mv26699 :theme mv26705 :present "PRESENT")
   (:var mv26699 :isa downstream-segment :pathwaycomponent mv26695 :has-determiner "WHAT" :modifier
    mv26698 :raw-text "downstream")
   (:var mv26695 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26698 :isa gene :plural t :raw-text "genes")
   (:var mv26705 :isa apoptosis :raw-text "apoptosis"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv26711 :isa be :subject mv26710 :predicate mv26713 :present "PRESENT")
   (:var mv26710 :isa what)
   (:var mv26713 :isa involve :theme mv26718 :participant mv26709 :has-determiner "THE")
   (:var mv26718 :isa regulate :cellular-process mv26716 :raw-text "regulation")
   (:var mv26716 :isa apoptosis :raw-text "apoptotic")
   (:var mv26709 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv26724 :isa involve :theme mv26726 :object mv26725 :present "PRESENT")
   (:var mv26726 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26725 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv26732 :isa involve :theme mv26734 :object mv26733 :present "PRESENT")
   (:var mv26734 :isa bio-process :plural t :has-determiner "WHAT" :raw-text "processes")
   (:var mv26733 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv26746 :isa involve :object mv26745 :theme mv26743 :present "PRESENT")
   (:var mv26745 :isa gene :plural t :has-determiner "WHICH" :predication mv26737 :raw-text
    "genes")
   (:var mv26737 :isa regulate :object mv26745 :agent mv26735 :raw-text "regulated")
   (:var mv26735 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26743 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv26762 :isa involve :object mv26765 :theme mv26759 :present "PRESENT")
   (:var mv26765 :isa gene :plural t :organ mv26755 :has-determiner "WHICH" :predication mv26750
    :raw-text "genes")
   (:var mv26755 :isa liver :has-determiner "THE")
   (:var mv26750 :isa regulate :object mv26765 :agent mv26748 :raw-text "regulated")
   (:var mv26748 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26759 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv26777 :isa involve :object mv26776 :theme mv26774 :present "PRESENT")
   (:var mv26776 :isa gene :plural t :has-determiner "WHICH" :predication mv26768 :raw-text
    "genes")
   (:var mv26768 :isa regulate :object mv26776 :agent mv26766 :raw-text "regulated")
   (:var mv26766 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26774 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv26781 :isa bio-activate :agent mv26780 :object mv26779 :present "PRESENT" :raw-text
    "activates")
   (:var mv26780 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv26779 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv26783 :isa bio-activate :agent mv26782 :object mv26784 :present "PRESENT" :raw-text
    "activates")
   (:var mv26782 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv26784 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv26787 :isa phosphorylate :agent mv26785 :substrate mv26786 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv26785 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv26786 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv26790 :isa dephosphorylate :agent mv26788 :substrate mv26789 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv26788 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv26789 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv26792 :isa upregulate :agent mv26791 :object mv26793 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv26791 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26793 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv26797 :isa binding :binder mv26796 :direct-bindee mv26800 :present "PRESENT" :raw-text
    "binds")
   (:var mv26796 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv26800 :isa protein :has-determiner "THE" :modifier mv26795 :modifier mv26799 :raw-text
    "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv26795 :isa growth-factor :raw-text "growth factor")
   (:var mv26799 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv26801 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv26807 :isa binding :binder mv26814 :direct-bindee mv26815 :present "PRESENT" :raw-text
    "binds")
   (:var mv26814 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv26805
    :component mv26804)
   (:var mv26805 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv26804 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv26815 :isa bio-complex :quantifier mv26808 :raw-text "EGFR-EGF" :component mv26810
    :component mv26809)
   (:var mv26808 :isa another :word "another")
   (:var mv26810 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv26809 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv26821 :isa binding :binder mv26823 :direct-bindee mv26816 :present "PRESENT" :raw-text
    "binds")
   (:var mv26823 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv26818
    :component mv26818)
   (:var mv26818 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv26816 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv26824 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv26830 :isa binding :binder mv26826 :direct-bindee mv26827 :present "PRESENT" :raw-text
    "binds")
   (:var mv26826 :isa protein :predication mv26829 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv26829 :isa binding :direct-bindee mv26826 :binder mv26828 :raw-text "bound")
   (:var mv26828 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv26827 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv26834 :isa binding :binder mv26832 :direct-bindee mv26835 :present "PRESENT" :raw-text
    "binds")
   (:var mv26832 :isa protein :predication mv26833 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv26833 :isa binding :direct-bindee mv26832 :binder mv26831 :raw-text "bound")
   (:var mv26831 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv26835 :isa protein :predication mv26842 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv26842 :isa binding :direct-bindee mv26835 :that-rel t :bindee mv26841 :present "PRESENT"
    :negation mv26838 :raw-text "bound")
   (:var mv26841 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv26838 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv26847 :isa binding :binder mv26846 :direct-bindee mv26848 :present "PRESENT" :raw-text
    "binds")
   (:var mv26846 :isa protein :predication mv26845 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv26845 :isa binding :direct-bindee mv26846 :binder mv26844 :raw-text "bound")
   (:var mv26844 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv26848 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv26858 :isa binding :binder mv26852 :direct-bindee mv26859 :present "PRESENT" :raw-text
    "binds")
   (:var mv26852 :isa protein :predication mv26860 :predication mv26851 :raw-text "NRAS" :uid
    "UP:P01111" :name "RASN_HUMAN")
   (:var mv26860 :isa binding :direct-bindee mv26852 :that-rel t :bindee mv26849 :present "PRESENT"
    :negation mv26855 :raw-text "bound")
   (:var mv26849 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv26855 :isa not :word "not")
   (:var mv26851 :isa binding :direct-bindee mv26852 :binder mv26850 :raw-text "bound")
   (:var mv26850 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv26859 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv26862 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv26867 :isa affect :manner mv26864 :agent mv26866 :object mv26863 :present "PRESENT"
    :raw-text "affect")
   (:var mv26864 :isa how)
   (:var mv26866 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv26863 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv26876 :isa explicit-suggestion :suggestion mv26870 :marker let-as-directive)
   (:var mv26870 :isa highlight :theme mv26872 :present "PRESENT")
   (:var mv26872 :isa downstream-segment :pathwaycomponent mv26869 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv26869 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv26885 :isa explicit-suggestion :suggestion mv26879 :marker let-as-directive)
   (:var mv26879 :isa move-something-somewhere :goal mv26883 :theme mv26878 :present "PRESENT")
   (:var mv26883 :isa bottom :has-determiner "THE")
   (:var mv26878 :isa protein :predication mv26880 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv26880 :isa phosphorylate :substrate mv26878 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv26894 :isa explicit-suggestion :suggestion mv26890 :marker let-as-directive)
   (:var mv26890 :isa put-something-somewhere :theme mv26887 :present "PRESENT")
   (:var mv26887 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv26902 :isa explicit-suggestion :suggestion mv26897 :marker let-as-directive)
   (:var mv26897 :isa show :at-relative-location mv26900 :|statement-OR-theme| mv26896 :present
    "PRESENT")
   (:var mv26900 :isa top-qua-location :has-determiner "THE")
   (:var mv26896 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv26913 :isa polar-question :statement mv26911)
   (:var mv26911 :isa decrease :agent mv26903 :object mv26907 :raw-text "decrease")
   (:var mv26903 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26907 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv26928 :isa polar-question :statement mv26925)
   (:var mv26925 :isa decrease :agent mv26914 :|affected-process-OR-object| mv26919 :raw-text
    "decrease")
   (:var mv26914 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26919 :isa bio-amount :measured-item mv26921 :has-determiner "THE" :raw-text "amount")
   (:var mv26921 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS decrease ELK1 in the model?" (:var mv26939 :isa polar-question :statement mv26937)
   (:var mv26937 :isa decrease :agent mv26931 :object mv26929 :raw-text "decrease")
   (:var mv26931 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv26929 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv26962 :isa polar-question :statement mv26961)
   (:var mv26961 :isa event-relation :subordinated-event mv26959 :event mv26956)
   (:var mv26959 :isa wh-question :statement mv26957 :wh if)
   (:var mv26957 :isa increase :|agent-OR-cause| mv26945 :level mv26955
    :|affected-process-OR-object| mv26949 :raw-text "increase")
   (:var mv26945 :isa interlocutor :name "person-and-machine")
   (:var mv26955 :isa measurement :number mv26952) (:var mv26952 :isa number :value 10)
   (:var mv26949 :isa bio-amount :measured-item mv26940 :has-determiner "THE" :raw-text "amount")
   (:var mv26940 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26956 :isa vanish :agent mv26942 :raw-text "vanish")
   (:var mv26942 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv26987 :isa polar-question :statement mv26986)
   (:var mv26986 :isa event-relation :subordinated-event mv26984 :event mv26980)
   (:var mv26984 :isa wh-question :statement mv26981 :wh if)
   (:var mv26981 :isa increase :|agent-OR-cause| mv26968 :|multiplier-OR-cause| mv26979
    :|affected-process-OR-object| mv26972 :raw-text "increase")
   (:var mv26968 :isa interlocutor :name "person-and-machine")
   (:var mv26979 :isa measurement :number mv26976) (:var mv26976 :isa number :value 10)
   (:var mv26972 :isa bio-amount :measured-item mv26963 :has-determiner "THE" :raw-text "amount")
   (:var mv26963 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26980 :isa vanish :agent mv26965 :raw-text "vanish")
   (:var mv26965 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv27009 :isa polar-question :statement mv27008)
   (:var mv27008 :isa event-relation :subordinated-event mv27006 :event mv27003)
   (:var mv27006 :isa wh-question :statement mv27004 :wh if)
   (:var mv27004 :isa increase :|agent-OR-cause| mv26994 :|multiplier-OR-cause| mv27002 :object
    mv26989 :raw-text "increase")
   (:var mv26994 :isa interlocutor :name "person-and-machine")
   (:var mv27002 :isa measurement :number mv26999) (:var mv26999 :isa number :value 10)
   (:var mv26989 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv27003 :isa vanish :agent mv26988 :raw-text "vanish")
   (:var mv26988 :isa protein :predication mv26991 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv26991 :isa phosphorylate :substrate mv26988 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv27035 :isa polar-question :statement mv27034)
   (:var mv27034 :isa event-relation :subordinated-event mv27032 :event mv27028)
   (:var mv27032 :isa wh-question :statement mv27029 :wh if)
   (:var mv27029 :isa increase :|agent-OR-cause| mv27016 :|multiplier-OR-cause| mv27027
    :|affected-process-OR-object| mv27020 :raw-text "increase")
   (:var mv27016 :isa interlocutor :name "person-and-machine")
   (:var mv27027 :isa measurement :number mv27024) (:var mv27024 :isa number :value 10)
   (:var mv27020 :isa bio-amount :measured-item mv27011 :has-determiner "THE" :raw-text "amount")
   (:var mv27011 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv27028 :isa vanish :agent mv27010 :raw-text "vanish")
   (:var mv27010 :isa protein :predication mv27013 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27013 :isa phosphorylate :substrate mv27010 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv27047 :isa polar-question :statement mv27045)
   (:var mv27045 :isa increase :cause mv27039 :adverb mv27042 :raw-text "increase")
   (:var mv27039 :isa bio-amount :measured-item mv27036 :has-determiner "THE" :raw-text "amount")
   (:var mv27036 :isa protein :predication mv27041 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27041 :isa phosphorylate :substrate mv27036 :raw-text "phosphorylated")
   (:var mv27042 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?"
   (:var mv27057 :isa polar-question :statement mv27056)
   (:var mv27056 :isa copular-predication :item mv27048 :value mv27054 :predicate mv27050)
   (:var mv27048 :isa protein :predication mv27051 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv27051 :isa binding :direct-bindee mv27048 :bindee mv27049 :past "PAST" :raw-text
    "bound")
   (:var mv27049 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv27054 :isa high :adverb mv27053) (:var mv27053 :isa eventually :name "eventually")
   (:var mv27050 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv27066 :isa polar-question :statement mv27065)
   (:var mv27065 :isa copular-predication :item mv27058 :value mv27063 :predicate mv27060)
   (:var mv27058 :isa protein :predication mv27061 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27061 :isa binding :direct-bindee mv27058 :bindee mv27059 :past "PAST" :raw-text
    "bound")
   (:var mv27059 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv27063 :isa transient) (:var mv27060 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv27073 :isa polar-question :statement mv27072)
   (:var mv27072 :isa sustained :participant mv27068 :past "PAST")
   (:var mv27068 :isa protein :predication mv27070 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv27070 :isa binding :direct-bindee mv27068 :binder mv27067 :raw-text "bound")
   (:var mv27067 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv27080 :isa polar-question :statement mv27079)
   (:var mv27079 :isa copular-predication :item mv27074 :value mv27078 :predicate mv27075)
   (:var mv27074 :isa protein :predication mv27076 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27076 :isa phosphorylate :substrate mv27074 :raw-text "phosphorylated")
   (:var mv27078 :isa high :adverb mv27077) (:var mv27077 :isa always :name "always")
   (:var mv27075 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv27087 :isa polar-question :statement mv27086)
   (:var mv27086 :isa copular-predication :item mv27081 :value mv27085 :predicate mv27082)
   (:var mv27081 :isa protein :predication mv27083 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27083 :isa phosphorylate :substrate mv27081 :raw-text "phosphorylated")
   (:var mv27085 :isa high :adverb mv27084) (:var mv27084 :isa eventually :name "eventually")
   (:var mv27082 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv27094 :isa polar-question :statement mv27093)
   (:var mv27093 :isa copular-predication :item mv27088 :value mv27092 :predicate mv27089)
   (:var mv27088 :isa protein :predication mv27090 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27090 :isa phosphorylate :substrate mv27088 :raw-text "phosphorylated")
   (:var mv27092 :isa high :adverb mv27091) (:var mv27091 :isa ever :name "ever")
   (:var mv27089 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv27104 :isa polar-question :statement mv27103)
   (:var mv27103 :isa copular-predication :item mv27095 :value mv27098 :predicate mv27096)
   (:var mv27095 :isa protein :predication mv27097 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27097 :isa phosphorylate :substrate mv27095 :raw-text "phosphorylated")
   (:var mv27098 :isa high) (:var mv27096 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv27110 :isa polar-question :statement mv27109)
   (:var mv27109 :isa copular-predication :item mv27105 :value mv27108 :predicate mv27106)
   (:var mv27105 :isa protein :predication mv27107 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27107 :isa phosphorylate :substrate mv27105 :raw-text "phosphorylated")
   (:var mv27108 :isa high) (:var mv27106 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv27121 :isa polar-question :statement mv27115)
   (:var mv27115 :isa sustained :theme mv27111 :level mv27119 :past "PAST")
   (:var mv27111 :isa protein :predication mv27113 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27113 :isa phosphorylate :substrate mv27111 :raw-text "phosphorylated")
   (:var mv27119 :isa level :has-determiner "A" :predication mv27118 :raw-text "level")
   (:var mv27118 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv27127 :isa polar-question :statement mv27126)
   (:var mv27126 :isa sustained :participant mv27122 :past "PAST")
   (:var mv27122 :isa protein :predication mv27124 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27124 :isa phosphorylate :substrate mv27122 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv27133 :isa polar-question :statement mv27132)
   (:var mv27132 :isa copular-predication :item mv27128 :value mv27131 :predicate mv27129)
   (:var mv27128 :isa protein :predication mv27130 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27130 :isa phosphorylate :substrate mv27128 :raw-text "phosphorylated")
   (:var mv27131 :isa transient) (:var mv27129 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv27144 :isa polar-question :statement mv27143)
   (:var mv27143 :isa copular-predication :item mv27142 :value mv27140 :predicate mv27136)
   (:var mv27142 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv27135
    :component mv27134)
   (:var mv27135 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv27134 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv27140 :isa high :adverb mv27139) (:var mv27139 :isa ever :name "ever")
   (:var mv27136 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv27153 :isa polar-question :statement mv27150)
   (:var mv27150 :isa bio-form :agent mv27152 :past "PAST" :raw-text "formed")
   (:var mv27152 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv27146
    :component mv27145)
   (:var mv27146 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv27145 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv27176 :isa polar-question :statement mv27175)
   (:var mv27175 :isa event-relation :subordinated-event mv27171 :event mv27173)
   (:var mv27171 :isa wh-question :statement mv27165 :wh if)
   (:var mv27165 :isa increase :|agent-OR-cause| mv27163 :level mv27170 :object mv27154 :present
    "PRESENT" :raw-text "increase")
   (:var mv27163 :isa interlocutor :name "person-and-machine")
   (:var mv27170 :isa measurement :number mv27167) (:var mv27167 :isa number :value 10)
   (:var mv27154 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv27173 :isa copular-predication :item mv27157 :value mv27161 :predicate mv27155)
   (:var mv27157 :isa bio-amount :measured-item mv27159 :has-determiner "THE" :raw-text "amount")
   (:var mv27159 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv27161 :isa low :adverb mv27160) (:var mv27160 :isa always :name "always")
   (:var mv27155 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv27201 :isa polar-question :statement mv27200)
   (:var mv27200 :isa event-relation :subordinated-event mv27196 :event mv27198)
   (:var mv27196 :isa wh-question :statement mv27188 :wh if)
   (:var mv27188 :isa increase :|agent-OR-cause| mv27186 :|multiplier-OR-cause| mv27194 :object
    mv27177 :present "PRESENT" :raw-text "increase")
   (:var mv27186 :isa interlocutor :name "person-and-machine")
   (:var mv27194 :isa measurement :number mv27191) (:var mv27191 :isa number :value 100)
   (:var mv27177 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv27198 :isa copular-predication :item mv27180 :value mv27184 :predicate mv27178)
   (:var mv27180 :isa bio-amount :measured-item mv27182 :has-determiner "THE" :raw-text "amount")
   (:var mv27182 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv27184 :isa low :adverb mv27183) (:var mv27183 :isa always :name "always")
   (:var mv27178 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv27228 :isa polar-question :statement mv27227)
   (:var mv27227 :isa event-relation :subordinated-event mv27223 :event mv27225)
   (:var mv27223 :isa wh-question :statement mv27213 :wh if)
   (:var mv27213 :isa increase :|agent-OR-cause| mv27211 :level mv27221
    :|affected-process-OR-object| mv27215 :present "PRESENT" :raw-text "increase")
   (:var mv27211 :isa interlocutor :name "person-and-machine")
   (:var mv27221 :isa measurement :number mv27218) (:var mv27218 :isa number :value 100)
   (:var mv27215 :isa bio-amount :measured-item mv27202 :has-determiner "THE" :raw-text "amount")
   (:var mv27202 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv27225 :isa copular-predication :item mv27205 :value mv27209 :predicate mv27203)
   (:var mv27205 :isa bio-amount :measured-item mv27207 :has-determiner "THE" :raw-text "amount")
   (:var mv27207 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv27209 :isa high :adverb mv27208) (:var mv27208 :isa ever :name "ever")
   (:var mv27203 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv27257 :isa polar-question :statement mv27256)
   (:var mv27256 :isa event-relation :subordinated-event mv27252 :event mv27254)
   (:var mv27252 :isa wh-question :statement mv27240 :wh if)
   (:var mv27240 :isa increase :|agent-OR-cause| mv27238 :|multiplier-OR-cause| mv27249
    :|affected-process-OR-object| mv27242 :present "PRESENT" :raw-text "increase")
   (:var mv27238 :isa interlocutor :name "person-and-machine")
   (:var mv27249 :isa measurement :number mv27246) (:var mv27246 :isa number :value 100)
   (:var mv27242 :isa bio-amount :measured-item mv27229 :has-determiner "THE" :raw-text "amount")
   (:var mv27229 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv27254 :isa copular-predication :item mv27232 :value mv27236 :predicate mv27230)
   (:var mv27232 :isa bio-amount :measured-item mv27234 :has-determiner "THE" :raw-text "amount")
   (:var mv27234 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv27236 :isa high :adverb mv27235) (:var mv27235 :isa ever :name "ever")
   (:var mv27230 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv27267 :isa polar-question :statement mv27263)
   (:var mv27263 :isa phosphorylate :cause mv27261 :past "PAST" :raw-text "phosphorylated")
   (:var mv27261 :isa bio-amount :measured-item mv27258 :has-determiner "THE" :raw-text "amount")
   (:var mv27258 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv27278 :isa polar-question :statement mv27277)
   (:var mv27277 :isa copular-predication :item mv27271 :value mv27275 :predicate mv27269)
   (:var mv27271 :isa bio-amount :measured-item mv27268 :has-determiner "THE" :raw-text "amount")
   (:var mv27268 :isa protein :predication mv27273 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27273 :isa phosphorylate :substrate mv27268 :raw-text "phosphorylated")
   (:var mv27275 :isa high :adverb mv27274) (:var mv27274 :isa eventually :name "eventually")
   (:var mv27269 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv27289 :isa polar-question :statement mv27288)
   (:var mv27288 :isa copular-predication :item mv27282 :value mv27286 :predicate mv27280)
   (:var mv27282 :isa bio-amount :measured-item mv27279 :has-determiner "THE" :raw-text "amount")
   (:var mv27279 :isa protein :predication mv27284 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27284 :isa phosphorylate :substrate mv27279 :raw-text "phosphorylated")
   (:var mv27286 :isa high :adverb mv27285) (:var mv27285 :isa ever :name "ever")
   (:var mv27280 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv27300 :isa polar-question :statement mv27298)
   (:var mv27298 :isa increase :cause mv27293 :adverb mv27296 :raw-text "increasing")
   (:var mv27293 :isa bio-amount :measured-item mv27290 :has-determiner "THE" :raw-text "amount")
   (:var mv27290 :isa protein :predication mv27295 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27295 :isa phosphorylate :substrate mv27290 :raw-text "phosphorylated")
   (:var mv27296 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv27310 :isa polar-question :statement mv27309)
   (:var mv27309 :isa copular-predication :item mv27304 :value mv27307 :predicate mv27302)
   (:var mv27304 :isa bio-amount :measured-item mv27301 :has-determiner "THE" :raw-text "amount")
   (:var mv27301 :isa protein :predication mv27306 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27306 :isa phosphorylate :substrate mv27301 :raw-text "phosphorylated")
   (:var mv27307 :isa high) (:var mv27302 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv27321 :isa polar-question :statement mv27320)
   (:var mv27320 :isa copular-predication :item mv27314 :value mv27318 :predicate mv27312)
   (:var mv27314 :isa bio-amount :measured-item mv27311 :has-determiner "THE" :raw-text "amount")
   (:var mv27311 :isa protein :predication mv27316 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27316 :isa phosphorylate :substrate mv27311 :raw-text "phosphorylated")
   (:var mv27318 :isa high :adverb mv27317) (:var mv27317 :isa sometimes) (:var mv27312 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv27336 :isa polar-question :statement mv27329)
   (:var mv27329 :isa sustained :theme mv27325 :level mv27333 :past "PAST")
   (:var mv27325 :isa bio-amount :measured-item mv27322 :has-determiner "THE" :raw-text "amount")
   (:var mv27322 :isa protein :predication mv27327 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27327 :isa phosphorylate :substrate mv27322 :raw-text "phosphorylated")
   (:var mv27333 :isa level :has-determiner "A" :predication mv27332 :raw-text "level")
   (:var mv27332 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv27346 :isa polar-question :statement mv27344)
   (:var mv27344 :isa sustained :participant mv27340 :past "PAST")
   (:var mv27340 :isa bio-amount :measured-item mv27337 :has-determiner "THE" :raw-text "amount")
   (:var mv27337 :isa protein :predication mv27342 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27342 :isa phosphorylate :substrate mv27337 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv27356 :isa polar-question :statement mv27355)
   (:var mv27355 :isa copular-predication :item mv27350 :value mv27353 :predicate mv27348)
   (:var mv27350 :isa bio-amount :measured-item mv27347 :has-determiner "THE" :raw-text "amount")
   (:var mv27347 :isa protein :predication mv27352 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27352 :isa phosphorylate :substrate mv27347 :raw-text "phosphorylated")
   (:var mv27353 :isa transient) (:var mv27348 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv27367 :isa polar-question :statement mv27365)
   (:var mv27365 :isa copular-predication :item mv27360 :value mv27364 :predicate mv27363)
   (:var mv27360 :isa bio-amount :measured-item mv27357 :has-determiner "THE" :raw-text "amount")
   (:var mv27357 :isa protein :predication mv27362 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27362 :isa phosphorylate :substrate mv27357 :raw-text "phosphorylated")
   (:var mv27364 :isa high) (:var mv27363 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv27390 :isa polar-question :statement mv27389)
   (:var mv27389 :isa event-relation :subordinated-event mv27386 :event mv27387)
   (:var mv27386 :isa wh-question :statement mv27376 :wh if)
   (:var mv27376 :isa increase :|agent-OR-cause| mv27374 :level mv27384
    :|affected-process-OR-object| mv27378 :present "PRESENT" :raw-text "increase")
   (:var mv27374 :isa interlocutor :name "person-and-machine")
   (:var mv27384 :isa measurement :number mv27381) (:var mv27381 :isa number :value 100)
   (:var mv27378 :isa bio-amount :measured-item mv27369 :has-determiner "THE" :raw-text "amount")
   (:var mv27369 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv27387 :isa copular-predication :item mv27368 :value mv27372 :predicate mv27370)
   (:var mv27368 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv27372 :isa low :adverb mv27371) (:var mv27371 :isa eventually :name "eventually")
   (:var mv27370 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv27417 :isa polar-question :statement mv27416)
   (:var mv27416 :isa event-relation :subordinated-event mv27413 :event mv27414)
   (:var mv27413 :isa wh-question :statement mv27410 :wh if)
   (:var mv27410 :isa increase :|affected-process-OR-object| mv27399 :|multiplier-OR-cause| mv27408
    :raw-text "increased")
   (:var mv27399 :isa bio-amount :measured-item mv27392 :has-determiner "THE" :raw-text "amount")
   (:var mv27392 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv27408 :isa measurement :number mv27405) (:var mv27405 :isa number :value 100)
   (:var mv27414 :isa copular-predication :item mv27391 :value mv27396 :predicate mv27393)
   (:var mv27391 :isa protein :predication mv27394 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv27394 :isa active) (:var mv27396 :isa low :adverb mv27395)
   (:var mv27395 :isa eventually :name "eventually") (:var mv27393 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv27444 :isa polar-question :statement mv27443)
   (:var mv27443 :isa event-relation :subordinated-event mv27439 :event mv27441)
   (:var mv27439 :isa wh-question :statement mv27429 :wh if)
   (:var mv27429 :isa increase :|agent-OR-cause| mv27427 :level mv27437
    :|affected-process-OR-object| mv27431 :present "PRESENT" :raw-text "increase")
   (:var mv27427 :isa interlocutor :name "person-and-machine")
   (:var mv27437 :isa measurement :number mv27434) (:var mv27434 :isa number :value 100)
   (:var mv27431 :isa bio-amount :measured-item mv27419 :has-determiner "THE" :raw-text "amount")
   (:var mv27419 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv27441 :isa copular-predication :item mv27422 :value mv27425 :predicate mv27420)
   (:var mv27422 :isa bio-amount :measured-item mv27418 :has-determiner "THE" :raw-text "amount")
   (:var mv27418 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv27425 :isa low :adverb mv27424) (:var mv27424 :isa eventually :name "eventually")
   (:var mv27420 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv27472 :isa polar-question :statement mv27471)
   (:var mv27471 :isa event-relation :subordinated-event mv27467 :event mv27469)
   (:var mv27467 :isa wh-question :statement mv27457 :wh if)
   (:var mv27457 :isa increase :|agent-OR-cause| mv27455 :level mv27465
    :|affected-process-OR-object| mv27459 :present "PRESENT" :raw-text "increase")
   (:var mv27455 :isa interlocutor :name "person-and-machine")
   (:var mv27465 :isa measurement :number mv27462) (:var mv27462 :isa number :value 100)
   (:var mv27459 :isa bio-amount :measured-item mv27446 :has-determiner "THE" :raw-text "amount")
   (:var mv27446 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv27469 :isa copular-predication :item mv27449 :value mv27453 :predicate mv27447)
   (:var mv27449 :isa bio-amount :measured-item mv27445 :has-determiner "THE" :raw-text "amount")
   (:var mv27445 :isa protein :predication mv27451 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv27451 :isa active) (:var mv27453 :isa low :adverb mv27452)
   (:var mv27452 :isa always :name "always") (:var mv27447 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv27482 :isa explicit-suggestion :suggestion mv27476 :marker let-as-directive)
   (:var mv27476 :isa move-something-somewhere :at-relative-location mv27479 :theme mv27480
    :present "PRESENT")
   (:var mv27479 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv27480 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv27474 mv27475))
   (:var mv27474 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv27475 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv27485 :isa phosphorylate :agent mv27483 :substrate mv27484 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv27483 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv27484 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv27486 :isa move-something-somewhere :at-relative-location mv27489 :theme mv27491
    :present "PRESENT")
   (:var mv27489 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv27491 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv27494 :isa phosphorylate :agent mv27492 :substrate mv27493 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv27492 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv27493 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv27504 :isa explicit-suggestion :suggestion mv27497 :marker let-as-directive)
   (:var mv27497 :isa highlight :theme mv27499 :present "PRESENT")
   (:var mv27499 :isa upstream-segment :pathwaycomponent mv27496 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv27496 :isa protein :predication mv27502 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27502 :isa phosphorylate :substrate mv27496 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv27513 :isa explicit-suggestion :suggestion mv27507 :marker let-as-directive)
   (:var mv27507 :isa show :at-relative-location mv27511 :|statement-OR-theme| mv27506 :present
    "PRESENT")
   (:var mv27511 :isa top-qua-location :has-determiner "THE")
   (:var mv27506 :isa protein :predication mv27508 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv27508 :isa phosphorylate :substrate mv27506 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv27526 :isa explicit-suggestion :suggestion mv27516 :marker let-as-directive)
   (:var mv27516 :isa show :at-relative-location mv27523 :|statement-OR-theme| mv27518 :present
    "PRESENT")
   (:var mv27523 :isa top-qua-location :has-determiner "THE")
   (:var mv27518 :isa downstream-segment :pathwaycomponent mv27515 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv27515 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv27537 :isa explicit-suggestion :suggestion mv27528 :marker let-as-directive)
   (:var mv27528 :isa move-something-somewhere :goal mv27534 :theme mv27535 :present "PRESENT")
   (:var mv27534 :isa top-qua-location :has-determiner "THE")
   (:var mv27535 :isa element :plural t :modifier mv27529)
   (:var mv27529 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv27542 :isa affect :manner mv27539 :agent mv27541 :object mv27538 :present "PRESENT"
    :raw-text "affect")
   (:var mv27539 :isa how)
   (:var mv27541 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv27538 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv27546 :isa affect :manner mv27544 :agent mv27543 :object mv27547 :present "PRESENT"
    :raw-text "affect")
   (:var mv27544 :isa how)
   (:var mv27543 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv27547 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv27550 :isa be :subject mv27549 :predicate mv27552 :present "PRESENT")
   (:var mv27549 :isa what) (:var mv27552 :isa path :endpoints mv27556 :has-determiner "THE")
   (:var mv27556 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv27554 mv27548))
   (:var mv27554 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv27548 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv27561 :isa affect :manner mv27559 :agent mv27558 :object mv27562 :present "PRESENT"
    :raw-text "affect")
   (:var mv27559 :isa how)
   (:var mv27558 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv27562 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv27567 :isa affect :manner mv27565 :agent mv27563 :object mv27564 :present "PRESENT"
    :raw-text "affect")
   (:var mv27565 :isa how)
   (:var mv27563 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv27564 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv27572 :isa affect :manner mv27569 :agent mv27571 :object mv27568 :present "PRESENT"
    :raw-text "affect")
   (:var mv27569 :isa how)
   (:var mv27571 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv27568 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv27576 :isa affect :manner mv27573 :agent mv27575 :object mv27577 :present "PRESENT"
    :raw-text "affect")
   (:var mv27573 :isa how)
   (:var mv27575 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv27577 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv27584 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes"))
  ("What pathways affect BRAF?"
   (:var mv27588 :isa affect :agent mv27590 :object mv27589 :present "PRESENT" :raw-text "affect")
   (:var mv27590 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv27589 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv27594 :isa bio-activate :agent mv27596 :object mv27595 :present "PRESENT" :raw-text
    "activate")
   (:var mv27596 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv27595 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv27605 :isa explicit-suggestion :suggestion mv27600 :marker let-as-directive)
   (:var mv27600 :isa learning :context mv27599 :statement mv27598 :present "PRESENT")
   (:var mv27599 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv27598 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What is its relationship with BRAF?"
   (:var mv27607 :isa be :subject mv27606 :predicate mv27609 :present "PRESENT")
   (:var mv27606 :isa what) (:var mv27609 :isa relationship :patient mv27611 :modifier mv27608)
   (:var mv27611 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv27608 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv27615 :isa be :subject mv27614 :predicate mv27617 :present "PRESENT")
   (:var mv27614 :isa what) (:var mv27617 :isa relationship :patient mv27613 :modifier mv27616)
   (:var mv27613 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv27616 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv27622 :isa phosphorylate :agent mv27620 :substrate mv27621 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv27620 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv27621 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv27624 :isa what))
  ("Let's stop learning about AKT1." (:var mv27632 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv27641 :isa be :subject mv27640 :predicate mv27644 :present "PRESENT")
   (:var mv27640 :isa what)
   (:var mv27644 :isa response :beneficiary mv27653 :has-determiner "THE" :modifier mv27643
    :raw-text "response")
   (:var mv27653 :isa cell-type :plural t :mutation mv27651)
   (:var mv27651 :isa alter :plural t :|agent-OR-object| mv27639 :raw-text "alterations")
   (:var mv27639 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv27643 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv27657 :isa be :subject mv27656 :predicate mv27660 :present "PRESENT")
   (:var mv27656 :isa what)
   (:var mv27660 :isa response :cell-type mv27669 :has-determiner "THE" :modifier mv27659 :raw-text
    "response")
   (:var mv27669 :isa cell-type :plural t :mutation mv27667)
   (:var mv27667 :isa alter :plural t :|agent-OR-object| mv27655 :raw-text "alterations")
   (:var mv27655 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv27659 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv27672 :isa be :subject mv27671 :predicate mv27675 :present "PRESENT")
   (:var mv27671 :isa what)
   (:var mv27675 :isa frequency :context mv27679 :measured-item mv27677 :has-determiner "THE"
    :measured-item mv27674 :raw-text "frequency")
   (:var mv27679 :isa glioblastoma)
   (:var mv27677 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv27674 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv27685 :isa be :subject mv27684 :predicate mv27688 :present "PRESENT")
   (:var mv27684 :isa what)
   (:var mv27688 :isa frequency :context mv27683 :measured-item mv27682 :has-determiner "THE"
    :measured-item mv27687 :raw-text "frequency")
   (:var mv27683 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv27682 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv27687 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv27694 :isa show :|statement-OR-theme| mv27709 :beneficiary mv27695 :present "PRESENT")
   (:var mv27709 :isa mutation :plural t :context mv27693 :object mv27704 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv27693 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv27704 :isa collection :raw-text "PTEN and BRAF" :type protein :number 2 :items
    (mv27700 mv27702))
   (:var mv27700 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv27702 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv27695 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv27711 :isa show :|statement-OR-theme| mv27723 :beneficiary mv27712 :present "PRESENT")
   (:var mv27723 :isa mutation :plural t :context mv27710 :object mv27717 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv27710 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv27717 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv27712 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv27726 :isa be :subject mv27725 :predicate mv27737 :present "PRESENT")
   (:var mv27725 :isa what)
   (:var mv27737 :isa mutation :plural t :context mv27724 :object mv27731 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv27724 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv27731 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv27740 :isa be :subject mv27739 :predicate mv27752 :present "PRESENT")
   (:var mv27739 :isa what) (:var mv27752 :isa quality-predicate :item mv27750 :attribute mv27746)
   (:var mv27750 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv27738 mv27749))
   (:var mv27738 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv27749 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv27746 :isa location-of :has-determiner "THE" :predication mv27744 :modifier mv27745)
   (:var mv27744 :isa likely :comparative mv27742)
   (:var mv27742 :isa superlative-quantifier :name "most")
   (:var mv27745 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv27768 :isa polar-question :statement mv27763)
   (:var mv27763 :isa there-exists :value mv27767 :predicate mv27755)
   (:var mv27767 :isa upstream-segment :plural t :pathwaycomponent mv27764 :predication mv27757
    :raw-text "upstreams")
   (:var mv27764 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv27753 mv27762))
   (:var mv27753 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv27762 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv27757 :isa common) (:var mv27755 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv27772 :isa be :subject mv27771 :predicate mv27784 :present "PRESENT")
   (:var mv27771 :isa what)
   (:var mv27784 :isa upstream-segment :plural t :pathwaycomponent mv27780 :has-determiner "THE"
    :predication mv27774 :raw-text "upstreams")
   (:var mv27780 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv27769 mv27778 mv27770))
   (:var mv27769 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv27778 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv27770 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv27774 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv27797 :isa copular-predication :item mv27794 :value mv27785 :predicate mv27791)
   (:var mv27794 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv27785 :isa mutual-exclusivity :disease mv27787 :alternative mv27786)
   (:var mv27787 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv27786 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv27791 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv27802 :isa be :subject mv27801 :predicate mv27812 :present "PRESENT")
   (:var mv27801 :isa what)
   (:var mv27812 :isa gene :disease mv27800 :has-determiner "THE" :predication mv27798 :raw-text
    "genes")
   (:var mv27800 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv27798 :isa mutual-exclusivity :alternative mv27799)
   (:var mv27799 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv27816 :isa be :subject mv27815 :predicate mv27819 :present "PRESENT")
   (:var mv27815 :isa what)
   (:var mv27819 :isa significance :result mv27814 :agent mv27813 :has-determiner "THE" :modifier
    mv27818)
   (:var mv27814 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv27813 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv27818 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv27827 :isa be :subject mv27826 :predicate mv27830 :present "PRESENT")
   (:var mv27826 :isa what)
   (:var mv27830 :isa significance :context mv27825 :agent mv27824 :has-determiner "THE" :modifier
    mv27829)
   (:var mv27825 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv27824 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv27829 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv27836 :isa be :subject mv27835 :predicate mv27839 :present "PRESENT")
   (:var mv27835 :isa what)
   (:var mv27839 :isa significance :context mv27844 :agent mv27841 :has-determiner "THE" :modifier
    mv27838)
   (:var mv27844 :isa cancer :organ mv27843 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv27843 :isa pancreas)
   (:var mv27841 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv27838 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv27848 :isa be :subject mv27847 :predicate mv27851 :present "PRESENT")
   (:var mv27847 :isa what)
   (:var mv27851 :isa significance :context mv27856 :agent mv27853 :has-determiner "THE" :modifier
    mv27850)
   (:var mv27856 :isa cancer :modifier mv27855 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv27855 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv27853 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv27850 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv27860 :isa phosphorylate :agent mv27859 :substrate mv27861 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv27859 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv27861 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv27863 :isa binding :binder mv27862 :direct-bindee mv27864 :present "PRESENT" :raw-text
    "binds")
   (:var mv27862 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv27864 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv27870 :isa binding :binder mv27866 :direct-bindee mv27865 :present "PRESENT" :raw-text
    "binds")
   (:var mv27866 :isa protein :predication mv27867 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv27867 :isa binding :direct-bindee mv27866 :bindee mv27869 :past "PAST" :raw-text
    "bound")
   (:var mv27869 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv27865 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv27876 :isa copular-predication :item mv27873 :value mv27875 :predicate mv27874)
   (:var mv27873 :isa protein-family :predication mv27872 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv27872 :isa phosphorylate :substrate mv27873 :raw-text "Phosphorylated")
   (:var mv27875 :isa active) (:var mv27874 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv27877 :isa protein :predication mv27879 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv27879 :isa phosphorylate :substrate mv27877 :target mv27878 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv27878 :isa protein :site mv27884 :modifier mv27885 :raw-text "MAPK1" :uid "UP:P28482"
    :name "MK01_HUMAN")
   (:var mv27884 :isa residue-on-protein :raw-text "S220" :position mv27883 :amino-acid mv27882)
   (:var mv27883 :isa number :value 220) (:var mv27882 :isa amino-acid :name "serine" :letter "S")
   (:var mv27885 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv27890 :isa transcribe :agent mv27887 :object mv27888 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv27887 :isa protein :predication mv27889 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv27889 :isa active)
   (:var mv27888 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv27919 :isa polar-question :statement mv27918)
   (:var mv27918 :isa event-relation :subordinated-event mv27914 :event mv27916)
   (:var mv27914 :isa wh-question :statement mv27902 :wh if)
   (:var mv27902 :isa increase :|agent-OR-cause| mv27900 :|multiplier-OR-cause| mv27911
    :|affected-process-OR-object| mv27904 :present "PRESENT" :raw-text "increase")
   (:var mv27900 :isa interlocutor :name "person-and-machine")
   (:var mv27911 :isa measurement :number mv27908) (:var mv27908 :isa number :value 10)
   (:var mv27904 :isa bio-amount :measured-item mv27891 :has-determiner "THE" :raw-text "amount")
   (:var mv27891 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv27916 :isa copular-predication :item mv27894 :value mv27898 :predicate mv27892)
   (:var mv27894 :isa bio-amount :measured-item mv27896 :has-determiner "THE" :raw-text "amount")
   (:var mv27896 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv27898 :isa high :adverb mv27897) (:var mv27897 :isa ever :name "ever")
   (:var mv27892 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv27931 :isa polar-question :statement mv27929)
   (:var mv27929 :isa decrease :agent mv27921 :object mv27925 :raw-text "decrease")
   (:var mv27921 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv27925 :isa protein-family :predication mv27924 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv27924 :isa phosphorylate :substrate mv27925 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv27942 :isa polar-question :statement mv27940)
   (:var mv27940 :isa decrease :agent mv27933 :object mv27936 :raw-text "decrease")
   (:var mv27933 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv27936 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv27947 :isa regulate :manner mv27944 :agent mv27946 :object mv27943 :present "PRESENT"
    :raw-text "regulate")
   (:var mv27944 :isa how)
   (:var mv27946 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv27943 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv27952 :isa bio-activate :manner mv27949 :agent mv27951 :object mv27948 :present
    "PRESENT" :raw-text "activate")
   (:var mv27949 :isa how)
   (:var mv27951 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv27948 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv27958 :isa polar-question :statement mv27957)
   (:var mv27957 :isa inhibit :agent mv27954 :object mv27956 :raw-text "inhibit")
   (:var mv27954 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv27956 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv27971 :isa share :object mv27970 :participant mv27969 :present "PRESENT" :raw-text
    "shared")
   (:var mv27970 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv27969 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv27966 mv27967 mv27961))
   (:var mv27966 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv27967 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv27961 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv27974 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv27983 :isa be :subject mv27982 :predicate mv27984 :present "PRESENT")
   (:var mv27982 :isa what)
   (:var mv27984 :isa upstream-segment :pathwaycomponent mv27981 :raw-text "upstream")
   (:var mv27981 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv27992 :isa want :agent mv27989 :theme mv28000 :present "PRESENT")
   (:var mv27989 :isa interlocutor :name "speaker")
   (:var mv28000 :isa bio-find :agent mv27989 :object mv27997 :present "PRESENT" :raw-text "find")
   (:var mv27997 :isa treatment :disease mv27988 :has-determiner "A" :raw-text "treatment")
   (:var mv27988 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv28009 :isa bio-use :object mv28002 :modal mv28003 :agent mv28004 :present "PRESENT"
    :raw-text "use")
   (:var mv28002 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv28003 :isa could)
   (:var mv28004 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv28022 :isa polar-question :statement mv28018)
   (:var mv28018 :isa there-exists :value mv28021 :predicate mv28011)
   (:var mv28021 :isa drug :plural t :target mv28017 :quantifier mv28013 :raw-text "drugs")
   (:var mv28017 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv28013 :isa any :word "any") (:var mv28011 :isa syntactic-there))
  ("Are they kinases?" (:var mv28027 :isa polar-question :statement mv28023)
   (:var mv28023 :isa be :subject mv28024 :predicate mv28026)
   (:var mv28024 :isa pronoun/plural :word "they")
   (:var mv28026 :isa kinase :plural t :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv28037 :isa polar-question :statement mv28031)
   (:var mv28031 :isa bio-find :agent mv28029 :object mv28033 :modal "CAN" :raw-text "find")
   (:var mv28029 :isa interlocutor :name "hearer")
   (:var mv28033 :isa drug :target mv28035 :has-determiner "A" :raw-text "drug")
   (:var mv28035 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv28059 :isa polar-question :statement mv28043)
   (:var mv28043 :isa tell :agent mv28042 :theme mv28058 :beneficiary mv28044 :modal "CAN")
   (:var mv28042 :isa interlocutor :name "hearer")
   (:var mv28058 :isa transcription-factor :plural t :predication mv28056 :quantifier mv28045
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv28056 :isa share :object mv28058 :that-rel t :participant mv28053 :modal "CAN" :raw-text
    "shared")
   (:var mv28053 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv28040 mv28052))
   (:var mv28040 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv28052 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28045 :isa all :word "all") (:var mv28044 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv28077 :isa polar-question :statement mv28065)
   (:var mv28065 :isa tell :agent mv28064 :theme mv28075 :theme mv28066 :modal "CAN")
   (:var mv28064 :isa interlocutor :name "hearer")
   (:var mv28075 :isa share :object mv28074 :participant mv28073 :modal "CAN" :raw-text "shared")
   (:var mv28074 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv28073 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv28062 mv28072))
   (:var mv28062 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv28072 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28066 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv28091 :isa polar-question :statement mv28090)
   (:var mv28090 :isa know :agent mv28079 :statement mv28089)
   (:var mv28079 :isa interlocutor :name "hearer")
   (:var mv28089 :isa drug :plural t :target mv28085 :quantifier mv28081 :raw-text "drugs")
   (:var mv28085 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv28081 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv28103 :isa polar-question :statement mv28101)
   (:var mv28101 :isa regulate :agent mv28092 :object mv28097 :raw-text "regulate")
   (:var mv28092 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28097 :isa gene :organ mv28100 :has-determiner "THE" :expresses mv28096 :raw-text
    "gene")
   (:var mv28100 :isa lung :has-determiner "THE")
   (:var mv28096 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv28114 :isa polar-question :statement mv28112)
   (:var mv28112 :isa regulate :agent mv28104 :object mv28109 :raw-text "regulate")
   (:var mv28104 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28109 :isa gene :organ mv28111 :has-determiner "THE" :expresses mv28105 :raw-text
    "gene")
   (:var mv28111 :isa liver)
   (:var mv28105 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv28122 :isa polar-question :statement mv28121)
   (:var mv28121 :isa regulate :agent mv28115 :object mv28120 :raw-text "regulate")
   (:var mv28115 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28120 :isa gene :has-determiner "THE" :expresses mv28116 :raw-text "gene")
   (:var mv28116 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv28134 :isa polar-question :statement mv28132)
   (:var mv28132 :isa regulate :agent mv28123 :object mv28128 :raw-text "regulate")
   (:var mv28123 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28128 :isa gene :organ mv28131 :has-determiner "THE" :expresses mv28127 :raw-text
    "gene")
   (:var mv28131 :isa lung :has-determiner "THE")
   (:var mv28127 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv28141 :isa polar-question :statement mv28140)
   (:var mv28140 :isa target :agent mv28135 :object mv28136 :raw-text "target")
   (:var mv28135 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv28136 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv28148 :isa polar-question :statement mv28147)
   (:var mv28147 :isa target :agent mv28142 :object mv28143 :raw-text "target")
   (:var mv28142 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv28143 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv28155 :isa polar-question :statement mv28154)
   (:var mv28154 :isa target :agent mv28149 :object mv28150 :raw-text "target")
   (:var mv28149 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv28150 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv28162 :isa polar-question :statement mv28161)
   (:var mv28161 :isa target :agent mv28156 :object mv28157 :raw-text "target")
   (:var mv28156 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv28157 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv28171 :isa polar-question :statement mv28169)
   (:var mv28169 :isa regulate :agent mv28163 :object mv28168 :raw-text "regulate")
   (:var mv28163 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28168 :isa bio-entity :organ mv28167 :name "cfors") (:var mv28167 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv28180 :isa polar-question :statement mv28178)
   (:var mv28178 :isa regulate :agent mv28172 :object mv28175 :raw-text "regulate")
   (:var mv28172 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28175 :isa protein :organ mv28177 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv28177 :isa liver))
  ("Does it regulate cfos in brain" (:var mv28189 :isa polar-question :statement mv28187)
   (:var mv28187 :isa regulate :|agent-OR-cause| mv28182 :object mv28184 :raw-text "regulate")
   (:var mv28182 :isa pronoun/inanimate :word "it")
   (:var mv28184 :isa protein :organ mv28186 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv28186 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv28195 :isa polar-question :statement mv28194)
   (:var mv28194 :isa regulate :agent mv28190 :object mv28193 :raw-text "regulate")
   (:var mv28190 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28193 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv28209 :isa polar-question :statement mv28206)
   (:var mv28206 :isa regulate :agent mv28196 :object mv28201 :raw-text "regulate")
   (:var mv28196 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28201 :isa gene :cell-type mv28207 :has-determiner "THE" :expresses mv28200 :raw-text
    "gene")
   (:var mv28207 :isa cell-type :plural t :non-cellular-location mv28203)
   (:var mv28203 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv28200 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv28217 :isa polar-question :statement mv28216)
   (:var mv28216 :isa utilize :participant mv28214 :object mv28211 :raw-text "utilize")
   (:var mv28214 :isa pathway :has-determiner "THE" :modifier mv28210 :raw-text "pathway")
   (:var mv28210 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv28211 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv28227 :isa polar-question :statement mv28226)
   (:var mv28226 :isa utilize :participant mv28224 :object mv28218 :raw-text "utilize")
   (:var mv28224 :isa pathway :has-determiner "THE" :modifier mv28221 :raw-text "pathway")
   (:var mv28221 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv28218 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv28229 :isa give :theme mv28236 :beneficiary mv28230 :present "PRESENT")
   (:var mv28236 :isa evidence :statement mv28235 :has-determiner "THE")
   (:var mv28235 :isa decrease :agent mv28234 :object mv28228 :present "PRESENT" :raw-text
    "decreases")
   (:var mv28234 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv28228 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv28230 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv28238 :isa give :theme mv28245 :beneficiary mv28239 :present "PRESENT")
   (:var mv28245 :isa evidence :statement mv28244 :has-determiner "THE")
   (:var mv28244 :isa regulate :agent mv28243 :object mv28237 :present "PRESENT" :raw-text
    "regulates")
   (:var mv28243 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv28237 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv28239 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv28250 :isa polar-question :statement mv28246)
   (:var mv28246 :isa be :subject mv28247 :predicate mv28249)
   (:var mv28247 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv28249 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv28257 :isa polar-question :statement mv28253)
   (:var mv28253 :isa inhibit :object mv28251 :agent mv28255 :past "PAST" :raw-text "inhibited")
   (:var mv28251 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv28255 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv28266 :isa polar-question :statement mv28261)
   (:var mv28261 :isa be :subject mv28258 :predicate mv28259)
   (:var mv28258 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28259 :isa transcription-factor :controlled-gene mv28264 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv28264 :isa gene :expresses mv28260 :raw-text "gene")
   (:var mv28260 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv28285 :isa polar-question :statement mv28269)
   (:var mv28269 :isa be :subject mv28267 :predicate mv28284)
   (:var mv28267 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28284 :isa regulator :plural t :quantifier mv28272 :theme mv28279 :has-determiner "THE"
    :raw-text "regulators")
   (:var mv28272 :isa number :value 1)
   (:var mv28279 :isa gene :has-determiner "THE" :expresses mv28268 :raw-text "gene")
   (:var mv28268 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv28293 :isa polar-question :statement mv28287)
   (:var mv28287 :isa be :subject mv28288 :predicate mv28290)
   (:var mv28288 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv28290 :isa inhibitor :protein mv28286 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv28286 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv28301 :isa polar-question :statement mv28294)
   (:var mv28294 :isa be :subject mv28295 :predicate mv28297)
   (:var mv28295 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv28297 :isa inhibitor :|target-OR-protein| mv28299 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv28299 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv28306 :isa polar-question :statement mv28302)
   (:var mv28302 :isa be :subject mv28305 :predicate mv28304)
   (:var mv28305 :isa bio-entity :name "fakeprotein")
   (:var mv28304 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv28311 :isa polar-question :statement mv28308)
   (:var mv28308 :isa be :subject mv28307 :predicate mv28310)
   (:var mv28307 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv28310 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv28318 :isa polar-question :statement mv28313)
   (:var mv28313 :isa be :subject mv28312 :predicate mv28317)
   (:var mv28312 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28317 :isa regulator :has-determiner "AN" :cellular-process mv28315 :raw-text
    "regulator")
   (:var mv28315 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv28331 :isa polar-question :statement mv28321)
   (:var mv28321 :isa involve :object mv28319 :|context-OR-theme| mv28329 :past "PAST")
   (:var mv28319 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28329 :isa pathway :plural t :quantifier mv28323 :cellular-process mv28324 :raw-text
    "pathways")
   (:var mv28323 :isa any :word "any") (:var mv28324 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?"
   (:var mv28340 :isa polar-question :statement mv28334)
   (:var mv28334 :isa involve :object mv28332 :theme mv28338 :past "PAST")
   (:var mv28332 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28338 :isa regulate :cellular-process mv28336 :raw-text "regulation")
   (:var mv28336 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?"
   (:var mv28348 :isa polar-question :statement mv28343)
   (:var mv28343 :isa involve :object mv28341 :theme mv28345 :past "PAST")
   (:var mv28341 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28345 :isa regulate :affected-process mv28346 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv28346 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv28354 :isa phosphorylate :substrate mv28355 :agent mv28353 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv28355 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv28353 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv28365 :isa polar-question :statement mv28356)
   (:var mv28356 :isa be :subject mv28364 :predicate mv28363)
   (:var mv28364 :isa indefinite-pronoun :has-determiner "THE" :ordinal mv28361 :word "one")
   (:var mv28361 :isa number :value 1)
   (:var mv28363 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv28377 :isa polar-question :statement mv28376)
   (:var mv28376 :isa there-exists :value mv28370 :predicate mv28367)
   (:var mv28370 :isa drug :predication mv28374 :has-determiner "A" :raw-text "drug")
   (:var mv28374 :isa target :agent mv28370 :that-rel t :object mv28375 :present "PRESENT"
    :raw-text "targets")
   (:var mv28375 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv28367 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv28390 :isa polar-question :statement mv28388)
   (:var mv28388 :isa there-exists :value mv28385 :predicate mv28380)
   (:var mv28385 :isa pathway :predication mv28386 :has-determiner "AN" :cellular-process mv28383
    :raw-text "pathway")
   (:var mv28386 :isa regulate :affected-process mv28385 :agent mv28378 :past "PAST" :raw-text
    "regulated")
   (:var mv28378 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28383 :isa apoptosis :raw-text "apoptotic") (:var mv28380 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv28406 :isa polar-question :statement mv28403)
   (:var mv28403 :isa there-exists :value mv28398 :predicate mv28393)
   (:var mv28398 :isa pathway :predication mv28404 :has-determiner "AN" :cellular-process mv28396
    :raw-text "pathway")
   (:var mv28404 :isa regulate :affected-process mv28398 :that-rel t :agent mv28391 :present
    "PRESENT" :raw-text "regulated")
   (:var mv28391 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28396 :isa apoptosis :raw-text "apoptotic") (:var mv28393 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv28408 :isa let :complement mv28426 :present "PRESENT")
   (:var mv28426 :isa know :agent mv28409 :statement mv28425 :present "PRESENT")
   (:var mv28409 :isa interlocutor :name "speaker")
   (:var mv28425 :isa wh-question :statement mv28421 :wh if)
   (:var mv28421 :isa there-exists :value mv28424 :predicate mv28414)
   (:var mv28424 :isa gene :plural t :predication mv28420 :quantifier mv28415 :cellular-process
    mv28416 :raw-text "genes")
   (:var mv28420 :isa regulate :object mv28424 :agent mv28407 :present "PRESENT" :raw-text
    "regulates")
   (:var mv28407 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28415 :isa any :word "any") (:var mv28416 :isa apoptosis :raw-text "apoptotic")
   (:var mv28414 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv28428 :isa let :complement mv28437 :present "PRESENT")
   (:var mv28437 :isa know :agent mv28429 :statement mv28436 :present "PRESENT")
   (:var mv28429 :isa interlocutor :name "speaker")
   (:var mv28436 :isa gene :plural t :predication mv28434 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv28434 :isa regulate :object mv28436 :agent mv28427 :present "PRESENT" :raw-text
    "regulates")
   (:var mv28427 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv28439 :isa list :theme mv28450 :present "PRESENT")
   (:var mv28450 :isa gene :plural t :predication mv28444 :quantifier mv28440 :has-determiner "THE"
    :raw-text "genes")
   (:var mv28444 :isa regulate :object mv28450 :agent mv28448 :past "PAST" :raw-text "regulated")
   (:var mv28448 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv28438 mv28447))
   (:var mv28438 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv28447 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28440 :isa all :word "all"))
  ("List genes regulated by elk1 and srf"
   (:var mv28454 :isa list :theme mv28456 :present "PRESENT")
   (:var mv28456 :isa gene :plural t :predication mv28457 :raw-text "genes")
   (:var mv28457 :isa regulate :object mv28456 :agent mv28461 :past "PAST" :raw-text "regulated")
   (:var mv28461 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv28453 mv28460))
   (:var mv28453 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv28460 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv28465 :isa list :theme mv28479 :present "PRESENT")
   (:var mv28479 :isa gene :plural t :predication mv28477 :quantifier mv28466 :raw-text "genes")
   (:var mv28477 :isa regulate :object mv28479 :that-rel t :agent mv28475 :present "PRESENT"
    :raw-text "regulated")
   (:var mv28475 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv28464 mv28474))
   (:var mv28464 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv28474 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28466 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv28481 :isa list :theme mv28487 :present "PRESENT")
   (:var mv28487 :isa evidence :statement mv28486 :has-determiner "THE")
   (:var mv28486 :isa decrease :agent mv28485 :object mv28480 :present "PRESENT" :raw-text
    "decreases")
   (:var mv28485 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv28480 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv28489 :isa name-something :patient mv28493 :present "PRESENT")
   (:var mv28493 :isa gene :plural t :predication mv28494 :raw-text "genes")
   (:var mv28494 :isa regulate :object mv28493 :agent mv28498 :past "PAST" :raw-text "regulated")
   (:var mv28498 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv28488 mv28497))
   (:var mv28488 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv28497 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv28519 :isa copular-predication :item mv28522 :value mv28512 :predicate mv28511)
   (:var mv28522 :isa gene :plural t :has-determiner "WHICH" :predication mv28508 :has-determiner
    "THE" :cellular-process mv28504 :raw-text "genes")
   (:var mv28508 :isa regulate :object mv28522 :agent mv28501 :past "PAST" :raw-text "regulated")
   (:var mv28501 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28504 :isa apoptosis :raw-text "apoptotic") (:var mv28512 :isa active :organ mv28515)
   (:var mv28515 :isa liver :has-determiner "THE") (:var mv28511 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv28541 :isa copular-predication :item mv28543 :value mv28534 :predicate mv28533)
   (:var mv28543 :isa gene :plural t :has-determiner "WHICH" :predication mv28531 :has-determiner
    "THE" :cellular-process mv28527 :raw-text "genes")
   (:var mv28531 :isa regulate :object mv28543 :agent mv28524 :present "PRESENT" :raw-text
    "regulates")
   (:var mv28524 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28527 :isa apoptosis :raw-text "apoptotic") (:var mv28534 :isa active :organ mv28537)
   (:var mv28537 :isa liver :has-determiner "THE") (:var mv28533 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv28559 :isa copular-predication :item mv28562 :value mv28556 :predicate mv28555)
   (:var mv28562 :isa gene :plural t :has-determiner "WHICH" :predication mv28550 :has-determiner
    "THE" :raw-text "genes")
   (:var mv28550 :isa regulate :object mv28562 :agent mv28545 :organ mv28553 :present "PRESENT"
    :raw-text "regulates")
   (:var mv28545 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28553 :isa liver :has-determiner "THE")
   (:var mv28556 :isa apoptosis :raw-text "apoptotic") (:var mv28555 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv28577 :isa copular-predication :item mv28579 :value mv28573 :predicate mv28572)
   (:var mv28579 :isa gene :plural t :has-determiner "WHICH" :predication mv28570 :has-determiner
    "THE" :non-cellular-location mv28567 :raw-text "genes")
   (:var mv28570 :isa regulate :object mv28579 :agent mv28564 :present "PRESENT" :raw-text
    "regulates")
   (:var mv28564 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28567 :isa liver) (:var mv28573 :isa apoptosis :raw-text "apoptotic")
   (:var mv28572 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv28594 :isa copular-predication :item mv28596 :value mv28590 :predicate mv28589)
   (:var mv28596 :isa gene :plural t :has-determiner "WHICH" :predication mv28587 :has-determiner
    "THE" :non-cellular-location mv28584 :raw-text "genes")
   (:var mv28587 :isa regulate :object mv28596 :agent mv28581 :present "PRESENT" :raw-text
    "regulates")
   (:var mv28581 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28584 :isa liver) (:var mv28590 :isa apoptosis :raw-text "apoptotic")
   (:var mv28589 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv28600 :isa bio-find :object mv28602 :present "PRESENT" :adverb mv28598 :raw-text "find")
   (:var mv28602 :isa pathway :plural t :predication mv28603 :raw-text "pathways")
   (:var mv28603 :isa involve :theme mv28602 :object mv28604 :progressive "PROGRESSIVE")
   (:var mv28604 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28598 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv28607 :isa show :|statement-OR-theme| mv28615 :beneficiary mv28608 :present "PRESENT"
    :adverb mv28606)
   (:var mv28615 :isa pathway :plural t :predication mv28612 :modifier mv28609 :raw-text
    "pathways")
   (:var mv28612 :isa involve :theme mv28615 :object mv28613 :progressive "PROGRESSIVE")
   (:var mv28613 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28609 :isa database :name "KEGG" :uid "KEGG")
   (:var mv28608 :isa interlocutor :name "speaker") (:var mv28606 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv28617 :isa show :|statement-OR-theme| mv28623 :beneficiary mv28618 :present "PRESENT"
    :adverb mv28616)
   (:var mv28623 :isa pathway :plural t :predication mv28621 :raw-text "pathways")
   (:var mv28621 :isa involve :theme mv28623 :object mv28622 :progressive "PROGRESSIVE")
   (:var mv28622 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28618 :isa interlocutor :name "speaker") (:var mv28616 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv28625 :isa bio-activate :agent mv28624 :object mv28626 :present "PRESENT" :raw-text
    "activates")
   (:var mv28624 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv28626 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv28627 :isa remove :object mv28634 :present "PRESENT" :raw-text "Remove")
   (:var mv28634 :isa fact :statement mv28632 :has-determiner "THE")
   (:var mv28632 :isa bio-activate :agent mv28631 :object mv28633 :present "PRESENT" :raw-text
    "activates")
   (:var mv28631 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv28633 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv28637 :isa bio-activate :agent mv28636 :object mv28638 :present "PRESENT" :raw-text
    "activates")
   (:var mv28636 :isa protein-family :predication mv28635 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv28635 :isa inactive)
   (:var mv28638 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv28639 :isa remove :object mv28647 :present "PRESENT" :raw-text "Remove")
   (:var mv28647 :isa fact :statement mv28645 :has-determiner "THE")
   (:var mv28645 :isa bio-activate :agent mv28644 :object mv28646 :present "PRESENT" :raw-text
    "activates")
   (:var mv28644 :isa protein-family :predication mv28643 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv28643 :isa inactive)
   (:var mv28646 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv28649 :isa show :|statement-OR-theme| mv28652 :present "PRESENT")
   (:var mv28652 :isa pathway :plural t :non-cellular-location mv28648 :raw-text "pathways")
   (:var mv28648 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv28653 :isa show :|statement-OR-theme| mv28659 :beneficiary mv28654 :present "PRESENT")
   (:var mv28659 :isa pathway :plural t :predication mv28657 :raw-text "pathways")
   (:var mv28657 :isa involve :theme mv28659 :object mv28658 :progressive "PROGRESSIVE")
   (:var mv28658 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28654 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv28660 :isa show :|statement-OR-theme| mv28670 :beneficiary mv28661 :present "PRESENT")
   (:var mv28670 :isa pathway :plural t :pathwaycomponent mv28665 :raw-text "pathways")
   (:var mv28665 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway|
    mv28667 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28667 :isa pronoun/plural :word "them")
   (:var mv28661 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv28671 :isa show :|statement-OR-theme| mv28678 :beneficiary mv28672 :present "PRESENT")
   (:var mv28678 :isa pathway :plural t :pathwaycomponent mv28676 :raw-text "pathways")
   (:var mv28676 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28672 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv28680 :isa show :|statement-OR-theme| mv28687 :beneficiary mv28681 :present "PRESENT")
   (:var mv28687 :isa evidence :statement mv28686 :has-determiner "THE")
   (:var mv28686 :isa decrease :agent mv28685 :object mv28679 :present "PRESENT" :raw-text
    "decreases")
   (:var mv28685 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv28679 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv28681 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv28689 :isa show :|statement-OR-theme| mv28700 :beneficiary mv28690 :present "PRESENT")
   (:var mv28700 :isa evidence :statement mv28695 :has-determiner "THE")
   (:var mv28695 :isa decrease :agent mv28694 :|affected-process-OR-object| mv28697 :present
    "PRESENT" :raw-text "decreases")
   (:var mv28694 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv28697 :isa bio-amount :measured-item mv28688 :has-determiner "THE" :raw-text "amount")
   (:var mv28688 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv28690 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv28702 :isa show :|statement-OR-theme| mv28709 :beneficiary mv28703 :present "PRESENT")
   (:var mv28709 :isa evidence :statement mv28708 :has-determiner "THE")
   (:var mv28708 :isa regulate :agent mv28707 :object mv28701 :present "PRESENT" :raw-text
    "regulates")
   (:var mv28707 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv28701 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv28703 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv28713 :isa show :|statement-OR-theme| mv28711 :present "PRESENT")
   (:var mv28711 :isa transcription-factor :plural t :predication mv28714 :raw-text
    "transcription factors")
   (:var mv28714 :isa share :object mv28711 :participant mv28718 :past "PAST" :raw-text "shared")
   (:var mv28718 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv28712 mv28717))
   (:var mv28712 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv28717 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv28722 :isa tell :beneficiary mv28723 :present "PRESENT")
   (:var mv28723 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv28729 :isa tell :theme mv28744 :theme mv28730 :present "PRESENT")
   (:var mv28744 :isa regulate :affected-process mv28743 :agent mv28728 :present "PRESENT"
    :raw-text "regulated")
   (:var mv28743 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv28732 :raw-text
    "pathways")
   (:var mv28732 :isa apoptosis :raw-text "apoptotic")
   (:var mv28728 :isa protein :organ mv28741 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv28741 :isa liver :has-determiner "THE")
   (:var mv28730 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv28748 :isa tell :theme mv28758 :beneficiary mv28749 :present "PRESENT")
   (:var mv28758 :isa gene :plural t :predication mv28755 :has-determiner "WHAT" :raw-text "genes")
   (:var mv28755 :isa regulate :object mv28758 :agent mv28756 :present "PRESENT" :raw-text
    "regulate")
   (:var mv28756 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv28747 mv28754))
   (:var mv28747 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv28754 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28749 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv28760 :isa tell :theme mv28772 :theme mv28761 :present "PRESENT")
   (:var mv28772 :isa regulate :affected-process mv28771 :agent mv28759 :present "PRESENT"
    :raw-text "regulated")
   (:var mv28771 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv28759 :isa protein :organ mv28770 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv28770 :isa liver :has-determiner "THE")
   (:var mv28761 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv28779 :isa involve :theme mv28783 :object mv28781 :present "PRESENT")
   (:var mv28783 :isa pathway :plural t :has-determiner "WHAT" :modifier mv28776 :raw-text
    "pathways")
   (:var mv28776 :isa database :name "KEGG" :uid "KEGG")
   (:var mv28781 :isa signal :modifier mv28780 :raw-text "signaling")
   (:var mv28780 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv28794 :isa regulate :object mv28793 :agent mv28785 :present "PRESENT" :raw-text
    "regulated")
   (:var mv28793 :isa phosphatase :plural t :has-determiner "WHAT" :enzyme mv28784 :raw-text
    "phosphatases")
   (:var mv28784 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv28785 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv28802 :isa be :subject mv28807 :predicate mv28803 :present "PRESENT")
   (:var mv28807 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv28798 :raw-text
    "genes")
   (:var mv28798 :isa apoptosis :raw-text "apoptotic")
   (:var mv28803 :isa downstream-segment :pathwaycomponent mv28796 :raw-text "downstream")
   (:var mv28796 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv28816 :isa regulate :object mv28821 :agent mv28809 :organ mv28819 :present "PRESENT"
    :raw-text "regulate")
   (:var mv28821 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv28811 :raw-text
    "genes")
   (:var mv28811 :isa apoptosis :raw-text "apoptotic")
   (:var mv28809 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28819 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv28830 :isa regulate :object mv28832 :agent mv28823 :present "PRESENT" :raw-text
    "regulate")
   (:var mv28832 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv28825 :raw-text
    "genes")
   (:var mv28825 :isa apoptosis :raw-text "apoptotic")
   (:var mv28823 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv28839 :isa be :subject mv28844 :predicate mv28840 :present "PRESENT")
   (:var mv28844 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv28835 :raw-text
    "genes")
   (:var mv28835 :isa apoptosis :raw-text "apoptotic")
   (:var mv28840 :isa upstream-segment :pathwaycomponent mv28844 :modifier mv28833 :raw-text
    "upstream")
   (:var mv28833 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv28851 :isa involve :theme mv28853 :object mv28845 :present "PRESENT")
   (:var mv28853 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv28847 :raw-text
    "pathways")
   (:var mv28847 :isa apoptosis :raw-text "apoptotic")
   (:var mv28845 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv28855 :isa be :subject mv28854 :predicate mv28861 :present "PRESENT")
   (:var mv28854 :isa what)
   (:var mv28861 :isa target-protein :plural t :agent mv28857 :raw-text "targets")
   (:var mv28857 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv28864 :isa be :subject mv28863 :predicate mv28869 :present "PRESENT")
   (:var mv28863 :isa what)
   (:var mv28869 :isa inhibitor :plural t :quantifier mv28865 :protein mv28862 :raw-text
    "inhibitors")
   (:var mv28865 :isa some :word "some")
   (:var mv28862 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv28871 :isa be :subject mv28870 :predicate mv28879 :present "PRESENT")
   (:var mv28870 :isa what)
   (:var mv28879 :isa drug :plural t :predication mv28876 :quantifier mv28872 :raw-text "drugs")
   (:var mv28876 :isa inhibit :agent mv28879 :that-rel t :object mv28877 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv28877 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv28872 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv28882 :isa be :subject mv28881 :predicate mv28891 :present "PRESENT")
   (:var mv28881 :isa what)
   (:var mv28891 :isa gene :plural t :context mv28880 :quantifier mv28883 :raw-text "genes")
   (:var mv28880 :isa signaling-pathway :has-determiner "THE" :modifier mv28888 :raw-text
    "signaling pathway")
   (:var mv28888 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv28883 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv28894 :isa be :subject mv28893 :predicate mv28903 :present "PRESENT")
   (:var mv28893 :isa what)
   (:var mv28903 :isa protein :plural t :in-pathway mv28892 :quantifier mv28895 :raw-text
    "proteins")
   (:var mv28892 :isa signaling-pathway :has-determiner "THE" :modifier mv28900 :raw-text
    "signaling pathway")
   (:var mv28900 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv28895 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv28905 :isa be :subject mv28904 :predicate mv28913 :present "PRESENT")
   (:var mv28904 :isa what) (:var mv28913 :isa member :plural t :set mv28910 :has-determiner "THE")
   (:var mv28910 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv28918 :isa be :subject mv28917 :predicate mv28929 :present "PRESENT")
   (:var mv28917 :isa what)
   (:var mv28929 :isa micro-rna :plural t :predication mv28923 :has-determiner "THE" :raw-text
    "miRNAS")
   (:var mv28923 :isa regulate :agent mv28929 :that-rel t :object mv28927 :present "PRESENT"
    :raw-text "regulate")
   (:var mv28927 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv28924 mv28925 mv28914 mv28915 mv28916))
   (:var mv28924 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv28925 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv28914 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv28915 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv28916 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv28931 :isa be :subject mv28930 :predicate mv28944 :present "PRESENT")
   (:var mv28930 :isa what)
   (:var mv28944 :isa regulator :plural t :theme mv28940 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv28940 :isa bio-entity :organ mv28939 :name "MAPPK14")
   (:var mv28939 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv28947 :isa be :subject mv28946 :predicate mv28957 :present "PRESENT")
   (:var mv28946 :isa what)
   (:var mv28957 :isa regulator :plural t :theme mv28945 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv28945 :isa protein :organ mv28953 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv28953 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv28960 :isa be :subject mv28959 :predicate mv28967 :present "PRESENT")
   (:var mv28959 :isa what)
   (:var mv28967 :isa regulator :plural t :theme mv28958 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv28958 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv28970 :isa be :subject mv28969 :predicate mv28980 :present "PRESENT")
   (:var mv28969 :isa what)
   (:var mv28980 :isa regulator :plural t :theme mv28968 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv28968 :isa protein :organ mv28976 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv28976 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv28983 :isa be :subject mv28982 :predicate mv28993 :present "PRESENT")
   (:var mv28982 :isa what)
   (:var mv28993 :isa regulator :plural t :theme mv28981 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv28981 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the regulators of mapk14"
   (:var mv28996 :isa be :subject mv28995 :predicate mv29003 :present "PRESENT")
   (:var mv28995 :isa what)
   (:var mv29003 :isa regulator :plural t :theme mv28994 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv28994 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv29023 :isa copular-predication :item mv29008 :value mv29006 :predicate mv29009)
   (:var mv29008 :isa what) (:var mv29006 :isa in-common :theme mv29021)
   (:var mv29021 :isa gene :plural t :has-determiner "THE" :expresses mv29018 :raw-text "genes")
   (:var mv29018 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv29013 mv29014 mv29007))
   (:var mv29013 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv29014 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv29007 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv29009 :isa be :predicate mv29019 :present "PRESENT")
   (:var mv29019 :isa transcription-factor :plural t :has-determiner "THE" :raw-text
    "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv29027 :isa be :subject mv29026 :predicate mv29038 :present "PRESENT")
   (:var mv29026 :isa what)
   (:var mv29038 :isa transcription-factor :plural t :predication mv29030 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv29030 :isa regulate :agent mv29038 :that-rel t :object mv29036 :present "PRESENT"
    :raw-text "regulate")
   (:var mv29036 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv29035 mv29034))
   (:var mv29035 :isa bio-entity :name "EELK1")
   (:var mv29034 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv29044 :isa be :subject mv29043 :predicate mv29056 :present "PRESENT")
   (:var mv29043 :isa what)
   (:var mv29056 :isa transcription-factor :plural t :predication mv29047 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv29047 :isa regulate :agent mv29056 :that-rel t :object mv29054 :present "PRESENT"
    :raw-text "regulate")
   (:var mv29054 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv29048 mv29049 mv29053 mv29041 mv29042))
   (:var mv29048 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv29049 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv29053 :isa bio-entity :name "STAAT3")
   (:var mv29041 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv29042 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv29063 :isa be :subject mv29062 :predicate mv29072 :present "PRESENT")
   (:var mv29062 :isa what)
   (:var mv29072 :isa transcription-factor :plural t :predication mv29066 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv29066 :isa regulate :agent mv29072 :that-rel t :object mv29070 :present "PRESENT"
    :raw-text "regulate")
   (:var mv29070 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv29067 mv29068 mv29059 mv29060 mv29061))
   (:var mv29067 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv29068 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv29059 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29060 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv29061 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv29077 :isa be :subject mv29076 :predicate mv29090 :present "PRESENT")
   (:var mv29076 :isa what)
   (:var mv29090 :isa regulator :plural t :theme mv29086 :has-determiner "THE" :context mv29079
    :raw-text "regulators")
   (:var mv29086 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv29073 mv29074 mv29084 mv29075))
   (:var mv29073 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv29074 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv29084 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv29075 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv29079 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv29101 :isa regulate :object mv29100 :agent mv29098 :present "PRESENT" :raw-text
    "regulated")
   (:var mv29100 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv29091 :raw-text
    "genes")
   (:var mv29091 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv29098 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv29106 :isa regulate :|affected-process-OR-object| mv29103 :agent mv29105 :present
    "PRESENT" :raw-text "regulate")
   (:var mv29103 :isa what)
   (:var mv29105 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv29110 :isa regulate :|affected-process-OR-object| mv29107 :|agent-OR-cause| mv29109
    :organ mv29112 :present "PRESENT" :raw-text "regulate")
   (:var mv29107 :isa what) (:var mv29109 :isa pronoun/inanimate :word "it")
   (:var mv29112 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv29118 :isa target :|affected-process-OR-object| mv29115 :agent mv29114 :present
    "PRESENT" :raw-text "target")
   (:var mv29115 :isa what)
   (:var mv29114 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv29122 :isa regulate :|affected-process-OR-object| mv29120 :agent mv29119 :present
    "PRESENT" :raw-text "regulate")
   (:var mv29120 :isa what)
   (:var mv29119 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv29126 :isa regulate :|affected-process-OR-object| mv29124 :agent mv29123 :present
    "PRESENT" :raw-text "regulate")
   (:var mv29124 :isa what)
   (:var mv29123 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv29130 :isa regulate :|affected-process-OR-object| mv29128 :agent mv29127 :present
    "PRESENT" :raw-text "regulate")
   (:var mv29128 :isa what)
   (:var mv29127 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv29134 :isa regulate :|affected-process-OR-object| mv29131 :agent mv29133 :present
    "PRESENT" :raw-text "regulate")
   (:var mv29131 :isa what)
   (:var mv29133 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv29137 :isa downregulate :|agent-OR-cause| mv29136 :object mv29135 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv29136 :isa what)
   (:var mv29135 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv29151 :isa bio-use :patient mv29140 :modal mv29141 :agent mv29142 :theme mv29150
    :present "PRESENT" :raw-text "use")
   (:var mv29140 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv29141 :isa could)
   (:var mv29142 :isa interlocutor :name "speaker")
   (:var mv29150 :isa target :object mv29138 :raw-text "target")
   (:var mv29138 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv29163 :isa bio-use :object mv29154 :modal mv29155 :agent mv29156 :disease mv29152
    :present "PRESENT" :raw-text "use")
   (:var mv29154 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv29155 :isa should)
   (:var mv29156 :isa interlocutor :name "speaker")
   (:var mv29152 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv29168 :isa be :subject mv29172 :predicate mv29174 :present "PRESENT")
   (:var mv29172 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv29174 :isa inhibitor :plural t :protein mv29164 :raw-text "inhibitors")
   (:var mv29164 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv29179 :isa inhibit :agent mv29180 :object mv29175 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv29180 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv29175 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv29184 :isa regulate :agent mv29186 :object mv29185 :present "PRESENT" :raw-text
    "regulate")
   (:var mv29186 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv29185 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv29191 :isa target :agent mv29193 :object mv29192 :present "PRESENT" :raw-text "target")
   (:var mv29193 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv29192 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv29198 :isa be :subject mv29202 :predicate mv29199 :present "PRESENT")
   (:var mv29202 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29199 :isa downstream-segment :pathwaycomponent mv29194 :raw-text "downstream")
   (:var mv29194 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv29217 :isa copular-predication-of-pp :item mv29212 :value mv29216 :prep "IN" :predicate
    mv29208)
   (:var mv29212 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29216 :isa gene :plural t :context mv29204 :has-determiner "WHAT" :raw-text "genes")
   (:var mv29204 :isa signaling-pathway :has-determiner "THE" :modifier mv29211 :raw-text
    "signaling pathway")
   (:var mv29211 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv29208 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv29235 :isa copular-predication-of-pp :item mv29228 :value mv29234 :prep "IN" :predicate
    mv29224)
   (:var mv29228 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29234 :isa gene :plural t :context mv29230 :has-determiner "WHAT" :raw-text "genes")
   (:var mv29230 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv29227 :raw-text
    "signaling pathways")
   (:var mv29227 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv29224 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv29250 :isa copular-predication-of-pp :item mv29245 :value mv29249 :prep "IN" :predicate
    mv29241)
   (:var mv29245 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29249 :isa gene :plural t :context mv29244 :has-determiner "WHAT" :raw-text "genes")
   (:var mv29244 :isa pathway :has-determiner "THE" :non-cellular-location mv29237 :raw-text
    "pathway")
   (:var mv29237 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv29241 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv29265 :isa copular-predication-of-pp :item mv29260 :value mv29264 :prep "IN" :predicate
    mv29256)
   (:var mv29260 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29264 :isa gene :plural t :context mv29252 :has-determiner "WHAT" :raw-text "genes")
   (:var mv29252 :isa signaling-pathway :has-determiner "THE" :modifier mv29259 :raw-text
    "signaling pathway")
   (:var mv29259 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv29256 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv29278 :isa involve :object mv29277 :|context-OR-theme| mv29276 :present "PRESENT")
   (:var mv29277 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29276 :isa pathway :has-determiner "THE" :modifier mv29268 :raw-text "pathway")
   (:var mv29268 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv29290 :isa involve :object mv29289 :|context-OR-theme| mv29288 :present "PRESENT")
   (:var mv29289 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29288 :isa pathway :has-determiner "THE" :modifier mv29287 :raw-text "pathway")
   (:var mv29287 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv29302 :isa involve :object mv29301 :|context-OR-theme| mv29300 :present "PRESENT")
   (:var mv29301 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29300 :isa pathway :has-determiner "THE" :modifier mv29292 :raw-text "pathway")
   (:var mv29292 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv29314 :isa involve :object mv29313 :|context-OR-theme| mv29312 :present "PRESENT")
   (:var mv29313 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29312 :isa pathway :has-determiner "THE" :non-cellular-location mv29304 :raw-text
    "pathway")
   (:var mv29304 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv29330 :isa regulate :object mv29329 :agent mv29328 :present "PRESENT" :superlative
    mv29323 :adverb mv29324 :raw-text "regulated")
   (:var mv29329 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29328 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv29316 mv29317 mv29318))
   (:var mv29316 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv29317 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv29318 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv29323 :isa superlative-quantifier :name "most")
   (:var mv29324 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv29347 :isa regulate :object mv29346 :agent mv29345 :present "PRESENT" :superlative
    mv29340 :adverb mv29341 :raw-text "regulated")
   (:var mv29346 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29345 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p"
    :type micro-rna :number 4 :items (mv29332 mv29333 mv29334 mv29335))
   (:var mv29332 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv29333 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv29334 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv29335 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv29340 :isa superlative-quantifier :name "most")
   (:var mv29341 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv29364 :isa regulate :object mv29363 :agent mv29362 :present "PRESENT" :superlative
    mv29357 :adverb mv29358 :raw-text "regulated")
   (:var mv29363 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29362 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv29349 mv29350 mv29351 mv29352))
   (:var mv29349 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv29350 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv29351 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv29352 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv29357 :isa superlative-quantifier :name "most")
   (:var mv29358 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv29374 :isa regulate :object mv29373 :agent mv29372 :present "PRESENT" :raw-text
    "regulated")
   (:var mv29373 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29372 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv29387 :isa regulate :object mv29386 :agent mv29385 :present "PRESENT" :raw-text
    "regulated")
   (:var mv29386 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29385 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv29376 mv29384))
   (:var mv29376 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv29384 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv29400 :isa regulate :object mv29399 :agent mv29398 :present "PRESENT" :raw-text
    "regulated")
   (:var mv29399 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29398 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv29389 mv29390))
   (:var mv29389 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv29390 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv29412 :isa regulate :object mv29411 :agent mv29410 :present "PRESENT" :raw-text
    "regulated")
   (:var mv29411 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29410 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv29422 :isa regulate :object mv29421 :agent mv29420 :present "PRESENT" :raw-text
    "regulated")
   (:var mv29421 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29420 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv29435 :isa regulate :object mv29434 :agent mv29433 :present "PRESENT" :raw-text
    "regulated")
   (:var mv29434 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29433 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv29424 mv29432))
   (:var mv29424 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29432 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv29445 :isa target :object mv29444 :cause mv29437 :present "PRESENT" :raw-text
    "targeted")
   (:var mv29444 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29437 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv29462 :isa copular-predication-of-pp :item mv29457 :value mv29461 :prep "IN" :predicate
    mv29451)
   (:var mv29457 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29461 :isa gene :plural t :context mv29447 :has-determiner "WHAT" :raw-text "genes")
   (:var mv29447 :isa signaling-pathway :has-determiner "THE" :modifier mv29456 :raw-text
    "signaling pathway")
   (:var mv29456 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv29451 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv29474 :isa bio-use :object mv29473 :context mv29464 :present "PRESENT" :raw-text "used")
   (:var mv29473 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29464 :isa signaling-pathway :has-determiner "THE" :modifier mv29472 :raw-text
    "signaling pathway")
   (:var mv29472 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv29482 :isa target :object mv29483 :cause mv29476 :present "PRESENT" :raw-text "target")
   (:var mv29483 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29476 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv29490 :isa target :object mv29491 :agent mv29484 :present "PRESENT" :raw-text "target")
   (:var mv29491 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29484 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv29498 :isa target :object mv29499 :agent mv29492 :present "PRESENT" :raw-text "target")
   (:var mv29499 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29492 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv29505 :isa upregulate :object mv29506 :agent mv29500 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv29506 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29500 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv29512 :isa regulate :object mv29517 :agent mv29507 :cell-type mv29518 :present "PRESENT"
    :raw-text "regulate")
   (:var mv29517 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29507 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29518 :isa cell-type :plural t :non-cellular-location mv29514)
   (:var mv29514 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv29525 :isa regulate :object mv29528 :agent mv29520 :organ mv29527 :present "PRESENT"
    :raw-text "regulate")
   (:var mv29528 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29520 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29527 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv29535 :isa regulate :object mv29538 :agent mv29530 :organ mv29537 :present "PRESENT"
    :raw-text "regulate")
   (:var mv29538 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29530 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29537 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv29545 :isa regulate :object mv29546 :agent mv29540 :present "PRESENT" :raw-text
    "regulate")
   (:var mv29546 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29540 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv29555 :isa regulate :object mv29558 :agent mv29547 :present "PRESENT" :raw-text
    "regulate")
   (:var mv29558 :isa gene :plural t :organ mv29553 :has-determiner "WHAT" :raw-text "genes")
   (:var mv29553 :isa liver :has-determiner "THE")
   (:var mv29547 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv29563 :isa be :subject mv29567 :predicate mv29564 :present "PRESENT")
   (:var mv29567 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29564 :isa upstream-segment :modifier mv29559 :raw-text "upstream")
   (:var mv29559 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream of?"
   (:var mv29572 :isa be :subject mv29576 :predicate mv29573 :present "PRESENT")
   (:var mv29576 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv29573 :isa upstream-segment :pathwaycomponent mv29576 :modifier mv29568 :raw-text
    "upstream")
   (:var mv29568 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv29583 :isa be :subject mv29588 :predicate mv29585 :present "PRESENT")
   (:var mv29588 :isa gene :plural t :predication mv29580 :has-determiner "WHAT" :raw-text "genes")
   (:var mv29580 :isa regulate :object mv29588 :agent mv29582 :past "PAST" :raw-text "regulated")
   (:var mv29582 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv29585 :isa kinase :plural t :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv29595 :isa be :subject mv29600 :predicate mv29597 :present "PRESENT")
   (:var mv29600 :isa gene :plural t :predication mv29593 :has-determiner "WHAT" :raw-text "genes")
   (:var mv29593 :isa regulate :object mv29600 :agent mv29589 :past "PAST" :raw-text "regulated")
   (:var mv29589 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29597 :isa kinase :plural t :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv29606 :isa involve :theme mv29611 :object mv29609 :present "PRESENT")
   (:var mv29611 :isa pathway :plural t :has-determiner "WHAT" :modifier mv29603 :raw-text
    "pathways")
   (:var mv29603 :isa immune :name "immune")
   (:var mv29609 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv29607 mv29601))
   (:var mv29607 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv29601 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv29616 :isa involve :theme mv29619 :object mv29617 :present "PRESENT")
   (:var mv29619 :isa pathway :plural t :has-determiner "WHAT" :modifier mv29613 :raw-text
    "pathways")
   (:var mv29613 :isa immune :name "immune")
   (:var mv29617 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv29625 :isa involve :theme mv29630 :object mv29628 :present "PRESENT")
   (:var mv29630 :isa pathway :plural t :has-determiner "WHAT" :modifier mv29622 :raw-text
    "pathways")
   (:var mv29622 :isa immune :name "immune")
   (:var mv29628 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv29626 mv29620))
   (:var mv29626 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv29620 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv29637 :isa involve :theme mv29641 :object mv29639 :present "PRESENT")
   (:var mv29641 :isa pathway :plural t :has-determiner "WHAT" :modifier mv29634 :raw-text
    "pathways")
   (:var mv29634 :isa immune :name "immune")
   (:var mv29639 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv29631 mv29632))
   (:var mv29631 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv29632 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv29643 :isa inhibit :|agent-OR-cause| mv29642 :object mv29644 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv29642 :isa what)
   (:var mv29644 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv29647 :isa be :subject mv29646 :predicate mv29645 :present "PRESENT")
   (:var mv29646 :isa what)
   (:var mv29645 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv29649 :isa be :subject mv29648 :predicate mv29650 :present "PRESENT")
   (:var mv29648 :isa what)
   (:var mv29650 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv29653 :isa be :subject mv29652 :predicate mv29654 :present "PRESENT")
   (:var mv29652 :isa what)
   (:var mv29654 :isa downstream-segment :pathwaycomponent mv29651 :raw-text "downstream")
   (:var mv29651 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv29659 :isa be :subject mv29658 :predicate mv29660 :present "PRESENT")
   (:var mv29658 :isa what)
   (:var mv29660 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv29662 :isa be :subject mv29661 :predicate mv29663 :present "PRESENT")
   (:var mv29661 :isa what) (:var mv29663 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv29669 :isa regulate :|affected-process-OR-object| mv29665 :agent mv29664 :present
    "PRESENT" :raw-text "regulated")
   (:var mv29665 :isa what)
   (:var mv29664 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv29673 :isa be :subject mv29672 :predicate mv29679 :present "PRESENT")
   (:var mv29672 :isa what) (:var mv29679 :isa evidence :statement mv29678 :has-determiner "THE")
   (:var mv29678 :isa decrease :agent mv29677 :object mv29671 :present "PRESENT" :raw-text
    "decreases")
   (:var mv29677 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv29671 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv29682 :isa be :subject mv29681 :predicate mv29692 :present "PRESENT")
   (:var mv29681 :isa what) (:var mv29692 :isa evidence :statement mv29687 :has-determiner "THE")
   (:var mv29687 :isa decrease :agent mv29686 :|affected-process-OR-object| mv29689 :present
    "PRESENT" :raw-text "decreases")
   (:var mv29686 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv29689 :isa bio-amount :measured-item mv29680 :has-determiner "THE" :raw-text "amount")
   (:var mv29680 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv29694 :isa be :subject mv29693 :predicate mv29696 :present "PRESENT")
   (:var mv29693 :isa what)
   (:var mv29696 :isa target-protein :agent mv29699 :has-determiner "THE" :raw-text "target")
   (:var mv29699 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv29706 :isa regulate :object mv29707 :agent mv29701 :present "PRESENT" :raw-text
    "regulate")
   (:var mv29707 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv29701 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv29716 :isa regulate :agent mv29721 :object mv29720 :present "PRESENT" :adverb mv29714
    :adverb mv29715 :raw-text "regulate")
   (:var mv29721 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv29720 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv29717 mv29718 mv29708 mv29709 mv29710))
   (:var mv29717 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv29718 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv29708 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29709 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv29710 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv29714 :isa superlative-quantifier :name "most")
   (:var mv29715 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv29728 :isa regulate :agent mv29733 :object mv29732 :present "PRESENT" :raw-text
    "regulate")
   (:var mv29733 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv29732 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv29729 mv29730 mv29722 mv29723 mv29724))
   (:var mv29729 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv29730 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv29722 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29723 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv29724 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv29742 :isa regulate :object mv29741 :agent mv29734 :present "PRESENT" :raw-text
    "regulated")
   (:var mv29741 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv29734 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv29749 :isa regulate :agent mv29755 :object mv29759 :present "PRESENT" :raw-text
    "regulate")
   (:var mv29755 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv29759 :isa gene :plural t :context mv29757 :raw-text "genes")
   (:var mv29757 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv29754 :raw-text
    "signaling pathways")
   (:var mv29754 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv29763 :isa bio-entity :has-determiner "WHAT" :name "pahtways"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv29776 :isa copular-predication :item mv29774 :value mv29769 :predicate mv29768)
   (:var mv29774 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv29769 :isa common :theme mv29773)
   (:var mv29773 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv29764 mv29772))
   (:var mv29764 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29772 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv29768 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv29780 :isa involve :theme mv29782 :object mv29781 :present "PRESENT")
   (:var mv29782 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv29781 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv29787 :isa involve :theme mv29791 :object mv29790 :present "PRESENT")
   (:var mv29791 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv29790 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv29788 mv29783))
   (:var mv29788 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv29783 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv29796 :isa involve :theme mv29799 :object mv29792 :present "PRESENT")
   (:var mv29799 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv29792 :isa transcription-factor :has-determiner "THE" :modifier mv29798 :raw-text
    "transcription factor")
   (:var mv29798 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv29811 :isa collection :raw-text "What pathways utilize srf and is srf" :type utilize
    :number 2 :items (mv29803 mv29806))
   (:var mv29803 :isa utilize :participant mv29810 :object mv29804 :present "PRESENT" :raw-text
    "utilize")
   (:var mv29810 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv29804 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv29806 :isa be :subject mv29810 :predicate mv29807 :present "PRESENT")
   (:var mv29807 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What proteins are in the MAPK family?"
   (:var mv29824 :isa copular-predication-of-pp :item mv29821 :value mv29822 :prep mv29816
    :predicate mv29815)
   (:var mv29821 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv29822 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
   (:var mv29816 :isa in :word "in") (:var mv29815 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv29833 :isa target :object mv29832 :cause mv29825 :present "PRESENT" :raw-text
    "targeted")
   (:var mv29832 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv29825 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv29841 :isa target :object mv29842 :agent mv29835 :present "PRESENT" :raw-text "target")
   (:var mv29842 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv29835 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv29849 :isa target :object mv29850 :cause mv29843 :present "PRESENT" :raw-text "target")
   (:var mv29850 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv29843 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv29857 :isa target :object mv29858 :agent mv29855 :present "PRESENT" :raw-text "target")
   (:var mv29858 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv29855 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv29864 :isa lead :agent mv29869 :theme mv29867 :modal mv29863 :raw-text "lead")
   (:var mv29869 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv29867 :isa development :disease mv29859 :has-determiner "THE" :raw-text "development")
   (:var mv29859 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv29863 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv29877 :isa lead :agent mv29882 :theme mv29880 :modal mv29876 :raw-text "lead")
   (:var mv29882 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv29880 :isa development :disease mv29872 :has-determiner "THE" :raw-text "development")
   (:var mv29872 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv29876 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv29889 :isa involve :theme mv29893 :object mv29891 :present "PRESENT")
   (:var mv29893 :isa pathway :plural t :has-determiner "WHAT" :modifier mv29886 :raw-text
    "pathways")
   (:var mv29886 :isa database :name "Reactome" :uid "Reactome")
   (:var mv29891 :isa signal :modifier mv29890 :raw-text "signaling")
   (:var mv29890 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv29895 :isa regulate :|agent-OR-cause| mv29894 :object mv29896 :present "PRESENT"
    :raw-text "regulates")
   (:var mv29894 :isa what)
   (:var mv29896 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv29899 :isa regulate :|agent-OR-cause| mv29898 :object mv29897 :present "PRESENT"
    :raw-text "regulates")
   (:var mv29898 :isa what)
   (:var mv29897 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv29902 :isa regulate :|agent-OR-cause| mv29901 :object mv29900 :present "PRESENT"
    :raw-text "regulates")
   (:var mv29901 :isa what)
   (:var mv29900 :isa protein :organ mv29904 :raw-text "smurf2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv29904 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv29917 :isa share :object mv29916 :participant mv29915 :present "PRESENT" :raw-text
    "shared")
   (:var mv29916 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv29915 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv29913 mv29908))
   (:var mv29913 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv29908 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv29930 :isa share :object mv29929 :participant mv29928 :present "PRESENT" :raw-text
    "shared")
   (:var mv29929 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv29928 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv29921 mv29927))
   (:var mv29921 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29927 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv29944 :isa share :object mv29943 :participant mv29942 :present "PRESENT" :raw-text
    "shared")
   (:var mv29943 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv29942 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv29934 mv29935 mv29941))
   (:var mv29934 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29935 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv29941 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?"
   (:var mv29953 :isa tissue :plural t :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv29957 :isa bio-produce :agent mv29954 :object mv29955 :present "PRESENT" :raw-text
    "produces")
   (:var mv29954 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv29955 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv29961 :isa transcribe :agent mv29958 :object mv29959 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv29958 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv29959 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv29982 :isa copular-predication :item mv29978 :value mv29970 :predicate mv29969)
   (:var mv29978 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv29970 :isa common :theme mv29980)
   (:var mv29980 :isa gene :plural t :has-determiner "THE" :expresses mv29977 :raw-text "genes")
   (:var mv29977 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv29964 mv29965 mv29973 mv29966 mv29967))
   (:var mv29964 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29965 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv29973 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv29966 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv29967 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv29969 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv30001 :isa copular-predication :item mv29997 :value mv29990 :predicate mv29989)
   (:var mv29997 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv29990 :isa common :theme mv29999)
   (:var mv29999 :isa gene :plural t :has-determiner "THE" :expresses mv29996 :raw-text "genes")
   (:var mv29996 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv29985 mv29986 mv29987))
   (:var mv29985 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv29986 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv29987 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv29989 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv30007 :isa regulate :object mv30008 :agent mv30002 :present "PRESENT" :raw-text
    "regulate")
   (:var mv30008 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv30002 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv30021 :isa copular-predication :item mv30018 :value mv30013 :predicate mv30012)
   (:var mv30018 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30013 :isa common :theme mv30019)
   (:var mv30019 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv30012 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv30042 :isa copular-predication :item mv30038 :value mv30024 :predicate mv30030)
   (:var mv30038 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30024 :isa in-common :theme mv30040)
   (:var mv30040 :isa gene :plural t :has-determiner "THE" :expresses mv30037 :raw-text "genes")
   (:var mv30037 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv30025 mv30026 mv30033 mv30027 mv30028))
   (:var mv30025 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30026 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv30033 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv30027 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv30028 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv30030 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv30061 :isa copular-predication :item mv30057 :value mv30045 :predicate mv30050)
   (:var mv30057 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30045 :isa in-common :theme mv30059)
   (:var mv30059 :isa gene :plural t :has-determiner "THE" :expresses mv30056 :raw-text "genes")
   (:var mv30056 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv30046 mv30047 mv30048))
   (:var mv30046 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30047 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv30048 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv30050 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv30066 :isa be :subject mv30072 :predicate mv30075 :present "PRESENT")
   (:var mv30072 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30075 :isa regulator :plural t :theme mv30064 :raw-text "regulators")
   (:var mv30064 :isa protein :organ mv30071 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv30071 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv30080 :isa be :subject mv30084 :predicate mv30086 :present "PRESENT")
   (:var mv30084 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30086 :isa regulator :plural t :theme mv30078 :raw-text "regulators")
   (:var mv30078 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv30102 :isa share :object mv30101 :participant mv30104 :present "PRESENT" :raw-text
    "shared")
   (:var mv30101 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30104 :isa gene :plural t :has-determiner "THE" :expresses mv30100 :raw-text "genes")
   (:var mv30100 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv30095 mv30096 mv30089))
   (:var mv30095 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv30096 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv30089 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv30110 :isa regulate :agent mv30113 :object mv30108 :present "PRESENT" :raw-text
    "regulate")
   (:var mv30113 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30108 :isa protein :organ mv30112 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv30112 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv30119 :isa regulate :agent mv30120 :object mv30117 :present "PRESENT" :raw-text
    "regulate")
   (:var mv30120 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30117 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv30124 :isa regulate :agent mv30126 :object mv30125 :present "PRESENT" :raw-text
    "regulate")
   (:var mv30126 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30125 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv30130 :isa regulate :agent mv30138 :theme mv30137 :object mv30132 :present "PRESENT"
    :raw-text "regulate")
   (:var mv30138 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30137 :isa bio-entity :has-determiner "THE" :modifier mv30135 :cellular-process mv30136
    :name "pathwya")
   (:var mv30135 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv30136 :isa signal :raw-text "signaling")
   (:var mv30132 :isa gene :plural t :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv30144 :isa regulate :agent mv30145 :object mv30142 :past "PAST" :raw-text "regulated")
   (:var mv30145 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30142 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv30150 :isa transcribe :agent mv30151 :object mv30148 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv30151 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30148 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv30154 :isa upregulate :|agent-OR-cause| mv30153 :object mv30152 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv30153 :isa what)
   (:var mv30152 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv30160 :isa gene-transcript-express :location mv30156 :object mv30155 :past "PAST"
    :raw-text "expressed")
   (:var mv30156 :isa where)
   (:var mv30155 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv30165 :isa involve :theme mv30168 :object mv30166 :present "PRESENT")
   (:var mv30168 :isa pathway :plural t :has-determiner "WHICH" :modifier mv30162 :raw-text
    "pathways")
   (:var mv30162 :isa database :name "KEGG" :uid "KEGG")
   (:var mv30166 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv30174 :isa bio-use :agent mv30177 :object mv30175 :present "PRESENT" :raw-text "use")
   (:var mv30177 :isa pathway :plural t :has-determiner "WHICH" :modifier mv30170 :raw-text
    "pathways")
   (:var mv30170 :isa database :name "KEGG" :uid "KEGG")
   (:var mv30175 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv30182 :isa regulate :agent mv30183 :object mv30180 :present "PRESENT" :raw-text
    "regulate")
   (:var mv30183 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30180 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv30187 :isa regulate :|agent-OR-cause| mv30184 :object mv30188 :present "PRESENT" :adverb
    mv30185 :raw-text "regulate")
   (:var mv30184 :isa which)
   (:var mv30188 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv30185 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv30200 :isa regulate :object mv30199 :agent mv30189 :present "PRESENT" :raw-text
    "regulated")
   (:var mv30199 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv30191 :raw-text
    "genes")
   (:var mv30191 :isa apoptosis :raw-text "apoptotic")
   (:var mv30189 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv30208 :isa be :subject mv30213 :predicate mv30209 :present "PRESENT")
   (:var mv30213 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv30204 :raw-text
    "genes")
   (:var mv30204 :isa apoptosis :raw-text "apoptotic")
   (:var mv30209 :isa upstream-segment :pathwaycomponent mv30213 :modifier mv30202 :raw-text
    "upstream")
   (:var mv30202 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv30222 :isa target :object mv30221 :agent mv30214 :present "PRESENT" :raw-text
    "targeted")
   (:var mv30221 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv30214 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv30230 :isa be :subject mv30235 :predicate mv30232 :present "PRESENT")
   (:var mv30235 :isa gene :plural t :predication mv30228 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv30228 :isa regulate :object mv30235 :agent mv30224 :past "PAST" :raw-text "regulated")
   (:var mv30224 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30232 :isa kinase :plural t :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv30254 :isa share :object mv30253 :participant mv30255 :present "PRESENT" :raw-text
    "shared")
   (:var mv30253 :isa pathway :plural t :has-determiner "WHICH" :modifier mv30241 :raw-text
    "pathways")
   (:var mv30241 :isa immune :name "immune")
   (:var mv30255 :isa gene :plural t :expresses mv30251 :raw-text "genes")
   (:var mv30251 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv30236 mv30237 mv30247 mv30238 mv30239))
   (:var mv30236 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30237 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv30247 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv30238 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv30239 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv30274 :isa share :object mv30273 :participant mv30276 :present "PRESENT" :raw-text
    "shared")
   (:var mv30273 :isa pathway :plural t :has-determiner "WHICH" :modifier mv30261 :raw-text
    "pathways")
   (:var mv30261 :isa immune :name "immune")
   (:var mv30276 :isa gene :plural t :has-determiner "THE" :expresses mv30271 :raw-text "genes")
   (:var mv30271 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv30257 mv30258 mv30259))
   (:var mv30257 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30258 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv30259 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv30283 :isa utilize :participant mv30289 :object mv30285 :present "PRESENT" :raw-text
    "utilize")
   (:var mv30289 :isa pathway :plural t :has-determiner "WHICH" :modifier mv30280 :raw-text
    "pathways")
   (:var mv30280 :isa database :name "KEGG" :uid "KEGG")
   (:var mv30285 :isa gene :plural t :predication mv30286 :raw-text "genes")
   (:var mv30286 :isa regulate :object mv30285 :agent mv30278 :past "PAST" :raw-text "regulated")
   (:var mv30278 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv30296 :isa utilize :participant mv30299 :object mv30297 :present "PRESENT" :raw-text
    "utilize")
   (:var mv30299 :isa pathway :plural t :has-determiner "WHICH" :modifier mv30293 :raw-text
    "pathways")
   (:var mv30293 :isa database :name "Reactome" :uid "Reactome")
   (:var mv30297 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv30304 :isa utilize :participant mv30307 :object mv30305 :present "PRESENT" :raw-text
    "utilize")
   (:var mv30307 :isa pathway :plural t :has-determiner "WHICH" :modifier mv30301 :raw-text
    "pathways")
   (:var mv30301 :isa database :name "KEGG" :uid "KEGG")
   (:var mv30305 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv30315 :isa regulate :|affected-process-OR-object| mv30311 :agent mv30308 :present
    "PRESENT" :raw-text "regulated")
   (:var mv30311 :isa pronoun/plural :quantifier mv30309 :word "them") (:var mv30309 :isa which)
   (:var mv30308 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv30325 :isa gene-transcript-express :object mv30320 :organ mv30324 :present "PRESENT"
    :raw-text "expressed")
   (:var mv30320 :isa these :quantifier mv30318 :word "these") (:var mv30318 :isa which)
   (:var mv30324 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv30338 :isa copular-predication-of-pp :item mv30330 :value mv30336 :prep mv30332
    :predicate mv30331)
   (:var mv30330 :isa these :quantifier mv30328 :word "these") (:var mv30328 :isa which)
   (:var mv30336 :isa pathway :plural t :modifier mv30333 :raw-text "pathways")
   (:var mv30333 :isa immune :name "immune") (:var mv30332 :isa in :word "in")
   (:var mv30331 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv30345 :isa phosphorylate :substrate mv30346 :agent mv30344 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv30346 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv30344 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv30350 :isa be :subject mv30349 :predicate mv30352 :present "PRESENT")
   (:var mv30349 :isa these :quantifier mv30347 :word "these") (:var mv30347 :isa which)
   (:var mv30352 :isa kinase :plural t :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv30361 :isa regulate :|affected-process-OR-object| mv30357 :agent mv30354 :present
    "PRESENT" :raw-text "regulated")
   (:var mv30357 :isa those :quantifier mv30355 :word "those") (:var mv30355 :isa which)
   (:var mv30354 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv30371 :isa regulate :|affected-process-OR-object| mv30367 :agent mv30364 :present
    "PRESENT" :raw-text "regulated")
   (:var mv30367 :isa these :quantifier mv30365 :word "these") (:var mv30365 :isa which)
   (:var mv30364 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv30381 :isa regulate :|affected-process-OR-object| mv30376 :agent mv30380 :present
    "PRESENT" :raw-text "regulated")
   (:var mv30376 :isa these :quantifier mv30374 :word "these") (:var mv30374 :isa which)
   (:var mv30380 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv30400 :isa share :object mv30399 :participant mv30401 :present "PRESENT" :raw-text
    "shared")
   (:var mv30399 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv30401 :isa gene :plural t :expresses mv30398 :raw-text "genes")
   (:var mv30398 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv30384 mv30385 mv30394 mv30386 mv30387))
   (:var mv30384 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30385 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv30394 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv30386 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv30387 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv30415 :isa share :object mv30414 :participant mv30413 :present "PRESENT" :raw-text
    "shared")
   (:var mv30414 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv30413 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv30403 mv30404 mv30405))
   (:var mv30403 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30404 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv30405 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv30434 :isa share :object mv30433 :participant mv30436 :present "PRESENT" :raw-text
    "shared")
   (:var mv30433 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv30436 :isa gene :plural t :has-determiner "THE" :expresses mv30432 :raw-text "genes")
   (:var mv30432 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv30417 mv30418 mv30428 mv30419 mv30420))
   (:var mv30417 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30418 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv30428 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv30419 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv30420 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv30443 :isa involve :theme mv30446 :object mv30445 :present "PRESENT")
   (:var mv30446 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv30445 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv30438 mv30439))
   (:var mv30438 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv30439 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv30450 :isa involve :theme mv30452 :object mv30451 :present "PRESENT")
   (:var mv30452 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv30451 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv30457 :isa bio-use :agent mv30459 :object mv30458 :present "PRESENT" :raw-text "use")
   (:var mv30459 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv30458 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv30464 :isa bio-use :agent mv30466 :object mv30465 :present "PRESENT" :raw-text "use")
   (:var mv30466 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv30465 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv30470 :isa utilize :participant mv30472 :object mv30471 :present "PRESENT" :raw-text
    "utilize")
   (:var mv30472 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv30471 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv30476 :isa utilize :participant mv30480 :object mv30481 :present "PRESENT" :raw-text
    "utilize")
   (:var mv30480 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv30481 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv30490 :isa target :object mv30489 :agent mv30482 :present "PRESENT" :raw-text
    "targeted")
   (:var mv30489 :isa protein :plural t :has-determiner "WHICH" :raw-text "proteins")
   (:var mv30482 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv30496 :isa utilize :participant mv30499 :object mv30497 :present "PRESENT" :raw-text
    "utilize")
   (:var mv30499 :isa pathway :plural t :has-determiner "WHICH" :modifier mv30493 :raw-text
    "pathways")
   (:var mv30493 :isa database :name "Reactome" :uid "Reactome")
   (:var mv30497 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv30513 :isa copular-predication-of-pp :item mv30508 :value mv30512 :prep "IN" :predicate
    mv30504)
   (:var mv30508 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv30512 :isa transcription-factor :plural t :in-pathway mv30502 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv30502 :isa signaling-pathway :has-determiner "THE" :modifier mv30507 :raw-text
    "signaling pathway")
   (:var mv30507 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv30504 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv30519 :isa regulate :agent mv30523 :object mv30517 :present "PRESENT" :raw-text
    "regulate")
   (:var mv30523 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv30517 :isa protein :organ mv30522 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv30522 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv30529 :isa regulate :agent mv30530 :object mv30527 :present "PRESENT" :raw-text
    "regulate")
   (:var mv30530 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv30527 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv30537 :isa explicit-suggestion :suggestion mv30533 :marker let-as-directive)
   (:var mv30533 :isa move-something-somewhere :at-relative-location mv30535 :theme mv30532
    :present "PRESENT")
   (:var mv30535 :isa top-qua-location)
   (:var mv30532 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv30546 :isa explicit-suggestion :suggestion mv30540 :marker let-as-directive)
   (:var mv30540 :isa show :at-relative-location mv30544 :|statement-OR-theme| mv30539 :present
    "PRESENT")
   (:var mv30544 :isa top-qua-location)
   (:var mv30539 :isa protein :has-determiner "THE" :predication mv30542 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv30542 :isa phosphorylate :substrate mv30539 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv30549 :isa be :subject mv30548 :predicate mv30561 :present "PRESENT")
   (:var mv30548 :isa what)
   (:var mv30561 :isa upstream-segment :plural t :pathwaycomponent mv30557 :has-determiner "THE"
    :predication mv30551 :raw-text "upstreams")
   (:var mv30557 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv30547 mv30556))
   (:var mv30547 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv30556 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv30551 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv30569 :isa polar-question :statement mv30564)
   (:var mv30564 :isa gene-transcript-express :object mv30562 :organ mv30567 :past "PAST" :raw-text
    "expressed")
   (:var mv30562 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30567 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv30576 :isa polar-question :statement mv30572)
   (:var mv30572 :isa gene-transcript-express :object mv30570 :organ mv30574 :past "PAST" :raw-text
    "expressed")
   (:var mv30570 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30574 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv30578 :isa show :at-relative-location mv30581 :|statement-OR-theme| mv30577 :present
    "PRESENT")
   (:var mv30581 :isa top-qua-location)
   (:var mv30577 :isa protein :predication mv30579 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv30579 :isa phosphorylate :substrate mv30577 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv30585 :isa be :subject mv30584 :predicate mv30597 :present "PRESENT")
   (:var mv30584 :isa what)
   (:var mv30597 :isa upstream-segment :plural t :pathwaycomponent mv30593 :has-determiner "THE"
    :predication mv30587 :raw-text "upstreams")
   (:var mv30593 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv30583 mv30592))
   (:var mv30583 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv30592 :isa bio-entity :name "BRA") (:var mv30587 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv30605 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv30599 mv30603))
   (:var mv30599 :isa bio-activate :agent mv30598 :object mv30600 :present "PRESENT" :raw-text
    "activates")
   (:var mv30598 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv30600 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv30603 :isa bio-activate :agent mv30602 :object mv30604 :present "PRESENT" :raw-text
    "activates")
   (:var mv30602 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv30604 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv30607 :isa be :subject mv30606 :predicate mv30609 :present "PRESENT")
   (:var mv30606 :isa what)
   (:var mv30609 :isa path :end mv30613 :start mv30611 :has-determiner "THE")
   (:var mv30613 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv30611 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv30616 :isa remove :object mv30623 :present "PRESENT" :raw-text "remove")
   (:var mv30623 :isa fact :statement mv30621 :has-determiner "THE")
   (:var mv30621 :isa bio-activate :agent mv30620 :object mv30622 :present "PRESENT" :raw-text
    "activates")
   (:var mv30620 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv30622 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv30631 :isa explicit-suggestion :suggestion mv30626 :marker let-as-directive)
   (:var mv30626 :isa show :at-relative-location mv30629 :|statement-OR-theme| mv30625 :present
    "PRESENT")
   (:var mv30629 :isa top-qua-location)
   (:var mv30625 :isa protein :predication mv30627 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv30627 :isa phosphorylate :substrate mv30625 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv30635 :isa be :subject mv30634 :predicate mv30641 :present "PRESENT")
   (:var mv30634 :isa what)
   (:var mv30641 :isa positive-regulator :plural t :theme mv30639 :raw-text "positive regulators")
   (:var mv30639 :isa gene :has-determiner "THE" :expresses mv30638 :raw-text "gene")
   (:var mv30638 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv30646 :isa regulate :agent mv30649 :object mv30647 :present "PRESENT" :raw-text
    "regulate")
   (:var mv30649 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30647 :isa protein :organ mv30644 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv30644 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv30662 :isa polar-question :statement mv30659)
   (:var mv30659 :isa there-exists :value mv30661 :predicate mv30652)
   (:var mv30661 :isa drug :plural t :predication mv30657 :quantifier mv30654 :raw-text "drugs")
   (:var mv30657 :isa inhibit :agent mv30661 :object mv30658 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv30658 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv30654 :isa any :word "any") (:var mv30652 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv30674 :isa polar-question :statement mv30671)
   (:var mv30671 :isa there-exists :value mv30673 :predicate mv30664)
   (:var mv30673 :isa drug :plural t :predication mv30669 :quantifier mv30666 :raw-text "drugs")
   (:var mv30669 :isa target :agent mv30673 :object mv30670 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv30670 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv30666 :isa any :word "any") (:var mv30664 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv30696 :isa polar-question :statement mv30689)
   (:var mv30689 :isa there-exists :value mv30695 :predicate mv30677)
   (:var mv30695 :isa gene :plural t :predication mv30691 :organ mv30684 :quantifier mv30679
    :raw-text "genes")
   (:var mv30691 :isa regulate :object mv30695 :that-rel t :agent mv30675 :present "PRESENT"
    :raw-text "regulated")
   (:var mv30675 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30684 :isa liver :has-determiner "THE") (:var mv30679 :isa any :word "any")
   (:var mv30677 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv30717 :isa polar-question :statement mv30711)
   (:var mv30711 :isa there-exists :value mv30716 :predicate mv30699)
   (:var mv30716 :isa gene :plural t :predication mv30704 :quantifier mv30701 :raw-text "genes")
   (:var mv30704 :isa involve :object mv30716 :theme mv30706 :past "PAST")
   (:var mv30706 :isa apoptosis :predication mv30713 :raw-text "apoptosis")
   (:var mv30713 :isa regulate :affected-process mv30706 :that-rel t :agent mv30697 :present
    "PRESENT" :raw-text "regulated")
   (:var mv30697 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30701 :isa any :word "any") (:var mv30699 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv30729 :isa there-exists :predicate mv30720)
   (:var mv30720 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv30742 :isa polar-question :statement mv30738)
   (:var mv30738 :isa there-exists :value mv30741 :predicate mv30732)
   (:var mv30741 :isa inhibitor :plural t :|target-OR-protein| mv30730 :quantifier mv30734
    :raw-text "inhibitors")
   (:var mv30730 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv30734 :isa any :word "any") (:var mv30732 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf"
   (:var mv30757 :isa polar-question :statement mv30753)
   (:var mv30753 :isa there-exists :value mv30756 :predicate mv30745)
   (:var mv30756 :isa gene :plural t :predication mv30749 :raw-text "genes")
   (:var mv30749 :isa regulate :object mv30756 :agent mv30754 :past "PAST" :raw-text "regulated")
   (:var mv30754 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv30743 mv30752))
   (:var mv30743 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv30752 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv30745 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv30772 :isa polar-question :statement mv30762)
   (:var mv30762 :isa bio-find :agent mv30760 :object mv30758 :modal "CAN" :raw-text "find")
   (:var mv30760 :isa interlocutor :name "hearer")
   (:var mv30758 :isa protein :quantifier mv30763 :cellular-process mv30764 :context mv30767
    :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30763 :isa any :word "any") (:var mv30764 :isa apoptosis :raw-text "apoptotic")
   (:var mv30767 :isa pathway :plural t :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?" (:var mv30774 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv30812 :isa polar-question :statement mv30811) (:var mv30811 :isa look-up :actor mv30793)
   (:var mv30793 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv30824 :isa polar-question :statement mv30816)
   (:var mv30816 :isa show :agent mv30815 :|statement-OR-theme| mv30823 :beneficiary mv30817 :modal
    "CAN")
   (:var mv30815 :isa interlocutor :name "hearer")
   (:var mv30823 :isa gene :plural t :predication mv30820 :raw-text "genes")
   (:var mv30820 :isa regulate :object mv30823 :agent mv30813 :past "PAST" :raw-text "regulated")
   (:var mv30813 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv30817 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv30839 :isa polar-question :statement mv30828)
   (:var mv30828 :isa show :agent mv30827 :|statement-OR-theme| mv30838 :beneficiary mv30829 :modal
    "CAN")
   (:var mv30827 :isa interlocutor :name "hearer")
   (:var mv30838 :isa gene :plural t :predication mv30836 :raw-text "genes")
   (:var mv30836 :isa regulate :object mv30838 :that-rel t :agent mv30825 :modal "CAN" :raw-text
    "regulated")
   (:var mv30825 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv30829 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv30849 :isa polar-question :statement mv30842)
   (:var mv30842 :isa show :agent mv30841 :|statement-OR-theme| mv30845 :beneficiary mv30843 :modal
    "CAN")
   (:var mv30841 :isa interlocutor :name "hearer")
   (:var mv30845 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv30843 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv30863 :isa polar-question :statement mv30853)
   (:var mv30853 :isa tell :agent mv30852 :theme mv30862 :beneficiary mv30854 :modal "CAN")
   (:var mv30852 :isa interlocutor :name "hearer")
   (:var mv30862 :isa gene :plural t :predication mv30858 :has-determiner "THE" :raw-text "genes")
   (:var mv30858 :isa regulate :object mv30862 :agent mv30850 :past "PAST" :raw-text "regulated")
   (:var mv30850 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30854 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv30876 :isa polar-question :statement mv30867)
   (:var mv30867 :isa tell :agent mv30866 :theme mv30875 :beneficiary mv30868 :modal "CAN")
   (:var mv30866 :isa interlocutor :name "hearer")
   (:var mv30875 :isa gene :plural t :predication mv30873 :has-determiner "THE" :raw-text "genes")
   (:var mv30873 :isa regulate :object mv30875 :that-rel t :agent mv30864 :present "PRESENT"
    :raw-text "regulates")
   (:var mv30864 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30868 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv30893 :isa polar-question :statement mv30880)
   (:var mv30880 :isa tell :agent mv30879 :theme mv30892 :beneficiary mv30881 :modal "CAN")
   (:var mv30879 :isa interlocutor :name "hearer")
   (:var mv30892 :isa gene :plural t :predication mv30890 :has-determiner "THE" :raw-text "genes")
   (:var mv30890 :isa regulate :object mv30892 :that-rel t :agent mv30877 :modal "CAN" :raw-text
    "regulated")
   (:var mv30877 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30881 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv30911 :isa polar-question :statement mv30897)
   (:var mv30897 :isa tell :agent mv30896 :theme mv30910 :beneficiary mv30898 :modal "CAN")
   (:var mv30896 :isa interlocutor :name "hearer")
   (:var mv30910 :isa gene :plural t :predication mv30909 :has-determiner "THE" :raw-text "genes")
   (:var mv30909 :isa regulate :object mv30910 :agent mv30894 :modal mv30895 :raw-text "regulated")
   (:var mv30894 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30895 :isa can) (:var mv30898 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv30929 :isa polar-question :statement mv30917)
   (:var mv30917 :isa tell :agent mv30916 :theme mv30927 :theme mv30918 :modal "CAN")
   (:var mv30916 :isa interlocutor :name "hearer")
   (:var mv30927 :isa share :object mv30926 :participant mv30925 :modal "CAN" :raw-text "shared")
   (:var mv30926 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv30925 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv30914 mv30924))
   (:var mv30914 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv30924 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv30918 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv30944 :isa polar-question :statement mv30933)
   (:var mv30933 :isa tell :agent mv30932 :theme mv30942 :theme mv30934 :modal "CAN")
   (:var mv30932 :isa interlocutor :name "hearer")
   (:var mv30942 :isa regulate :object mv30941 :agent mv30930 :modal "CAN" :raw-text "regulated")
   (:var mv30941 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv30930 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30934 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv30964 :isa polar-question :statement mv30948)
   (:var mv30948 :isa tell :agent mv30947 :theme mv30960 :theme mv30949 :modal "CAN")
   (:var mv30947 :isa interlocutor :name "hearer")
   (:var mv30960 :isa regulate :object mv30963 :agent mv30945 :modal "CAN" :raw-text "regulated")
   (:var mv30963 :isa gene :plural t :organ mv30955 :has-determiner "WHICH" :raw-text "genes")
   (:var mv30955 :isa liver :has-determiner "THE")
   (:var mv30945 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30949 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv30976 :isa polar-question :statement mv30968)
   (:var mv30968 :isa tell :agent mv30967 :theme mv30975 :beneficiary mv30969 :modal "CAN")
   (:var mv30967 :isa interlocutor :name "hearer")
   (:var mv30975 :isa gene :plural t :predication mv30973 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv30973 :isa regulate :object mv30975 :agent mv30965 :present "PRESENT" :raw-text
    "regulates")
   (:var mv30965 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30969 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?"
   (:var mv30986 :isa polar-question :statement mv30984)
   (:var mv30984 :isa affect :agent mv30977 :affected-process mv30982 :raw-text "affect")
   (:var mv30977 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30982 :isa gene-transcript-express :object mv30978 :has-determiner "THE" :raw-text
    "expression")
   (:var mv30978 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv30998 :isa polar-question :statement mv30996)
   (:var mv30996 :isa affect :agent mv30987 :affected-process mv30992 :raw-text "affect")
   (:var mv30987 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv30992 :isa gene-transcript-express :object mv30995 :has-determiner "THE" :raw-text
    "expression")
   (:var mv30995 :isa gene :has-determiner "THE" :expresses mv30988 :raw-text "gene")
   (:var mv30988 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv31011 :isa polar-question :statement mv31009)
   (:var mv31009 :isa increase :agent mv30999 :affected-process mv31005 :raw-text "increase")
   (:var mv30999 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31005 :isa gene-transcript-express :object mv31008 :has-determiner "THE" :raw-text
    "expression")
   (:var mv31008 :isa gene :has-determiner "THE" :expresses mv31000 :raw-text "gene")
   (:var mv31000 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv31023 :isa polar-question :statement mv31021)
   (:var mv31021 :isa increase :agent mv31012 :affected-process mv31017 :raw-text "increase")
   (:var mv31012 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31017 :isa transcribe :object mv31020 :raw-text "transcription")
   (:var mv31020 :isa gene :has-determiner "THE" :expresses mv31013 :raw-text "gene")
   (:var mv31013 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?"
   (:var mv31033 :isa polar-question :statement mv31031)
   (:var mv31031 :isa affect :agent mv31024 :affected-process mv31028 :raw-text "affect")
   (:var mv31024 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31028 :isa gene-transcript-express :object mv31030 :has-determiner "THE" :raw-text
    "expression")
   (:var mv31030 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv31043 :isa polar-question :statement mv31042)
   (:var mv31042 :isa contain :theme mv31040 :patient mv31034)
   (:var mv31040 :isa pathway :has-determiner "THE" :modifier mv31037 :raw-text "pathway")
   (:var mv31037 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv31034 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv31046 :isa bio-find :object mv31048 :present "PRESENT" :raw-text "Find")
   (:var mv31048 :isa treatment :disease mv31044 :has-determiner "A" :raw-text "treatment")
   (:var mv31044 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv31053 :isa bio-find :object mv31063 :present "PRESENT" :raw-text "Find")
   (:var mv31063 :isa gene :plural t :predication mv31059 :organ mv31058 :raw-text "genes")
   (:var mv31059 :isa regulate :object mv31063 :agent mv31051 :past "PAST" :raw-text "regulated")
   (:var mv31051 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31058 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv31067 :isa bio-find :object mv31072 :present "PRESENT" :raw-text "Find")
   (:var mv31072 :isa gene :plural t :predication mv31071 :raw-text "genes")
   (:var mv31071 :isa regulate :object mv31072 :that-rel t :agent mv31065 :present "PRESENT"
    :raw-text "regulates")
   (:var mv31065 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv31077 :isa bio-find :object mv31074 :present "PRESENT" :raw-text "Find")
   (:var mv31074 :isa transcription-factor :plural t :predication mv31078 :raw-text
    "transcription factors")
   (:var mv31078 :isa share :object mv31074 :participant mv31082 :past "PAST" :raw-text "shared")
   (:var mv31082 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv31075 mv31081))
   (:var mv31075 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv31081 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv31089 :isa bio-activate :manner mv31086 :agent mv31088 :object mv31085 :present
    "PRESENT" :raw-text "activate")
   (:var mv31086 :isa how)
   (:var mv31088 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv31085 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv31094 :isa regulate :manner mv31092 :agent mv31090 :object mv31096 :present "PRESENT"
    :raw-text "regulate")
   (:var mv31092 :isa how)
   (:var mv31090 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31096 :isa gene :has-determiner "THE" :expresses mv31091 :raw-text "gene")
   (:var mv31091 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv31112 :isa knock-out :raw-text "knocking out" :|agent-OR-cause| mv31098 :object mv31116)
   (:var mv31098 :isa how) (:var mv31116 :isa cancer :modifier mv31102 :modifier mv31102)
   (:var mv31102 :isa cause :by-means-of mv31114 :raw-text "cause")
   (:var mv31114 :isa effect :object mv31111 :participant mv31106 :raw-text "effect")
   (:var mv31111 :isa micro-rna :plural t :raw-text "miRNAs")
   (:var mv31106 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv31120 :isa regulate :manner mv31118 :agent mv31117 :affected-process mv31121 :present
    "PRESENT" :raw-text "regulate")
   (:var mv31118 :isa how)
   (:var mv31117 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31121 :isa apoptosis :organ mv31124 :raw-text "apoptosis")
   (:var mv31124 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv31129 :isa regulate :manner mv31127 :agent mv31126 :affected-process mv31130 :present
    "PRESENT" :raw-text "regulate")
   (:var mv31127 :isa how)
   (:var mv31126 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31130 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv31134 :isa regulate :manner mv31132 :agent mv31131 :object mv31139 :present "PRESENT"
    :raw-text "regulate")
   (:var mv31132 :isa how)
   (:var mv31131 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31139 :isa gene :plural t :cellular-process mv31135 :raw-text "genes")
   (:var mv31135 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv31149 :isa wh-question :statement mv31142 :wh how)
   (:var mv31142 :isa be :predicate mv31140 :present "PRESENT")
   (:var mv31140 :isa protein :predication mv31143 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv31143 :isa involve :object mv31140 :theme mv31147 :past "PAST")
   (:var mv31147 :isa regulate :cellular-process mv31145 :raw-text "regulation")
   (:var mv31145 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv31162 :isa wh-question :statement mv31152 :wh how)
   (:var mv31152 :isa be :predicate mv31150 :present "PRESENT")
   (:var mv31150 :isa protein :predication mv31153 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv31153 :isa involve :object mv31150 :theme mv31155 :past "PAST")
   (:var mv31155 :isa regulate :organ mv31158 :|agent-OR-object| mv31159 :raw-text "regulation")
   (:var mv31158 :isa liver :has-determiner "THE")
   (:var mv31159 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv31171 :isa wh-question :statement mv31165 :wh how)
   (:var mv31165 :isa be :predicate mv31163 :present "PRESENT")
   (:var mv31163 :isa protein :predication mv31166 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv31166 :isa involve :object mv31163 :theme mv31168 :past "PAST")
   (:var mv31168 :isa regulate :affected-process mv31169 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv31169 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv31180 :isa wh-question :statement mv31174 :wh how)
   (:var mv31174 :isa be :predicate mv31172 :present "PRESENT")
   (:var mv31172 :isa protein :predication mv31175 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv31175 :isa bio-use :object mv31172 :theme mv31179 :past "PAST" :raw-text "used")
   (:var mv31179 :isa regulate :affected-process mv31178 :raw-text "regulate")
   (:var mv31178 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv31194 :isa copular-predication-of-pp :item mv31189 :value mv31193 :prep "IN" :predicate
    mv31185)
   (:var mv31189 :isa gene :plural t :quantifier how-many :raw-text "genes")
   (:var mv31193 :isa gene :plural t :context mv31182 :quantifier how-many :raw-text "genes")
   (:var mv31182 :isa signaling-pathway :has-determiner "THE" :modifier mv31188 :raw-text
    "signaling pathway")
   (:var mv31188 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv31185 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv31203 :isa affect :manner mv31198 :modal mv31199 :agent mv31201 :object mv31197 :present
    "PRESENT" :raw-text "affect")
   (:var mv31198 :isa how) (:var mv31199 :isa might)
   (:var mv31201 :isa mutation :has-determiner "A" :|agent-OR-object| mv31196 :raw-text "mutation")
   (:var mv31196 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31197 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv31211 :isa polar-question :statement mv31206)
   (:var mv31206 :isa be :subject mv31204 :predicate mv31208)
   (:var mv31204 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31208 :isa regulator :theme mv31205 :has-determiner "A" :raw-text "regulator")
   (:var mv31205 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv31219 :isa polar-question :statement mv31214)
   (:var mv31214 :isa be :subject mv31212 :predicate mv31216)
   (:var mv31212 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31216 :isa regulator :theme mv31213 :has-determiner "A" :raw-text "regulator")
   (:var mv31213 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv31229 :isa polar-question :statement mv31222)
   (:var mv31222 :isa be :subject mv31220 :predicate mv31224)
   (:var mv31220 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31224 :isa regulator :theme mv31227 :has-determiner "A" :raw-text "regulator")
   (:var mv31227 :isa gene :has-determiner "THE" :expresses mv31221 :raw-text "gene")
   (:var mv31221 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv31239 :isa polar-question :statement mv31232)
   (:var mv31232 :isa be :subject mv31230 :predicate mv31234)
   (:var mv31230 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31234 :isa regulator :theme mv31237 :has-determiner "A" :raw-text "regulator")
   (:var mv31237 :isa gene :has-determiner "THE" :expresses mv31231 :raw-text "gene")
   (:var mv31231 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv31248 :isa polar-question :statement mv31243)
   (:var mv31243 :isa be :subject mv31240 :predicate mv31241)
   (:var mv31240 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31241 :isa transcription-factor :controlled-gene mv31246 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv31246 :isa gene :expresses mv31242 :raw-text "gene")
   (:var mv31242 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos"
   (:var mv31256 :isa polar-question :statement mv31252)
   (:var mv31252 :isa be :subject mv31249 :predicate mv31250)
   (:var mv31249 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31250 :isa transcription-factor :controlled-gene mv31251 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv31251 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?"
   (:var mv31264 :isa polar-question :statement mv31260)
   (:var mv31260 :isa be :subject mv31257 :predicate mv31258)
   (:var mv31257 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31258 :isa transcription-factor :controlled-gene mv31259 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv31259 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv31274 :isa polar-question :statement mv31268)
   (:var mv31268 :isa be :subject mv31265 :predicate mv31266)
   (:var mv31265 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31266 :isa transcription-factor :controlled-gene mv31272 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv31272 :isa gene :has-determiner "THE" :expresses mv31267 :raw-text "gene")
   (:var mv31267 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv31281 :isa polar-question :statement mv31278)
   (:var mv31278 :isa regulate :object mv31275 :agent mv31276 :past "PAST" :raw-text "regulated")
   (:var mv31275 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31276 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv31291 :isa polar-question :statement mv31285)
   (:var mv31285 :isa be :subject mv31282 :predicate mv31283)
   (:var mv31282 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31283 :isa transcription-factor :controlled-gene mv31289 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv31289 :isa gene :has-determiner "THE" :expresses mv31284 :raw-text "gene")
   (:var mv31284 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv31293 :isa list :theme mv31295 :present "PRESENT")
   (:var mv31295 :isa gene :plural t :predication mv31296 :raw-text "genes")
   (:var mv31296 :isa regulate :object mv31295 :agent mv31292 :past "PAST" :raw-text "regulated")
   (:var mv31292 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1"
   (:var mv31301 :isa list :theme mv31310 :present "PRESENT")
   (:var mv31310 :isa gene :plural t :predication mv31308 :raw-text "genes")
   (:var mv31308 :isa regulate :object mv31310 :that-rel t :agent mv31300 :present "PRESENT"
    :raw-text "regulated")
   (:var mv31300 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates"
   (:var mv31312 :isa list :theme mv31319 :present "PRESENT")
   (:var mv31319 :isa gene :plural t :predication mv31317 :quantifier mv31313 :raw-text "genes")
   (:var mv31317 :isa regulate :object mv31319 :that-rel t :agent mv31311 :present "PRESENT"
    :raw-text "regulates")
   (:var mv31311 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31313 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv31321 :isa list :theme mv31327 :present "PRESENT")
   (:var mv31327 :isa gene :plural t :predication mv31325 :has-determiner "THE" :raw-text "genes")
   (:var mv31325 :isa regulate :object mv31327 :agent mv31320 :present "PRESENT" :raw-text
    "regulates")
   (:var mv31320 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv31329 :isa list :theme mv31340 :present "PRESENT")
   (:var mv31340 :isa gene :plural t :predication mv31338 :has-determiner "THE" :raw-text "genes")
   (:var mv31338 :isa regulate :object mv31340 :that-rel t :agent mv31328 :present "PRESENT"
    :raw-text "regulated")
   (:var mv31328 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates"
   (:var mv31342 :isa list :theme mv31349 :present "PRESENT")
   (:var mv31349 :isa gene :plural t :predication mv31347 :has-determiner "THE" :raw-text "genes")
   (:var mv31347 :isa regulate :object mv31349 :agent mv31341 :present "PRESENT" :raw-text
    "regulates")
   (:var mv31341 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv31350 :isa list :theme mv31352 :present "PRESENT")
   (:var mv31352 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv31357 :isa show :|statement-OR-theme| mv31364 :beneficiary mv31358 :present "PRESENT")
   (:var mv31364 :isa gene :plural t :predication mv31361 :raw-text "genes")
   (:var mv31361 :isa regulate :object mv31364 :agent mv31356 :past "PAST" :raw-text "regulated")
   (:var mv31356 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv31358 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv31366 :isa show :|statement-OR-theme| mv31376 :beneficiary mv31367 :present "PRESENT")
   (:var mv31376 :isa gene :plural t :predication mv31374 :raw-text "genes")
   (:var mv31374 :isa regulate :object mv31376 :that-rel t :agent mv31365 :present "PRESENT"
    :raw-text "regulated")
   (:var mv31365 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv31367 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv31378 :isa show :|statement-OR-theme| mv31384 :beneficiary mv31379 :present "PRESENT")
   (:var mv31384 :isa gene :plural t :predication mv31383 :raw-text "genes")
   (:var mv31383 :isa regulate :object mv31384 :that-rel t :agent mv31377 :present "PRESENT"
    :raw-text "regulates")
   (:var mv31377 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31379 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv31385 :isa show :|statement-OR-theme| mv31388 :beneficiary mv31386 :present "PRESENT")
   (:var mv31388 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv31386 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv31407 :isa show :statement mv31405 :theme mv31396 :present "PRESENT")
   (:var mv31405 :isa share :object mv31404 :participant mv31403 :present "PRESENT" :raw-text
    "shared")
   (:var mv31404 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv31403 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv31394 mv31402))
   (:var mv31394 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv31402 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv31396 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv31420 :isa show :statement mv31418 :theme mv31410 :present "PRESENT")
   (:var mv31418 :isa regulate :object mv31417 :agent mv31408 :present "PRESENT" :raw-text
    "regulated")
   (:var mv31417 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv31408 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31410 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv31422 :isa show :|statement-OR-theme| mv31429 :present "PRESENT")
   (:var mv31429 :isa gene :plural t :predication mv31427 :has-determiner "THE" :raw-text "genes")
   (:var mv31427 :isa regulate :object mv31429 :agent mv31421 :present "PRESENT" :raw-text
    "regulates")
   (:var mv31421 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv31430 :isa show :|statement-OR-theme| mv31432 :present "PRESENT")
   (:var mv31432 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv31439 :isa show :|statement-OR-theme| mv31449 :present "PRESENT")
   (:var mv31449 :isa transcription-factor :plural t :predication mv31447 :raw-text
    "transcription factors")
   (:var mv31447 :isa share :object mv31449 :that-rel t :participant mv31446 :present "PRESENT"
    :raw-text "shared")
   (:var mv31446 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv31438 mv31445))
   (:var mv31438 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv31445 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv31451 :isa tell :theme mv31464 :beneficiary mv31452 :present "PRESENT")
   (:var mv31464 :isa gene :plural t :predication mv31463 :has-determiner "THE" :raw-text "genes")
   (:var mv31463 :isa regulate :object mv31464 :agent mv31450 :present "PRESENT" :raw-text
    "regulated")
   (:var mv31450 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31452 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv31466 :isa tell :theme mv31478 :theme mv31467 :present "PRESENT")
   (:var mv31478 :isa regulate :object mv31477 :agent mv31476 :present "PRESENT" :raw-text
    "regulated")
   (:var mv31477 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv31476 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv31465 mv31475))
   (:var mv31465 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv31475 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv31467 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv31481 :isa tell :theme mv31490 :theme mv31482 :present "PRESENT")
   (:var mv31490 :isa regulate :object mv31489 :agent mv31480 :present "PRESENT" :raw-text
    "regulated")
   (:var mv31489 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv31480 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31482 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv31495 :isa be :subject mv31494 :predicate mv31499 :present "PRESENT")
   (:var mv31494 :isa what)
   (:var mv31499 :isa positive-regulator :plural t :theme mv31497 :raw-text "positive regulators")
   (:var mv31497 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv31502 :isa be :subject mv31501 :predicate mv31509 :present "PRESENT")
   (:var mv31501 :isa what)
   (:var mv31509 :isa regulator :plural t :theme mv31500 :quantifier mv31503 :raw-text
    "regulators")
   (:var mv31500 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv31503 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv31516 :isa be :subject mv31515 :predicate mv31528 :present "PRESENT")
   (:var mv31515 :isa what)
   (:var mv31528 :isa regulator :plural t :theme mv31524 :has-determiner "THE" :predication mv31518
    :raw-text "regulators")
   (:var mv31524 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv31510 mv31511 mv31522 mv31512 mv31513 mv31514))
   (:var mv31510 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv31511 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv31522 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv31512 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv31513 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv31514 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv31518 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv31531 :isa be :subject mv31530 :predicate mv31543 :present "PRESENT")
   (:var mv31530 :isa what)
   (:var mv31543 :isa regulator :plural t :theme mv31539 :has-determiner "THE" :predication mv31533
    :raw-text "regulators")
   (:var mv31539 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv31529 mv31538))
   (:var mv31529 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv31538 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv31533 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv31546 :isa be :subject mv31545 :predicate mv31558 :present "PRESENT")
   (:var mv31545 :isa what)
   (:var mv31558 :isa regulator :plural t :theme mv31554 :has-determiner "THE" :predication mv31548
    :raw-text "regulators")
   (:var mv31554 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv31544 mv31553))
   (:var mv31544 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv31553 :isa bio-entity :name "srg") (:var mv31548 :isa common))
  ("What are the common regulators of those genes"
   (:var mv31560 :isa be :subject mv31559 :predicate mv31573 :present "PRESENT")
   (:var mv31559 :isa what)
   (:var mv31573 :isa regulator :plural t :theme mv31571 :has-determiner "THE" :predication mv31562
    :raw-text "regulators")
   (:var mv31571 :isa gene :plural t :has-determiner "THOSE" :raw-text "genes")
   (:var mv31562 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv31576 :isa be :subject mv31575 :predicate mv31584 :present "PRESENT")
   (:var mv31575 :isa what)
   (:var mv31584 :isa gene :plural t :predication mv31580 :has-determiner "THE" :raw-text "genes")
   (:var mv31580 :isa regulate :object mv31584 :agent mv31574 :past "PAST" :raw-text "regulated")
   (:var mv31574 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv31587 :isa be :subject mv31586 :predicate mv31594 :present "PRESENT")
   (:var mv31586 :isa what)
   (:var mv31594 :isa gene :plural t :predication mv31592 :has-determiner "THE" :raw-text "genes")
   (:var mv31592 :isa regulate :object mv31594 :agent mv31585 :present "PRESENT" :raw-text
    "regulates")
   (:var mv31585 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv31599 :isa be :subject mv31598 :predicate mv31613 :present "PRESENT")
   (:var mv31598 :isa what)
   (:var mv31613 :isa regulator :plural t :theme mv31609 :has-determiner "THE" :modifier mv31602
    :raw-text "regulators")
   (:var mv31609 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv31606 mv31607 mv31595 mv31596 mv31597))
   (:var mv31606 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv31607 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv31595 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31596 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv31597 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv31602 :isa frequent :comparative mv31601 :name "frequent")
   (:var mv31601 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv31620 :isa be :subject mv31619 :predicate mv31629 :present "PRESENT")
   (:var mv31619 :isa what)
   (:var mv31629 :isa transcription-factor :plural t :predication mv31623 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv31623 :isa regulate :agent mv31629 :that-rel t :object mv31627 :present "PRESENT"
    :raw-text "regulate")
   (:var mv31627 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv31624 mv31625 mv31616 mv31617 mv31618))
   (:var mv31624 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv31625 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv31616 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31617 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv31618 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv31645 :isa copular-predication-of-pp :item mv31640 :value mv31644 :prep "IN" :predicate
    mv31634)
   (:var mv31640 :isa gene :plural t :has-determiner "WHAT" :modifier mv31631 :raw-text "genes")
   (:var mv31631 :isa other :name "other")
   (:var mv31644 :isa gene :plural t :context mv31638 :has-determiner "WHAT" :modifier mv31631
    :raw-text "genes")
   (:var mv31638 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv31634 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv31662 :isa copular-predication-of-pp :item mv31657 :value mv31661 :prep "IN" :predicate
    mv31651)
   (:var mv31657 :isa protein :plural t :has-determiner "WHAT" :modifier mv31648 :raw-text
    "proteins")
   (:var mv31648 :isa other :name "other")
   (:var mv31661 :isa protein :plural t :in-pathway mv31655 :has-determiner "WHAT" :modifier
    mv31648 :raw-text "proteins")
   (:var mv31655 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv31651 :isa be :present "PRESENT"))
  ("What pathways are they in?"
   (:var mv31667 :isa be :subject mv31670 :predicate mv31668 :present "PRESENT")
   (:var mv31670 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv31668 :isa pronoun/plural :word "they"))
  ("What pathways involve SOARING?"
   (:var mv31674 :isa involve :theme mv31676 :object mv31675 :present "PRESENT")
   (:var mv31676 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv31675 :isa soar :progressive "PROGRESSIVE" :raw-text "SOARING"))
  ("What proteins are in the first pathway"
   (:var mv31690 :isa copular-predication-of-pp :item mv31685 :value mv31689 :prep "IN" :predicate
    mv31680)
   (:var mv31685 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv31689 :isa protein :plural t :in-pathway mv31684 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv31684 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv31680 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv31696 :isa involve :theme mv31697 :object mv31692 :present "PRESENT")
   (:var mv31697 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv31692 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv31711 :isa copular-predication-of-pp :item mv31706 :value mv31710 :prep "IN" :predicate
    mv31701)
   (:var mv31706 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv31710 :isa gene :plural t :context mv31705 :has-determiner "WHAT" :raw-text "genes")
   (:var mv31705 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv31701 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv31726 :isa answer :patient mv31724 :modal mv31717 :agent mv31718 :theme mv31723 :present
    "PRESENT")
   (:var mv31724 :isa bio-question :plural t :has-determiner "WHAT") (:var mv31717 :isa can)
   (:var mv31718 :isa interlocutor :name "hearer")
   (:var mv31723 :isa micro-rna :plural t :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv31731 :isa regulate :agent mv31732 :object mv31729 :present "PRESENT" :raw-text
    "regulate")
   (:var mv31732 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv31729 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD"
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
   (:var mv31736 :isa regulate :location mv31734 :agent mv31733 :object mv31737 :present "PRESENT"
    :raw-text "regulate")
   (:var mv31734 :isa where)
   (:var mv31733 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv31737 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv31742 :isa involve :theme mv31745 :object mv31743 :present "PRESENT")
   (:var mv31745 :isa pathway :plural t :has-determiner "WHICH" :modifier mv31739 :raw-text
    "pathways")
   (:var mv31739 :isa database :name "KEGG" :uid "KEGG")
   (:var mv31743 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv31759 :isa copular-predication-of-pp :item mv31754 :value mv31758 :prep "IN" :predicate
    mv31750)
   (:var mv31754 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv31758 :isa gene :plural t :context mv31746 :has-determiner "WHICH" :raw-text "genes")
   (:var mv31746 :isa signaling-pathway :has-determiner "THE" :modifier mv31753 :raw-text
    "signaling pathway")
   (:var mv31753 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv31750 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv31772 :isa involve :object mv31771 :|context-OR-theme| mv31761 :present "PRESENT")
   (:var mv31771 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv31761 :isa signaling-pathway :has-determiner "THE" :predication mv31769 :modifier
    mv31770 :raw-text "signaling pathway")
   (:var mv31769 :isa oncogenic)
   (:var mv31770 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv31777 :isa regulate :agent mv31779 :object mv31778 :present "PRESENT" :raw-text
    "regulate")
   (:var mv31779 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv31778 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv31780 :isa downregulate :agent mv31785 :object mv31784 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv31785 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv31784 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv31786 :isa upregulate :agent mv31791 :object mv31790 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv31791 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv31790 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv31802 :isa copular-predication-of-pp :item mv31794 :value mv31800 :prep mv31796
    :predicate mv31795)
   (:var mv31794 :isa these :quantifier mv31792 :word "these") (:var mv31792 :isa which)
   (:var mv31800 :isa pathway :plural t :modifier mv31797 :raw-text "pathways")
   (:var mv31797 :isa immune :name "immune") (:var mv31796 :isa in :word "in")
   (:var mv31795 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv31814 :isa copular-predication-of-pp :item mv31807 :value mv31812 :prep mv31809
    :predicate mv31808)
   (:var mv31807 :isa these :quantifier mv31805 :word "these") (:var mv31805 :isa which)
   (:var mv31812 :isa pathway :plural t :non-cellular-location mv31804 :raw-text "pathways")
   (:var mv31804 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv31809 :isa in :word "in") (:var mv31808 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv31818 :isa be :subject mv31817 :predicate mv31824 :present "PRESENT")
   (:var mv31817 :isa what)
   (:var mv31824 :isa gene :plural t :predication mv31822 :has-determiner "THE" :raw-text "genes")
   (:var mv31822 :isa regulate :object mv31824 :agent mv31816 :present "PRESENT" :raw-text
    "regulates")
   (:var mv31816 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv31834 :isa copular-predication-of-pp :item mv31827 :value mv31832 :prep mv31829
    :predicate mv31828)
   (:var mv31827 :isa those :quantifier mv31825 :word "those") (:var mv31825 :isa which)
   (:var mv31832 :isa pathway :has-determiner "THE" :modifier mv31831 :raw-text "pathway")
   (:var mv31831 :isa immune :name "immune") (:var mv31829 :isa in :word "in")
   (:var mv31828 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv31840 :isa involve :theme mv31841 :object mv31836 :present "PRESENT")
   (:var mv31841 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv31836 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv31851 :isa polar-question :statement mv31844)
   (:var mv31844 :isa show :agent mv31843 :|statement-OR-theme| mv31847 :beneficiary mv31845 :modal
    "CAN")
   (:var mv31843 :isa interlocutor :name "hearer")
   (:var mv31847 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv31845 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv31857 :isa polar-question :statement mv31856)
   (:var mv31856 :isa inhibit :agent mv31854 :object mv31852 :raw-text "inhibit")
   (:var mv31854 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv31852 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv31867 :isa explicit-suggestion :suggestion mv31859 :marker let-as-directive)
   (:var mv31859 :isa build :artifact mv31861 :present "PRESENT")
   (:var mv31861 :isa model :object mv31865 :has-determiner "A")
   (:var mv31865 :isa neighborhood :has-determiner "THE" :modifier mv31864)
   (:var mv31864 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv31885 :isa collection :type know :number 2 :items (mv31883 mv31884))
   (:var mv31883 :isa know :agent mv31868 :statement mv31874 :present "PRESENT")
   (:var mv31868 :isa interlocutor :name "speaker")
   (:var mv31874 :isa bio-activate :agent mv31873 :object mv31875 :present "PRESENT" :raw-text
    "activates")
   (:var mv31873 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv31875 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv31884 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv31877 mv31881))
   (:var mv31877 :isa bio-activate :agent mv31876 :object mv31878 :present "PRESENT" :raw-text
    "activates")
   (:var mv31876 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv31878 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv31881 :isa bio-activate :agent mv31880 :object mv31882 :present "PRESENT" :raw-text
    "activates")
   (:var mv31880 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv31882 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv31888 :isa phosphorylate :agent mv31886 :substrate mv31887 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv31886 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv31887 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv31891 :isa dephosphorylate :agent mv31889 :substrate mv31890 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv31889 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv31890 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv31902 :isa polar-question :statement mv31901)
   (:var mv31901 :isa copular-predication :item mv31895 :value mv31899 :predicate mv31893)
   (:var mv31895 :isa bio-amount :measured-item mv31892 :has-determiner "THE" :raw-text "amount")
   (:var mv31892 :isa protein :predication mv31897 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv31897 :isa phosphorylate :substrate mv31892 :raw-text "phosphorylated")
   (:var mv31899 :isa high :adverb mv31898) (:var mv31898 :isa always :name "always")
   (:var mv31893 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv31913 :isa polar-question :statement mv31912)
   (:var mv31912 :isa copular-predication :item mv31906 :value mv31910 :predicate mv31904)
   (:var mv31906 :isa bio-amount :measured-item mv31903 :has-determiner "THE" :raw-text "amount")
   (:var mv31903 :isa protein :predication mv31908 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv31908 :isa phosphorylate :substrate mv31903 :raw-text "phosphorylated")
   (:var mv31910 :isa low :adverb mv31909) (:var mv31909 :isa always :name "always")
   (:var mv31904 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv31923 :isa polar-question :statement mv31922)
   (:var mv31922 :isa vanish :agent mv31921 :raw-text "vanish")
   (:var mv31921 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv31915
    :component mv31914)
   (:var mv31915 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv31914 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv31933 :isa polar-question :statement mv31932)
   (:var mv31932 :isa vanish :agent mv31931 :raw-text "vanish")
   (:var mv31931 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv31925
    :component mv31924)
   (:var mv31925 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv31924 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv31963 :isa polar-question :statement mv31962)
   (:var mv31962 :isa event-relation :subordinated-event mv31959 :event mv31955)
   (:var mv31959 :isa wh-question :statement mv31956 :wh if)
   (:var mv31956 :isa increase :|agent-OR-cause| mv31943 :|multiplier-OR-cause| mv31954
    :|affected-process-OR-object| mv31947 :raw-text "increase")
   (:var mv31943 :isa interlocutor :name "person-and-machine")
   (:var mv31954 :isa measurement :number mv31951) (:var mv31951 :isa number :value 10)
   (:var mv31947 :isa bio-amount :measured-item mv31935 :has-determiner "THE" :raw-text "amount")
   (:var mv31935 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv31955 :isa vanish :cause mv31938 :raw-text "vanish")
   (:var mv31938 :isa bio-amount :measured-item mv31934 :has-determiner "THE" :raw-text "amount")
   (:var mv31934 :isa protein :predication mv31940 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv31940 :isa phosphorylate :substrate mv31934 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv31965 :isa show :|statement-OR-theme| mv31972 :beneficiary mv31966 :present "PRESENT")
   (:var mv31972 :isa evidence :statement mv31971 :has-determiner "THE")
   (:var mv31971 :isa regulate :agent mv31970 :object mv31964 :present "PRESENT" :raw-text
    "regulates")
   (:var mv31970 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv31964 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv31966 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv31977 :isa increase :|agent-OR-cause| mv31974 :|affected-process-OR-object| mv31979
    :present "PRESENT" :raw-text "increases")
   (:var mv31974 :isa what)
   (:var mv31979 :isa bio-amount :measured-item mv31973 :has-determiner "THE" :raw-text "amount")
   (:var mv31973 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv31995 :isa copular-predication-of-pp :item mv31990 :value mv31994 :prep "IN" :predicate
    mv31986)
   (:var mv31990 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv31994 :isa kinase :plural t :in-pathway mv31982 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv31982 :isa signaling-pathway :has-determiner "THE" :modifier mv31989 :raw-text
    "signaling pathway")
   (:var mv31989 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv31986 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv32008 :isa polar-question :statement mv32006)
   (:var mv32006 :isa regulate :agent mv31997 :object mv32002 :raw-text "regulate")
   (:var mv31997 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv32002 :isa gene :organ mv32005 :has-determiner "THE" :expresses mv31998 :raw-text
    "gene")
   (:var mv32005 :isa liver :has-determiner "THE")
   (:var mv31998 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv32017 :isa regulate :object mv32016 :agent mv32009 :present "PRESENT" :raw-text
    "regulated")
   (:var mv32016 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv32009 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv32026 :isa regulate :|affected-process-OR-object| mv32022 :agent mv32019 :present
    "PRESENT" :raw-text "regulated")
   (:var mv32022 :isa these :quantifier mv32020 :word "these") (:var mv32020 :isa which)
   (:var mv32019 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv32034 :isa regulate :|agent-OR-cause| mv32031 :object mv32035 :present "PRESENT" :adverb
    mv32032 :raw-text "regulate")
   (:var mv32031 :isa these :quantifier mv32029 :word "these") (:var mv32029 :isa which)
   (:var mv32035 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv32032 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv32041 :isa transcribe :agent mv32042 :object mv32039 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv32042 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv32039 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv32046 :isa transcribe :agent mv32043 :object mv32044 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv32043 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv32044 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv32051 :isa utilize :participant mv32054 :object mv32052 :present "PRESENT" :raw-text
    "utilize")
   (:var mv32054 :isa pathway :plural t :has-determiner "WHICH" :modifier mv32048 :raw-text
    "pathways")
   (:var mv32048 :isa database :name "KEGG" :uid "KEGG")
   (:var mv32052 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv32072 :isa copular-predication-of-pp :item mv32065 :value mv32071 :prep "IN" :predicate
    mv32058)
   (:var mv32065 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv32071 :isa transcription-factor :plural t :in-pathway mv32067 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv32067 :isa pathway :plural t :has-determiner "THE" :predication mv32062 :raw-text
    "pathways")
   (:var mv32062 :isa regulate :affected-process mv32067 :agent mv32061 :raw-text "regulated")
   (:var mv32061 :isa calcium :raw-text "calcium") (:var mv32058 :isa be :present "PRESENT"))
  ("What pathways involve the immune system?"
   (:var mv32078 :isa involve :theme mv32080 :object mv32074 :present "PRESENT")
   (:var mv32080 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv32074 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv32087 :isa involve :theme mv32092 :object mv32090 :present "PRESENT")
   (:var mv32092 :isa pathway :plural t :has-determiner "WHAT" :modifier mv32084 :raw-text
    "pathways")
   (:var mv32084 :isa database :name "KEGG" :uid "KEGG")
   (:var mv32090 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv32081 mv32088 mv32082))
   (:var mv32081 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv32088 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv32082 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv32103 :isa share :object mv32102 :participant mv32104 :present "PRESENT" :raw-text
    "shared")
   (:var mv32102 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv32104 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv32114 :isa regulate :object mv32113 :agent mv32112 :present "PRESENT" :raw-text
    "regulated")
   (:var mv32113 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv32112 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv32117 :isa be :subject mv32116 :predicate mv32128 :present "PRESENT")
   (:var mv32116 :isa what)
   (:var mv32128 :isa pathway :plural t :pathwaycomponent mv32126 :predication mv32118 :raw-text
    "pathways")
   (:var mv32126 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv32118 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv32145 :isa share :object mv32144 :participant mv32146 :present "PRESENT" :raw-text
    "shared")
   (:var mv32144 :isa pathway :plural t :has-determiner "WHICH" :modifier mv32133 :raw-text
    "pathways")
   (:var mv32133 :isa immune :name "immune")
   (:var mv32146 :isa gene :plural t :expresses mv32142 :raw-text "genes")
   (:var mv32142 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv32129 mv32130 mv32131))
   (:var mv32129 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv32130 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv32131 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv32155 :isa regulate :object mv32151 :agent mv32149 :present "PRESENT" :raw-text
    "regulated")
   (:var mv32151 :isa phosphatase :has-determiner "WHAT" :enzyme mv32148 :raw-text "phosphatase")
   (:var mv32148 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv32149 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv32162 :isa involve :theme mv32164 :object mv32157 :present "PRESENT")
   (:var mv32164 :isa pathway :plural t :has-determiner "WHAT" :modifier mv32159 :raw-text
    "pathways")
   (:var mv32159 :isa database :name "Reactome" :uid "Reactome")
   (:var mv32157 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv32169 :isa polar-question :statement mv32166)
   (:var mv32166 :isa be :subject mv32165 :predicate mv32168)
   (:var mv32165 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv32168 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv32174 :isa polar-question :statement mv32172)
   (:var mv32172 :isa be :subject mv32170 :predicate mv32171)
   (:var mv32170 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv32171 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv32178 :isa be :subject mv32177 :predicate mv32182 :present "PRESENT")
   (:var mv32177 :isa these :quantifier mv32175 :word "these") (:var mv32175 :isa which)
   (:var mv32182 :isa kinase :plural t :enzyme mv32179 :raw-text "kinases")
   (:var mv32179 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv32189 :isa be :subject mv32188 :predicate mv32185 :present "PRESENT")
   (:var mv32188 :isa these :quantifier mv32186 :word "these") (:var mv32186 :isa which)
   (:var mv32185 :isa protein-family :plural t :raw-text "tyrosine kinases" :uid "NCIT:C17020"
    :name "protein tyrosine kinase"))
  ("Which of these are serine/threonine kinases?"
   (:var mv32194 :isa be :subject mv32193 :predicate mv32200 :present "PRESENT")
   (:var mv32193 :isa these :quantifier mv32191 :word "these") (:var mv32191 :isa which)
   (:var mv32200 :isa kinase :plural t :amino-acid mv32199 :raw-text "kinases")
   (:var mv32199 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv32195 mv32196))
   (:var mv32195 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv32196 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv32205 :isa be :subject mv32204 :predicate mv32207 :present "PRESENT")
   (:var mv32204 :isa these :quantifier mv32202 :word "these") (:var mv32202 :isa which)
   (:var mv32207 :isa phosphatase :plural t :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv32212 :isa be :subject mv32211 :predicate mv32213 :present "PRESENT")
   (:var mv32211 :isa these :quantifier mv32209 :word "these") (:var mv32209 :isa which)
   (:var mv32213 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv32218 :isa be :subject mv32217 :predicate mv32220 :present "PRESENT")
   (:var mv32217 :isa these :quantifier mv32215 :word "these") (:var mv32215 :isa which)
   (:var mv32220 :isa receptor :plural t :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv32226 :isa be :subject mv32225 :predicate mv32229 :present "PRESENT")
   (:var mv32225 :isa these :quantifier mv32223 :word "these") (:var mv32223 :isa which)
   (:var mv32229 :isa receptor :plural t :modifier mv32222 :raw-text "receptors")
   (:var mv32222 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv32236 :isa be :subject mv32235 :predicate mv32232 :present "PRESENT")
   (:var mv32235 :isa these :quantifier mv32233 :word "these") (:var mv32233 :isa which)
   (:var mv32232 :isa protein-family :plural t :raw-text "histone demethylases" :uid "GO:0032452"
    :name "histone demethylase"))
  ("Which of these are histone methylases?"
   (:var mv32243 :isa be :subject mv32242 :predicate mv32239 :present "PRESENT")
   (:var mv32242 :isa these :quantifier mv32240 :word "these") (:var mv32240 :isa which)
   (:var mv32239 :isa protein-family :plural t :raw-text "histone methylases" :uid "GO:0042054"
    :name "histone methyltransferase"))
  ("Which of these are histone methyltransferases?"
   (:var mv32250 :isa be :subject mv32249 :predicate mv32246 :present "PRESENT")
   (:var mv32249 :isa these :quantifier mv32247 :word "these") (:var mv32247 :isa which)
   (:var mv32246 :isa protein-family :plural t :raw-text "histone methyltransferases" :uid
    "GO:0042054" :name "histone methyltransferase"))
  ("Which of these are demethylases?"
   (:var mv32255 :isa be :subject mv32254 :predicate mv32257 :present "PRESENT")
   (:var mv32254 :isa these :quantifier mv32252 :word "these") (:var mv32252 :isa which)
   (:var mv32257 :isa protein-family :plural t :raw-text "demethylases" :uid "GO:0032451" :name
    "demethylase"))
  ("Which of these are methylases?"
   (:var mv32262 :isa be :subject mv32261 :predicate mv32264 :present "PRESENT")
   (:var mv32261 :isa these :quantifier mv32259 :word "these") (:var mv32259 :isa which)
   (:var mv32264 :isa protein-family :plural t :raw-text "methylases" :uid "GO:0008168" :name
    "methyltransferase"))
  ("Which of these are methyltransferases?"
   (:var mv32269 :isa be :subject mv32268 :predicate mv32271 :present "PRESENT")
   (:var mv32268 :isa these :quantifier mv32266 :word "these") (:var mv32266 :isa which)
   (:var mv32271 :isa protein-family :plural t :raw-text "methyltransferases" :uid "GO:0008168"
    :name "methyltransferase"))
  ("Which of these are steroid receptors?"
   (:var mv32276 :isa be :subject mv32275 :predicate mv32280 :present "PRESENT")
   (:var mv32275 :isa these :quantifier mv32273 :word "these") (:var mv32273 :isa which)
   (:var mv32280 :isa receptor :plural t :modifier mv32277 :raw-text "receptors")
   (:var mv32277 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv32287 :isa be :subject mv32286 :predicate mv32283 :present "PRESENT")
   (:var mv32286 :isa these :quantifier mv32284 :word "these") (:var mv32284 :isa which)
   (:var mv32283 :isa protein-family :plural t :raw-text "receptor tyrosine kinases" :uid
    "NCIT:C17660" :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :count 2 :name "receptor tyrosine kinase"))
  ("Which of these are transcription factors?"
   (:var mv32294 :isa be :subject mv32293 :predicate mv32290 :present "PRESENT")
   (:var mv32293 :isa these :quantifier mv32291 :word "these") (:var mv32291 :isa which)
   (:var mv32290 :isa transcription-factor :plural t :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv32300 :isa be :subject mv32299 :predicate mv32303 :present "PRESENT")
   (:var mv32299 :isa these :quantifier mv32297 :word "these") (:var mv32297 :isa which)
   (:var mv32303 :isa protein :plural t :modifier mv32296 :raw-text "proteins")
   (:var mv32296 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv32308 :isa be :subject mv32307 :predicate mv32314 :present "PRESENT")
   (:var mv32307 :isa these :quantifier mv32305 :word "these") (:var mv32305 :isa which)
   (:var mv32314 :isa phosphatase :plural t :modifier mv32313 :raw-text "phosphatases")
   (:var mv32313 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv32309 mv32310))
   (:var mv32309 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv32310 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv32319 :isa be :subject mv32318 :predicate mv32323 :present "PRESENT")
   (:var mv32318 :isa these :quantifier mv32316 :word "these") (:var mv32316 :isa which)
   (:var mv32323 :isa phosphatase :plural t :modifier mv32320 :raw-text "phosphatases")
   (:var mv32320 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv32328 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv32325 :agent mv32327
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv32325 :isa what)
   (:var mv32327 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv32337 :isa gene-transcript-express :object mv32331 :organ mv32336 :present "PRESENT"
    :adverb mv32333 :raw-text "expressed")
   (:var mv32331 :isa these :quantifier mv32329 :word "these") (:var mv32329 :isa which)
   (:var mv32336 :isa liver) (:var mv32333 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv32342 :isa regulate :|agent-OR-cause| mv32341 :object mv32340 :present "PRESENT"
    :raw-text "regulates")
   (:var mv32341 :isa what)
   (:var mv32340 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv32346 :isa increase :|agent-OR-cause| mv32343 :|affected-process-OR-object| mv32348
    :present "PRESENT" :raw-text "increases")
   (:var mv32343 :isa what)
   (:var mv32348 :isa bio-amount :measured-item mv32350 :has-determiner "THE" :raw-text "amount")
   (:var mv32350 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv32353 :isa upregulate :|agent-OR-cause| mv32352 :object mv32354 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv32352 :isa what)
   (:var mv32354 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv32356 :isa downregulate :|agent-OR-cause| mv32355 :object mv32357 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv32355 :isa what)
   (:var mv32357 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv32359 :isa decrease :|agent-OR-cause| mv32358 :|affected-process-OR-object| mv32361
    :present "PRESENT" :raw-text "decreases")
   (:var mv32358 :isa what)
   (:var mv32361 :isa bio-amount :measured-item mv32363 :has-determiner "THE" :raw-text "amount")
   (:var mv32363 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv32366 :isa regulate :|agent-OR-cause| mv32365 :object mv32367 :present "PRESENT"
    :raw-text "regulates")
   (:var mv32365 :isa what)
   (:var mv32367 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv32369 :isa regulate :|agent-OR-cause| mv32368 :object mv32370 :present "PRESENT"
    :raw-text "regulates")
   (:var mv32368 :isa what)
   (:var mv32370 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv32377 :isa regulate :|agent-OR-cause| mv32376 :object mv32378 :present "PRESENT"
    :raw-text "regulates")
   (:var mv32376 :isa what)
   (:var mv32378 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("Which kinases regulate the cfos gene?"
   (:var mv32385 :isa regulate :agent mv32389 :object mv32388 :present "PRESENT" :raw-text
    "regulate")
   (:var mv32389 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv32388 :isa gene :has-determiner "THE" :expresses mv32387 :raw-text "gene")
   (:var mv32387 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv32390 :isa downregulate :agent mv32397 :object mv32396 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv32397 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv32396 :isa gene :has-determiner "THE" :expresses mv32395 :raw-text "gene")
   (:var mv32395 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv32401 :isa be :subject mv32400 :predicate mv32407 :present "PRESENT")
   (:var mv32400 :isa what)
   (:var mv32407 :isa positive-regulator :plural t :theme mv32405 :raw-text "positive regulators")
   (:var mv32405 :isa gene :has-determiner "THE" :expresses mv32404 :raw-text "gene")
   (:var mv32404 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv32410 :isa transcribe :|agent-OR-cause| mv32409 :object mv32408 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv32409 :isa what)
   (:var mv32408 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv32413 :isa show :|statement-OR-theme| mv32425 :beneficiary mv32414 :present "PRESENT")
   (:var mv32425 :isa evidence :statement mv32420 :has-determiner "THE")
   (:var mv32420 :isa increase :agent mv32411 :|affected-process-OR-object| mv32422 :present
    "PRESENT" :raw-text "increases")
   (:var mv32411 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv32422 :isa bio-amount :measured-item mv32412 :has-determiner "THE" :raw-text "amount")
   (:var mv32412 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv32414 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv32427 :isa show :|statement-OR-theme| mv32430 :beneficiary mv32428 :present "PRESENT")
   (:var mv32430 :isa evidence :has-determiner "THE")
   (:var mv32428 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv32440 :isa be :subject mv32439 :predicate mv32446 :present "PRESENT")
   (:var mv32439 :isa what) (:var mv32446 :isa evidence :statement mv32445 :has-determiner "THE")
   (:var mv32445 :isa regulate :agent mv32444 :object mv32438 :present "PRESENT" :raw-text
    "regulates")
   (:var mv32444 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv32438 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv32448 :isa be :subject mv32447 :predicate mv32457 :present "PRESENT")
   (:var mv32447 :isa what) (:var mv32457 :isa evidence :statement mv32453 :has-determiner "THE")
   (:var mv32453 :isa binding :binder mv32452 :direct-bindee mv32456 :present "PRESENT" :raw-text
    "binds")
   (:var mv32452 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv32456 :isa gene :has-determiner "THE" :expresses mv32455 :raw-text "gene")
   (:var mv32455 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv32467 :isa gene-transcript-express :object mv32466 :organ mv32465 :present "PRESENT"
    :adverb mv32462 :raw-text "expressed")
   (:var mv32466 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv32465 :isa liver) (:var mv32462 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv32475 :isa polar-question :statement mv32471)
   (:var mv32471 :isa gene-transcript-express :object mv32469 :organ mv32473 :past "PAST" :raw-text
    "expressed")
   (:var mv32469 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv32473 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv32484 :isa polar-question :statement mv32482)
   (:var mv32482 :isa gene-transcript-express :object mv32476 :organ mv32481 :adverb mv32478
    :raw-text "expressed")
   (:var mv32476 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv32481 :isa liver) (:var mv32478 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv32489 :isa affect :manner mv32487 :agent mv32485 :object mv32486 :present "PRESENT"
    :raw-text "affect")
   (:var mv32487 :isa how)
   (:var mv32485 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv32486 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv32494 :isa affect :manner mv32491 :agent mv32493 :object mv32490 :present "PRESENT"
    :raw-text "affect")
   (:var mv32491 :isa how)
   (:var mv32493 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32490 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv32498 :isa be :subject mv32497 :predicate mv32512 :present "PRESENT")
   (:var mv32497 :isa what)
   (:var mv32512 :isa regulator :plural t :theme mv32507 :has-determiner "THE" :predication mv32500
    :context mv32501 :raw-text "regulators")
   (:var mv32507 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv32495 mv32496))
   (:var mv32495 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv32496 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv32500 :isa common) (:var mv32501 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv32516 :isa be :subject mv32515 :predicate mv32525 :present "PRESENT")
   (:var mv32515 :isa what)
   (:var mv32525 :isa path :plural t :endpoints mv32522 :has-determiner "THE")
   (:var mv32522 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv32513 mv32514))
   (:var mv32513 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv32514 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv32531 :isa polar-question :statement mv32530)
   (:var mv32530 :isa affect :agent mv32526 :object mv32529 :raw-text "affect")
   (:var mv32526 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv32529 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv32533 :isa regulate :agent mv32532 :object mv32534 :present "PRESENT" :raw-text
    "regulates")
   (:var mv32532 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv32534 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv32536 :isa upregulate :agent mv32535 :object mv32537 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv32535 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv32537 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv32538 :isa upregulate :agent mv32540 :object mv32539 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv32540 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv32539 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv32550 :isa polar-question :statement mv32549)
   (:var mv32549 :isa regulate :agent mv32544 :object mv32548 :raw-text "regulate")
   (:var mv32544 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv32548 :isa gene :has-determiner "THE" :expresses mv32542 :raw-text "gene")
   (:var mv32542 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv32552 :isa show :|statement-OR-theme| mv32560 :beneficiary mv32553 :present "PRESENT")
   (:var mv32560 :isa evidence :statement mv32559 :has-determiner "THE")
   (:var mv32559 :isa regulate :agent mv32557 :object mv32551 :present "PRESENT" :raw-text
    "regulates")
   (:var mv32557 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv32551 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv32553 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv32568 :isa polar-question :statement mv32567)
   (:var mv32567 :isa regulate :agent mv32563 :object mv32566 :raw-text "regulate")
   (:var mv32563 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32566 :isa gene :has-determiner "THE" :expresses mv32561 :raw-text "gene")
   (:var mv32561 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv32571 :isa decrease :agent mv32570 :|affected-process-OR-object| mv32573 :present
    "PRESENT" :raw-text "decreases")
   (:var mv32570 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32573 :isa bio-amount :measured-item mv32569 :has-determiner "THE" :raw-text "amount")
   (:var mv32569 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv32581 :isa polar-question :statement mv32580)
   (:var mv32580 :isa regulate :agent mv32579 :object mv32578 :raw-text "regulate")
   (:var mv32579 :isa bio-entity :name "TNG")
   (:var mv32578 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv32589 :isa polar-question :statement mv32588)
   (:var mv32588 :isa regulate :agent mv32583 :object mv32587 :raw-text "regulate")
   (:var mv32583 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv32587 :isa gene :has-determiner "THE" :expresses mv32586 :raw-text "gene")
   (:var mv32586 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv32591 :isa be :subject mv32590 :predicate mv32602 :present "PRESENT")
   (:var mv32590 :isa what)
   (:var mv32602 :isa pathway :plural t :pathwaycomponent mv32599 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv32599 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv32596 mv32598))
   (:var mv32596 :isa bio-entity :name "TNG")
   (:var mv32598 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv32604 :isa be :subject mv32603 :predicate mv32615 :present "PRESENT")
   (:var mv32603 :isa what)
   (:var mv32615 :isa pathway :plural t :pathwaycomponent mv32612 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv32612 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv32609 mv32611))
   (:var mv32609 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv32611 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv32622 :isa polar-question :statement mv32621)
   (:var mv32621 :isa regulate :agent mv32617 :object mv32620 :raw-text "regulate")
   (:var mv32617 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv32620 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv32631 :isa polar-question :statement mv32630)
   (:var mv32630 :isa regulate :agent mv32624 :object mv32629 :raw-text "regulate")
   (:var mv32624 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv32629 :isa gene :has-determiner "THE" :expresses mv32628 :raw-text "gene")
   (:var mv32628 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv32647 :isa copular-predication-of-pp :item mv32642 :value mv32646 :prep "BETWEEN"
    :predicate mv32635)
   (:var mv32642 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv32646 :isa pathway :plural t :pathwaycomponent mv32641 :has-determiner "WHAT" :raw-text
    "pathways")
   (:var mv32641 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv32638 mv32640))
   (:var mv32638 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv32640 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32635 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv32653 :isa affect :manner mv32649 :agent mv32651 :object mv32654 :present "PRESENT"
    :raw-text "affect")
   (:var mv32649 :isa how)
   (:var mv32651 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv32654 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv32656 :isa bio-activate :agent mv32655 :object mv32657 :present "PRESENT" :raw-text
    "activates")
   (:var mv32655 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv32657 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv32659 :isa bio-activate :agent mv32658 :object mv32660 :present "PRESENT" :raw-text
    "activates")
   (:var mv32658 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv32660 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv32662 :isa be :subject mv32661 :predicate mv32673 :present "PRESENT")
   (:var mv32661 :isa what)
   (:var mv32673 :isa path :plural t :endpoints mv32670 :has-determiner "THE")
   (:var mv32670 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv32667 mv32669))
   (:var mv32667 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv32669 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv32679 :isa polar-question :statement mv32678)
   (:var mv32678 :isa regulate :agent mv32675 :object mv32677 :raw-text "regulate")
   (:var mv32675 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv32677 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv32684 :isa affect :manner mv32682 :agent mv32680 :object mv32681 :present "PRESENT"
    :raw-text "affect")
   (:var mv32682 :isa how)
   (:var mv32680 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv32681 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv32686 :isa bio-activate :agent mv32685 :object mv32687 :present "PRESENT" :raw-text
    "activates")
   (:var mv32685 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv32687 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv32691 :isa decrease :agent mv32690 :|affected-process-OR-object| mv32693 :present
    "PRESENT" :raw-text "decreases")
   (:var mv32690 :isa protein-family :predication mv32689 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32689 :isa active)
   (:var mv32693 :isa bio-amount :measured-item mv32688 :has-determiner "THE" :raw-text "amount")
   (:var mv32688 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv32699 :isa be :subject mv32698 :predicate mv32710 :present "PRESENT")
   (:var mv32698 :isa what)
   (:var mv32710 :isa upstream-segment :plural t :pathwaycomponent mv32706 :has-determiner "THE"
    :predication mv32701 :raw-text "upstreams")
   (:var mv32706 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv32696 mv32697))
   (:var mv32696 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv32697 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv32701 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv32715 :isa affect :manner mv32713 :agent mv32711 :object mv32712 :present "PRESENT"
    :raw-text "affect")
   (:var mv32713 :isa how)
   (:var mv32711 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv32712 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv32721 :isa polar-question :statement mv32720)
   (:var mv32720 :isa regulate :agent mv32716 :object mv32717 :raw-text "regulate")
   (:var mv32716 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv32717 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv32729 :isa polar-question :statement mv32728)
   (:var mv32728 :isa regulate :agent mv32722 :object mv32727 :raw-text "regulate")
   (:var mv32722 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv32727 :isa gene :has-determiner "THE" :expresses mv32723 :raw-text "gene")
   (:var mv32723 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv32734 :isa affect :manner mv32732 :agent mv32730 :object mv32731 :present "PRESENT"
    :raw-text "affect")
   (:var mv32732 :isa how)
   (:var mv32730 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv32731 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv32737 :isa be :subject mv32736 :predicate mv32747 :present "PRESENT")
   (:var mv32736 :isa what)
   (:var mv32747 :isa path :plural t :endpoints mv32744 :has-determiner "THE")
   (:var mv32744 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv32742 mv32735))
   (:var mv32742 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv32735 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv32757 :isa polar-question :statement mv32755)
   (:var mv32755 :isa regulate :agent mv32750 :affected-process mv32753 :raw-text "regulate")
   (:var mv32750 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32753 :isa gene-transcript-express :object mv32748 :has-determiner "THE" :raw-text
    "expression")
   (:var mv32748 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv32761 :isa decrease :agent mv32760 :affected-process mv32763 :present "PRESENT"
    :raw-text "decreases")
   (:var mv32760 :isa protein-family :predication mv32759 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32759 :isa active)
   (:var mv32763 :isa gene-transcript-express :object mv32758 :has-determiner "THE" :raw-text
    "expression")
   (:var mv32758 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv32769 :isa decrease :agent mv32768 :|affected-process-OR-object| mv32771 :present
    "PRESENT" :raw-text "decreases")
   (:var mv32768 :isa protein-family :predication mv32767 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32767 :isa active)
   (:var mv32771 :isa bio-amount :measured-item mv32766 :has-determiner "THE" :raw-text "amount")
   (:var mv32766 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv32777 :isa decrease :agent mv32776 :|affected-process-OR-object| mv32779 :present
    "PRESENT" :raw-text "decreases")
   (:var mv32776 :isa protein-family :predication mv32775 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32775 :isa active)
   (:var mv32779 :isa bio-amount :measured-item mv32774 :has-determiner "THE" :raw-text "amount")
   (:var mv32774 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv32784 :isa inhibit :agent mv32782 :affected-process mv32786 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv32782 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv32786 :isa bio-activity :participant mv32783 :has-determiner "THE" :raw-text "activity")
   (:var mv32783 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?"
   (:var mv32800 :isa polar-question :statement mv32798)
   (:var mv32798 :isa decrease :agent mv32789 :object mv32790 :raw-text "decrease")
   (:var mv32789 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv32790 :isa protein :has-determiner "THE" :raw-text "CXCL8" :uid "UP:P10145" :name
    "IL8_HUMAN"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv32811 :isa polar-question :statement mv32809)
   (:var mv32809 :isa decrease :agent mv32801 :object mv32802 :raw-text "decrease")
   (:var mv32801 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv32802 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("TNF activates NFkappaB"
   (:var mv32813 :isa bio-activate :agent mv32812 :object mv32814 :present "PRESENT" :raw-text
    "activates")
   (:var mv32812 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv32814 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv32820 :isa want :agent mv32817 :theme mv32831 :present "PRESENT")
   (:var mv32817 :isa interlocutor :name "speaker")
   (:var mv32831 :isa find-out :agent mv32817 :statement mv32828)
   (:var mv32828 :isa wh-question :statement mv32827 :var nil :wh how)
   (:var mv32827 :isa decrease :agent mv32826 :object mv32816 :present "PRESENT" :raw-text
    "decreases")
   (:var mv32826 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv32816 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv32836 :isa want :agent mv32833 :theme mv32853 :present "PRESENT")
   (:var mv32833 :isa interlocutor :name "speaker")
   (:var mv32853 :isa find-out :agent mv32833 :statement mv32850)
   (:var mv32850 :isa wh-question :statement mv32843 :var nil :wh how)
   (:var mv32843 :isa decrease :agent mv32842 :object mv32844 :present "PRESENT" :raw-text
    "decreases")
   (:var mv32842 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv32844 :isa protein :cell-type mv32848 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv32848 :isa cell-type :plural t :cell-line mv32832)
   (:var mv32832 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv32859 :isa want :agent mv32856 :theme mv32875 :present "PRESENT")
   (:var mv32856 :isa interlocutor :name "speaker")
   (:var mv32875 :isa find-out :agent mv32856 :statement mv32872)
   (:var mv32872 :isa wh-question :statement mv32865 :var nil :wh how)
   (:var mv32865 :isa bio-activate :agent mv32854 :object mv32866 :present "PRESENT" :raw-text
    "activates")
   (:var mv32854 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv32866 :isa protein :cell-type mv32870 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv32870 :isa cell-type :plural t :cell-line mv32855)
   (:var mv32855 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv32881 :isa polar-question :statement mv32880)
   (:var mv32880 :isa phosphorylate :agent mv32877 :substrate mv32879 :raw-text "phosphorylate")
   (:var mv32877 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv32879 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv32889 :isa polar-question :statement mv32888)
   (:var mv32888 :isa inhibit :agent mv32882 :object mv32887 :raw-text "inhibit")
   (:var mv32882 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv32887 :isa gene :has-determiner "THE" :expresses mv32883 :raw-text "gene")
   (:var mv32883 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv32897 :isa polar-question :statement mv32896)
   (:var mv32896 :isa stimulate :agent mv32890 :object mv32895 :raw-text "stimulate")
   (:var mv32890 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv32895 :isa gene :has-determiner "THE" :expresses mv32891 :raw-text "gene")
   (:var mv32891 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv32902 :isa want :agent mv32899 :theme mv32921 :present "PRESENT")
   (:var mv32899 :isa interlocutor :name "speaker")
   (:var mv32921 :isa find-out :agent mv32899 :statement mv32918)
   (:var mv32918 :isa wh-question :statement mv32909 :var nil :wh how)
   (:var mv32909 :isa decrease :agent mv32908 :object mv32910 :present "PRESENT" :raw-text
    "decreases")
   (:var mv32908 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv32910 :isa protein :cell-type mv32916 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv32916 :isa cell-type :plural t :cell-line mv32898 :associated-disease mv32912)
   (:var mv32898 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv32912 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv32926 :isa polar-question :statement mv32923)
   (:var mv32923 :isa be :subject mv32924 :predicate mv32922)
   (:var mv32924 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv32922 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv32928 :isa list :theme mv32939 :present "PRESENT")
   (:var mv32939 :isa gene :plural t :predication mv32933 :quantifier mv32929 :has-determiner "THE"
    :raw-text "genes")
   (:var mv32933 :isa regulate :object mv32939 :agent mv32937 :past "PAST" :raw-text "regulated")
   (:var mv32937 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv32927 mv32936))
   (:var mv32927 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv32936 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv32929 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv32943 :isa list :theme mv32957 :present "PRESENT")
   (:var mv32957 :isa gene :plural t :predication mv32949 :quantifier mv32944 :has-determiner "THE"
    :raw-text "genes")
   (:var mv32949 :isa regulate :object mv32957 :agent mv32953 :past "PAST" :raw-text "regulated")
   (:var mv32953 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv32942 mv32952))
   (:var mv32942 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv32952 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv32944 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv32962 :isa show :|statement-OR-theme| mv32976 :beneficiary mv32963 :present "PRESENT")
   (:var mv32976 :isa mutation :plural t :context mv32961 :object mv32971 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv32961 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv32971 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv32960 mv32969))
   (:var mv32960 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv32969 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv32963 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv32980 :isa be :subject mv32979 :predicate mv32993 :present "PRESENT")
   (:var mv32979 :isa what)
   (:var mv32993 :isa mutation :plural t :context mv32978 :object mv32988 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv32978 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv32988 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv32977 mv32986))
   (:var mv32977 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv32986 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv32998 :isa be :subject mv32997 :predicate mv33008 :present "PRESENT")
   (:var mv32997 :isa what)
   (:var mv33008 :isa gene :disease mv32996 :has-determiner "THE" :predication mv32994 :raw-text
    "genes")
   (:var mv32996 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv32994 :isa mutual-exclusivity :alternative mv32995)
   (:var mv32995 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv33013 :isa be :subject mv33012 :predicate mv33023 :present "PRESENT")
   (:var mv33012 :isa what)
   (:var mv33023 :isa gene :disease mv33011 :has-determiner "THE" :predication mv33009 :raw-text
    "genes")
   (:var mv33011 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv33009 :isa mutual-exclusivity :alternative mv33010)
   (:var mv33010 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What downregulates it?"
   (:var mv33025 :isa downregulate :|agent-OR-cause| mv33024 :|affected-process-OR-object| mv33026
    :present "PRESENT" :raw-text "downregulates")
   (:var mv33024 :isa what) (:var mv33026 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv33031 :isa have :possessor mv33038 :thing-possessed mv33033 :present "PRESENT")
   (:var mv33038 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv33033 :isa evidence :fact mv33036 :predication mv33032)
   (:var mv33036 :isa regulate :agent mv33027 :progressive mv33035 :raw-text "regulated")
   (:var mv33027 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv33035 :isa be) (:var mv33032 :isa strong))
  ("What increases the amount of myc"
   (:var mv33044 :isa increase :|agent-OR-cause| mv33041 :|affected-process-OR-object| mv33046
    :present "PRESENT" :raw-text "increases")
   (:var mv33041 :isa what)
   (:var mv33046 :isa bio-amount :measured-item mv33048 :has-determiner "THE" :raw-text "amount")
   (:var mv33048 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv33052 :isa inhibit :|agent-OR-cause| mv33051 :object mv33050 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv33051 :isa what)
   (:var mv33050 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv33056 :isa be :subject mv33055 :predicate mv33068 :present "PRESENT")
   (:var mv33055 :isa what) (:var mv33068 :isa quality-predicate :item mv33066 :attribute mv33062)
   (:var mv33066 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv33053 mv33064 mv33054))
   (:var mv33053 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv33064 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33054 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv33062 :isa location-of :has-determiner "THE" :predication mv33060 :modifier mv33061)
   (:var mv33060 :isa likely :comparative mv33058)
   (:var mv33058 :isa superlative-quantifier :name "most")
   (:var mv33061 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv33071 :isa be :subject mv33070 :predicate mv33080 :present "PRESENT")
   (:var mv33070 :isa what) (:var mv33080 :isa quality-predicate :item mv33069 :attribute mv33077)
   (:var mv33069 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv33077 :isa location-of :has-determiner "THE" :predication mv33075 :modifier mv33076)
   (:var mv33075 :isa likely :comparative mv33073)
   (:var mv33073 :isa superlative-quantifier :name "most")
   (:var mv33076 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv33084 :isa be :subject mv33083 :predicate mv33087 :present "PRESENT")
   (:var mv33083 :isa what)
   (:var mv33087 :isa significance :context mv33082 :agent mv33081 :has-determiner "THE" :modifier
    mv33086)
   (:var mv33082 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv33081 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv33086 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv33099 :isa regulate :|affected-process-OR-object| mv33095 :agent mv33092 :present
    "PRESENT" :raw-text "regulated")
   (:var mv33095 :isa those :quantifier mv33093 :word "those") (:var mv33093 :isa which)
   (:var mv33092 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv33119 :isa copular-predication-of-pp :item mv33116 :value mv33118 :prep "IN" :predicate
    mv33108)
   (:var mv33116 :isa gene :plural t :quantifier mv33103 :has-determiner "THOSE" :raw-text "genes")
   (:var mv33103 :isa which)
   (:var mv33118 :isa gene :plural t :context mv33102 :quantifier mv33103 :has-determiner "THOSE"
    :raw-text "genes")
   (:var mv33102 :isa signaling-pathway :has-determiner "THE" :modifier mv33111 :raw-text
    "signaling pathway")
   (:var mv33111 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv33108 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv33130 :isa copular-predication-of-pp :item mv33124 :value mv33128 :prep mv33126
    :predicate mv33125)
   (:var mv33124 :isa these :quantifier mv33122 :word "these") (:var mv33122 :isa which)
   (:var mv33128 :isa pathway :has-determiner "THE" :modifier mv33121 :raw-text "pathway")
   (:var mv33121 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv33126 :isa in :word "in") (:var mv33125 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv33139 :isa gene-transcript-express :object mv33134 :organ mv33138 :present "PRESENT"
    :raw-text "expressed")
   (:var mv33134 :isa pronoun/plural :quantifier mv33132 :word "them") (:var mv33132 :isa which)
   (:var mv33138 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv33154 :isa regulate :|affected-process-OR-object| mv33146 :agent mv33153 :present
    "PRESENT" :superlative mv33148 :adverb mv33149 :raw-text "regulated")
   (:var mv33146 :isa pronoun/plural :quantifier mv33144 :word "them") (:var mv33144 :isa which)
   (:var mv33153 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv33142 mv33143))
   (:var mv33142 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv33143 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv33148 :isa superlative-quantifier :name "most")
   (:var mv33149 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv33162 :isa target :agent mv33163 :object mv33159 :present "PRESENT" :raw-text "target")
   (:var mv33163 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv33159 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv33169 :isa target :|agent-OR-cause| mv33167 :object mv33164 :present "PRESENT" :raw-text
    "target")
   (:var mv33167 :isa those :quantifier mv33165 :word "those") (:var mv33165 :isa which)
   (:var mv33164 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv33172 :isa be :subject mv33171 :predicate mv33173 :present "PRESENT")
   (:var mv33171 :isa what)
   (:var mv33173 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv33176 :isa be :subject mv33175 :predicate mv33174 :present "PRESENT")
   (:var mv33175 :isa what)
   (:var mv33174 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv33182 :isa do :patient mv33177 :present "PRESENT")
   (:var mv33177 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv33192 :isa polar-question :statement mv33190)
   (:var mv33190 :isa there-exists :value mv33188 :predicate mv33185)
   (:var mv33188 :isa inhibitor :protein mv33183 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv33183 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv33185 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv33194 :isa name-something :patient mv33203 :present "PRESENT")
   (:var mv33203 :isa drug :plural t :predication mv33201 :quantifier mv33197 :raw-text "drugs")
   (:var mv33201 :isa inhibit :agent mv33203 :that-rel t :object mv33193 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv33193 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv33197 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv33214 :isa polar-question :statement mv33211)
   (:var mv33211 :isa there-exists :value mv33213 :predicate mv33206)
   (:var mv33213 :isa inhibitor :plural t :quantifier mv33208 :protein mv33204 :raw-text
    "inhibitors")
   (:var mv33208 :isa any :word "any")
   (:var mv33204 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv33206 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv33226 :isa polar-question :statement mv33223)
   (:var mv33223 :isa there-exists :value mv33225 :predicate mv33216)
   (:var mv33225 :isa target-protein :plural t :agent mv33222 :raw-text "targets")
   (:var mv33222 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv33216 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv33230 :isa inhibit :|affected-process-OR-object| mv33227 :agent mv33229 :present
    "PRESENT" :raw-text "inhibit")
   (:var mv33227 :isa what)
   (:var mv33229 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv33235 :isa target :|affected-process-OR-object| mv33231 :agent mv33233 :present
    "PRESENT" :raw-text "target")
   (:var mv33231 :isa what)
   (:var mv33233 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv33242 :isa polar-question :statement mv33241)
   (:var mv33241 :isa target :agent mv33237 :object mv33240 :raw-text "target")
   (:var mv33237 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv33240 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv33245 :isa be :subject mv33244 :predicate mv33254 :present "PRESENT")
   (:var mv33244 :isa what)
   (:var mv33254 :isa target-protein :plural t :quantifier mv33246 :treatment mv33251 :raw-text
    "targets")
   (:var mv33246 :isa some :word "some")
   (:var mv33251 :isa treatment :disease mv33243 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv33243 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv33257 :isa be :subject mv33256 :predicate mv33265 :present "PRESENT")
   (:var mv33256 :isa what)
   (:var mv33265 :isa target-protein :plural t :quantifier mv33258 :disease mv33255 :raw-text
    "targets")
   (:var mv33258 :isa some :word "some")
   (:var mv33255 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv33272 :isa lead :agent mv33277 :theme mv33275 :modal mv33271 :raw-text "lead")
   (:var mv33277 :isa target-protein :plural t :has-determiner "WHAT" :raw-text "targets")
   (:var mv33275 :isa development :disease mv33266 :has-determiner "THE" :raw-text "development")
   (:var mv33266 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv33271 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv33285 :isa lead :agent mv33290 :theme mv33288 :modal mv33284 :raw-text "lead")
   (:var mv33290 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv33288 :isa development :disease mv33280 :has-determiner "THE" :raw-text "development")
   (:var mv33280 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv33284 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv33299 :isa lead :agent mv33302 :theme mv33293 :modal mv33298 :raw-text "lead")
   (:var mv33302 :isa gene :plural t :has-determiner "WHAT" :predication mv33295 :raw-text "genes")
   (:var mv33295 :isa mutation :object mv33302 :raw-text "mutated")
   (:var mv33293 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv33298 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv33306 :isa be :subject mv33305 :predicate mv33310 :present "PRESENT")
   (:var mv33305 :isa what)
   (:var mv33310 :isa mutation :predication mv33312 :has-determiner "THE" :modifier mv33308
    :|agent-OR-object| mv33309 :raw-text "mutation")
   (:var mv33312 :isa lead :agent mv33310 :that-rel t :theme mv33304 :present "PRESENT" :raw-text
    "leads")
   (:var mv33304 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv33308 :isa top-qua-location) (:var mv33309 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv33321 :isa like :agent mv33316 :modal mv33319)
   (:var mv33316 :isa interlocutor :name "speaker") (:var mv33319 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv33342 :isa bio-use :patient mv33332 :modal mv33333 :agent mv33334 :theme mv33341
    :present "PRESENT" :raw-text "use")
   (:var mv33332 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv33333 :isa could)
   (:var mv33334 :isa interlocutor :name "speaker")
   (:var mv33341 :isa treatment :disease mv33330 :raw-text "treat")
   (:var mv33330 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv33345 :isa be :subject mv33344 :predicate mv33353 :present "PRESENT")
   (:var mv33344 :isa what)
   (:var mv33353 :isa drug :plural t :treatment mv33350 :quantifier mv33346 :raw-text "drugs")
   (:var mv33350 :isa treatment :disease mv33343 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv33343 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv33346 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv33360 :isa like :agent mv33356 :modal mv33367)
   (:var mv33356 :isa interlocutor :name "speaker") (:var mv33367 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv33371 :isa how))
  ("Does MEK act on ERK?" (:var mv33381 :isa polar-question :statement mv33379)
   (:var mv33379 :isa bio-act :agent mv33375 :acted-on mv33378 :raw-text "act")
   (:var mv33375 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv33378 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv33386 :isa explicit-suggestion :suggestion mv33383 :marker let-as-directive)
   (:var mv33383 :isa build :artifact mv33385 :present "PRESENT")
   (:var mv33385 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv33389 :isa bio-activate :agent mv33388 :object mv33387 :present "PRESENT" :raw-text
    "activates")
   (:var mv33388 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv33387 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv33391 :isa bio-activate :agent mv33390 :object mv33392 :present "PRESENT" :raw-text
    "activates")
   (:var mv33390 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv33392 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv33393 :isa remove :object mv33400 :present "PRESENT" :raw-text "Remove")
   (:var mv33400 :isa fact :statement mv33398 :has-determiner "THE")
   (:var mv33398 :isa bio-activate :agent mv33397 :object mv33399 :present "PRESENT" :raw-text
    "activates")
   (:var mv33397 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv33399 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv33412 :isa polar-question :statement mv33403)
   (:var mv33403 :isa tell :agent mv33402 :theme mv33411 :theme mv33404 :modal "CAN")
   (:var mv33402 :isa interlocutor :name "hearer")
   (:var mv33411 :isa copular-predication-of-pp :item mv33405 :value mv33409 :prep mv33407
    :predicate mv33406)
   (:var mv33405 :isa what) (:var mv33409 :isa model :has-determiner "THE")
   (:var mv33407 :isa in :word "in") (:var mv33406 :isa be :modal "CAN")
   (:var mv33404 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv33416 :isa summarize :statement mv33415 :present "PRESENT")
   (:var mv33415 :isa model :has-determiner "THE"))
  ("Summarize the current model."
   (:var mv33421 :isa summarize :statement mv33420 :present "PRESENT")
   (:var mv33420 :isa model :has-determiner "THE" :predication mv33419)
   (:var mv33419 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv33423 :isa phosphorylate :|agent-OR-cause| mv33422 :substrate mv33424 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv33422 :isa what)
   (:var mv33424 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv33426 :isa binding :binder mv33425 :direct-bindee mv33427 :present "PRESENT" :raw-text
    "binds")
   (:var mv33425 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv33427 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv33432 :isa bio-activate :object mv33428 :present "PRESENT" :raw-text "activated")
   (:var mv33428 :isa protein :predication mv33429 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv33429 :isa phosphorylate :substrate mv33428 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv33436 :isa dephosphorylate :agent mv33433 :substrate mv33434 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv33433 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv33434 :isa protein :predication mv33442 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv33442 :isa binding :direct-bindee mv33434 :that-rel t :bindee mv33435 :present "PRESENT"
    :negation mv33439 :raw-text "bound")
   (:var mv33435 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv33439 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv33453 :isa phosphorylate :agent mv33444 :substrate mv33446 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv33444 :isa protein :predication mv33454 :predication mv33447 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv33454 :isa binding :direct-bindee mv33444 :that-rel t :bindee mv33445 :present "PRESENT"
    :negation mv33450 :raw-text "bound")
   (:var mv33445 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv33450 :isa not :word "not") (:var mv33447 :isa active)
   (:var mv33446 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv33460 :isa bio-activate :object mv33456 :present "PRESENT" :raw-text "activated")
   (:var mv33456 :isa protein :predication mv33457 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv33457 :isa phosphorylate :substrate mv33456 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv33464 :isa dephosphorylate :agent mv33461 :substrate mv33462 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv33461 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv33462 :isa protein :predication mv33470 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv33470 :isa binding :direct-bindee mv33462 :that-rel t :bindee mv33463 :present "PRESENT"
    :negation mv33467 :raw-text "bound")
   (:var mv33463 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv33467 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv33482 :isa bio-entity :predication mv33483 :modifier mv33473 :name "V600E")
   (:var mv33483 :isa binding :direct-bindee mv33482 :that-rel t :bindee mv33480 :present "PRESENT"
    :negation mv33477 :raw-text "bound")
   (:var mv33480 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv33477 :isa not :word "not")
   (:var mv33473 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv33489 :isa copular-predication :item mv33485 :value mv33488 :predicate mv33487)
   (:var mv33485 :isa protein :predication mv33486 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv33486 :isa phosphorylate :substrate mv33485 :raw-text "Phosphorylated")
   (:var mv33488 :isa active) (:var mv33487 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv33492 :isa phosphorylate :agent mv33490 :substrate mv33491 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv33490 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv33491 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv33501 :isa explicit-suggestion :suggestion mv33495 :marker let-as-directive)
   (:var mv33495 :isa move-something-somewhere :goal mv33499 :theme mv33494 :present "PRESENT")
   (:var mv33499 :isa top-qua-location :has-determiner "THE")
   (:var mv33494 :isa protein :predication mv33496 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv33496 :isa phosphorylate :substrate mv33494 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv33509 :isa explicit-suggestion :suggestion mv33504 :marker let-as-directive)
   (:var mv33504 :isa move-something-somewhere :at-relative-location mv33507 :theme mv33503
    :present "PRESENT")
   (:var mv33507 :isa top-qua-location)
   (:var mv33503 :isa protein :predication mv33505 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv33505 :isa phosphorylate :substrate mv33503 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv33511 :isa show :at-relative-location mv33513 :|statement-OR-theme| mv33510 :present
    "PRESENT")
   (:var mv33513 :isa top-qua-location)
   (:var mv33510 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv33522 :isa explicit-suggestion :suggestion mv33517 :marker let-as-directive)
   (:var mv33517 :isa highlight :theme mv33518 :present "PRESENT")
   (:var mv33518 :isa upstream-segment :pathwaycomponent mv33516 :raw-text "upstream")
   (:var mv33516 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv33533 :isa explicit-suggestion :suggestion mv33524 :marker let-as-directive)
   (:var mv33524 :isa move-something-somewhere :goal mv33530 :theme mv33531 :present "PRESENT")
   (:var mv33530 :isa top-qua-location :has-determiner "THE")
   (:var mv33531 :isa element :plural t :modifier mv33525)
   (:var mv33525 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv33536 :isa be :subject mv33535 :predicate mv33548 :present "PRESENT")
   (:var mv33535 :isa what)
   (:var mv33548 :isa downstream-segment :plural t :pathwaycomponent mv33544 :has-determiner "THE"
    :predication mv33538 :raw-text "downstreams")
   (:var mv33544 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv33534 mv33543))
   (:var mv33534 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv33543 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33538 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv33565 :isa polar-question :statement mv33560)
   (:var mv33560 :isa there-exists :value mv33564 :predicate mv33552)
   (:var mv33564 :isa upstream-segment :plural t :pathwaycomponent mv33561 :predication mv33554
    :raw-text "upstreams")
   (:var mv33561 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv33549 mv33558 mv33550))
   (:var mv33549 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv33558 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33550 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv33554 :isa common) (:var mv33552 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv33570 :isa be :subject mv33569 :predicate mv33584 :present "PRESENT")
   (:var mv33569 :isa what)
   (:var mv33584 :isa regulator :plural t :theme mv33579 :has-determiner "THE" :predication mv33572
    :context mv33573 :raw-text "regulators")
   (:var mv33579 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv33566 mv33567 mv33568))
   (:var mv33566 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv33567 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv33568 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv33572 :isa common) (:var mv33573 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv33588 :isa be :subject mv33587 :predicate mv33600 :present "PRESENT")
   (:var mv33587 :isa what)
   (:var mv33600 :isa regulator :plural t :theme mv33596 :predication mv33589 :context mv33590
    :raw-text "regulators")
   (:var mv33596 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv33585 mv33586))
   (:var mv33585 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv33586 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv33589 :isa common) (:var mv33590 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv33607 :isa be :subject mv33606 :predicate mv33617 :present "PRESENT")
   (:var mv33606 :isa what)
   (:var mv33617 :isa protein-family :plural t :molecule-type mv33613 :predication mv33608 :context
    mv33609 :raw-text "transcriptional regulators" :uid "XFAM:PF02082" :name
    "transcriptional regulator")
   (:var mv33613 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv33603 mv33604 mv33605))
   (:var mv33603 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv33604 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv33605 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv33608 :isa common) (:var mv33609 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv33621 :isa be :subject mv33620 :predicate mv33635 :present "PRESENT")
   (:var mv33620 :isa what)
   (:var mv33635 :isa mutation :plural t :context mv33619 :object mv33630 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv33619 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv33630 :isa collection :raw-text "PTEN, TP53 and BRAF" :type protein :number 3 :items
    (mv33626 mv33618 mv33628))
   (:var mv33626 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv33618 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv33628 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv33639 :isa be :subject mv33638 :predicate mv33642 :present "PRESENT")
   (:var mv33638 :isa what)
   (:var mv33642 :isa frequency :context mv33637 :measured-item mv33636 :has-determiner "THE"
    :measured-item mv33641 :raw-text "frequency")
   (:var mv33637 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv33636 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv33641 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv33659 :isa copular-predication :item mv33656 :value mv33647 :predicate mv33653)
   (:var mv33656 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv33647 :isa mutual-exclusivity :disease mv33649 :alternative mv33648)
   (:var mv33649 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv33648 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv33653 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv33672 :isa copular-predication :item mv33669 :value mv33660 :predicate mv33666)
   (:var mv33669 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv33660 :isa mutual-exclusivity :disease mv33662 :alternative mv33661)
   (:var mv33662 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv33661 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv33666 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv33675 :isa be :subject mv33674 :predicate mv33681 :present "PRESENT")
   (:var mv33674 :isa what) (:var mv33681 :isa quality-predicate :item mv33673 :attribute mv33678)
   (:var mv33673 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv33678 :isa location-of :has-determiner "THE" :modifier mv33677)
   (:var mv33677 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv33685 :isa regulate :manner mv33682 :agent mv33684 :object mv33686 :present "PRESENT"
    :raw-text "regulate")
   (:var mv33682 :isa how)
   (:var mv33684 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv33686 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv33688 :isa be :subject mv33687 :predicate mv33689 :present "PRESENT")
   (:var mv33687 :isa what)
   (:var mv33689 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv33701 :isa polar-question :statement mv33690)
   (:var mv33690 :isa be :subject mv33691 :predicate mv33693)
   (:var mv33691 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33693 :isa member :set mv33699 :has-determiner "A")
   (:var mv33699 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv33710 :isa copular-predication-of-pp :item mv33708 :value mv33707 :prep mv33706
    :predicate mv33705)
   (:var mv33708 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv33707 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv33706 :isa in :word "in") (:var mv33705 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv33723 :isa copular-predication-of-pp :item mv33720 :value mv33721 :prep mv33715
    :predicate mv33714)
   (:var mv33720 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv33721 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv33715 :isa in :word "in") (:var mv33714 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv33725 :isa be :subject mv33724 :predicate mv33738 :present "PRESENT")
   (:var mv33724 :isa what)
   (:var mv33738 :isa has-name :plural t :item mv33734 :quantifier mv33726 :modifier mv33727)
   (:var mv33734 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33726 :isa some :word "some") (:var mv33727 :isa other :name "other"))
  ("What are synonyms for ERK?"
   (:var mv33740 :isa be :subject mv33739 :predicate mv33746 :present "PRESENT")
   (:var mv33739 :isa what) (:var mv33746 :isa has-synonym :plural t :item mv33744)
   (:var mv33744 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv33759 :isa share :object mv33758 :participant mv33757 :present "PRESENT" :raw-text
    "shared")
   (:var mv33758 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv33757 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv33749 mv33750 mv33751))
   (:var mv33749 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv33750 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv33751 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv33763 :isa be :subject mv33762 :predicate mv33773 :present "PRESENT")
   (:var mv33762 :isa what)
   (:var mv33773 :isa path :plural t :endpoints mv33770 :has-determiner "THE")
   (:var mv33770 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv33768 mv33761))
   (:var mv33768 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33761 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv33778 :isa polar-question :statement mv33776)
   (:var mv33776 :isa be :subject mv33774 :predicate mv33775)
   (:var mv33774 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv33775 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv33779 :isa remove :object mv33791 :present "PRESENT" :raw-text "Remove")
   (:var mv33791 :isa fact :statement mv33785 :has-determiner "THE")
   (:var mv33785 :isa bio-activate :agent mv33784 :object mv33786 :present "PRESENT" :raw-text
    "activates")
   (:var mv33784 :isa protein-family :predication mv33783 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv33783 :isa active)
   (:var mv33786 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv33794 :isa bio-activate :agent mv33793 :object mv33795 :present "PRESENT" :raw-text
    "activates")
   (:var mv33793 :isa protein-family :predication mv33792 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv33792 :isa active)
   (:var mv33795 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv33802 :isa copular-predication-of-pp :item mv33796 :value mv33800 :prep mv33798
    :predicate mv33797)
   (:var mv33796 :isa what) (:var mv33800 :isa model :has-determiner "THE")
   (:var mv33798 :isa in :word "in") (:var mv33797 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv33813 :isa polar-question :statement mv33812)
   (:var mv33812 :isa copular-predication :item mv33805 :value mv33810 :predicate mv33803)
   (:var mv33805 :isa bio-amount :measured-item mv33808 :has-determiner "THE" :raw-text "amount")
   (:var mv33808 :isa protein-family :predication mv33807 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv33807 :isa phosphorylate :substrate mv33808 :raw-text "phosphorylated")
   (:var mv33810 :isa high :adverb mv33809) (:var mv33809 :isa ever :name "ever")
   (:var mv33803 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv33826 :isa copular-predication :item mv33823 :value mv33814 :predicate mv33819)
   (:var mv33823 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv33814 :isa mutual-exclusivity :disease mv33815 :alternative mv33821)
   (:var mv33815 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv33821 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv33819 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv33838 :isa share :object mv33837 :participant mv33836 :present "PRESENT" :raw-text
    "shared")
   (:var mv33837 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv33836 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv33829 mv33830))
   (:var mv33829 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv33830 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv33848 :isa regulate :agent mv33851 :object mv33850 :present "PRESENT" :adverb mv33846
    :adverb mv33847 :raw-text "regulate")
   (:var mv33851 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv33850 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv33840 mv33841 mv33842))
   (:var mv33840 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv33841 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv33842 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv33846 :isa superlative-quantifier :name "most")
   (:var mv33847 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv33853 :isa be :subject mv33852 :predicate mv33863 :present "PRESENT")
   (:var mv33852 :isa what) (:var mv33863 :isa quality-predicate :item mv33861 :attribute mv33859)
   (:var mv33861 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv33859 :isa location-of :has-determiner "THE" :predication mv33857 :modifier mv33858)
   (:var mv33857 :isa likely :comparative mv33855)
   (:var mv33855 :isa superlative-quantifier :name "most")
   (:var mv33858 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv33868 :isa polar-question :statement mv33864)
   (:var mv33864 :isa be :subject mv33865 :predicate mv33867)
   (:var mv33865 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33867 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?"
   (:var mv33880 :isa polar-question :statement mv33871)
   (:var mv33871 :isa tell :agent mv33870 :theme mv33879 :theme mv33872 :modal "CAN")
   (:var mv33870 :isa interlocutor :name "hearer")
   (:var mv33879 :isa wh-question :statement mv33876 :wh whether)
   (:var mv33876 :isa be :subject mv33875 :predicate mv33878 :modal "CAN")
   (:var mv33875 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33878 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv33872 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv33884 :isa want :agent mv33881 :theme mv33894 :present "PRESENT")
   (:var mv33881 :isa interlocutor :name "speaker")
   (:var mv33894 :isa know :agent mv33881 :statement mv33893)
   (:var mv33893 :isa wh-question :statement mv33889 :wh if)
   (:var mv33889 :isa be :subject mv33888 :predicate mv33891 :present "PRESENT")
   (:var mv33888 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33891 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv33895 :isa what))
  ("What type of protein is BRAF?"
   (:var mv33903 :isa be :subject mv33900 :predicate mv33904 :present "PRESENT")
   (:var mv33900 :isa type :molecule-type mv33902 :has-determiner "WHAT" :raw-text "type")
   (:var mv33902 :isa protein :raw-text "protein")
   (:var mv33904 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv33907 :isa be :subject mv33906 :predicate mv33909 :present "PRESENT")
   (:var mv33906 :isa what)
   (:var mv33909 :isa bio-activity :participant mv33914 :has-determiner "THE" :raw-text "activity")
   (:var mv33914 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv33924 :isa polar-question :statement mv33917)
   (:var mv33917 :isa be :subject mv33918 :predicate mv33923)
   (:var mv33918 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv33923 :isa collection :raw-text "a kinase or a transcription factor" :type kinase
    :number 2 :items (mv33920 mv33916))
   (:var mv33920 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv33916 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv33933 :isa target :object mv33932 :agent mv33925 :present "PRESENT" :raw-text
    "targeted")
   (:var mv33932 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv33925 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv33940 :isa name-something :patient mv33936 :present "PRESENT")
   (:var mv33936 :isa transcription-factor :plural t :predication mv33943 :raw-text
    "transcription factors")
   (:var mv33943 :isa share :object mv33936 :participant mv33946 :past "PAST" :raw-text "shared")
   (:var mv33946 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv33937 mv33938 mv33939))
   (:var mv33937 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv33938 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv33939 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv33951 :isa tell :theme mv33956 :beneficiary mv33952 :present "PRESENT")
   (:var mv33956 :isa wh-question :statement mv33954 :wh if)
   (:var mv33954 :isa be :subject mv33949 :predicate mv33950 :present "PRESENT")
   (:var mv33949 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv33950 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv33952 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv33961 :isa show :|statement-OR-theme| mv33968 :beneficiary mv33962 :present "PRESENT")
   (:var mv33968 :isa signaling-pathway :plural t :predication mv33963 :raw-text
    "signaling pathways")
   (:var mv33963 :isa share :object mv33968 :participant mv33966 :past "PAST" :raw-text "shared")
   (:var mv33966 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv33959 mv33960))
   (:var mv33959 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv33960 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv33962 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv33973 :isa give :theme mv33980 :beneficiary mv33974 :present "PRESENT")
   (:var mv33980 :isa signaling-pathway :plural t :predication mv33975 :raw-text
    "signaling pathways")
   (:var mv33975 :isa share :object mv33980 :participant mv33978 :past "PAST" :raw-text "shared")
   (:var mv33978 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv33971 mv33972))
   (:var mv33971 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv33972 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv33974 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv34010 :isa polar-question :statement mv34009)
   (:var mv34009 :isa event-relation :subordinated-event mv34005 :event mv34007)
   (:var mv34005 :isa wh-question :statement mv33992 :wh if)
   (:var mv33992 :isa increase :|agent-OR-cause| mv33990 :|multiplier-OR-cause| mv34002
    :|affected-process-OR-object| mv33994 :present "PRESENT" :raw-text "increase")
   (:var mv33990 :isa interlocutor :name "person-and-machine")
   (:var mv34002 :isa measurement :number mv33999) (:var mv33999 :isa number :value 10)
   (:var mv33994 :isa bio-amount :measured-item mv33996 :has-determiner "THE" :raw-text "amount")
   (:var mv33996 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv34007 :isa copular-predication :item mv33983 :value mv33988 :predicate mv33981)
   (:var mv33983 :isa bio-amount :measured-item mv33986 :has-determiner "THE" :raw-text "amount")
   (:var mv33986 :isa protein-family :predication mv33985 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv33985 :isa phosphorylate :substrate mv33986 :raw-text "phosphorylated")
   (:var mv33988 :isa high :adverb mv33987) (:var mv33987 :isa ever :name "ever")
   (:var mv33981 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv34013 :isa phosphorylate :agent mv34012 :substrate mv34014 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv34012 :isa protein-family :predication mv34011 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv34011 :isa active)
   (:var mv34014 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv34042 :isa polar-question :statement mv34041)
   (:var mv34041 :isa event-relation :subordinated-event mv34037 :event mv34039)
   (:var mv34037 :isa wh-question :statement mv34026 :wh if)
   (:var mv34026 :isa increase :|agent-OR-cause| mv34024 :level mv34035
    :|affected-process-OR-object| mv34028 :present "PRESENT" :raw-text "increase")
   (:var mv34024 :isa interlocutor :name "person-and-machine")
   (:var mv34035 :isa measurement :number mv34032) (:var mv34032 :isa number :value 10)
   (:var mv34028 :isa bio-amount :measured-item mv34030 :has-determiner "THE" :raw-text "amount")
   (:var mv34030 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv34039 :isa copular-predication :item mv34017 :value mv34022 :predicate mv34015)
   (:var mv34017 :isa bio-amount :measured-item mv34020 :has-determiner "THE" :raw-text "amount")
   (:var mv34020 :isa protein-family :predication mv34019 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv34019 :isa phosphorylate :substrate mv34020 :raw-text "phosphorylated")
   (:var mv34022 :isa high :adverb mv34021) (:var mv34021 :isa ever :name "ever")
   (:var mv34015 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv34044 :isa be :subject mv34043 :predicate mv34052 :present "PRESENT")
   (:var mv34043 :isa what)
   (:var mv34052 :isa pathway :plural t :predication mv34049 :quantifier mv34045 :raw-text
    "pathways")
   (:var mv34049 :isa affect :agent mv34052 :that-rel t :object mv34050 :present "PRESENT"
    :raw-text "affect")
   (:var mv34050 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv34045 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv34054 :isa be :subject mv34053 :predicate mv34062 :present "PRESENT")
   (:var mv34053 :isa what)
   (:var mv34062 :isa pathway :plural t :predication mv34059 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv34059 :isa affect :agent mv34062 :that-rel t :object mv34060 :present "PRESENT"
    :raw-text "affect")
   (:var mv34060 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv34074 :isa regulate :object mv34073 :agent mv34072 :present "PRESENT" :raw-text
    "regulated")
   (:var mv34073 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv34072 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv34063 mv34064))
   (:var mv34063 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv34064 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
    "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv34078 :isa be :subject mv34077 :predicate mv34089 :present "PRESENT")
   (:var mv34077 :isa what)
   (:var mv34089 :isa gene :plural t :predication mv34087 :quantifier mv34079 :raw-text "genes")
   (:var mv34087 :isa regulate :object mv34089 :that-rel t :agent mv34076 :present "PRESENT"
    :raw-text "regulated")
   (:var mv34076 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv34079 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv34095 :isa contain :theme mv34098 :patient mv34097 :present "PRESENT")
   (:var mv34098 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv34097 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv34090 mv34091))
   (:var mv34090 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv34091 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv34101 :isa remove :object mv34110 :present "PRESENT" :raw-text "Remove")
   (:var mv34110 :isa fact :statement mv34105 :has-determiner "THE")
   (:var mv34105 :isa bio-activate :agent mv34099 :object mv34100 :present "PRESENT" :raw-text
    "activates")
   (:var mv34099 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv34100 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv34113 :isa remove :object mv34111 :present "PRESENT" :raw-text "Remove")
   (:var mv34111 :isa protein :predication mv34114 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv34114 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv34122 :isa be :subject mv34121 :predicate mv34132 :present "PRESENT")
   (:var mv34121 :isa what)
   (:var mv34132 :isa path :plural t :endpoints mv34129 :quantifier mv34123)
   (:var mv34129 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv34127 mv34120))
   (:var mv34127 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv34120 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv34123 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv34138 :isa polar-question :statement mv34137)
   (:var mv34137 :isa bio-activate :agent mv34133 :object mv34134 :raw-text "activate")
   (:var mv34133 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv34134 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv34142 :isa protein :has-determiner "WHAT" :modifier mv34141 :modifier mv34143 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv34141 :isa drug :plural t :raw-text "drugs")
   (:var mv34143 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv34157 :isa copular-predication-of-pp :item mv34152 :value mv34156 :prep "IN" :predicate
    mv34148)
   (:var mv34152 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv34156 :isa kinase :plural t :in-pathway mv34144 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv34144 :isa signaling-pathway :has-determiner "THE" :modifier mv34151 :raw-text
    "signalling pathway")
   (:var mv34151 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv34148 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv34165 :isa target :agent mv34169 :object mv34166 :present "PRESENT" :raw-text "target")
   (:var mv34169 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv34166 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv34173 :isa bio-entity :has-determiner "WHAT" :modifier mv34174 :name "ELLK1")
   (:var mv34174 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv34187 :isa polar-question :statement mv34184)
   (:var mv34184 :isa increase :agent mv34175 :affected-process mv34180 :raw-text "increase")
   (:var mv34175 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv34180 :isa gene-transcript-express :object mv34176 :raw-text "expression")
   (:var mv34176 :isa protein :organ mv34183 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv34183 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv34197 :isa polar-question :statement mv34195)
   (:var mv34195 :isa affect :agent mv34188 :affected-process mv34192 :raw-text "affect")
   (:var mv34188 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv34192 :isa gene-transcript-express :organ mv34194 :object mv34189 :raw-text
    "expression")
   (:var mv34194 :isa liver)
   (:var mv34189 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv34204 :isa polar-question :statement mv34203)
   (:var mv34203 :isa alter :agent mv34198 :affected-process mv34202 :raw-text "alter")
   (:var mv34198 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv34202 :isa gene-transcript-express :object mv34199 :raw-text "expression")
   (:var mv34199 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv34212 :isa polar-question :statement mv34208)
   (:var mv34208 :isa be :subject mv34205 :predicate mv34206)
   (:var mv34205 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv34206 :isa protein-family :molecule-type mv34207 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv34207 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv34216 :isa inhibit :agent mv34218 :object mv34217 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv34218 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv34217 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv34221 :isa upregulate :agent mv34219 :object mv34220 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv34219 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv34220 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv34225 :isa transcribe :object mv34223 :agent mv34222 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv34223 :isa what)
   (:var mv34222 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv34228 :isa be :subject mv34227 :predicate mv34226 :present "PRESENT")
   (:var mv34227 :isa what)
   (:var mv34226 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv34230 :isa be :subject mv34229 :predicate mv34231 :present "PRESENT")
   (:var mv34229 :isa what)
   (:var mv34231 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv34233 :isa phosphorylate :|agent-OR-cause| mv34232 :substrate mv34234 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv34232 :isa what)
   (:var mv34234 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv34239 :isa target :agent mv34241 :object mv34240 :present "PRESENT" :raw-text "target")
   (:var mv34241 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv34240 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv34244 :isa regulate :|agent-OR-cause| mv34243 :object mv34242 :present "PRESENT"
    :raw-text "regulates")
   (:var mv34243 :isa what) (:var mv34242 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv34247 :isa regulate :|agent-OR-cause| mv34246 :object mv34245 :present "PRESENT"
    :raw-text "regulates")
   (:var mv34246 :isa what)
   (:var mv34245 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv34258 :isa polar-question :statement mv34257)
   (:var mv34257 :isa target :agent mv34256 :object mv34249 :raw-text "target")
   (:var mv34256 :isa bio-entity :name "miR-20b-5pp")
   (:var mv34249 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv34261 :isa be :subject mv34260 :predicate mv34268 :present "PRESENT")
   (:var mv34260 :isa what)
   (:var mv34268 :isa mutation :plural t :has-determiner "THE" :raw-text "mutations"))
  ("What does selumitinibib target?"
   (:var mv34274 :isa target :|affected-process-OR-object| mv34271 :agent mv34275 :present
    "PRESENT" :raw-text "target")
   (:var mv34271 :isa what) (:var mv34275 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv34280 :isa polar-question :statement mv34277)
   (:var mv34277 :isa be :subject mv34276 :predicate mv34279)
   (:var mv34276 :isa bio-entity :name "ELLK1")
   (:var mv34279 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv34282 :isa regulate :|agent-OR-cause| mv34281 :object mv34283 :present "PRESENT"
    :raw-text "regulates")
   (:var mv34281 :isa what)
   (:var mv34283 :isa protein :variant-number mv34285 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv34285 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv34289 :isa target :|affected-process-OR-object| mv34286 :agent mv34290 :present
    "PRESENT" :raw-text "target")
   (:var mv34286 :isa what) (:var mv34290 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv34294 :isa be :subject mv34293 :predicate mv34299 :present "PRESENT")
   (:var mv34293 :isa what) (:var mv34299 :isa evidence :statement mv34298 :has-determiner "THE")
   (:var mv34298 :isa phosphorylate :agent mv34291 :substrate mv34292 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv34291 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv34292 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv34301 :isa remove :object mv34300 :present "PRESENT" :raw-text "Remove")
   (:var mv34300 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv34306 :isa remove :object mv34309 :present "PRESENT" :raw-text "Remove")
   (:var mv34309 :isa interact :has-determiner "THE" :predication mv34308 :raw-text "interaction")
   (:var mv34308 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv34316 :isa bio-activate :agent mv34314 :object mv34315 :present "PRESENT" :raw-text
    "activates")
   (:var mv34314 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv34315 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv34326 :isa copular-predication-of-pp :item mv34324 :value mv34323 :prep mv34321
    :predicate mv34320)
   (:var mv34324 :isa interact :plural t :quantifier how-many :raw-text "interactions")
   (:var mv34323 :isa model :has-determiner "THE") (:var mv34321 :isa in :word "in")
   (:var mv34320 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv34338 :isa polar-question :statement mv34336)
   (:var mv34336 :isa decrease :agent mv34329 :|affected-process-OR-object| mv34333 :raw-text
    "decrease")
   (:var mv34329 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv34333 :isa bio-amount :measured-item mv34327 :has-determiner "THE" :raw-text "amount")
   (:var mv34327 :isa protein :predication mv34335 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv34335 :isa phosphorylate :substrate mv34327 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv34344 :isa bio-activate :object mv34345 :agent mv34339 :present "PRESENT" :raw-text
    "activate")
   (:var mv34345 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv34339 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv34351 :isa bio-activate :object mv34352 :agent mv34346 :present "PRESENT" :raw-text
    "activate")
   (:var mv34352 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv34346 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv34356 :isa bio-activate :|affected-process-OR-object| mv34354 :agent mv34353 :present
    "PRESENT" :raw-text "activate")
   (:var mv34354 :isa what)
   (:var mv34353 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv34360 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv34358 :agent mv34357
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv34358 :isa what)
   (:var mv34357 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv34366 :isa regulate :object mv34367 :agent mv34361 :present "PRESENT" :raw-text
    "regulate")
   (:var mv34367 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv34361 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv34379 :isa collection :type involve :number 2 :items (mv34371 mv34377))
   (:var mv34371 :isa involve :theme mv34378 :object mv34372 :present "PRESENT")
   (:var mv34378 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv34372 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv34377 :isa binding :direct-bindee mv34374 :binder mv34376 :present "PRESENT" :raw-text
    "bind")
   (:var mv34374 :isa what)
   (:var mv34376 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv34383 :isa involve :theme mv34385 :object mv34384 :present "PRESENT")
   (:var mv34385 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv34384 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv34389 :isa binding :direct-bindee mv34386 :binder mv34388 :present "PRESENT" :raw-text
    "bind")
   (:var mv34386 :isa what)
   (:var mv34388 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv34401 :isa collection :type involve :number 2 :items (mv34393 mv34396))
   (:var mv34393 :isa involve :theme mv34400 :object mv34394 :present "PRESENT")
   (:var mv34400 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv34394 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv34396 :isa be :subject mv34400 :predicate mv34397 :present "PRESENT")
   (:var mv34397 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv34412 :isa polar-question :statement mv34411)
   (:var mv34411 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv34418 :isa polar-question :statement mv34417)
   (:var mv34417 :isa phosphorylate :agent mv34413 :substrate mv34414 :raw-text "phosphorylate")
   (:var mv34413 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv34414 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv34423 :isa bio-activate :agent mv34424 :object mv34419 :present "PRESENT" :raw-text
    "activate")
   (:var mv34424 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv34419 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv34431 :isa target :agent mv34437 :affected-process mv34439 :present "PRESENT" :raw-text
    "target")
   (:var mv34437 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv34439 :isa upstream-segment :plural t :pathwaycomponent mv34436 :raw-text "upstreams")
   (:var mv34436 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv34425 mv34426))
   (:var mv34425 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv34426 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv34445 :isa target :agent mv34446 :object mv34440 :present "PRESENT" :raw-text "target")
   (:var mv34446 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv34440 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv34452 :isa target :agent mv34453 :object mv34447 :present "PRESENT" :raw-text "target")
   (:var mv34453 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv34447 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv34462 :isa target :agent mv34467 :object mv34455 :present "PRESENT" :raw-text "target")
   (:var mv34467 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv34455 :isa transcription-factor :plural t :predication mv34463 :raw-text
    "transcription factors")
   (:var mv34463 :isa share :object mv34455 :participant mv34466 :past "PAST" :raw-text "shared")
   (:var mv34466 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv34456 mv34457))
   (:var mv34456 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv34457 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv34476 :isa target :object mv34477 :agent mv34470 :present "PRESENT" :raw-text "target")
   (:var mv34477 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv34470 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv34484 :isa target :object mv34485 :agent mv34480 :present "PRESENT" :raw-text "target")
   (:var mv34485 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv34480 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv34498 :isa copular-predication :item mv34495 :value mv34486 :predicate mv34492)
   (:var mv34495 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv34486 :isa mutual-exclusivity :disease mv34488 :alternative mv34487)
   (:var mv34488 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv34487 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv34492 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv34503 :isa target :agent mv34505 :object mv34504 :present "PRESENT" :raw-text "target")
   (:var mv34505 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv34504 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv34519 :isa copular-predication-of-pp :item mv34514 :value mv34518 :prep "IN" :predicate
    mv34510)
   (:var mv34514 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv34518 :isa kinase :plural t :in-pathway mv34506 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv34506 :isa signaling-pathway :has-determiner "THE" :modifier mv34513 :raw-text
    "signaling pathway")
   (:var mv34513 :isa bio-entity :name "FAKE") (:var mv34510 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv34522 :isa be :subject mv34521 :predicate mv34535 :present "PRESENT")
   (:var mv34521 :isa what)
   (:var mv34535 :isa mutation :plural t :context mv34530 :object mv34527 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv34530 :isa cancer :predication mv34529) (:var mv34529 :isa fictional)
   (:var mv34527 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv34537 :isa be :subject mv34536 :predicate mv34550 :present "PRESENT")
   (:var mv34536 :isa what)
   (:var mv34550 :isa mutation :plural t :context mv34545 :object mv34542 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv34545 :isa cancer :organ mv34544) (:var mv34544 :isa liver)
   (:var mv34542 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv34552 :isa remove :object mv34562 :present "PRESENT" :raw-text "Remove")
   (:var mv34562 :isa fact :statement mv34556 :has-determiner "THE")
   (:var mv34556 :isa transcribe :agent mv34551 :object mv34557 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv34551 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv34557 :isa bio-entity :name "FAKE"))
  ("ELK1 transcribes FOS"
   (:var mv34564 :isa transcribe :agent mv34563 :object mv34565 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv34563 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv34565 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv34567 :isa remove :object mv34577 :present "PRESENT" :raw-text "Remove")
   (:var mv34577 :isa fact :statement mv34571 :has-determiner "THE")
   (:var mv34571 :isa transcribe :agent mv34566 :object mv34572 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv34566 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv34572 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv34592 :isa share :object mv34591 :participant mv34590 :present "PRESENT" :raw-text
    "shared")
   (:var mv34591 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv34590 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv34580 mv34589))
   (:var mv34580 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv34589 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv34605 :isa share :object mv34604 :participant mv34603 :present "PRESENT" :raw-text
    "shared")
   (:var mv34604 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv34603 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv34596 mv34597))
   (:var mv34596 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv34597 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?" (:var mv34614 :isa database :plural t :has-determiner "WHAT"))
  ("What is the MSA?" (:var mv34616 :isa be :subject mv34615 :predicate mv34618 :present "PRESENT")
   (:var mv34615 :isa what)
   (:var mv34618 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv34629 :isa ask :patient mv34628 :modal mv34622 :agent mv34623 :present "PRESENT")
   (:var mv34628 :isa tissue :plural t :has-determiner "WHAT") (:var mv34622 :isa can)
   (:var mv34623 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv34640 :isa ask :patient mv34639 :modal mv34633 :agent mv34634 :present "PRESENT")
   (:var mv34639 :isa cancer :plural t :has-determiner "WHAT") (:var mv34633 :isa can)
   (:var mv34634 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv34651 :isa ask :patient mv34650 :modal mv34644 :agent mv34645 :present "PRESENT")
   (:var mv34650 :isa bio-mechanism :plural t :has-determiner "WHAT") (:var mv34644 :isa can)
   (:var mv34645 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv34655 :isa regulate :|affected-process-OR-object| mv34653 :agent mv34652 :present
    "PRESENT" :raw-text "regulate")
   (:var mv34653 :isa what)
   (:var mv34652 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv34659 :isa be :subject mv34658 :predicate mv34661 :present "PRESENT")
   (:var mv34658 :isa these :quantifier mv34656 :word "these") (:var mv34656 :isa which)
   (:var mv34661 :isa kinase :plural t :raw-text "kinases"))
  ("What pathways is ERK1 in?"
   (:var mv34667 :isa be :subject mv34669 :predicate mv34663 :present "PRESENT")
   (:var mv34669 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv34663 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which of these is AKT1 in?"
   (:var mv34674 :isa be :subject mv34673 :predicate mv34670 :present "PRESENT")
   (:var mv34673 :isa these :quantifier mv34671 :word "these") (:var mv34671 :isa which)
   (:var mv34670 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv34682 :isa be :subject mv34686 :predicate mv34685 :present "PRESENT")
   (:var mv34686 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv34685 :isa collection :raw-text "ERK1 and AKT1" :type protein :number 2 :items
    (mv34677 mv34678))
   (:var mv34677 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv34678 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What microRNAs target STAT3?"
   (:var mv34692 :isa target :agent mv34693 :object mv34687 :present "PRESENT" :raw-text "target")
   (:var mv34693 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv34687 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv34699 :isa target :|agent-OR-cause| mv34697 :object mv34694 :present "PRESENT" :raw-text
    "target")
   (:var mv34697 :isa these :quantifier mv34695 :word "these") (:var mv34695 :isa which)
   (:var mv34694 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv34709 :isa polar-question :statement mv34707)
   (:var mv34707 :isa regulate :|agent-OR-cause| mv34705 :object mv34701 :raw-text "regulate")
   (:var mv34705 :isa these :quantifier mv34703 :word "these") (:var mv34703 :isa any :word "any")
   (:var mv34701 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv34712 :isa regulate :|agent-OR-cause| mv34711 :object mv34710 :present "PRESENT"
    :raw-text "regulates")
   (:var mv34711 :isa what)
   (:var mv34710 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv34716 :isa involve :theme mv34718 :object mv34717 :present "PRESENT")
   (:var mv34718 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv34717 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv34721 :isa be :subject mv34720 :predicate mv34729 :present "PRESENT")
   (:var mv34720 :isa what)
   (:var mv34729 :isa target-protein :plural t :agent mv34719 :has-determiner "THE" :raw-text
    "targets")
   (:var mv34719 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv34731 :isa be :subject mv34730 :predicate mv34737 :present "PRESENT")
   (:var mv34730 :isa what)
   (:var mv34737 :isa location-of :theme mv34732 :predication mv34735 :modifier mv34736)
   (:var mv34732 :isa pronoun/plural :word "their") (:var mv34735 :isa likely :comparative mv34733)
   (:var mv34733 :isa superlative-quantifier :name "most")
   (:var mv34736 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv34742 :isa polar-question :statement mv34740)
   (:var mv34740 :isa be :subject mv34738 :predicate mv34739)
   (:var mv34738 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv34739 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv34747 :isa polar-question :statement mv34743)
   (:var mv34743 :isa be :subject mv34744 :predicate mv34746)
   (:var mv34744 :isa pronoun/inanimate :word "it")
   (:var mv34746 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?"
   (:var mv34750 :isa be :subject mv34749 :predicate mv34748 :present "PRESENT")
   (:var mv34749 :isa what)
   (:var mv34748 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv34755 :isa target :|affected-process-OR-object| mv34751 :|agent-OR-cause| mv34753
    :present "PRESENT" :raw-text "target")
   (:var mv34751 :isa what) (:var mv34753 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv34761 :isa regulate :object mv34762 :agent mv34756 :present "PRESENT" :raw-text
    "regulate")
   (:var mv34762 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv34756 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?"
   (:var mv34766 :isa be :subject mv34769 :predicate mv34767 :present "PRESENT")
   (:var mv34769 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv34767 :isa pronoun/inanimate :word "it"))
  ("What are the targets of PLX-4720?"
   (:var mv34772 :isa be :subject mv34771 :predicate mv34780 :present "PRESENT")
   (:var mv34771 :isa what)
   (:var mv34780 :isa target-protein :plural t :agent mv34770 :has-determiner "THE" :raw-text
    "targets")
   (:var mv34770 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv34787 :isa polar-question :statement mv34786)
   (:var mv34786 :isa target :|agent-OR-cause| mv34782 :object mv34785 :raw-text "target")
   (:var mv34782 :isa pronoun/inanimate :word "it")
   (:var mv34785 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv34792 :isa inhibit :agent mv34791 :object mv34796 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv34791 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv34796 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv34788 mv34789))
   (:var mv34788 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv34789 :isa protein :predication mv34794 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv34794 :isa active))
  ("JAK1 activates STAT3"
   (:var mv34799 :isa bio-activate :agent mv34797 :object mv34798 :present "PRESENT" :raw-text
    "activates")
   (:var mv34797 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv34798 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv34805 :isa want :agent mv34802 :theme mv34815 :present "PRESENT")
   (:var mv34802 :isa interlocutor :name "speaker")
   (:var mv34815 :isa find-out :agent mv34802 :statement mv34812)
   (:var mv34812 :isa wh-question :statement mv34811 :var nil :wh how)
   (:var mv34811 :isa bio-activate :agent mv34800 :object mv34801 :present "PRESENT" :raw-text
    "activates")
   (:var mv34800 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv34801 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv34821 :isa want :agent mv34818 :theme mv34837 :present "PRESENT")
   (:var mv34818 :isa interlocutor :name "speaker")
   (:var mv34837 :isa find-out :agent mv34818 :statement mv34834)
   (:var mv34834 :isa wh-question :statement mv34827 :var nil :wh how)
   (:var mv34827 :isa bio-activate :agent mv34816 :object mv34828 :present "PRESENT" :raw-text
    "activates")
   (:var mv34816 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv34828 :isa protein :cell-type mv34832 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv34832 :isa cell-type :plural t :cell-line mv34817)
   (:var mv34817 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv34842 :isa explicit-suggestion :suggestion mv34839 :marker let-as-directive)
   (:var mv34839 :isa build :artifact mv34841 :present "PRESENT")
   (:var mv34841 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv34844 :isa phosphorylate :agent mv34843 :substrate mv34845 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv34843 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv34845 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv34853 :isa regulate :agent mv34854 :object mv34849 :present "PRESENT" :raw-text
    "regulate")
   (:var mv34854 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv34849 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv34855 :isa upregulate :|agent-OR-cause| mv34857 :object mv34856 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv34857 :isa what)
   (:var mv34856 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv34861 :isa have :possessor mv34859 :thing-possessed mv34863 :modal mv34860)
   (:var mv34859 :isa what)
   (:var mv34863 :isa effect :object mv34858 :affected-process mv34866 :has-determiner "THE"
    :raw-text "effect")
   (:var mv34858 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv34866 :isa bio-activate :raw-text "activation") (:var mv34860 :isa can))
  ("Are there any drugs for IL10?" (:var mv34882 :isa polar-question :statement mv34878)
   (:var mv34878 :isa there-exists :value mv34881 :predicate mv34872)
   (:var mv34881 :isa drug :plural t :target mv34870 :quantifier mv34874 :raw-text "drugs")
   (:var mv34870 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv34874 :isa any :word "any") (:var mv34872 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv34887 :isa gene-transcript-express :agent mv34888 :object mv34883 :present "PRESENT"
    :raw-text "express")
   (:var mv34888 :isa tissue :plural t :has-determiner "WHICH")
   (:var mv34883 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv34893 :isa regulate :manner mv34891 :agent mv34889 :object mv34890 :present "PRESENT"
    :raw-text "regulate")
   (:var mv34891 :isa how)
   (:var mv34889 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv34890 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv34899 :isa be :subject mv34898 :predicate mv34909 :present "PRESENT")
   (:var mv34898 :isa what)
   (:var mv34909 :isa transcription-factor :plural t :predication mv34901 :raw-text
    "transcription factors")
   (:var mv34901 :isa binding :binder mv34909 :that-rel t :direct-bindee mv34908 :present "PRESENT"
    :raw-text "bind")
   (:var mv34908 :isa gene :plural t :has-determiner "THE" :expresses mv34906 :raw-text "genes")
   (:var mv34906 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv34896 mv34897))
   (:var mv34896 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv34897 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv34915 :isa regulate :agent mv34919 :object mv34918 :present "PRESENT" :raw-text
    "regulate")
   (:var mv34919 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv34918 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv34910 mv34911))
   (:var mv34910 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv34911 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv34931 :isa factor :plural t :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv34944 :isa relation :plural t :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv34948 :isa be :subject mv34947 :predicate mv34946 :present "PRESENT")
   (:var mv34947 :isa what)
   (:var mv34946 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv34953 :isa polar-question :statement mv34950)
   (:var mv34950 :isa be :subject mv34949 :predicate mv34952)
   (:var mv34949 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv34952 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv34957 :isa transcribe :object mv34955 :agent mv34954 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv34955 :isa what)
   (:var mv34954 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv34968 :isa polar-question :statement mv34965)
   (:var mv34965 :isa there-exists :value mv34967 :predicate mv34960)
   (:var mv34967 :isa drug :plural t :target mv34958 :raw-text "drugs")
   (:var mv34958 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv34960 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv34978 :isa relation :plural t :has-determiner "WHAT"))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv34991 :isa relation :plural t :has-determiner "WHAT"))))