

___________________
0: "What genes does mir-128 regulate?"

                    source-start
e8    REGULATE      1 "What genes does mir-128 regulate" 8
                    question-mark
                    end-of-source
("What genes does mir-128 regulate?"
 (:var sparser::mv58164 :isa sparser::regulate :object sparser::mv58165 :agent sparser::mv58159
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv58165 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv58159 :isa sparser::bio-entity :name "mir-128"))

___________________
1: "what transcription factors does miR-200c regulate?"

                    source-start
e9    REGULATE      1 "what transcription factors does miR-200c regulate" 10
                    question-mark
                    end-of-source
("what transcription factors does miR-200c regulate?"
 (:var sparser::mv58171 :isa sparser::regulate :object sparser::mv58172 :agent sparser::mv58168
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv58172 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv58168 :isa sparser::micro-rna :raw-text "miR-200c" :name "MIR200C" :uid
  "NCIT:C82157"))

___________________
2: "Tell me about stat3's involvement in apoptosis"

                    source-start
e16   TELL          1 "Tell me about stat3's involvement in apoptosis" 11
                    end-of-source
("Tell me about stat3's involvement in apoptosis"
 (:var sparser::mv58174 :isa sparser::tell :theme sparser::mv58178 :theme sparser::mv58175 :present
  "PRESENT")
 (:var sparser::mv58178 :isa sparser::involve :theme sparser::mv58180 :participant
  sparser::mv58177)
 (:var sparser::mv58180 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv58177 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58175 :isa sparser::interlocutor :name "speaker"))

___________________
3: "What are the genes that have strong evidence of being regulated by mir-122-5p?"

                    source-start
e30   BE            1 "What are the genes that have strong evidence of being regulated by mir-122-5p" 19
                    question-mark
                    end-of-source
("What are the genes that have strong evidence of being regulated by mir-122-5p?"
 (:var sparser::mv58185 :isa sparser::be :subject sparser::mv58184 :predicate sparser::mv58200
  :present "PRESENT")
 (:var sparser::mv58184 :isa sparser::what)
 (:var sparser::mv58200 :isa sparser::gene :plural t :predication sparser::mv58190 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv58190 :isa sparser::have :possessor sparser::mv58200 :that-rel t :thing-possessed
  sparser::mv58192 :present "PRESENT")
 (:var sparser::mv58192 :isa sparser::evidence :fact sparser::mv58195 :predication
  sparser::mv58191)
 (:var sparser::mv58195 :isa sparser::regulate :agent sparser::mv58183 :progressive
  sparser::mv58194 :raw-text "regulated")
 (:var sparser::mv58183 :isa sparser::micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid
  "MIMAT0000421")
 (:var sparser::mv58194 :isa sparser::be) (:var sparser::mv58191 :isa sparser::strong))

___________________
4: "What is stat3's involvement in apoptosis?"

                    source-start
e14   BE            1 "What is stat3's involvement in apoptosis" 10
                    question-mark
                    end-of-source
("What is stat3's involvement in apoptosis?"
 (:var sparser::mv58203 :isa sparser::be :subject sparser::mv58202 :predicate sparser::mv58205
  :present "PRESENT")
 (:var sparser::mv58202 :isa sparser::what)
 (:var sparser::mv58205 :isa sparser::involve :theme sparser::mv58207 :participant
  sparser::mv58204)
 (:var sparser::mv58207 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv58204 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
5: "What is stat3's role in apoptosis?"

                    source-start
e14   BE            1 "What is stat3's role in apoptosis" 10
                    question-mark
                    end-of-source
("What is stat3's role in apoptosis?"
 (:var sparser::mv58211 :isa sparser::be :subject sparser::mv58210 :predicate sparser::mv58213
  :present "PRESENT")
 (:var sparser::mv58210 :isa sparser::what)
 (:var sparser::mv58213 :isa sparser::role :process sparser::mv58215 :participant sparser::mv58212)
 (:var sparser::mv58215 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv58212 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
6: "What is stat3's role in apoptotic regulation?"

                    source-start
e17   BE            1 "What is stat3's role in apoptotic regulation" 11
                    question-mark
                    end-of-source
("What is stat3's role in apoptotic regulation?"
 (:var sparser::mv58219 :isa sparser::be :subject sparser::mv58218 :predicate sparser::mv58221
  :present "PRESENT")
 (:var sparser::mv58218 :isa sparser::what)
 (:var sparser::mv58221 :isa sparser::role :process sparser::mv58225 :participant sparser::mv58220)
 (:var sparser::mv58225 :isa sparser::regulate :cellular-process sparser::mv58223 :raw-text
  "regulation")
 (:var sparser::mv58223 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv58220 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
7: "What is the evidence that miR-148a-3p targets DNMT1?"

                    source-start
e19   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    question-mark
                    end-of-source
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:var sparser::mv58230 :isa sparser::be :subject sparser::mv58229 :predicate sparser::mv58237
  :present "PRESENT")
 (:var sparser::mv58229 :isa sparser::what)
 (:var sparser::mv58237 :isa sparser::evidence :statement sparser::mv58236 :has-determiner "THE")
 (:var sparser::mv58236 :isa sparser::target :agent sparser::mv58227 :object sparser::mv58228
  :present "PRESENT" :raw-text "targets")
 (:var sparser::mv58227 :isa sparser::micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p"
  :uid "MIMAT0000243")
 (:var sparser::mv58228 :isa sparser::protein :raw-text "DNMT1" :uid "UP:P26358" :name
  "DNMT1_HUMAN"))

___________________
8: "what transcription factors does miR-124-3p regulate?"

                    source-start
e9    REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    question-mark
                    end-of-source
("what transcription factors does miR-124-3p regulate?"
 (:var sparser::mv58243 :isa sparser::regulate :object sparser::mv58244 :agent sparser::mv58240
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv58244 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv58240 :isa sparser::micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid
  "MIMAT0000422"))

___________________
9: "what transcription factors does miR-200c-3p regulate?"

                    source-start
e9    REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    question-mark
                    end-of-source
("what transcription factors does miR-200c-3p regulate?"
 (:var sparser::mv58250 :isa sparser::regulate :object sparser::mv58251 :agent sparser::mv58247
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv58251 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv58247 :isa sparser::micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p"
  :uid "MIMAT0000617"))

___________________
10: "What is the mutation significance of TP53 in ovarian cancer?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 in ovarian cancer" 12
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 in ovarian cancer?"
 (:var sparser::mv58255 :isa sparser::be :subject sparser::mv58254 :predicate sparser::mv58258
  :present "PRESENT")
 (:var sparser::mv58254 :isa sparser::what)
 (:var sparser::mv58258 :isa sparser::significance :context sparser::mv58253 :agent
  sparser::mv58252 :has-determiner "THE" :modifier sparser::mv58257)
 (:var sparser::mv58253 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv58252 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv58257 :isa sparser::mutation :raw-text "mutation"))

___________________
11: "What is the mutation significance of TP53 for ovarian cancer?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 for ovarian cancer" 12
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 for ovarian cancer?"
 (:var sparser::mv58266 :isa sparser::be :subject sparser::mv58265 :predicate sparser::mv58269
  :present "PRESENT")
 (:var sparser::mv58265 :isa sparser::what)
 (:var sparser::mv58269 :isa sparser::significance :context sparser::mv58264 :agent
  sparser::mv58263 :has-determiner "THE" :modifier sparser::mv58268)
 (:var sparser::mv58264 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv58263 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv58268 :isa sparser::mutation :raw-text "mutation"))

___________________
12: "What are synonyms for BRAF?"

                    source-start
e9    BE            1 "What are synonyms for BRAF" 6
                    question-mark
                    end-of-source
("What are synonyms for BRAF?"
 (:var sparser::mv58275 :isa sparser::be :subject sparser::mv58274 :predicate sparser::mv58281
  :present "PRESENT")
 (:var sparser::mv58274 :isa sparser::what)
 (:var sparser::mv58281 :isa sparser::has-synonym :plural t :item sparser::mv58279)
 (:var sparser::mv58279 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
13: "What are some genes that are mutated in breast cancer?"

                    source-start
e20   BE            1 "What are some genes that are mutated in breast cancer" 11
                    question-mark
                    end-of-source
("What are some genes that are mutated in breast cancer?"
 (:var sparser::mv58284 :isa sparser::be :subject sparser::mv58283 :predicate sparser::mv58295
  :present "PRESENT")
 (:var sparser::mv58283 :isa sparser::what)
 (:var sparser::mv58295 :isa sparser::gene :plural t :predication sparser::mv58293 :quantifier
  sparser::mv58285 :raw-text "genes")
 (:var sparser::mv58293 :isa sparser::mutation :object sparser::mv58295 :that-rel t :context
  sparser::mv58282 :present "PRESENT" :raw-text "mutated")
 (:var sparser::mv58282 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv58285 :isa some :word "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    source-start
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    question-mark
                    end-of-source
("what genes are mutated in breast cancer?"
 (:var sparser::mv58304 :isa sparser::mutation :object sparser::mv58303 :context sparser::mv58296
  :present "PRESENT" :raw-text "mutated")
 (:var sparser::mv58303 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv58296 :isa sparser::cancer :name "breast cancer" :uid "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    source-start
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    question-mark
                    end-of-source
("Does phosphorylation at S221 activate MAP2K2?"
 (:var sparser::mv58318 :isa sparser::polar-question :statement sparser::mv58316)
 (:var sparser::mv58316 :isa sparser::bio-activate :agent sparser::mv58308 :object sparser::mv58306
  :raw-text "activate")
 (:var sparser::mv58308 :isa sparser::phosphorylate :site sparser::mv58315 :raw-text
  "phosphorylation")
 (:var sparser::mv58315 :isa sparser::residue-on-protein :raw-text "S221" :position
  sparser::mv58313 :amino-acid sparser::mv58311)
 (:var sparser::mv58313 :isa number :value 221)
 (:var sparser::mv58311 :isa sparser::amino-acid :name "serine" :letter "S")
 (:var sparser::mv58306 :isa sparser::protein :raw-text "MAP2K2" :uid "UP:P36507" :name
  "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    source-start
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    question-mark
                    end-of-source
("Does phosphorylation at S222 activate MAP2K1?"
 (:var sparser::mv58331 :isa sparser::polar-question :statement sparser::mv58329)
 (:var sparser::mv58329 :isa sparser::bio-activate :agent sparser::mv58321 :object sparser::mv58319
  :raw-text "activate")
 (:var sparser::mv58321 :isa sparser::phosphorylate :site sparser::mv58328 :raw-text
  "phosphorylation")
 (:var sparser::mv58328 :isa sparser::residue-on-protein :raw-text "S222" :position
  sparser::mv58326 :amino-acid sparser::mv58324)
 (:var sparser::mv58326 :isa number :value 222)
 (:var sparser::mv58324 :isa sparser::amino-acid :name "serine" :letter "S")
 (:var sparser::mv58319 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    source-start
e12   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    end-of-source
("Simulate the MAP2K1-MAPK1 complex"
 (:var sparser::mv58334 :isa sparser::simulate :object sparser::mv58338 :present "PRESENT"
  :raw-text "Simulate")
 (:var sparser::mv58338 :isa sparser::bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1"
  :component sparser::mv58333 :component sparser::mv58332)
 (:var sparser::mv58333 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv58332 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
18: "What are the members of ERK?"

                    source-start
e12   BE            1 "What are the members of ERK" 7
                    question-mark
                    end-of-source
("What are the members of ERK?"
 (:var sparser::mv58340 :isa sparser::be :subject sparser::mv58339 :predicate sparser::mv58348
  :present "PRESENT")
 (:var sparser::mv58339 :isa sparser::what)
 (:var sparser::mv58348 :isa member :plural t :set sparser::mv58345 :has-determiner "THE")
 (:var sparser::mv58345 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
19: "What are the members of MEK?"

                    source-start
e12   BE            1 "What are the members of MEK" 7
                    question-mark
                    end-of-source
("What are the members of MEK?"
 (:var sparser::mv58350 :isa sparser::be :subject sparser::mv58349 :predicate sparser::mv58358
  :present "PRESENT")
 (:var sparser::mv58349 :isa sparser::what)
 (:var sparser::mv58358 :isa member :plural t :set sparser::mv58355 :has-determiner "THE")
 (:var sparser::mv58355 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK"))

___________________
20: "What are the members of RAF?"

                    source-start
e12   BE            1 "What are the members of RAF" 7
                    question-mark
                    end-of-source
("What are the members of RAF?"
 (:var sparser::mv58360 :isa sparser::be :subject sparser::mv58359 :predicate sparser::mv58368
  :present "PRESENT")
 (:var sparser::mv58359 :isa sparser::what)
 (:var sparser::mv58368 :isa member :plural t :set sparser::mv58365 :has-determiner "THE")
 (:var sparser::mv58365 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114"))

___________________
21: "What are the members of the RAF family?"

                    source-start
e18   BE            1 "What are the members of the RAF family" 9
                    question-mark
                    end-of-source
("What are the members of the RAF family?"
 (:var sparser::mv58370 :isa sparser::be :subject sparser::mv58369 :predicate sparser::mv58382
  :present "PRESENT")
 (:var sparser::mv58369 :isa sparser::what)
 (:var sparser::mv58382 :isa member :plural t :set sparser::mv58380 :has-determiner "THE")
 (:var sparser::mv58380 :isa sparser::protein-family :has-determiner "THE" :raw-text "RAF" :name
  "Raf" :count 3 :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114"))

___________________
22: "What are the members of the RAS family?"

                    source-start
e16   BE            1 "What are the members of the RAS family" 9
                    question-mark
                    end-of-source
("What are the members of the RAS family?"
 (:var sparser::mv58385 :isa sparser::be :subject sparser::mv58384 :predicate sparser::mv58393
  :present "PRESENT")
 (:var sparser::mv58384 :isa sparser::what)
 (:var sparser::mv58393 :isa member :plural t :set sparser::mv58383 :has-determiner "THE")
 (:var sparser::mv58383 :isa sparser::protein-family :has-determiner "THE" :raw-text "RAS family"
  :name "Ras" :count 3 :family-members
  ((sparser::protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
   (sparser::protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
   (sparser::protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
  :uid "FA:03663"))

___________________
23: "What is another name for BRAF?"

                    source-start
e13   BE            1 "What is another name for BRAF" 7
                    question-mark
                    end-of-source
("What is another name for BRAF?"
 (:var sparser::mv58395 :isa sparser::be :subject sparser::mv58394 :predicate sparser::mv58398
  :present "PRESENT")
 (:var sparser::mv58394 :isa sparser::what)
 (:var sparser::mv58398 :isa sparser::has-name :item sparser::mv58401 :quantifier sparser::mv58396)
 (:var sparser::mv58401 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv58396 :isa sparser::another :word "another"))

___________________
24: "What is another name for MAP2K1?"

                    source-start
e14   BE            1 "What is another name for MAP2K1" 10
                    question-mark
                    end-of-source
("What is another name for MAP2K1?"
 (:var sparser::mv58405 :isa sparser::be :subject sparser::mv58404 :predicate sparser::mv58408
  :present "PRESENT")
 (:var sparser::mv58404 :isa sparser::what)
 (:var sparser::mv58408 :isa sparser::has-name :item sparser::mv58403 :quantifier sparser::mv58406)
 (:var sparser::mv58403 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv58406 :isa sparser::another :word "another"))

___________________
25: "How does STAT3 affect c-fos"

                    source-start
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    end-of-source
("How does STAT3 affect c-fos"
 (:var sparser::mv58416 :isa sparser::affect :manner sparser::mv58414 :agent sparser::mv58412
  :object sparser::mv58413 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv58414 :isa sparser::how)
 (:var sparser::mv58412 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58413 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    source-start
e11   LIST          1 "List some genes regulated by elk1" 8
                    end-of-source
("List some genes regulated by elk1"
 (:var sparser::mv58418 :isa list :theme sparser::mv58424 :present "PRESENT")
 (:var sparser::mv58424 :isa sparser::gene :plural t :predication sparser::mv58422 :quantifier
  sparser::mv58419 :raw-text "genes")
 (:var sparser::mv58422 :isa sparser::regulate :object sparser::mv58424 :agent sparser::mv58417
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv58417 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv58419 :isa some :word "some"))

___________________
27: "List some of the genes regulated by elk1"

                    source-start
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    end-of-source
("List some of the genes regulated by elk1"
 (:var sparser::mv58428 :isa list :theme sparser::mv58439 :present "PRESENT")
 (:var sparser::mv58439 :isa sparser::gene :plural t :predication sparser::mv58434 :quantifier
  sparser::mv58429 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv58434 :isa sparser::regulate :object sparser::mv58439 :agent sparser::mv58427
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv58427 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv58429 :isa some :word "some"))

___________________
28: "List the genes regulated by elk1"

                    source-start
e12   LIST          1 "List the genes regulated by elk1" 8
                    end-of-source
("List the genes regulated by elk1"
 (:var sparser::mv58443 :isa list :theme sparser::mv58449 :present "PRESENT")
 (:var sparser::mv58449 :isa sparser::gene :plural t :predication sparser::mv58447 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv58447 :isa sparser::regulate :object sparser::mv58449 :agent sparser::mv58442
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv58442 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    source-start
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    question-mark
                    end-of-source
("What are the common upstream regulators of AKT1 and BRAF?"
 (:var sparser::mv58454 :isa sparser::be :subject sparser::mv58453 :predicate sparser::mv58469
  :present "PRESENT")
 (:var sparser::mv58453 :isa sparser::what)
 (:var sparser::mv58469 :isa sparser::regulator :plural t :theme sparser::mv58464 :has-determiner
  "THE" :predication sparser::mv58456 :context sparser::mv58457 :raw-text "regulators")
 (:var sparser::mv58464 :isa sparser::collection :raw-text "AKT1 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv58452 sparser::mv58463))
 (:var sparser::mv58452 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv58463 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv58456 :isa sparser::common)
 (:var sparser::mv58457 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    source-start
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    question-mark
                    end-of-source
("What are the common upstreams of AKT and BRAF?"
 (:var sparser::mv58471 :isa sparser::be :subject sparser::mv58470 :predicate sparser::mv58484
  :present "PRESENT")
 (:var sparser::mv58470 :isa sparser::what)
 (:var sparser::mv58484 :isa sparser::upstream-segment :plural t :pathwaycomponent sparser::mv58480
  :has-determiner "THE" :predication sparser::mv58473 :raw-text "upstreams")
 (:var sparser::mv58480 :isa sparser::collection :raw-text "AKT and BRAF" :type
  sparser::protein-family :number 2 :items (sparser::mv58477 sparser::mv58479))
 (:var sparser::mv58477 :isa sparser::protein-family :raw-text "AKT" :name "Rac" :count 3
  :family-members
  ((sparser::protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
   (sparser::protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
   (sparser::protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
  :uid "FA:03066")
 (:var sparser::mv58479 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv58473 :isa sparser::common))

___________________
31: "What are the common upstreams of AKT1 and BRAF?"

                    source-start
e18   BE            1 "What are the common upstreams of AKT1 and BRAF" 11
                    question-mark
                    end-of-source
("What are the common upstreams of AKT1 and BRAF?"
 (:var sparser::mv58487 :isa sparser::be :subject sparser::mv58486 :predicate sparser::mv58499
  :present "PRESENT")
 (:var sparser::mv58486 :isa sparser::what)
 (:var sparser::mv58499 :isa sparser::upstream-segment :plural t :pathwaycomponent sparser::mv58495
  :has-determiner "THE" :predication sparser::mv58489 :raw-text "upstreams")
 (:var sparser::mv58495 :isa sparser::collection :raw-text "AKT1 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv58485 sparser::mv58494))
 (:var sparser::mv58485 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv58494 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv58489 :isa sparser::common))

___________________
32: "What are the genes that smad2 regulates?"

                    source-start
e16   BE            1 "What are the genes that smad2 regulates" 9
                    question-mark
                    end-of-source
("What are the genes that smad2 regulates?"
 (:var sparser::mv58502 :isa sparser::be :subject sparser::mv58501 :predicate sparser::mv58509
  :present "PRESENT")
 (:var sparser::mv58501 :isa sparser::what)
 (:var sparser::mv58509 :isa sparser::gene :plural t :predication sparser::mv58507 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv58507 :isa sparser::regulate :object sparser::mv58509 :that-rel t :agent
  sparser::mv58500 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv58500 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    source-start
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    question-mark
                    end-of-source
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:var sparser::mv58514 :isa sparser::be :subject sparser::mv58513 :predicate sparser::mv58525
  :present "PRESENT")
 (:var sparser::mv58513 :isa sparser::what)
 (:var sparser::mv58525 :isa sparser::micro-rna :plural t :predication sparser::mv58519
  :has-determiner "THE" :raw-text "miRNAs")
 (:var sparser::mv58519 :isa sparser::regulate :agent sparser::mv58525 :that-rel t :object
  sparser::mv58523 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv58523 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type
  sparser::protein :number 5 :items
  (sparser::mv58520 sparser::mv58521 sparser::mv58510 sparser::mv58511 sparser::mv58512))
 (:var sparser::mv58520 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv58521 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv58510 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58511 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv58512 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    source-start
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    end-of-source
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:var sparser::mv58528 :isa sparser::be :subject sparser::mv58527 :predicate sparser::mv58539
  :present "PRESENT")
 (:var sparser::mv58527 :isa sparser::what)
 (:var sparser::mv58539 :isa sparser::micro-rna :plural t :predication sparser::mv58533
  :has-determiner "THE" :raw-text "miRNAs")
 (:var sparser::mv58533 :isa sparser::regulate :agent sparser::mv58539 :that-rel t :object
  sparser::mv58537 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv58537 :isa sparser::collection :raw-text "EGFR, SRF, and STAT3" :type
  sparser::protein :number 3 :items (sparser::mv58534 sparser::mv58535 sparser::mv58526))
 (:var sparser::mv58534 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv58535 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv58526 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    source-start
e12   BE            1 "What are the regulators of SRF" 7
                    question-mark
                    end-of-source
("What are the regulators of SRF?"
 (:var sparser::mv58541 :isa sparser::be :subject sparser::mv58540 :predicate sparser::mv58549
  :present "PRESENT")
 (:var sparser::mv58540 :isa sparser::what)
 (:var sparser::mv58549 :isa sparser::regulator :plural t :theme sparser::mv58546 :has-determiner
  "THE" :raw-text "regulators")
 (:var sparser::mv58546 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    source-start
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    question-mark
                    end-of-source
("What does STAT3 regulate in the liver?"
 (:var sparser::mv58553 :isa sparser::regulate :|affected-process-OR-object| sparser::mv58551
  :agent sparser::mv58550 :organ sparser::mv58556 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv58551 :isa sparser::what)
 (:var sparser::mv58550 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58556 :isa sparser::liver :has-determiner "THE"))

___________________
37: "What does it regulate in the liver?"

                    source-start
e14   REGULATE      1 "What does it regulate in the liver" 8
                    question-mark
                    end-of-source
("What does it regulate in the liver?"
 (:var sparser::mv58561 :isa sparser::regulate :|affected-process-OR-object| sparser::mv58558
  :|agent-OR-cause| sparser::mv58560 :organ sparser::mv58564 :present "PRESENT" :raw-text
  "regulate")
 (:var sparser::mv58558 :isa sparser::what)
 (:var sparser::mv58560 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv58564 :isa sparser::liver :has-determiner "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    source-start
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    question-mark
                    end-of-source
("What genes are regulated by SMAD2?"
 (:var sparser::mv58574 :isa sparser::regulate :object sparser::mv58573 :agent sparser::mv58566
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv58573 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv58566 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    source-start
e12   REGULATE      1 "What genes are regulated by SMDA2" 8
                    question-mark
                    end-of-source
("What genes are regulated by SMDA2?"
 (:var sparser::mv58584 :isa sparser::regulate :object sparser::mv58583 :agent sparser::mv58576
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv58583 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv58576 :isa sparser::bio-entity :name "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    source-start
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    question-mark
                    end-of-source
("What genes are regulated by SRF?"
 (:var sparser::mv58594 :isa sparser::regulate :object sparser::mv58593 :agent sparser::mv58592
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv58593 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv58592 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
41: "Which of these are regulated by SMAD2?"

                    source-start
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    question-mark
                    end-of-source
("Which of these are regulated by SMAD2?"
 (:var sparser::mv58603 :isa sparser::regulate :|affected-process-OR-object| sparser::mv58599
  :agent sparser::mv58596 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv58599 :isa sparser::these :quantifier sparser::mv58597 :word "these")
 (:var sparser::mv58597 :isa sparser::which)
 (:var sparser::mv58596 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
42: "Which of these are regulated by SMDA2?"

                    source-start
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    question-mark
                    end-of-source
("Which of these are regulated by SMDA2?"
 (:var sparser::mv58613 :isa sparser::regulate :|affected-process-OR-object| sparser::mv58609
  :agent sparser::mv58606 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv58609 :isa sparser::these :quantifier sparser::mv58607 :word "these")
 (:var sparser::mv58607 :isa sparser::which)
 (:var sparser::mv58606 :isa sparser::bio-entity :name "SMDA2"))

___________________
43: "Which pathways use these?"

                    source-start
e7    BIO-USE       1 "Which pathways use these" 5
                    question-mark
                    end-of-source
("Which pathways use these?"
 (:var sparser::mv58620 :isa sparser::bio-use :agent sparser::mv58622 :object sparser::mv58621
  :present "PRESENT" :raw-text "use")
 (:var sparser::mv58622 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv58621 :isa sparser::these :word "these"))

___________________
44: "Where does STAT3 regulate the expression of c-fos?"

                    source-start
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    question-mark
                    end-of-source
("Where does STAT3 regulate the expression of c-fos?"
 (:var sparser::mv58627 :isa sparser::regulate :location sparser::mv58625 :agent sparser::mv58623
  :affected-process sparser::mv58629 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv58625 :isa sparser::where)
 (:var sparser::mv58623 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58629 :isa sparser::gene-transcript-express :object sparser::mv58624
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv58624 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
45: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    source-start
e35   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    end-of-source
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:var sparser::mv58653 :isa sparser::polar-question :statement sparser::mv58637)
 (:var sparser::mv58637 :isa sparser::tell :agent sparser::mv58636 :theme sparser::mv58652
  :beneficiary sparser::mv58638 :modal "CAN")
 (:var sparser::mv58636 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv58652 :isa sparser::transcription-factor :plural t :predication sparser::mv58650
  :quantifier sparser::mv58639 :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv58650 :isa sparser::share :object sparser::mv58652 :that-rel t :participant
  sparser::mv58647 :modal "CAN" :raw-text "shared")
 (:var sparser::mv58647 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv58634 sparser::mv58646))
 (:var sparser::mv58634 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv58646 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv58639 :isa sparser::all :word "all")
 (:var sparser::mv58638 :isa sparser::interlocutor :name "speaker"))

___________________
46: "can you tell me which transcription factors are shared by elk1 and srf"

                    source-start
e29   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    end-of-source
("can you tell me which transcription factors are shared by elk1 and srf"
 (:var sparser::mv58675 :isa sparser::polar-question :statement sparser::mv58659)
 (:var sparser::mv58659 :isa sparser::tell :agent sparser::mv58658 :theme sparser::mv58674
  :beneficiary sparser::mv58660 :modal "CAN")
 (:var sparser::mv58658 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv58674 :isa sparser::transcription-factor :plural t :predication sparser::mv58672
  :has-determiner "WHICH" :raw-text "transcription factors")
 (:var sparser::mv58672 :isa sparser::share :wh-element sparser::mv58668 :wh-path nil :raw-text
  "shared" :modal sparser::mv58657 :participant sparser::mv58667 :object sparser::mv58668)
 (:var sparser::mv58668 :isa sparser::transcription-factor :plural t :has-determiner "WHICH"
  :raw-text "transcription factors")
 (:var sparser::mv58657 :isa sparser::can)
 (:var sparser::mv58667 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv58656 sparser::mv58666))
 (:var sparser::mv58656 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv58666 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv58660 :isa sparser::interlocutor :name "speaker"))

___________________
47: "what are the regulators of SRF?"

                    source-start
e12   BE            1 "what are the regulators of SRF" 7
                    question-mark
                    end-of-source
("what are the regulators of SRF?"
 (:var sparser::mv58677 :isa sparser::be :subject sparser::mv58676 :predicate sparser::mv58685
  :present "PRESENT")
 (:var sparser::mv58676 :isa sparser::what)
 (:var sparser::mv58685 :isa sparser::regulator :plural t :theme sparser::mv58682 :has-determiner
  "THE" :raw-text "regulators")
 (:var sparser::mv58682 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
48: "what does stat regulate"

                    source-start
e5    REGULATE      1 "what does stat regulate" 5
                    end-of-source
("what does stat regulate"
 (:var sparser::mv58689 :isa sparser::regulate :|affected-process-OR-object| sparser::mv58686
  :agent sparser::mv58688 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv58686 :isa sparser::what)
 (:var sparser::mv58688 :isa sparser::protein :raw-text "stat" :uid "UP:P35610" :name
  "SOAT1_HUMAN"))

___________________
49: "what is erbb?"

                    source-start
e4    BE            1 "what is erbb" 4
                    question-mark
                    end-of-source
("what is erbb?"
 (:var sparser::mv58691 :isa sparser::be :subject sparser::mv58690 :predicate sparser::mv58692
  :present "PRESENT")
 (:var sparser::mv58690 :isa sparser::what)
 (:var sparser::mv58692 :isa sparser::protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
50: "Is STAT3 involved in apoptosis?"

                    source-start
e10   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    question-mark
                    end-of-source
("Is STAT3 involved in apoptosis?"
 (:var sparser::mv58699 :isa sparser::polar-question :statement sparser::mv58695)
 (:var sparser::mv58695 :isa sparser::involve :object sparser::mv58693 :theme sparser::mv58697
  :past "PAST")
 (:var sparser::mv58693 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58697 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
51: "Is STAT3 involved in apoptotic regulation?"

                    source-start
e13   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    question-mark
                    end-of-source
("Is STAT3 involved in apoptotic regulation?"
 (:var sparser::mv58708 :isa sparser::polar-question :statement sparser::mv58702)
 (:var sparser::mv58702 :isa sparser::involve :object sparser::mv58700 :theme sparser::mv58706
  :past "PAST")
 (:var sparser::mv58700 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58706 :isa sparser::regulate :cellular-process sparser::mv58704 :raw-text
  "regulation")
 (:var sparser::mv58704 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
52: "Is STAT3 involved in regulating apoptosis?"

                    source-start
e12   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    question-mark
                    end-of-source
("Is STAT3 involved in regulating apoptosis?"
 (:var sparser::mv58716 :isa sparser::polar-question :statement sparser::mv58711)
 (:var sparser::mv58711 :isa sparser::involve :object sparser::mv58709 :theme sparser::mv58713
  :past "PAST")
 (:var sparser::mv58709 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58713 :isa sparser::regulate :affected-process sparser::mv58714 :progressive
  "PROGRESSIVE" :raw-text "regulating")
 (:var sparser::mv58714 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
53: "What apoptotic genes are regulated by STAT3"

                    source-start
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    end-of-source
("What apoptotic genes are regulated by STAT3"
 (:var sparser::mv58728 :isa sparser::regulate :object sparser::mv58727 :agent sparser::mv58717
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv58727 :isa sparser::gene :plural t :has-determiner "WHAT" :cellular-process
  sparser::mv58719 :raw-text "genes")
 (:var sparser::mv58719 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv58717 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
54: "List the apoptotic genes"

                    source-start
e8    LIST          1 "List the apoptotic genes" 5
                    end-of-source
("List the apoptotic genes"
 (:var sparser::mv58730 :isa list :theme sparser::mv58737 :present "PRESENT")
 (:var sparser::mv58737 :isa sparser::gene :plural t :has-determiner "THE" :cellular-process
  sparser::mv58732 :raw-text "genes")
 (:var sparser::mv58732 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
55: "What genes regulated by STAT3 are involved in apoptosis?"

                    source-start
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    question-mark
                    end-of-source
("What genes regulated by STAT3 are involved in apoptosis?"
 (:var sparser::mv58749 :isa sparser::involve :object sparser::mv58752 :theme sparser::mv58747
  :present "PRESENT")
 (:var sparser::mv58752 :isa sparser::gene :plural t :predication sparser::mv58742 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv58742 :isa sparser::regulate :object sparser::mv58752 :agent sparser::mv58738
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv58738 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58747 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
56: "List genes regulated by STAT3"

                    source-start
e9    LIST          1 "List genes regulated by STAT3" 7
                    end-of-source
("List genes regulated by STAT3"
 (:var sparser::mv58754 :isa list :theme sparser::mv58756 :present "PRESENT")
 (:var sparser::mv58756 :isa sparser::gene :plural t :predication sparser::mv58757 :raw-text
  "genes")
 (:var sparser::mv58757 :isa sparser::regulate :object sparser::mv58756 :agent sparser::mv58753
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv58753 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
57: "What genes are involved in apoptosis?"

                    source-start
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    question-mark
                    end-of-source
("What genes are involved in apoptosis?"
 (:var sparser::mv58769 :isa sparser::involve :object sparser::mv58768 :theme sparser::mv58767
  :present "PRESENT")
 (:var sparser::mv58768 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv58767 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
58: "What genes that STAT3 regulates are involved in apoptosis?"

                    source-start
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    question-mark
                    end-of-source
("What genes that STAT3 regulates are involved in apoptosis?"
 (:var sparser::mv58782 :isa sparser::involve :object sparser::mv58784 :theme sparser::mv58780
  :present "PRESENT")
 (:var sparser::mv58784 :isa sparser::gene :plural t :predication sparser::mv58776 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv58776 :isa sparser::regulate :object sparser::mv58784 :that-rel t :agent
  sparser::mv58771 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv58771 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58780 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
59: "List the genes regulated by STAT3"

                    source-start
e12   LIST          1 "List the genes regulated by STAT3" 8
                    end-of-source
("List the genes regulated by STAT3"
 (:var sparser::mv58786 :isa list :theme sparser::mv58792 :present "PRESENT")
 (:var sparser::mv58792 :isa sparser::gene :plural t :predication sparser::mv58790 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv58790 :isa sparser::regulate :object sparser::mv58792 :agent sparser::mv58785
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv58785 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
60: "List the STAT3 regulated genes"

                    source-start
e11   LIST          1 "List the STAT3 regulated genes" 7
                    end-of-source
("List the STAT3 regulated genes"
 (:var sparser::mv58796 :isa list :theme sparser::mv58802 :present "PRESENT")
 (:var sparser::mv58802 :isa sparser::gene :plural t :has-determiner "THE" :predication
  sparser::mv58798 :raw-text "genes")
 (:var sparser::mv58798 :isa sparser::regulate :object sparser::mv58802 :agent sparser::mv58795
  :raw-text "regulated")
 (:var sparser::mv58795 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
61: "What kinases are regulated by STAT3?"

                    source-start
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    question-mark
                    end-of-source
("What kinases are regulated by STAT3?"
 (:var sparser::mv58811 :isa sparser::regulate :object sparser::mv58810 :agent sparser::mv58803
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv58810 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv58803 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
62: "What kinases are involved in apoptosis?"

                    source-start
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    question-mark
                    end-of-source
("What kinases are involved in apoptosis?"
 (:var sparser::mv58821 :isa sparser::involve :object sparser::mv58820 :theme sparser::mv58819
  :present "PRESENT")
 (:var sparser::mv58820 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv58819 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
63: "What STAT3 regulated genes are involved in aptosis"

                    source-start
e16   INVOLVE       1 "What STAT3 regulated genes are involved " 8
e15   IN            8 "in aptosis" 10
                    end-of-source
                    source-start
e16   S             1 "What STAT3 regulated genes are involved " 8
e15   PP            8 "in aptosis" 10
                    end-of-source


___________________
64: "Let me know if any of the genes stat3 regulates are involved in apoptosis"

                    source-start
e31   LET           1 "Let me know if any of the genes stat3 regulates are involved in apoptosis" 16
                    end-of-source
("Let me know if any of the genes stat3 regulates are involved in apoptosis"
 (:var sparser::mv58837 :isa let :complement sparser::mv58858 :present "PRESENT")
 (:var sparser::mv58858 :isa sparser::know :agent sparser::mv58838 :statement sparser::mv58857
  :present "PRESENT")
 (:var sparser::mv58838 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv58857 :isa sparser::wh-question :statement sparser::mv58852 :wh if)
 (:var sparser::mv58852 :isa sparser::involve :object sparser::mv58856 :theme sparser::mv58850
  :present "PRESENT")
 (:var sparser::mv58856 :isa sparser::gene :plural t :quantifier sparser::mv58841 :predication
  sparser::mv58846 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv58841 :isa sparser::any :word "any")
 (:var sparser::mv58846 :isa sparser::regulate :object sparser::mv58856 :agent sparser::mv58836
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv58836 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58850 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
65: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    source-start
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    end-of-source
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:var sparser::mv58860 :isa let :complement sparser::mv58882 :present "PRESENT")
 (:var sparser::mv58882 :isa sparser::know :agent sparser::mv58861 :statement sparser::mv58881
  :present "PRESENT")
 (:var sparser::mv58861 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv58881 :isa sparser::wh-question :statement sparser::mv58876 :wh sparser::whether)
 (:var sparser::mv58876 :isa sparser::involve :object sparser::mv58880 :theme sparser::mv58874
  :present "PRESENT")
 (:var sparser::mv58880 :isa sparser::gene :plural t :quantifier sparser::mv58865 :predication
  sparser::mv58870 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv58865 :isa sparser::any :word "any")
 (:var sparser::mv58870 :isa sparser::regulate :object sparser::mv58880 :agent sparser::mv58859
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv58859 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58874 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
66: "Look up which genes targeted by stat3 are involved in apoptosis"

                    source-start
e24   LOOK-UP       1 "Look up which " 4
e22   INVOLVE       4 "genes targeted by stat3 are involved in apoptosis" 13
                    end-of-source
                    source-start
e24   VG            1 "Look up which " 4
e22   S             4 "genes targeted by stat3 are involved in apoptosis" 13
                    end-of-source


___________________
67: "Tell me how stat3 is involved in apoptosis"

                    source-start
e15   TELL          1 "Tell me " 3
e14   INVOLVE       3 "how stat3 is involved in apoptosis" 10
                    end-of-source
                    source-start
e15   VG            1 "Tell me " 3
e14   HOWCOMP       3 "how stat3 is involved in apoptosis" 10
                    end-of-source


___________________
68: "Tell me if stat3 is involved in apoptosis"

                    source-start
e16   TELL          1 "Tell me if stat3 is involved in apoptosis" 10
                    end-of-source
("Tell me if stat3 is involved in apoptosis"
 (:var sparser::mv58914 :isa sparser::tell :theme sparser::mv58923 :beneficiary sparser::mv58915
  :present "PRESENT")
 (:var sparser::mv58923 :isa sparser::wh-question :statement sparser::mv58921 :wh if)
 (:var sparser::mv58921 :isa sparser::involve :object sparser::mv58913 :theme sparser::mv58920
  :present "PRESENT")
 (:var sparser::mv58913 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58920 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv58915 :isa sparser::interlocutor :name "speaker"))

___________________
69: "Tell me whether stat3 is involved in apoptosis"

                    source-start
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    end-of-source
("Tell me whether stat3 is involved in apoptosis"
 (:var sparser::mv58925 :isa sparser::tell :theme sparser::mv58935 :theme sparser::mv58926 :present
  "PRESENT")
 (:var sparser::mv58935 :isa sparser::wh-question :statement sparser::mv58933 :wh sparser::whether)
 (:var sparser::mv58933 :isa sparser::involve :object sparser::mv58924 :theme sparser::mv58932
  :present "PRESENT")
 (:var sparser::mv58924 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58932 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv58926 :isa sparser::interlocutor :name "speaker"))

___________________
70: "What are STAT3 regulated genes that are involved in apoptosis. "

                    source-start
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    period
                    end-of-source
("What are STAT3 regulated genes that are involved in apoptosis."
 (:var sparser::mv58938 :isa sparser::be :subject sparser::mv58937 :predicate sparser::mv58950
  :present "PRESENT")
 (:var sparser::mv58937 :isa sparser::what)
 (:var sparser::mv58950 :isa sparser::gene :plural t :predication sparser::mv58948 :predication
  sparser::mv58939 :raw-text "genes")
 (:var sparser::mv58948 :isa sparser::involve :object sparser::mv58950 :that-rel t :theme
  sparser::mv58946 :present "PRESENT")
 (:var sparser::mv58946 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv58939 :isa sparser::regulate :object sparser::mv58950 :agent sparser::mv58936
  :raw-text "regulated")
 (:var sparser::mv58936 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis?"

                    source-start
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    question-mark
                    end-of-source
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:var sparser::mv58953 :isa sparser::be :subject sparser::mv58952 :predicate sparser::mv58965
  :present "PRESENT")
 (:var sparser::mv58952 :isa sparser::what)
 (:var sparser::mv58965 :isa sparser::gene :plural t :predication sparser::mv58963 :predication
  sparser::mv58954 :raw-text "genes")
 (:var sparser::mv58963 :isa sparser::involve :object sparser::mv58965 :that-rel t :theme
  sparser::mv58961 :present "PRESENT")
 (:var sparser::mv58961 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv58954 :isa sparser::regulate :object sparser::mv58965 :agent sparser::mv58951
  :raw-text "regulated")
 (:var sparser::mv58951 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
72: "What genes downstream of stat3 are involved in apoptosis?"

                    source-start
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    question-mark
                    end-of-source
("What genes downstream of stat3 are involved in apoptosis?"
 (:var sparser::mv58977 :isa sparser::involve :object sparser::mv58970 :theme sparser::mv58976
  :present "PRESENT")
 (:var sparser::mv58970 :isa sparser::downstream-segment :pathwaycomponent sparser::mv58966
  :has-determiner "WHAT" :modifier sparser::mv58969 :raw-text "downstream")
 (:var sparser::mv58966 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv58969 :isa sparser::gene :plural t :raw-text "genes")
 (:var sparser::mv58976 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
73: "What is the involvement of stat3 in apoptotic regulation?"

                    source-start
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    question-mark
                    end-of-source
("What is the involvement of stat3 in apoptotic regulation?"
 (:var sparser::mv58982 :isa sparser::be :subject sparser::mv58981 :predicate sparser::mv58984
  :present "PRESENT")
 (:var sparser::mv58981 :isa sparser::what)
 (:var sparser::mv58984 :isa sparser::involve :theme sparser::mv58989 :participant sparser::mv58980
  :has-determiner "THE")
 (:var sparser::mv58989 :isa sparser::regulate :cellular-process sparser::mv58987 :raw-text
  "regulation")
 (:var sparser::mv58987 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv58980 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
74: "What pathways involve calcium?"

                    source-start
e6    INVOLVE       1 "What pathways involve calcium" 5
                    question-mark
                    end-of-source
("What pathways involve calcium?"
 (:var sparser::mv58995 :isa sparser::involve :theme sparser::mv58997 :object sparser::mv58996
  :present "PRESENT")
 (:var sparser::mv58997 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv58996 :isa sparser::calcium :raw-text "calcium"))

___________________
75: "What processes involve srf"

                    source-start
e7    INVOLVE       1 "What processes involve srf" 5
                    end-of-source
("What processes involve srf"
 (:var sparser::mv59003 :isa sparser::involve :theme sparser::mv59005 :object sparser::mv59004
  :present "PRESENT")
 (:var sparser::mv59005 :isa sparser::bio-process :plural t :has-determiner "WHAT" :raw-text
  "processes")
 (:var sparser::mv59004 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
76: "Which stat3 regulated genes are involved in apoptosis?"

                    source-start
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    question-mark
                    end-of-source
("Which stat3 regulated genes are involved in apoptosis?"
 (:var sparser::mv59017 :isa sparser::involve :object sparser::mv59016 :theme sparser::mv59014
  :present "PRESENT")
 (:var sparser::mv59016 :isa sparser::gene :plural t :has-determiner "WHICH" :predication
  sparser::mv59008 :raw-text "genes")
 (:var sparser::mv59008 :isa sparser::regulate :object sparser::mv59016 :agent sparser::mv59006
  :raw-text "regulated")
 (:var sparser::mv59006 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv59014 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
77: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    source-start
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    question-mark
                    end-of-source
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:var sparser::mv59033 :isa sparser::involve :object sparser::mv59036 :theme sparser::mv59030
  :present "PRESENT")
 (:var sparser::mv59036 :isa sparser::gene :plural t :organ sparser::mv59026 :has-determiner
  "WHICH" :predication sparser::mv59021 :raw-text "genes")
 (:var sparser::mv59026 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv59021 :isa sparser::regulate :object sparser::mv59036 :agent sparser::mv59019
  :raw-text "regulated")
 (:var sparser::mv59019 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv59030 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
78: "Which stat3-regulated genes are involved in apoptosis?"

                    source-start
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    question-mark
                    end-of-source
("Which stat3-regulated genes are involved in apoptosis?"
 (:var sparser::mv59048 :isa sparser::involve :object sparser::mv59047 :theme sparser::mv59045
  :present "PRESENT")
 (:var sparser::mv59047 :isa sparser::gene :plural t :has-determiner "WHICH" :predication
  sparser::mv59039 :raw-text "genes")
 (:var sparser::mv59039 :isa sparser::regulate :object sparser::mv59047 :agent sparser::mv59037
  :raw-text "regulated")
 (:var sparser::mv59037 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv59045 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
79: "Mek activates MAPK1."

                    source-start
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    period
                    end-of-source
("Mek activates MAPK1."
 (:var sparser::mv59052 :isa sparser::bio-activate :agent sparser::mv59051 :object sparser::mv59050
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv59051 :isa sparser::protein-family :raw-text "Mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv59050 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
80: "NRAS activates RAF."

                    source-start
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    period
                    end-of-source
("NRAS activates RAF."
 (:var sparser::mv59054 :isa sparser::bio-activate :agent sparser::mv59053 :object sparser::mv59055
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv59053 :isa sparser::protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
 (:var sparser::mv59055 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114"))

___________________
81: "MAPK1 phosphorylates ELK1"

                    source-start
e6    PHOSPHORYLATE 1 "MAPK1 phosphorylates ELK1" 6
                    end-of-source
("MAPK1 phosphorylates ELK1"
 (:var sparser::mv59058 :isa sparser::phosphorylate :agent sparser::mv59056 :substrate
  sparser::mv59057 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv59056 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv59057 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
82: "DUSP6 dephosphorylates MAPK1"

                    source-start
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    end-of-source
("DUSP6 dephosphorylates MAPK1"
 (:var sparser::mv59061 :isa sparser::dephosphorylate :agent sparser::mv59059 :substrate
  sparser::mv59060 :present "PRESENT" :raw-text "dephosphorylates")
 (:var sparser::mv59059 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN")
 (:var sparser::mv59060 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
83: "ELK1 positively regulates FOS."

                    source-start
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    period
                    end-of-source
("ELK1 positively regulates FOS."
 (:var sparser::mv59063 :isa sparser::upregulate :agent sparser::mv59062 :object sparser::mv59064
  :present "PRESENT" :raw-text "positively regulates")
 (:var sparser::mv59062 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv59064 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
84: "EGFR binds the growth factor ligand EGF."

                    source-start
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    period
                    end-of-source
("EGFR binds the growth factor ligand EGF."
 (:var sparser::mv59068 :isa sparser::binding :binder sparser::mv59067 :direct-bindee
  sparser::mv59071 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv59067 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv59071 :isa sparser::protein :has-determiner "THE" :modifier sparser::mv59066
  :modifier sparser::mv59070 :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv59066 :isa sparser::growth-factor :raw-text "growth factor")
 (:var sparser::mv59070 :isa sparser::ligand :raw-text "ligand"))

___________________
85: "revert that"

                    source-start
e0    REVERT        1 "revert " 2
e2    THAT          2 "that" 3
                    end-of-source
                    source-start
e0    VG            1 "revert " 2
e2    DET           2 "that" 3
                    end-of-source


___________________
86: "The EGFR-EGF complex binds another EGFR-EGF complex."

                    source-start
e19   BINDING       1 "The EGFR-EGF complex binds another EGFR-EGF complex" 12
                    period
                    end-of-source
("The EGFR-EGF complex binds another EGFR-EGF complex."
 (:var sparser::mv59078 :isa sparser::binding :binder sparser::mv59085 :direct-bindee
  sparser::mv59086 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv59085 :isa sparser::bio-complex :has-determiner "THE" :raw-text "EGFR-EGF"
  :component sparser::mv59076 :component sparser::mv59075)
 (:var sparser::mv59076 :isa sparser::protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv59075 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv59086 :isa sparser::bio-complex :quantifier sparser::mv59079 :raw-text "EGFR-EGF"
  :component sparser::mv59081 :component sparser::mv59080)
 (:var sparser::mv59079 :isa sparser::another :word "another")
 (:var sparser::mv59081 :isa sparser::protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv59080 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
87: "The EGFR-EGFR complex binds GRB2."

                    source-start
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    period
                    end-of-source
("The EGFR-EGFR complex binds GRB2."
 (:var sparser::mv59092 :isa sparser::binding :binder sparser::mv59094 :direct-bindee
  sparser::mv59087 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv59094 :isa sparser::bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR"
  :component sparser::mv59089 :component sparser::mv59089)
 (:var sparser::mv59089 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv59087 :isa sparser::protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))

___________________
88: "undo that"

                    source-start
e0    UNDO          1 "undo " 2
e2    THAT          2 "that" 3
                    end-of-source
                    source-start
e0    VG            1 "undo " 2
e2    DET           2 "that" 3
                    end-of-source


___________________
89: "EGFR-bound GRB2 binds SOS1."

                    source-start
e12   BINDING       1 "EGFR-bound GRB2 binds SOS1" 9
                    period
                    end-of-source
("EGFR-bound GRB2 binds SOS1."
 (:var sparser::mv59101 :isa sparser::binding :binder sparser::mv59097 :direct-bindee
  sparser::mv59098 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv59097 :isa sparser::protein :predication sparser::mv59100 :raw-text "GRB2" :uid
  "UP:P62993" :name "GRB2_HUMAN")
 (:var sparser::mv59100 :isa sparser::binding :direct-bindee sparser::mv59097 :binder
  sparser::mv59099 :raw-text "bound")
 (:var sparser::mv59099 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv59098 :isa sparser::protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))

___________________
90: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    source-start
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    period
                    end-of-source
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:var sparser::mv59105 :isa sparser::binding :binder sparser::mv59103 :direct-bindee
  sparser::mv59106 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv59103 :isa sparser::protein :predication sparser::mv59104 :raw-text "SOS1" :uid
  "UP:Q07889" :name "SOS1_HUMAN")
 (:var sparser::mv59104 :isa sparser::binding :direct-bindee sparser::mv59103 :binder
  sparser::mv59102 :raw-text "bound")
 (:var sparser::mv59102 :isa sparser::protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
 (:var sparser::mv59106 :isa sparser::protein :predication sparser::mv59113 :raw-text "NRAS" :uid
  "UP:P01111" :name "RASN_HUMAN")
 (:var sparser::mv59113 :isa sparser::binding :direct-bindee sparser::mv59106 :that-rel t :bindee
  sparser::mv59112 :present "PRESENT" :negation sparser::mv59109 :raw-text "bound")
 (:var sparser::mv59112 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv59109 :isa not :word "not"))

___________________
91: "SOS1-bound NRAS binds GTP."

                    source-start
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    period
                    end-of-source
("SOS1-bound NRAS binds GTP."
 (:var sparser::mv59118 :isa sparser::binding :binder sparser::mv59117 :direct-bindee
  sparser::mv59119 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv59117 :isa sparser::protein :predication sparser::mv59116 :raw-text "NRAS" :uid
  "UP:P01111" :name "RASN_HUMAN")
 (:var sparser::mv59116 :isa sparser::binding :direct-bindee sparser::mv59117 :binder
  sparser::mv59115 :raw-text "bound")
 (:var sparser::mv59115 :isa sparser::protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
 (:var sparser::mv59119 :isa sparser::nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))

___________________
92: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    source-start
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    period
                    end-of-source
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:var sparser::mv59129 :isa sparser::binding :binder sparser::mv59123 :direct-bindee
  sparser::mv59130 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv59123 :isa sparser::protein :predication sparser::mv59131 :predication
  sparser::mv59122 :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
 (:var sparser::mv59131 :isa sparser::binding :direct-bindee sparser::mv59123 :that-rel t :bindee
  sparser::mv59120 :present "PRESENT" :negation sparser::mv59126 :raw-text "bound")
 (:var sparser::mv59120 :isa sparser::protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
 (:var sparser::mv59126 :isa not :word "not")
 (:var sparser::mv59122 :isa sparser::binding :direct-bindee sparser::mv59123 :binder
  sparser::mv59121 :raw-text "bound")
 (:var sparser::mv59121 :isa sparser::nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
 (:var sparser::mv59130 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
93: "Undo"

                    source-start
e0    UNDO          1 "Undo" 2
                    end-of-source
("Undo" (:var sparser::mv59133 :isa sparser::undo :present "PRESENT" :raw-text "Undo"))

___________________
94: "How does BRAF affect MAP2K1?"

                    source-start
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    question-mark
                    end-of-source
("How does BRAF affect MAP2K1?"
 (:var sparser::mv59138 :isa sparser::affect :manner sparser::mv59135 :agent sparser::mv59137
  :object sparser::mv59134 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv59135 :isa sparser::how)
 (:var sparser::mv59137 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv59134 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
95: "Let's highlight the downstream of AKT1."

                    source-start
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    period
                    end-of-source
("Let's highlight the downstream of AKT1."
 (:var sparser::mv59147 :isa sparser::explicit-suggestion :suggestion sparser::mv59141 :marker
  sparser::let-as-directive)
 (:var sparser::mv59141 :isa sparser::highlight :theme sparser::mv59143 :present "PRESENT")
 (:var sparser::mv59143 :isa sparser::downstream-segment :pathwaycomponent sparser::mv59140
  :has-determiner "THE" :raw-text "downstream")
 (:var sparser::mv59140 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
96: "Let's move phosphorylated MAPK1 to the bottom."

                    source-start
e18   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    period
                    end-of-source
("Let's move phosphorylated MAPK1 to the bottom."
 (:var sparser::mv59157 :isa sparser::explicit-suggestion :suggestion sparser::mv59151 :marker
  sparser::let-as-directive)
 (:var sparser::mv59151 :isa sparser::move-to :goal sparser::mv59155 :theme sparser::mv59149
  :present "PRESENT")
 (:var sparser::mv59155 :isa sparser::bottom :has-determiner "THE")
 (:var sparser::mv59149 :isa sparser::protein :predication sparser::mv59152 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59152 :isa sparser::phosphorylate :substrate sparser::mv59149 :raw-text
  "phosphorylated"))

___________________
97: "Let's put AKT1, MAPK1 into mitochondrion."

                    source-start
e13   EXPLICIT-SUGGESTION 1 "Let's put AKT1" 7
e8                  "COMMA"
e5    PROTEIN       8 "MAPK1 " 10
e11   INTO          10 "into mitochondrion" 12
                    period
                    end-of-source
                    source-start
e13   S             1 "Let's put AKT1" 7
e8                  "COMMA"
e5    PROPER-NOUN   8 "MAPK1 " 10
e11   PP            10 "into mitochondrion" 12
                    period
                    end-of-source


___________________
98: "Let's show AKT1 on the top."

                    source-start
e14   EXPLICIT-SUGGESTION 1 "Let's show AKT1 on the top" 10
                    period
                    end-of-source
("Let's show AKT1 on the top."
 (:var sparser::mv59174 :isa sparser::explicit-suggestion :suggestion sparser::mv59169 :marker
  sparser::let-as-directive)
 (:var sparser::mv59169 :isa sparser::show :at-relative-location sparser::mv59172
  :|statement-OR-theme| sparser::mv59168 :present "PRESENT")
 (:var sparser::mv59172 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv59168 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
99: "Does ELK1 decrease FOS in the model?"

                    source-start
e17   DECREASE      1 "Does ELK1 decrease FOS " 6
e14   IN            6 "in the model" 9
                    question-mark
                    end-of-source
                    source-start
e17   S             1 "Does ELK1 decrease FOS " 6
e14   PP            6 "in the model" 9
                    question-mark
                    end-of-source


___________________
100: "Does ELK1 decrease the amount of FOS in the model?"

                    source-start
e25   DECREASE      1 "Does ELK1 decrease the amount of FOS " 9
e20   IN            9 "in the model" 12
                    question-mark
                    end-of-source
                    source-start
e25   S             1 "Does ELK1 decrease the amount of FOS " 9
e20   PP            9 "in the model" 12
                    question-mark
                    end-of-source


___________________
101: "Does FOS decrease ELK1 in the model?"

                    source-start
e17   DECREASE      1 "Does FOS decrease ELK1 " 6
e14   IN            6 "in the model" 9
                    question-mark
                    end-of-source
                    source-start
e17   S             1 "Does FOS decrease ELK1 " 6
e14   PP            6 "in the model" 9
                    question-mark
                    end-of-source


___________________
102: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    source-start
e35   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 10 fold" 14
                    question-mark
                    end-of-source
("Does FOS vanish if we increase the amount of ELK1 10 fold?"
 (:var sparser::mv59234 :isa sparser::polar-question :statement sparser::mv59233)
 (:var sparser::mv59233 :isa sparser::event-relation :subordinated-event sparser::mv59231 :event
  sparser::mv59228)
 (:var sparser::mv59231 :isa sparser::wh-question :statement sparser::mv59229 :wh if)
 (:var sparser::mv59229 :isa sparser::increase :|agent-OR-cause| sparser::mv59217 :level
  sparser::mv59227 :|affected-process-OR-object| sparser::mv59221 :raw-text "increase")
 (:var sparser::mv59217 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59227 :isa sparser::measurement :number sparser::mv59224)
 (:var sparser::mv59224 :isa number :value 10)
 (:var sparser::mv59221 :isa sparser::bio-amount :measured-item sparser::mv59212 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59212 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv59228 :isa sparser::vanish :agent sparser::mv59214 :raw-text "vanish")
 (:var sparser::mv59214 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
103: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    source-start
e38   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    question-mark
                    end-of-source
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:var sparser::mv59259 :isa sparser::polar-question :statement sparser::mv59258)
 (:var sparser::mv59258 :isa sparser::event-relation :subordinated-event sparser::mv59256 :event
  sparser::mv59252)
 (:var sparser::mv59256 :isa sparser::wh-question :statement sparser::mv59253 :wh if)
 (:var sparser::mv59253 :isa sparser::increase :|agent-OR-cause| sparser::mv59240
  :|multiplier-OR-cause| sparser::mv59251 :|affected-process-OR-object| sparser::mv59244 :raw-text
  "increase")
 (:var sparser::mv59240 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59251 :isa sparser::measurement :number sparser::mv59248)
 (:var sparser::mv59248 :isa number :value 10)
 (:var sparser::mv59244 :isa sparser::bio-amount :measured-item sparser::mv59235 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59235 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv59252 :isa sparser::vanish :agent sparser::mv59237 :raw-text "vanish")
 (:var sparser::mv59237 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    source-start
e34   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    question-mark
                    end-of-source
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:var sparser::mv59281 :isa sparser::polar-question :statement sparser::mv59280)
 (:var sparser::mv59280 :isa sparser::event-relation :subordinated-event sparser::mv59278 :event
  sparser::mv59275)
 (:var sparser::mv59278 :isa sparser::wh-question :statement sparser::mv59276 :wh if)
 (:var sparser::mv59276 :isa sparser::increase :|agent-OR-cause| sparser::mv59266
  :|multiplier-OR-cause| sparser::mv59274 :object sparser::mv59261 :raw-text "increase")
 (:var sparser::mv59266 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59274 :isa sparser::measurement :number sparser::mv59271)
 (:var sparser::mv59271 :isa number :value 10)
 (:var sparser::mv59261 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN")
 (:var sparser::mv59275 :isa sparser::vanish :agent sparser::mv59260 :raw-text "vanish")
 (:var sparser::mv59260 :isa sparser::protein :predication sparser::mv59263 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59263 :isa sparser::phosphorylate :substrate sparser::mv59260 :raw-text
  "phosphorylated"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    source-start
e42   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    question-mark
                    end-of-source
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:var sparser::mv59307 :isa sparser::polar-question :statement sparser::mv59306)
 (:var sparser::mv59306 :isa sparser::event-relation :subordinated-event sparser::mv59304 :event
  sparser::mv59300)
 (:var sparser::mv59304 :isa sparser::wh-question :statement sparser::mv59301 :wh if)
 (:var sparser::mv59301 :isa sparser::increase :|agent-OR-cause| sparser::mv59288
  :|multiplier-OR-cause| sparser::mv59299 :|affected-process-OR-object| sparser::mv59292 :raw-text
  "increase")
 (:var sparser::mv59288 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59299 :isa sparser::measurement :number sparser::mv59296)
 (:var sparser::mv59296 :isa number :value 10)
 (:var sparser::mv59292 :isa sparser::bio-amount :measured-item sparser::mv59283 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59283 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN")
 (:var sparser::mv59300 :isa sparser::vanish :agent sparser::mv59282 :raw-text "vanish")
 (:var sparser::mv59282 :isa sparser::protein :predication sparser::mv59285 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59285 :isa sparser::phosphorylate :substrate sparser::mv59282 :raw-text
  "phosphorylated"))

___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    source-start
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    question-mark
                    end-of-source
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:var sparser::mv59319 :isa sparser::polar-question :statement sparser::mv59317)
 (:var sparser::mv59317 :isa sparser::increase :cause sparser::mv59311 :adverb sparser::mv59314
  :raw-text "increase")
 (:var sparser::mv59311 :isa sparser::bio-amount :measured-item sparser::mv59308 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59308 :isa sparser::protein :predication sparser::mv59313 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59313 :isa sparser::phosphorylate :substrate sparser::mv59308 :raw-text
  "phosphorylated")
 (:var sparser::mv59314 :isa sparser::ever :name "ever"))

___________________
107: "Is MAP2K1 bound to MAPK1 eventually high?"

                    source-start
e17   COPULAR-PREDICATION 1 "Is MAP2K1 bound to MAPK1 eventually high" 12
                    question-mark
                    end-of-source
("Is MAP2K1 bound to MAPK1 eventually high?"
 (:var sparser::mv59329 :isa sparser::polar-question :statement sparser::mv59328)
 (:var sparser::mv59328 :isa sparser::copular-predication :item sparser::mv59320 :value
  sparser::mv59326 :predicate sparser::mv59322)
 (:var sparser::mv59320 :isa sparser::protein :predication sparser::mv59323 :raw-text "MAP2K1" :uid
  "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv59323 :isa sparser::binding :direct-bindee sparser::mv59320 :bindee
  sparser::mv59321 :past "PAST" :raw-text "bound")
 (:var sparser::mv59321 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv59326 :isa sparser::high :adverb sparser::mv59325)
 (:var sparser::mv59325 :isa sparser::eventually :name "eventually")
 (:var sparser::mv59322 :isa sparser::be))

___________________
108: "Is MAPK1 bound to MAP2K1 transient?"

                    source-start
e15   COPULAR-PREDICATION 1 "Is MAPK1 bound to MAP2K1 transient" 11
                    question-mark
                    end-of-source
("Is MAPK1 bound to MAP2K1 transient?"
 (:var sparser::mv59338 :isa sparser::polar-question :statement sparser::mv59337)
 (:var sparser::mv59337 :isa sparser::copular-predication :item sparser::mv59330 :value
  sparser::mv59335 :predicate sparser::mv59332)
 (:var sparser::mv59330 :isa sparser::protein :predication sparser::mv59333 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59333 :isa sparser::binding :direct-bindee sparser::mv59330 :bindee
  sparser::mv59331 :past "PAST" :raw-text "bound")
 (:var sparser::mv59331 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv59335 :isa sparser::transient) (:var sparser::mv59332 :isa sparser::be))

___________________
109: "Is MAPK1-bound MAP2K1 sustained?"

                    source-start
e13   SUSTAINED     1 "Is MAPK1-bound MAP2K1 sustained" 11
                    question-mark
                    end-of-source
("Is MAPK1-bound MAP2K1 sustained?"
 (:var sparser::mv59345 :isa sparser::polar-question :statement sparser::mv59344)
 (:var sparser::mv59344 :isa sparser::sustained :theme sparser::mv59340 :past "PAST")
 (:var sparser::mv59340 :isa sparser::protein :predication sparser::mv59342 :raw-text "MAP2K1" :uid
  "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv59342 :isa sparser::binding :direct-bindee sparser::mv59340 :binder
  sparser::mv59339 :raw-text "bound")
 (:var sparser::mv59339 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    source-start
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 always high?"
 (:var sparser::mv59352 :isa sparser::polar-question :statement sparser::mv59351)
 (:var sparser::mv59351 :isa sparser::copular-predication :item sparser::mv59346 :value
  sparser::mv59350 :predicate sparser::mv59347)
 (:var sparser::mv59346 :isa sparser::protein :predication sparser::mv59348 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59348 :isa sparser::phosphorylate :substrate sparser::mv59346 :raw-text
  "phosphorylated")
 (:var sparser::mv59350 :isa sparser::high :adverb sparser::mv59349)
 (:var sparser::mv59349 :isa sparser::always :name "always")
 (:var sparser::mv59347 :isa sparser::be))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    source-start
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 eventually high?"
 (:var sparser::mv59359 :isa sparser::polar-question :statement sparser::mv59358)
 (:var sparser::mv59358 :isa sparser::copular-predication :item sparser::mv59353 :value
  sparser::mv59357 :predicate sparser::mv59354)
 (:var sparser::mv59353 :isa sparser::protein :predication sparser::mv59355 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59355 :isa sparser::phosphorylate :substrate sparser::mv59353 :raw-text
  "phosphorylated")
 (:var sparser::mv59357 :isa sparser::high :adverb sparser::mv59356)
 (:var sparser::mv59356 :isa sparser::eventually :name "eventually")
 (:var sparser::mv59354 :isa sparser::be))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    source-start
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 ever high?"
 (:var sparser::mv59366 :isa sparser::polar-question :statement sparser::mv59365)
 (:var sparser::mv59365 :isa sparser::copular-predication :item sparser::mv59360 :value
  sparser::mv59364 :predicate sparser::mv59361)
 (:var sparser::mv59360 :isa sparser::protein :predication sparser::mv59362 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59362 :isa sparser::phosphorylate :substrate sparser::mv59360 :raw-text
  "phosphorylated")
 (:var sparser::mv59364 :isa sparser::high :adverb sparser::mv59363)
 (:var sparser::mv59363 :isa sparser::ever :name "ever") (:var sparser::mv59361 :isa sparser::be))

___________________
113: "Is phosphorylated MAPK1 high at the end?"

                    source-start
e16   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 high " 6
e13   AT            6 "at the end" 9
                    question-mark
                    end-of-source
                    source-start
e16   S             1 "Is phosphorylated MAPK1 high " 6
e13   PP            6 "at the end" 9
                    question-mark
                    end-of-source


___________________
114: "Is phosphorylated MAPK1 high?"

                    source-start
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 high" 6
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 high?"
 (:var sparser::mv59382 :isa sparser::polar-question :statement sparser::mv59381)
 (:var sparser::mv59381 :isa sparser::copular-predication :item sparser::mv59377 :value
  sparser::mv59380 :predicate sparser::mv59378)
 (:var sparser::mv59377 :isa sparser::protein :predication sparser::mv59379 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59379 :isa sparser::phosphorylate :substrate sparser::mv59377 :raw-text
  "phosphorylated")
 (:var sparser::mv59380 :isa sparser::high) (:var sparser::mv59378 :isa sparser::be))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    source-start
e19   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 sustained at a high level?"
 (:var sparser::mv59393 :isa sparser::polar-question :statement sparser::mv59387)
 (:var sparser::mv59387 :isa sparser::sustained :theme sparser::mv59383 :level sparser::mv59391
  :past "PAST")
 (:var sparser::mv59383 :isa sparser::protein :predication sparser::mv59385 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59385 :isa sparser::phosphorylate :substrate sparser::mv59383 :raw-text
  "phosphorylated")
 (:var sparser::mv59391 :isa sparser::level :has-determiner "A" :predication sparser::mv59390
  :raw-text "level")
 (:var sparser::mv59390 :isa sparser::high))

___________________
116: "Is phosphorylated MAPK1 sustained?"

                    source-start
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 sustained?"
 (:var sparser::mv59399 :isa sparser::polar-question :statement sparser::mv59398)
 (:var sparser::mv59398 :isa sparser::sustained :theme sparser::mv59394 :past "PAST")
 (:var sparser::mv59394 :isa sparser::protein :predication sparser::mv59396 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59396 :isa sparser::phosphorylate :substrate sparser::mv59394 :raw-text
  "phosphorylated"))

___________________
117: "Is phosphorylated MAPK1 transient?"

                    source-start
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 transient?"
 (:var sparser::mv59405 :isa sparser::polar-question :statement sparser::mv59404)
 (:var sparser::mv59404 :isa sparser::copular-predication :item sparser::mv59400 :value
  sparser::mv59403 :predicate sparser::mv59401)
 (:var sparser::mv59400 :isa sparser::protein :predication sparser::mv59402 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59402 :isa sparser::phosphorylate :substrate sparser::mv59400 :raw-text
  "phosphorylated")
 (:var sparser::mv59403 :isa sparser::transient) (:var sparser::mv59401 :isa sparser::be))

___________________
118: "Is the MAP2K1-MAPK1 complex ever high?"

                    source-start
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    question-mark
                    end-of-source
("Is the MAP2K1-MAPK1 complex ever high?"
 (:var sparser::mv59416 :isa sparser::polar-question :statement sparser::mv59415)
 (:var sparser::mv59415 :isa sparser::copular-predication :item sparser::mv59414 :value
  sparser::mv59412 :predicate sparser::mv59408)
 (:var sparser::mv59414 :isa sparser::bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1"
  :component sparser::mv59407 :component sparser::mv59406)
 (:var sparser::mv59407 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv59406 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv59412 :isa sparser::high :adverb sparser::mv59411)
 (:var sparser::mv59411 :isa sparser::ever :name "ever") (:var sparser::mv59408 :isa sparser::be))

___________________
119: "Is the MAP2K1-MAPK1 complex formed?"

                    source-start
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    question-mark
                    end-of-source
("Is the MAP2K1-MAPK1 complex formed?"
 (:var sparser::mv59425 :isa sparser::polar-question :statement sparser::mv59422)
 (:var sparser::mv59422 :isa sparser::bio-form :object sparser::mv59424 :past "PAST" :raw-text
  "formed")
 (:var sparser::mv59424 :isa sparser::bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1"
  :component sparser::mv59418 :component sparser::mv59417)
 (:var sparser::mv59418 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv59417 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
120: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    source-start
e34   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    question-mark
                    end-of-source
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:var sparser::mv59448 :isa sparser::polar-question :statement sparser::mv59447)
 (:var sparser::mv59447 :isa sparser::event-relation :subordinated-event sparser::mv59443 :event
  sparser::mv59445)
 (:var sparser::mv59443 :isa sparser::wh-question :statement sparser::mv59437 :wh if)
 (:var sparser::mv59437 :isa sparser::increase :|agent-OR-cause| sparser::mv59435 :level
  sparser::mv59442 :object sparser::mv59426 :present "PRESENT" :raw-text "increase")
 (:var sparser::mv59435 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59442 :isa sparser::measurement :number sparser::mv59439)
 (:var sparser::mv59439 :isa number :value 10)
 (:var sparser::mv59426 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv59445 :isa sparser::copular-predication :item sparser::mv59429 :value
  sparser::mv59433 :predicate sparser::mv59427)
 (:var sparser::mv59429 :isa sparser::bio-amount :measured-item sparser::mv59431 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59431 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv59433 :isa sparser::low :adverb sparser::mv59432)
 (:var sparser::mv59432 :isa sparser::always :name "always")
 (:var sparser::mv59427 :isa sparser::be))

___________________
121: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    source-start
e37   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    question-mark
                    end-of-source
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:var sparser::mv59473 :isa sparser::polar-question :statement sparser::mv59472)
 (:var sparser::mv59472 :isa sparser::event-relation :subordinated-event sparser::mv59468 :event
  sparser::mv59470)
 (:var sparser::mv59468 :isa sparser::wh-question :statement sparser::mv59460 :wh if)
 (:var sparser::mv59460 :isa sparser::increase :|agent-OR-cause| sparser::mv59458
  :|multiplier-OR-cause| sparser::mv59466 :object sparser::mv59449 :present "PRESENT" :raw-text
  "increase")
 (:var sparser::mv59458 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59466 :isa sparser::measurement :number sparser::mv59463)
 (:var sparser::mv59463 :isa number :value 100)
 (:var sparser::mv59449 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv59470 :isa sparser::copular-predication :item sparser::mv59452 :value
  sparser::mv59456 :predicate sparser::mv59450)
 (:var sparser::mv59452 :isa sparser::bio-amount :measured-item sparser::mv59454 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59454 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv59456 :isa sparser::low :adverb sparser::mv59455)
 (:var sparser::mv59455 :isa sparser::always :name "always")
 (:var sparser::mv59450 :isa sparser::be))

___________________
122: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    source-start
e42   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold" 18
                    question-mark
                    end-of-source
("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
 (:var sparser::mv59500 :isa sparser::polar-question :statement sparser::mv59499)
 (:var sparser::mv59499 :isa sparser::event-relation :subordinated-event sparser::mv59495 :event
  sparser::mv59497)
 (:var sparser::mv59495 :isa sparser::wh-question :statement sparser::mv59485 :wh if)
 (:var sparser::mv59485 :isa sparser::increase :|agent-OR-cause| sparser::mv59483 :level
  sparser::mv59493 :|affected-process-OR-object| sparser::mv59487 :present "PRESENT" :raw-text
  "increase")
 (:var sparser::mv59483 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59493 :isa sparser::measurement :number sparser::mv59490)
 (:var sparser::mv59490 :isa number :value 100)
 (:var sparser::mv59487 :isa sparser::bio-amount :measured-item sparser::mv59474 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59474 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv59497 :isa sparser::copular-predication :item sparser::mv59477 :value
  sparser::mv59481 :predicate sparser::mv59475)
 (:var sparser::mv59477 :isa sparser::bio-amount :measured-item sparser::mv59479 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59479 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv59481 :isa sparser::high :adverb sparser::mv59480)
 (:var sparser::mv59480 :isa sparser::ever :name "ever") (:var sparser::mv59475 :isa sparser::be))

___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    source-start
e45   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    question-mark
                    end-of-source
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:var sparser::mv59529 :isa sparser::polar-question :statement sparser::mv59528)
 (:var sparser::mv59528 :isa sparser::event-relation :subordinated-event sparser::mv59524 :event
  sparser::mv59526)
 (:var sparser::mv59524 :isa sparser::wh-question :statement sparser::mv59512 :wh if)
 (:var sparser::mv59512 :isa sparser::increase :|agent-OR-cause| sparser::mv59510
  :|multiplier-OR-cause| sparser::mv59521 :|affected-process-OR-object| sparser::mv59514 :present
  "PRESENT" :raw-text "increase")
 (:var sparser::mv59510 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59521 :isa sparser::measurement :number sparser::mv59518)
 (:var sparser::mv59518 :isa number :value 100)
 (:var sparser::mv59514 :isa sparser::bio-amount :measured-item sparser::mv59501 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59501 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv59526 :isa sparser::copular-predication :item sparser::mv59504 :value
  sparser::mv59508 :predicate sparser::mv59502)
 (:var sparser::mv59504 :isa sparser::bio-amount :measured-item sparser::mv59506 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59506 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv59508 :isa sparser::high :adverb sparser::mv59507)
 (:var sparser::mv59507 :isa sparser::ever :name "ever") (:var sparser::mv59502 :isa sparser::be))

___________________
124: "Is the amount of MAPK1 phosphorylated eventually high?"

                    source-start
e2    BE            1 "Is " 2
e14   BIO-AMOUNT    2 "the amount of MAPK1 " 7
e8    PHOSPHORYLATE 7 "phosphorylated " 8
e12   HIGH          8 "eventually high" 10
                    question-mark
                    end-of-source
                    source-start
e2    PREPOSED-AUXILIARY  1 "Is " 2
e14   NP            2 "the amount of MAPK1 " 7
e8    VG+ED         7 "phosphorylated " 8
e12   ADJECTIVE     8 "eventually high" 10
                    question-mark
                    end-of-source


___________________
125: "Is the amount of phosphorylated MAPK1 eventually high?"

                    source-start
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 eventually high" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 eventually high?"
 (:var sparser::mv59549 :isa sparser::polar-question :statement sparser::mv59548)
 (:var sparser::mv59548 :isa sparser::copular-predication :item sparser::mv59542 :value
  sparser::mv59546 :predicate sparser::mv59540)
 (:var sparser::mv59542 :isa sparser::bio-amount :measured-item sparser::mv59539 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59539 :isa sparser::protein :predication sparser::mv59544 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59544 :isa sparser::phosphorylate :substrate sparser::mv59539 :raw-text
  "phosphorylated")
 (:var sparser::mv59546 :isa sparser::high :adverb sparser::mv59545)
 (:var sparser::mv59545 :isa sparser::eventually :name "eventually")
 (:var sparser::mv59540 :isa sparser::be))

___________________
126: "Is the amount of phosphorylated MAPK1 ever high?"

                    source-start
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 ever high?"
 (:var sparser::mv59560 :isa sparser::polar-question :statement sparser::mv59559)
 (:var sparser::mv59559 :isa sparser::copular-predication :item sparser::mv59553 :value
  sparser::mv59557 :predicate sparser::mv59551)
 (:var sparser::mv59553 :isa sparser::bio-amount :measured-item sparser::mv59550 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59550 :isa sparser::protein :predication sparser::mv59555 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59555 :isa sparser::phosphorylate :substrate sparser::mv59550 :raw-text
  "phosphorylated")
 (:var sparser::mv59557 :isa sparser::high :adverb sparser::mv59556)
 (:var sparser::mv59556 :isa sparser::ever :name "ever") (:var sparser::mv59551 :isa sparser::be))

___________________
127: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    source-start
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:var sparser::mv59571 :isa sparser::polar-question :statement sparser::mv59569)
 (:var sparser::mv59569 :isa sparser::increase :cause sparser::mv59564 :adverb sparser::mv59567
  :raw-text "increasing")
 (:var sparser::mv59564 :isa sparser::bio-amount :measured-item sparser::mv59561 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59561 :isa sparser::protein :predication sparser::mv59566 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59566 :isa sparser::phosphorylate :substrate sparser::mv59561 :raw-text
  "phosphorylated")
 (:var sparser::mv59567 :isa sparser::ever :name "ever"))

___________________
128: "Is the amount of phosphorylated MAPK1 high?"

                    source-start
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 high?"
 (:var sparser::mv59581 :isa sparser::polar-question :statement sparser::mv59580)
 (:var sparser::mv59580 :isa sparser::copular-predication :item sparser::mv59575 :value
  sparser::mv59578 :predicate sparser::mv59573)
 (:var sparser::mv59575 :isa sparser::bio-amount :measured-item sparser::mv59572 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59572 :isa sparser::protein :predication sparser::mv59577 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59577 :isa sparser::phosphorylate :substrate sparser::mv59572 :raw-text
  "phosphorylated")
 (:var sparser::mv59578 :isa sparser::high) (:var sparser::mv59573 :isa sparser::be))

___________________
129: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    source-start
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:var sparser::mv59592 :isa sparser::polar-question :statement sparser::mv59591)
 (:var sparser::mv59591 :isa sparser::copular-predication :item sparser::mv59585 :value
  sparser::mv59589 :predicate sparser::mv59583)
 (:var sparser::mv59585 :isa sparser::bio-amount :measured-item sparser::mv59582 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59582 :isa sparser::protein :predication sparser::mv59587 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59587 :isa sparser::phosphorylate :substrate sparser::mv59582 :raw-text
  "phosphorylated")
 (:var sparser::mv59589 :isa sparser::high :adverb sparser::mv59588)
 (:var sparser::mv59588 :isa sparser::sometimes) (:var sparser::mv59583 :isa sparser::be))

___________________
130: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    source-start
e27   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:var sparser::mv59607 :isa sparser::polar-question :statement sparser::mv59600)
 (:var sparser::mv59600 :isa sparser::sustained :theme sparser::mv59596 :level sparser::mv59604
  :past "PAST")
 (:var sparser::mv59596 :isa sparser::bio-amount :measured-item sparser::mv59593 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59593 :isa sparser::protein :predication sparser::mv59598 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59598 :isa sparser::phosphorylate :substrate sparser::mv59593 :raw-text
  "phosphorylated")
 (:var sparser::mv59604 :isa sparser::level :has-determiner "A" :predication sparser::mv59603
  :raw-text "level")
 (:var sparser::mv59603 :isa sparser::high))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained?"

                    source-start
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 sustained?"
 (:var sparser::mv59617 :isa sparser::polar-question :statement sparser::mv59615)
 (:var sparser::mv59615 :isa sparser::sustained :theme sparser::mv59611 :past "PAST")
 (:var sparser::mv59611 :isa sparser::bio-amount :measured-item sparser::mv59608 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59608 :isa sparser::protein :predication sparser::mv59613 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59613 :isa sparser::phosphorylate :substrate sparser::mv59608 :raw-text
  "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    source-start
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 transient?"
 (:var sparser::mv59627 :isa sparser::polar-question :statement sparser::mv59626)
 (:var sparser::mv59626 :isa sparser::copular-predication :item sparser::mv59621 :value
  sparser::mv59624 :predicate sparser::mv59619)
 (:var sparser::mv59621 :isa sparser::bio-amount :measured-item sparser::mv59618 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59618 :isa sparser::protein :predication sparser::mv59623 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59623 :isa sparser::phosphorylate :substrate sparser::mv59618 :raw-text
  "phosphorylated")
 (:var sparser::mv59624 :isa sparser::transient) (:var sparser::mv59619 :isa sparser::be))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    source-start
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    question-mark
                    end-of-source
("Will the amount of phosphorylated MAPK1 be high?"
 (:var sparser::mv59638 :isa sparser::polar-question :statement sparser::mv59636)
 (:var sparser::mv59636 :isa sparser::copular-predication :item sparser::mv59631 :value
  sparser::mv59635 :predicate sparser::mv59634)
 (:var sparser::mv59631 :isa sparser::bio-amount :measured-item sparser::mv59628 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59628 :isa sparser::protein :predication sparser::mv59633 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59633 :isa sparser::phosphorylate :substrate sparser::mv59628 :raw-text
  "phosphorylated")
 (:var sparser::mv59635 :isa sparser::high) (:var sparser::mv59634 :isa sparser::be :modal "WILL"))

___________________
134: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    source-start
e35   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 16
                    question-mark
                    end-of-source
("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:var sparser::mv59661 :isa sparser::polar-question :statement sparser::mv59660)
 (:var sparser::mv59660 :isa sparser::event-relation :subordinated-event sparser::mv59657 :event
  sparser::mv59658)
 (:var sparser::mv59657 :isa sparser::wh-question :statement sparser::mv59647 :wh if)
 (:var sparser::mv59647 :isa sparser::increase :|agent-OR-cause| sparser::mv59645 :level
  sparser::mv59655 :|affected-process-OR-object| sparser::mv59649 :present "PRESENT" :raw-text
  "increase")
 (:var sparser::mv59645 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59655 :isa sparser::measurement :number sparser::mv59652)
 (:var sparser::mv59652 :isa number :value 100)
 (:var sparser::mv59649 :isa sparser::bio-amount :measured-item sparser::mv59640 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59640 :isa sparser::molecule :raw-text "SB525334" :name "sb525334" :uid
  "PCID:9967941")
 (:var sparser::mv59658 :isa sparser::copular-predication :item sparser::mv59639 :value
  sparser::mv59643 :predicate sparser::mv59641)
 (:var sparser::mv59639 :isa sparser::protein :raw-text "TGFBR1" :uid "UP:P36897" :name
  "TGFR1_HUMAN")
 (:var sparser::mv59643 :isa sparser::low :adverb sparser::mv59642)
 (:var sparser::mv59642 :isa sparser::eventually :name "eventually")
 (:var sparser::mv59641 :isa sparser::be))

___________________
135: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    source-start
e40   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    question-mark
                    end-of-source
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:var sparser::mv59688 :isa sparser::polar-question :statement sparser::mv59687)
 (:var sparser::mv59687 :isa sparser::event-relation :subordinated-event sparser::mv59684 :event
  sparser::mv59685)
 (:var sparser::mv59684 :isa sparser::wh-question :statement sparser::mv59681 :wh if)
 (:var sparser::mv59681 :isa sparser::increase :|affected-process-OR-object| sparser::mv59670
  :|multiplier-OR-cause| sparser::mv59679 :raw-text "increased")
 (:var sparser::mv59670 :isa sparser::bio-amount :measured-item sparser::mv59663 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59663 :isa sparser::molecule :raw-text "SB525334" :name "sb525334" :uid
  "PCID:9967941")
 (:var sparser::mv59679 :isa sparser::measurement :number sparser::mv59676)
 (:var sparser::mv59676 :isa number :value 100)
 (:var sparser::mv59685 :isa sparser::copular-predication :item sparser::mv59662 :value
  sparser::mv59667 :predicate sparser::mv59664)
 (:var sparser::mv59662 :isa sparser::protein :predication sparser::mv59665 :raw-text "TGFBR1" :uid
  "UP:P36897" :name "TGFR1_HUMAN")
 (:var sparser::mv59665 :isa sparser::active)
 (:var sparser::mv59667 :isa sparser::low :adverb sparser::mv59666)
 (:var sparser::mv59666 :isa sparser::eventually :name "eventually")
 (:var sparser::mv59664 :isa sparser::be))

___________________
136: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    source-start
e43   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 19
                    question-mark
                    end-of-source
("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:var sparser::mv59715 :isa sparser::polar-question :statement sparser::mv59714)
 (:var sparser::mv59714 :isa sparser::event-relation :subordinated-event sparser::mv59710 :event
  sparser::mv59712)
 (:var sparser::mv59710 :isa sparser::wh-question :statement sparser::mv59700 :wh if)
 (:var sparser::mv59700 :isa sparser::increase :|agent-OR-cause| sparser::mv59698 :level
  sparser::mv59708 :|affected-process-OR-object| sparser::mv59702 :present "PRESENT" :raw-text
  "increase")
 (:var sparser::mv59698 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59708 :isa sparser::measurement :number sparser::mv59705)
 (:var sparser::mv59705 :isa number :value 100)
 (:var sparser::mv59702 :isa sparser::bio-amount :measured-item sparser::mv59690 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59690 :isa sparser::molecule :raw-text "SB525334" :name "sb525334" :uid
  "PCID:9967941")
 (:var sparser::mv59712 :isa sparser::copular-predication :item sparser::mv59693 :value
  sparser::mv59696 :predicate sparser::mv59691)
 (:var sparser::mv59693 :isa sparser::bio-amount :measured-item sparser::mv59689 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59689 :isa sparser::protein :raw-text "TGFBR1" :uid "UP:P36897" :name
  "TGFR1_HUMAN")
 (:var sparser::mv59696 :isa sparser::low :adverb sparser::mv59695)
 (:var sparser::mv59695 :isa sparser::eventually :name "eventually")
 (:var sparser::mv59691 :isa sparser::be))

___________________
137: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    source-start
e45   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" 21
                    end-of-source
("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
 (:var sparser::mv59743 :isa sparser::polar-question :statement sparser::mv59742)
 (:var sparser::mv59742 :isa sparser::event-relation :subordinated-event sparser::mv59738 :event
  sparser::mv59740)
 (:var sparser::mv59738 :isa sparser::wh-question :statement sparser::mv59728 :wh if)
 (:var sparser::mv59728 :isa sparser::increase :|agent-OR-cause| sparser::mv59726 :level
  sparser::mv59736 :|affected-process-OR-object| sparser::mv59730 :present "PRESENT" :raw-text
  "increase")
 (:var sparser::mv59726 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv59736 :isa sparser::measurement :number sparser::mv59733)
 (:var sparser::mv59733 :isa number :value 100)
 (:var sparser::mv59730 :isa sparser::bio-amount :measured-item sparser::mv59717 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59717 :isa sparser::molecule :raw-text "SB-525334" :name "sb525334" :uid
  "PCID:9967941")
 (:var sparser::mv59740 :isa sparser::copular-predication :item sparser::mv59720 :value
  sparser::mv59724 :predicate sparser::mv59718)
 (:var sparser::mv59720 :isa sparser::bio-amount :measured-item sparser::mv59716 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv59716 :isa sparser::protein :predication sparser::mv59722 :raw-text "TGFBR1" :uid
  "UP:P36897" :name "TGFR1_HUMAN")
 (:var sparser::mv59722 :isa sparser::active)
 (:var sparser::mv59724 :isa sparser::low :adverb sparser::mv59723)
 (:var sparser::mv59723 :isa sparser::always :name "always")
 (:var sparser::mv59718 :isa sparser::be))

___________________
138: "Let's move AKT1 and MAPK1 into mitochondrion."

                    source-start
e15   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    period
                    end-of-source
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:var sparser::mv59754 :isa sparser::explicit-suggestion :suggestion sparser::mv59748 :marker
  sparser::let-as-directive)
 (:var sparser::mv59748 :isa sparser::move-to :|at-relative-location-OR-goal| sparser::mv59751
  :theme sparser::mv59752 :present "PRESENT")
 (:var sparser::mv59751 :isa sparser::cellular-location :raw-text "mitochondrion" :name
  "Mitochondrion" :uid "UP:SL-0173")
 (:var sparser::mv59752 :isa sparser::collection :raw-text "AKT1 and MAPK1" :type sparser::protein
  :number 2 :items (sparser::mv59745 sparser::mv59746))
 (:var sparser::mv59745 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv59746 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
139: "FEN1 phosphorylates AKT1."

                    source-start
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    period
                    end-of-source
("FEN1 phosphorylates AKT1."
 (:var sparser::mv59757 :isa sparser::phosphorylate :agent sparser::mv59755 :substrate
  sparser::mv59756 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv59755 :isa sparser::protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
 (:var sparser::mv59756 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
140: "Move all into mitochondrion."

                    source-start
e8    MOVE-TO       1 "Move all into mitochondrion" 5
                    period
                    end-of-source
("Move all into mitochondrion."
 (:var sparser::mv59759 :isa sparser::move-to :|at-relative-location-OR-goal| sparser::mv59762
  :theme sparser::mv59764 :present "PRESENT")
 (:var sparser::mv59762 :isa sparser::cellular-location :raw-text "mitochondrion" :name
  "Mitochondrion" :uid "UP:SL-0173")
 (:var sparser::mv59764 :isa sparser::all :word "all"))

___________________
141: "AKT1 phosphorylates MAPK1."

                    source-start
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    period
                    end-of-source
("AKT1 phosphorylates MAPK1."
 (:var sparser::mv59767 :isa sparser::phosphorylate :agent sparser::mv59765 :substrate
  sparser::mv59766 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv59765 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv59766 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
142: "Let's highlight the upstream of phosphorylated MAPK1."

                    source-start
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    period
                    end-of-source
("Let's highlight the upstream of phosphorylated MAPK1."
 (:var sparser::mv59777 :isa sparser::explicit-suggestion :suggestion sparser::mv59770 :marker
  sparser::let-as-directive)
 (:var sparser::mv59770 :isa sparser::highlight :theme sparser::mv59772 :present "PRESENT")
 (:var sparser::mv59772 :isa sparser::upstream-segment :pathwaycomponent sparser::mv59769
  :has-determiner "THE" :raw-text "upstream")
 (:var sparser::mv59769 :isa sparser::protein :predication sparser::mv59775 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59775 :isa sparser::phosphorylate :substrate sparser::mv59769 :raw-text
  "phosphorylated"))

___________________
143: "Let's show phosphorylated MAPK1 on the top."

                    source-start
e17   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    period
                    end-of-source
("Let's show phosphorylated MAPK1 on the top."
 (:var sparser::mv59786 :isa sparser::explicit-suggestion :suggestion sparser::mv59780 :marker
  sparser::let-as-directive)
 (:var sparser::mv59780 :isa sparser::show :at-relative-location sparser::mv59784
  :|statement-OR-theme| sparser::mv59779 :present "PRESENT")
 (:var sparser::mv59784 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv59779 :isa sparser::protein :predication sparser::mv59781 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv59781 :isa sparser::phosphorylate :substrate sparser::mv59779 :raw-text
  "phosphorylated"))

___________________
144: "Let's show the downstream of AKT1 on the top."

                    source-start
e23   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    period
                    end-of-source
("Let's show the downstream of AKT1 on the top."
 (:var sparser::mv59799 :isa sparser::explicit-suggestion :suggestion sparser::mv59789 :marker
  sparser::let-as-directive)
 (:var sparser::mv59789 :isa sparser::show :at-relative-location sparser::mv59796
  :|statement-OR-theme| sparser::mv59791 :present "PRESENT")
 (:var sparser::mv59796 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv59791 :isa sparser::downstream-segment :pathwaycomponent sparser::mv59788
  :has-determiner "THE" :raw-text "downstream")
 (:var sparser::mv59788 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
145: "Let's move mitochondrion elements to the top."

                    source-start
e16   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    period
                    end-of-source
("Let's move mitochondrion elements to the top."
 (:var sparser::mv59811 :isa sparser::explicit-suggestion :suggestion sparser::mv59802 :marker
  sparser::let-as-directive)
 (:var sparser::mv59802 :isa sparser::move-to :goal sparser::mv59808 :theme sparser::mv59809
  :present "PRESENT")
 (:var sparser::mv59808 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv59809 :isa sparser::element :plural t :modifier sparser::mv59803)
 (:var sparser::mv59803 :isa sparser::cellular-location :raw-text "mitochondrion" :name
  "Mitochondrion" :uid "UP:SL-0173"))

___________________
146: "How does BRAF affect MAPK1?"

                    source-start
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    question-mark
                    end-of-source
("How does BRAF affect MAPK1?"
 (:var sparser::mv59816 :isa sparser::affect :manner sparser::mv59813 :agent sparser::mv59815
  :object sparser::mv59812 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv59813 :isa sparser::how)
 (:var sparser::mv59815 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv59812 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
147: "How does MAPK1 affect BRAF?"

                    source-start
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    question-mark
                    end-of-source
("How does MAPK1 affect BRAF?"
 (:var sparser::mv59820 :isa sparser::affect :manner sparser::mv59818 :agent sparser::mv59817
  :object sparser::mv59821 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv59818 :isa sparser::how)
 (:var sparser::mv59817 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv59821 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
148: "What is the path between BRAF and MAPK1?"

                    source-start
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    question-mark
                    end-of-source
("What is the path between BRAF and MAPK1?"
 (:var sparser::mv59824 :isa sparser::be :subject sparser::mv59823 :predicate sparser::mv59826
  :present "PRESENT")
 (:var sparser::mv59823 :isa sparser::what)
 (:var sparser::mv59826 :isa sparser::path :endpoints sparser::mv59830 :has-determiner "THE")
 (:var sparser::mv59830 :isa sparser::collection :raw-text "BRAF and MAPK1" :type sparser::protein
  :number 2 :items (sparser::mv59828 sparser::mv59822))
 (:var sparser::mv59828 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv59822 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
149: "How does MAPK1 affect JUND?"

                    source-start
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    question-mark
                    end-of-source
("How does MAPK1 affect JUND?"
 (:var sparser::mv59835 :isa sparser::affect :manner sparser::mv59833 :agent sparser::mv59832
  :object sparser::mv59836 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv59833 :isa sparser::how)
 (:var sparser::mv59832 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv59836 :isa sparser::protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))

___________________
150: "How does SETDB1 affect ADAM17?"

                    source-start
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    question-mark
                    end-of-source
("How does SETDB1 affect ADAM17?"
 (:var sparser::mv59841 :isa sparser::affect :manner sparser::mv59839 :agent sparser::mv59837
  :object sparser::mv59838 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv59839 :isa sparser::how)
 (:var sparser::mv59837 :isa sparser::protein :raw-text "SETDB1" :uid "UP:Q15047" :name
  "SETB1_HUMAN")
 (:var sparser::mv59838 :isa sparser::protein :raw-text "ADAM17" :uid "UP:P78536" :name
  "ADA17_HUMAN"))

___________________
151: "How does KRAS affect MAPK3?"

                    source-start
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    question-mark
                    end-of-source
("How does KRAS affect MAPK3?"
 (:var sparser::mv59846 :isa sparser::affect :manner sparser::mv59843 :agent sparser::mv59845
  :object sparser::mv59842 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv59843 :isa sparser::how)
 (:var sparser::mv59845 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv59842 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
152: "How does  ITGAV affect ILK?"

                    source-start
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    question-mark
                    end-of-source
("How does  ITGAV affect ILK?"
 (:var sparser::mv59850 :isa sparser::affect :manner sparser::mv59847 :agent sparser::mv59849
  :object sparser::mv59851 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv59847 :isa sparser::how)
 (:var sparser::mv59849 :isa sparser::protein :raw-text "ITGAV" :uid "UP:P06756" :name
  "ITAV_HUMAN")
 (:var sparser::mv59851 :isa sparser::protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))

___________________
153: "What genes does MAPK1 phosphorylate?"

                    source-start
e6    GENE          1 "What genes " 3
e4    DO            3 "does " 4
e7    PHOSPHORYLATE 4 "MAPK1 phosphorylate" 7
                    question-mark
                    end-of-source
                    source-start
e6    NP            1 "What genes " 3
e4    VG            3 "does " 4
e7    TRANSITIVE-CLAUSE-WITHOUT-OBJECT  4 "MAPK1 phosphorylate" 7
                    question-mark
                    end-of-source


___________________
154: "What pathways affect BRAF?"

                    source-start
e6    AFFECT        1 "What pathways affect BRAF" 5
                    question-mark
                    end-of-source
("What pathways affect BRAF?"
 (:var sparser::mv59862 :isa sparser::affect :agent sparser::mv59864 :object sparser::mv59863
  :present "PRESENT" :raw-text "affect")
 (:var sparser::mv59864 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv59863 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
155: "What genes activate ILK?"

                    source-start
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    question-mark
                    end-of-source
("What genes activate ILK?"
 (:var sparser::mv59868 :isa sparser::bio-activate :agent sparser::mv59870 :object sparser::mv59869
  :present "PRESENT" :raw-text "activate")
 (:var sparser::mv59870 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv59869 :isa sparser::protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))

___________________
156: "Let's learn about AKT1 in ovarian cancer."

                    source-start
e14   EXPLICIT-SUGGESTION 1 "Let's learn about AKT1 in ovarian cancer" 11
                    period
                    end-of-source
("Let's learn about AKT1 in ovarian cancer."
 (:var sparser::mv59879 :isa sparser::explicit-suggestion :suggestion sparser::mv59874 :marker
  sparser::let-as-directive)
 (:var sparser::mv59874 :isa sparser::learning :context sparser::mv59873 :statement
  sparser::mv59872 :present "PRESENT")
 (:var sparser::mv59873 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv59872 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
157: "What is its relationship with BRAF?"

                    source-start
e10   BE            1 "What is its relationship with BRAF" 7
                    question-mark
                    end-of-source
("What is its relationship with BRAF?"
 (:var sparser::mv59881 :isa sparser::be :subject sparser::mv59880 :predicate sparser::mv59883
  :present "PRESENT")
 (:var sparser::mv59880 :isa sparser::what)
 (:var sparser::mv59883 :isa sparser::relationship :patient sparser::mv59885 :modifier
  sparser::mv59882)
 (:var sparser::mv59885 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv59882 :isa sparser::pronoun/inanimate :word "its"))

___________________
158: "What is its relationship with PTPN1?"

                    source-start
e11   BE            1 "What is its relationship with PTPN1" 8
                    question-mark
                    end-of-source
("What is its relationship with PTPN1?"
 (:var sparser::mv59889 :isa sparser::be :subject sparser::mv59888 :predicate sparser::mv59891
  :present "PRESENT")
 (:var sparser::mv59888 :isa sparser::what)
 (:var sparser::mv59891 :isa sparser::relationship :patient sparser::mv59887 :modifier
  sparser::mv59890)
 (:var sparser::mv59887 :isa sparser::protein :raw-text "PTPN1" :uid "UP:P18031" :name
  "PTN1_HUMAN")
 (:var sparser::mv59890 :isa sparser::pronoun/inanimate :word "its"))

___________________
159: "AKT1 phosphorylates IFT140. "

                    source-start
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    period
                    end-of-source
("AKT1 phosphorylates IFT140."
 (:var sparser::mv59896 :isa sparser::phosphorylate :agent sparser::mv59894 :substrate
  sparser::mv59895 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv59894 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv59895 :isa sparser::protein :raw-text "IFT140" :uid "UP:Q96RY7" :name
  "IF140_HUMAN"))

___________________
160: "What is the next correlation of AKT1?"

                    source-start
e2    WHAT          1 "What " 2
e3    BE            2 "is " 3
e5    THE           3 "the " 4
e6 e7               "next" :: NEXT, SEQUENCER
e12   CORRELATION   5 "correlation of AKT1" 9
                    question-mark
                    end-of-source
                    source-start
e2    WH-PRONOUN    1 "What " 2
e3    VG            2 "is " 3
e5    DET           3 "the " 4
e6 e7               "next" :: NEXT, SEQUENCER
e12   NP            5 "correlation of AKT1" 9
                    question-mark
                    end-of-source


___________________
161: "Let's stop learning about AKT1."

                    source-start
e1    PROPOSAL-MARKER 1 "Let's " 4
e5    STOP-ENDURANT 4 "stop " 5
e9    LEARNING      5 "learning about AKT1" 9
                    period
                    end-of-source
                    source-start
e1    INTERJECTION  1 "Let's " 4
e5    NP            4 "stop " 5
e9    VP+ING        5 "learning about AKT1" 9
                    period
                    end-of-source


___________________
162: "What is the drug response on cells with TP53 alterations?"

                    source-start
e21   BE            1 "What is the drug response on cells with TP53 alterations" 12
                    question-mark
                    end-of-source
("What is the drug response on cells with TP53 alterations?"
 (:var sparser::mv59915 :isa sparser::be :subject sparser::mv59914 :predicate sparser::mv59918
  :present "PRESENT")
 (:var sparser::mv59914 :isa sparser::what)
 (:var sparser::mv59918 :isa sparser::response :beneficiary sparser::mv59927 :has-determiner "THE"
  :drug sparser::mv59917 :raw-text "response")
 (:var sparser::mv59927 :isa sparser::cell-type :plural t :mutation sparser::mv59925)
 (:var sparser::mv59925 :isa sparser::alter :plural t :|agent-OR-object| sparser::mv59913 :raw-text
  "alterations")
 (:var sparser::mv59913 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv59917 :isa sparser::drug :raw-text "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    source-start
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    question-mark
                    end-of-source
("What is the drug response for cells with TP53 alterations?"
 (:var sparser::mv59931 :isa sparser::be :subject sparser::mv59930 :predicate sparser::mv59934
  :present "PRESENT")
 (:var sparser::mv59930 :isa sparser::what)
 (:var sparser::mv59934 :isa sparser::response :cell-type sparser::mv59943 :has-determiner "THE"
  :drug sparser::mv59933 :raw-text "response")
 (:var sparser::mv59943 :isa sparser::cell-type :plural t :mutation sparser::mv59941)
 (:var sparser::mv59941 :isa sparser::alter :plural t :|agent-OR-object| sparser::mv59929 :raw-text
  "alterations")
 (:var sparser::mv59929 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv59933 :isa sparser::drug :raw-text "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

                    source-start
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    question-mark
                    end-of-source
("What is the mutation frequency of EGFR in glioblastoma?"
 (:var sparser::mv59946 :isa sparser::be :subject sparser::mv59945 :predicate sparser::mv59949
  :present "PRESENT")
 (:var sparser::mv59945 :isa sparser::what)
 (:var sparser::mv59949 :isa sparser::frequency :context sparser::mv59953 :measured-item
  sparser::mv59951 :has-determiner "THE" :measured-item sparser::mv59948 :raw-text "frequency")
 (:var sparser::mv59953 :isa sparser::glioblastoma)
 (:var sparser::mv59951 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv59948 :isa sparser::mutation :raw-text "mutation"))

___________________
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    source-start
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    question-mark
                    end-of-source
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:var sparser::mv59959 :isa sparser::be :subject sparser::mv59958 :predicate sparser::mv59962
  :present "PRESENT")
 (:var sparser::mv59958 :isa sparser::what)
 (:var sparser::mv59962 :isa sparser::frequency :context sparser::mv59957 :measured-item
  sparser::mv59956 :has-determiner "THE" :measured-item sparser::mv59961 :raw-text "frequency")
 (:var sparser::mv59957 :isa sparser::cancer :name "ovarian serous cystadenocarcinoma" :uid
  "NCIT:C7978")
 (:var sparser::mv59956 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv59961 :isa sparser::mutation :raw-text "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    source-start
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    period
                    end-of-source
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:var sparser::mv59968 :isa sparser::show :|statement-OR-theme| sparser::mv59983 :beneficiary
  sparser::mv59969 :present "PRESENT")
 (:var sparser::mv59983 :isa sparser::mutation :plural t :context sparser::mv59967 :object
  sparser::mv59978 :has-determiner "THE" :raw-text "mutations")
 (:var sparser::mv59967 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv59978 :isa sparser::collection :raw-text "PTEN and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv59974 sparser::mv59976))
 (:var sparser::mv59974 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv59976 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv59969 :isa sparser::interlocutor :name "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    source-start
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    period
                    end-of-source
("Show me the mutations of PTEN in ovarian cancer."
 (:var sparser::mv59985 :isa sparser::show :|statement-OR-theme| sparser::mv59997 :beneficiary
  sparser::mv59986 :present "PRESENT")
 (:var sparser::mv59997 :isa sparser::mutation :plural t :context sparser::mv59984 :object
  sparser::mv59991 :has-determiner "THE" :raw-text "mutations")
 (:var sparser::mv59984 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv59991 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv59986 :isa sparser::interlocutor :name "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    source-start
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    question-mark
                    end-of-source
("What are the mutations of PTEN in ovarian cancer?"
 (:var sparser::mv60000 :isa sparser::be :subject sparser::mv59999 :predicate sparser::mv60011
  :present "PRESENT")
 (:var sparser::mv59999 :isa sparser::what)
 (:var sparser::mv60011 :isa sparser::mutation :plural t :context sparser::mv59998 :object
  sparser::mv60005 :has-determiner "THE" :raw-text "mutations")
 (:var sparser::mv59998 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv60005 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    source-start
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    question-mark
                    end-of-source
("What is the most likely cellular location of AKT1 and BRAF?"
 (:var sparser::mv60014 :isa sparser::be :subject sparser::mv60013 :predicate sparser::mv60026
  :present "PRESENT")
 (:var sparser::mv60013 :isa sparser::what)
 (:var sparser::mv60026 :isa sparser::quality-predicate :item sparser::mv60024 :attribute
  sparser::mv60020)
 (:var sparser::mv60024 :isa sparser::collection :raw-text "AKT1 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv60012 sparser::mv60023))
 (:var sparser::mv60012 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv60023 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv60020 :isa sparser::location-of :has-determiner "THE" :predication
  sparser::mv60018 :modifier sparser::mv60019)
 (:var sparser::mv60018 :isa sparser::likely :comparative sparser::mv60016)
 (:var sparser::mv60016 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv60019 :isa sparser::cellular :name "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    source-start
e18   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    question-mark
                    end-of-source
("Are there common upstreams of AKT1 and BRAF?"
 (:var sparser::mv60042 :isa sparser::polar-question :statement sparser::mv60037)
 (:var sparser::mv60037 :isa sparser::there-exists :value sparser::mv60041 :predicate
  sparser::mv60029)
 (:var sparser::mv60041 :isa sparser::upstream-segment :plural t :pathwaycomponent sparser::mv60038
  :predication sparser::mv60031 :raw-text "upstreams")
 (:var sparser::mv60038 :isa sparser::collection :raw-text "AKT1 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv60027 sparser::mv60036))
 (:var sparser::mv60027 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv60036 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv60031 :isa sparser::common) (:var sparser::mv60029 :isa sparser::syntactic-there))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    source-start
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    question-mark
                    end-of-source
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:var sparser::mv60046 :isa sparser::be :subject sparser::mv60045 :predicate sparser::mv60058
  :present "PRESENT")
 (:var sparser::mv60045 :isa sparser::what)
 (:var sparser::mv60058 :isa sparser::upstream-segment :plural t :pathwaycomponent sparser::mv60054
  :has-determiner "THE" :predication sparser::mv60048 :raw-text "upstreams")
 (:var sparser::mv60054 :isa sparser::collection :raw-text "AKT1, BRAF and MAPK1" :type
  sparser::protein :number 3 :items (sparser::mv60043 sparser::mv60052 sparser::mv60044))
 (:var sparser::mv60043 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv60052 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv60044 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv60048 :isa sparser::common))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    source-start
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    question-mark
                    end-of-source
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:var sparser::mv60071 :isa sparser::copular-predication :item sparser::mv60068 :value
  sparser::mv60059 :predicate sparser::mv60065)
 (:var sparser::mv60068 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv60059 :isa sparser::mutual-exclusivity :disease sparser::mv60061 :alternative
  sparser::mv60060)
 (:var sparser::mv60061 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv60060 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name
  "CADH1_HUMAN")
 (:var sparser::mv60065 :isa sparser::be :present "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    source-start
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    question-mark
                    end-of-source
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:var sparser::mv60076 :isa sparser::be :subject sparser::mv60075 :predicate sparser::mv60086
  :present "PRESENT")
 (:var sparser::mv60075 :isa sparser::what)
 (:var sparser::mv60086 :isa sparser::gene :disease sparser::mv60074 :has-determiner "THE"
  :predication sparser::mv60072 :raw-text "genes")
 (:var sparser::mv60074 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv60072 :isa sparser::mutual-exclusivity :alternative sparser::mv60073)
 (:var sparser::mv60073 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 for lung cancer?"
 (:var sparser::mv60090 :isa sparser::be :subject sparser::mv60089 :predicate sparser::mv60093
  :present "PRESENT")
 (:var sparser::mv60089 :isa sparser::what)
 (:var sparser::mv60093 :isa sparser::significance :context sparser::mv60088 :agent
  sparser::mv60087 :has-determiner "THE" :modifier sparser::mv60092)
 (:var sparser::mv60088 :isa sparser::cancer :name "lung cancer" :uid "TS-0571")
 (:var sparser::mv60087 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv60092 :isa sparser::mutation :raw-text "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:var sparser::mv60101 :isa sparser::be :subject sparser::mv60100 :predicate sparser::mv60104
  :present "PRESENT")
 (:var sparser::mv60100 :isa sparser::what)
 (:var sparser::mv60104 :isa sparser::significance :context sparser::mv60099 :agent
  sparser::mv60098 :has-determiner "THE" :modifier sparser::mv60103)
 (:var sparser::mv60099 :isa sparser::cancer :name "ovarian serous cystadenocarcinoma" :uid
  "NCIT:C7978")
 (:var sparser::mv60098 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv60103 :isa sparser::mutation :raw-text "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    source-start
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    question-mark
                    end-of-source
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:var sparser::mv60110 :isa sparser::be :subject sparser::mv60109 :predicate sparser::mv60113
  :present "PRESENT")
 (:var sparser::mv60109 :isa sparser::what)
 (:var sparser::mv60113 :isa sparser::significance :context sparser::mv60118 :agent
  sparser::mv60115 :has-determiner "THE" :modifier sparser::mv60112)
 (:var sparser::mv60118 :isa sparser::cancer :organ sparser::mv60117 :name "adenocarcinoma" :uid
  "EFO:0000228")
 (:var sparser::mv60117 :isa sparser::pancreas)
 (:var sparser::mv60115 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv60112 :isa sparser::mutation :raw-text "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    source-start
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    question-mark
                    end-of-source
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:var sparser::mv60122 :isa sparser::be :subject sparser::mv60121 :predicate sparser::mv60125
  :present "PRESENT")
 (:var sparser::mv60121 :isa sparser::what)
 (:var sparser::mv60125 :isa sparser::significance :context sparser::mv60130 :agent
  sparser::mv60127 :has-determiner "THE" :modifier sparser::mv60124)
 (:var sparser::mv60130 :isa sparser::cancer :modifier sparser::mv60129 :name "adenocarcinoma" :uid
  "EFO:0000228")
 (:var sparser::mv60129 :isa sparser::protein :raw-text "prostatic" :uid "UP:P20151" :name
  "KLK2_HUMAN")
 (:var sparser::mv60127 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv60124 :isa sparser::mutation :raw-text "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    source-start
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    period
                    end-of-source
("MEK phosphorylates ERK."
 (:var sparser::mv60134 :isa sparser::phosphorylate :agent sparser::mv60133 :substrate
  sparser::mv60135 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv60133 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv60135 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
179: "EGF binds EGFR."

                    source-start
e4    BINDING       1 "EGF binds EGFR" 4
                    period
                    end-of-source
("EGF binds EGFR."
 (:var sparser::mv60137 :isa sparser::binding :binder sparser::mv60136 :direct-bindee
  sparser::mv60138 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv60136 :isa sparser::protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv60138 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    source-start
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    period
                    end-of-source
("EGFR bound to EGF binds GRB2."
 (:var sparser::mv60144 :isa sparser::binding :binder sparser::mv60140 :direct-bindee
  sparser::mv60139 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv60140 :isa sparser::protein :predication sparser::mv60141 :raw-text "EGFR" :uid
  "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv60141 :isa sparser::binding :direct-bindee sparser::mv60140 :bindee
  sparser::mv60143 :past "PAST" :raw-text "bound")
 (:var sparser::mv60143 :isa sparser::protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv60139 :isa sparser::protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    source-start
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    period
                    end-of-source
("Phosphorylated ERK is active."
 (:var sparser::mv60150 :isa sparser::copular-predication :item sparser::mv60147 :value
  sparser::mv60149 :predicate sparser::mv60148)
 (:var sparser::mv60147 :isa sparser::protein-family :predication sparser::mv60146 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv60146 :isa sparser::phosphorylate :substrate sparser::mv60147 :raw-text
  "Phosphorylated")
 (:var sparser::mv60149 :isa sparser::active)
 (:var sparser::mv60148 :isa sparser::be :present "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    source-start
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    period
                    end-of-source
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:var sparser::mv60151 :isa sparser::protein :predication sparser::mv60153 :raw-text "MAP2K1" :uid
  "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv60153 :isa sparser::phosphorylate :substrate sparser::mv60151 :target
  sparser::mv60152 :past "PAST" :raw-text "phosphorylated")
 (:var sparser::mv60152 :isa sparser::protein :site sparser::mv60160 :modifier sparser::mv60159
  :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv60160 :isa sparser::residue-on-protein :raw-text "S220" :position
  sparser::mv60158 :amino-acid sparser::mv60156)
 (:var sparser::mv60158 :isa number :value 220)
 (:var sparser::mv60156 :isa sparser::amino-acid :name "serine" :letter "S")
 (:var sparser::mv60159 :isa sparser::bio-entity :name "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    source-start
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    period
                    end-of-source
("Active TP53 transcribes MDM2."
 (:var sparser::mv60165 :isa sparser::transcribe :agent sparser::mv60162 :object sparser::mv60163
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv60162 :isa sparser::protein :predication sparser::mv60164 :raw-text "TP53" :uid
  "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv60164 :isa sparser::active)
 (:var sparser::mv60163 :isa sparser::protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    source-start
e45   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    question-mark
                    end-of-source
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:var sparser::mv60194 :isa sparser::polar-question :statement sparser::mv60193)
 (:var sparser::mv60193 :isa sparser::event-relation :subordinated-event sparser::mv60189 :event
  sparser::mv60191)
 (:var sparser::mv60189 :isa sparser::wh-question :statement sparser::mv60177 :wh if)
 (:var sparser::mv60177 :isa sparser::increase :|agent-OR-cause| sparser::mv60175
  :|multiplier-OR-cause| sparser::mv60186 :|affected-process-OR-object| sparser::mv60179 :present
  "PRESENT" :raw-text "increase")
 (:var sparser::mv60175 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv60186 :isa sparser::measurement :number sparser::mv60183)
 (:var sparser::mv60183 :isa number :value 10)
 (:var sparser::mv60179 :isa sparser::bio-amount :measured-item sparser::mv60166 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv60166 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv60191 :isa sparser::copular-predication :item sparser::mv60169 :value
  sparser::mv60173 :predicate sparser::mv60167)
 (:var sparser::mv60169 :isa sparser::bio-amount :measured-item sparser::mv60171 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv60171 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv60173 :isa sparser::high :adverb sparser::mv60172)
 (:var sparser::mv60172 :isa sparser::ever :name "ever") (:var sparser::mv60167 :isa sparser::be))

___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    source-start
e19   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK " 6
e16   IN            6 "in the model" 9
                    question-mark
                    end-of-source
                    source-start
e19   S             1 "Does Vemurafenib decrease phosphorylated ERK " 6
e16   PP            6 "in the model" 9
                    question-mark
                    end-of-source


___________________
186: "Does Selumetinib decrease JUN in the model?"

                    source-start
e16   DECREASE      1 "Does Selumetinib decrease JUN " 5
e13   IN            5 "in the model" 8
                    question-mark
                    end-of-source
                    source-start
e16   S             1 "Does Selumetinib decrease JUN " 5
e13   PP            5 "in the model" 8
                    question-mark
                    end-of-source


___________________
187: "How does KRAS regulate MAP2K1?"

                    source-start
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    question-mark
                    end-of-source
("How does KRAS regulate MAP2K1?"
 (:var sparser::mv60222 :isa sparser::regulate :manner sparser::mv60219 :agent sparser::mv60221
  :object sparser::mv60218 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv60219 :isa sparser::how)
 (:var sparser::mv60221 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv60218 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    source-start
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    question-mark
                    end-of-source
("How does HRAS activate MAPK3?"
 (:var sparser::mv60227 :isa sparser::bio-activate :manner sparser::mv60224 :agent sparser::mv60226
  :object sparser::mv60223 :present "PRESENT" :raw-text "activate")
 (:var sparser::mv60224 :isa sparser::how)
 (:var sparser::mv60226 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv60223 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    source-start
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    question-mark
                    end-of-source
("Does Vemurafenib inhibit BRAF?"
 (:var sparser::mv60233 :isa sparser::polar-question :statement sparser::mv60232)
 (:var sparser::mv60232 :isa sparser::inhibit :agent sparser::mv60229 :object sparser::mv60231
  :raw-text "inhibit")
 (:var sparser::mv60229 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv60231 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    source-start
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    question-mark
                    end-of-source
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:var sparser::mv60246 :isa sparser::share :object sparser::mv60245 :participant sparser::mv60244
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv60245 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv60244 :isa sparser::collection :raw-text "SRF, HRAS, and ELK1" :type
  sparser::protein :number 3 :items (sparser::mv60241 sparser::mv60242 sparser::mv60236))
 (:var sparser::mv60241 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60242 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv60236 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
191: "Create a model where LCK phosphorylates CD3E"

                    source-start
e2    CREATE        1 "Create " 2
e13   MODEL         2 "a model where LCK phosphorylates CD3E" 10
                    end-of-source
                    source-start
e2    VG            1 "Create " 2
e13   NP            2 "a model where LCK phosphorylates CD3E" 10
                    end-of-source


___________________
192: "What is upstream of CD3E?"

                    source-start
e11   BE            1 "What is upstream of CD3E" 8
                    question-mark
                    end-of-source
("What is upstream of CD3E?"
 (:var sparser::mv60258 :isa sparser::be :subject sparser::mv60257 :predicate sparser::mv60259
  :present "PRESENT")
 (:var sparser::mv60257 :isa sparser::what)
 (:var sparser::mv60259 :isa sparser::upstream-segment :pathwaycomponent sparser::mv60256 :raw-text
  "upstream")
 (:var sparser::mv60256 :isa sparser::protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    source-start
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    period
                    end-of-source
("I want to find a treatment for pancreatic cancer."
 (:var sparser::mv60267 :isa sparser::want :agent sparser::mv60264 :theme sparser::mv60275 :present
  "PRESENT")
 (:var sparser::mv60264 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv60275 :isa sparser::bio-find :agent sparser::mv60264 :object sparser::mv60272
  :present "PRESENT" :raw-text "find")
 (:var sparser::mv60272 :isa sparser::treatment :disease sparser::mv60263 :has-determiner "A"
  :raw-text "treatment")
 (:var sparser::mv60263 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
194: "What drug could I use?"

                    source-start
e11   BIO-USE       1 "What drug could I use" 6
                    question-mark
                    end-of-source
("What drug could I use?"
 (:var sparser::mv60284 :isa sparser::bio-use :object sparser::mv60277 :modal sparser::mv60278
  :agent sparser::mv60279 :present "PRESENT" :raw-text "use")
 (:var sparser::mv60277 :isa sparser::drug :has-determiner "WHAT" :raw-text "drug")
 (:var sparser::mv60278 :isa sparser::could)
 (:var sparser::mv60279 :isa sparser::interlocutor :name "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    source-start
e14   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    question-mark
                    end-of-source
("Are there any drugs for BRAF?"
 (:var sparser::mv60297 :isa sparser::polar-question :statement sparser::mv60293)
 (:var sparser::mv60293 :isa sparser::there-exists :value sparser::mv60296 :predicate
  sparser::mv60286)
 (:var sparser::mv60296 :isa sparser::drug :plural t :target sparser::mv60292 :quantifier
  sparser::mv60288 :raw-text "drugs")
 (:var sparser::mv60292 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv60288 :isa sparser::any :word "any")
 (:var sparser::mv60286 :isa sparser::syntactic-there))

___________________
196: "Are they kinases?"

                    source-start
e5    BE            1 "Are they kinases" 4
                    question-mark
                    end-of-source
("Are they kinases?"
 (:var sparser::mv60302 :isa sparser::polar-question :statement sparser::mv60298)
 (:var sparser::mv60298 :isa sparser::be :subject sparser::mv60299 :predicate sparser::mv60301)
 (:var sparser::mv60299 :isa sparser::pronoun/plural :word "they")
 (:var sparser::mv60301 :isa sparser::kinase :plural t :raw-text "kinases"))

___________________
197: "Can you find a drug for BRAF?"

                    source-start
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    question-mark
                    end-of-source
("Can you find a drug for BRAF?"
 (:var sparser::mv60312 :isa sparser::polar-question :statement sparser::mv60306)
 (:var sparser::mv60306 :isa sparser::bio-find :agent sparser::mv60304 :object sparser::mv60308
  :modal "CAN" :raw-text "find")
 (:var sparser::mv60304 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv60308 :isa sparser::drug :target sparser::mv60310 :has-determiner "A" :raw-text
  "drug")
 (:var sparser::mv60310 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    source-start
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    question-mark
                    end-of-source
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:var sparser::mv60334 :isa sparser::polar-question :statement sparser::mv60318)
 (:var sparser::mv60318 :isa sparser::tell :agent sparser::mv60317 :theme sparser::mv60333
  :beneficiary sparser::mv60319 :modal "CAN")
 (:var sparser::mv60317 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv60333 :isa sparser::transcription-factor :plural t :predication sparser::mv60331
  :quantifier sparser::mv60320 :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv60331 :isa sparser::share :object sparser::mv60333 :that-rel t :participant
  sparser::mv60328 :modal "CAN" :raw-text "shared")
 (:var sparser::mv60328 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv60315 sparser::mv60327))
 (:var sparser::mv60315 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv60327 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60320 :isa sparser::all :word "all")
 (:var sparser::mv60319 :isa sparser::interlocutor :name "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    source-start
e29   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    question-mark
                    end-of-source
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:var sparser::mv60356 :isa sparser::polar-question :statement sparser::mv60340)
 (:var sparser::mv60340 :isa sparser::tell :agent sparser::mv60339 :theme sparser::mv60355
  :beneficiary sparser::mv60341 :modal "CAN")
 (:var sparser::mv60339 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv60355 :isa sparser::transcription-factor :plural t :predication sparser::mv60353
  :has-determiner "WHAT" :raw-text "transcription factors")
 (:var sparser::mv60353 :isa sparser::share :wh-element sparser::mv60349 :wh-path nil :raw-text
  "shared" :modal sparser::mv60338 :participant sparser::mv60348 :object sparser::mv60349)
 (:var sparser::mv60349 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv60338 :isa sparser::can)
 (:var sparser::mv60348 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv60337 sparser::mv60347))
 (:var sparser::mv60337 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv60347 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60341 :isa sparser::interlocutor :name "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    source-start
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    question-mark
                    end-of-source
("Do you know any drugs for BRAF?"
 (:var sparser::mv60370 :isa sparser::polar-question :statement sparser::mv60369)
 (:var sparser::mv60369 :isa sparser::know :agent sparser::mv60358 :statement sparser::mv60368)
 (:var sparser::mv60358 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv60368 :isa sparser::drug :plural t :target sparser::mv60364 :quantifier
  sparser::mv60360 :raw-text "drugs")
 (:var sparser::mv60364 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv60360 :isa sparser::any :word "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    source-start
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    question-mark
                    end-of-source
("Does STAT3 regulate the JUN gene in the lung?"
 (:var sparser::mv60382 :isa sparser::polar-question :statement sparser::mv60380)
 (:var sparser::mv60380 :isa sparser::regulate :agent sparser::mv60371 :object sparser::mv60376
  :raw-text "regulate")
 (:var sparser::mv60371 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60376 :isa sparser::gene :organ sparser::mv60379 :has-determiner "THE" :expresses
  sparser::mv60375 :raw-text "gene")
 (:var sparser::mv60379 :isa sparser::lung :has-determiner "THE")
 (:var sparser::mv60375 :isa sparser::protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    source-start
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    question-mark
                    end-of-source
("Does STAT3 regulate the c-fos gene in liver?"
 (:var sparser::mv60393 :isa sparser::polar-question :statement sparser::mv60391)
 (:var sparser::mv60391 :isa sparser::regulate :agent sparser::mv60383 :object sparser::mv60388
  :raw-text "regulate")
 (:var sparser::mv60383 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60388 :isa sparser::gene :organ sparser::mv60390 :has-determiner "THE" :expresses
  sparser::mv60384 :raw-text "gene")
 (:var sparser::mv60390 :isa sparser::liver)
 (:var sparser::mv60384 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    source-start
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    question-mark
                    end-of-source
("Does STAT3 regulate the c-fos gene?"
 (:var sparser::mv60401 :isa sparser::polar-question :statement sparser::mv60400)
 (:var sparser::mv60400 :isa sparser::regulate :agent sparser::mv60394 :object sparser::mv60399
  :raw-text "regulate")
 (:var sparser::mv60394 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60399 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv60395
  :raw-text "gene")
 (:var sparser::mv60395 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    source-start
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    question-mark
                    end-of-source
("Does STAT3 regulate the cfos gene in the lung?"
 (:var sparser::mv60413 :isa sparser::polar-question :statement sparser::mv60411)
 (:var sparser::mv60411 :isa sparser::regulate :agent sparser::mv60402 :object sparser::mv60407
  :raw-text "regulate")
 (:var sparser::mv60402 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60407 :isa sparser::gene :organ sparser::mv60410 :has-determiner "THE" :expresses
  sparser::mv60406 :raw-text "gene")
 (:var sparser::mv60410 :isa sparser::lung :has-determiner "THE")
 (:var sparser::mv60406 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    source-start
e11   TARGET        1 "Does TP53 target MDM2" 7
                    question-mark
                    end-of-source
("Does TP53 target MDM2?"
 (:var sparser::mv60420 :isa sparser::polar-question :statement sparser::mv60419)
 (:var sparser::mv60419 :isa sparser::target :agent sparser::mv60414 :object sparser::mv60415
  :raw-text "target")
 (:var sparser::mv60414 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv60415 :isa sparser::protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    source-start
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    end-of-source
("Does miR-2000-5p target stat3"
 (:var sparser::mv60427 :isa sparser::polar-question :statement sparser::mv60426)
 (:var sparser::mv60426 :isa sparser::target :agent sparser::mv60421 :object sparser::mv60422
  :raw-text "target")
 (:var sparser::mv60421 :isa sparser::micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p"
  :uid "MIMAmiR-2000-5p")
 (:var sparser::mv60422 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    source-start
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    question-mark
                    end-of-source
("Does miR-20b-5p target STAT3?"
 (:var sparser::mv60434 :isa sparser::polar-question :statement sparser::mv60433)
 (:var sparser::mv60433 :isa sparser::target :agent sparser::mv60428 :object sparser::mv60429
  :raw-text "target")
 (:var sparser::mv60428 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413")
 (:var sparser::mv60429 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    source-start
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    question-mark
                    end-of-source
("Does miR-222-3p target STAT3?"
 (:var sparser::mv60441 :isa sparser::polar-question :statement sparser::mv60440)
 (:var sparser::mv60440 :isa sparser::target :agent sparser::mv60435 :object sparser::mv60436
  :raw-text "target")
 (:var sparser::mv60435 :isa sparser::micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid
  "MIMAT0000279")
 (:var sparser::mv60436 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    source-start
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    end-of-source
("Does stat3 regulate cfors in liver"
 (:var sparser::mv60450 :isa sparser::polar-question :statement sparser::mv60448)
 (:var sparser::mv60448 :isa sparser::regulate :agent sparser::mv60442 :object sparser::mv60445
  :raw-text "regulate")
 (:var sparser::mv60442 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60445 :isa sparser::bio-entity :organ sparser::mv60447 :name "cfors")
 (:var sparser::mv60447 :isa sparser::liver))

___________________
210: "Does stat3 regulate cfos in liver"

                    source-start
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    end-of-source
("Does stat3 regulate cfos in liver"
 (:var sparser::mv60459 :isa sparser::polar-question :statement sparser::mv60457)
 (:var sparser::mv60457 :isa sparser::regulate :agent sparser::mv60451 :object sparser::mv60454
  :raw-text "regulate")
 (:var sparser::mv60451 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60454 :isa sparser::protein :organ sparser::mv60456 :raw-text "cfos" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv60456 :isa sparser::liver))

___________________
211: "Does it regulate cfos in brain"

                    source-start
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    end-of-source
("Does it regulate cfos in brain"
 (:var sparser::mv60468 :isa sparser::polar-question :statement sparser::mv60466)
 (:var sparser::mv60466 :isa sparser::regulate :|agent-OR-cause| sparser::mv60461 :object
  sparser::mv60463 :raw-text "regulate")
 (:var sparser::mv60461 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv60463 :isa sparser::protein :organ sparser::mv60465 :raw-text "cfos" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv60465 :isa sparser::brain))

___________________
212: "Does stat3 regulate cfos?"

                    source-start
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    question-mark
                    end-of-source
("Does stat3 regulate cfos?"
 (:var sparser::mv60474 :isa sparser::polar-question :statement sparser::mv60473)
 (:var sparser::mv60473 :isa sparser::regulate :agent sparser::mv60469 :object sparser::mv60472
  :raw-text "regulate")
 (:var sparser::mv60469 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60472 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    source-start
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    end-of-source
("Does stat3 regulate the cfos gene in blood cells"
 (:var sparser::mv60488 :isa sparser::polar-question :statement sparser::mv60485)
 (:var sparser::mv60485 :isa sparser::regulate :agent sparser::mv60475 :object sparser::mv60480
  :raw-text "regulate")
 (:var sparser::mv60475 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60480 :isa sparser::gene :cell-type sparser::mv60486 :has-determiner "THE"
  :expresses sparser::mv60479 :raw-text "gene")
 (:var sparser::mv60486 :isa sparser::cell-type :plural t :non-cellular-location sparser::mv60482)
 (:var sparser::mv60482 :isa sparser::bio-organ :name "blood" :uid "BTO:0000089")
 (:var sparser::mv60479 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    source-start
e15   BIO-UTILIZE   1 "Does the il-12 pathway utilize SGK1" 10
                    question-mark
                    end-of-source
("Does the il-12 pathway utilize SGK1?"
 (:var sparser::mv60496 :isa sparser::polar-question :statement sparser::mv60495)
 (:var sparser::mv60495 :isa sparser::bio-utilize :agent sparser::mv60493 :object sparser::mv60490
  :raw-text "utilize")
 (:var sparser::mv60493 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv60489
  :raw-text "pathway")
 (:var sparser::mv60489 :isa sparser::protein-family :raw-text "il-12" :name "IL-12" :count 2
  :family-members
  ((sparser::protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
   (sparser::protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
  :uid "FPLX:IL12")
 (:var sparser::mv60490 :isa sparser::protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    source-start
e16   BIO-UTILIZE   1 "Does the mTor pathway utilize SGK1" 8
                    question-mark
                    end-of-source
("Does the mTor pathway utilize SGK1?"
 (:var sparser::mv60506 :isa sparser::polar-question :statement sparser::mv60505)
 (:var sparser::mv60505 :isa sparser::bio-utilize :agent sparser::mv60503 :object sparser::mv60497
  :raw-text "utilize")
 (:var sparser::mv60503 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv60500
  :raw-text "pathway")
 (:var sparser::mv60500 :isa sparser::protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
 (:var sparser::mv60497 :isa sparser::protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    source-start
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    period
                    end-of-source
("Give me the evidence that kras decreases frizzled8."
 (:var sparser::mv60508 :isa sparser::give :theme sparser::mv60515 :beneficiary sparser::mv60509
  :present "PRESENT")
 (:var sparser::mv60515 :isa sparser::evidence :statement sparser::mv60514 :has-determiner "THE")
 (:var sparser::mv60514 :isa sparser::decrease :agent sparser::mv60513 :object sparser::mv60507
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv60513 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv60507 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv60509 :isa sparser::interlocutor :name "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    source-start
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    period
                    end-of-source
("Give me the evidence that kras regulates frizzled8."
 (:var sparser::mv60517 :isa sparser::give :theme sparser::mv60524 :beneficiary sparser::mv60518
  :present "PRESENT")
 (:var sparser::mv60524 :isa sparser::evidence :statement sparser::mv60523 :has-determiner "THE")
 (:var sparser::mv60523 :isa sparser::regulate :agent sparser::mv60522 :object sparser::mv60516
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv60522 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv60516 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv60518 :isa sparser::interlocutor :name "speaker"))

___________________
218: "Is MEK a kinase?"

                    source-start
e8    BE            1 "Is MEK a kinase" 5
                    question-mark
                    end-of-source
("Is MEK a kinase?"
 (:var sparser::mv60529 :isa sparser::polar-question :statement sparser::mv60525)
 (:var sparser::mv60525 :isa sparser::be :subject sparser::mv60526 :predicate sparser::mv60528)
 (:var sparser::mv60526 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv60528 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    source-start
e10   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    question-mark
                    end-of-source
("Is MEK2 inhibited by Selumetinib?"
 (:var sparser::mv60536 :isa sparser::polar-question :statement sparser::mv60532)
 (:var sparser::mv60532 :isa sparser::inhibit :object sparser::mv60530 :agent sparser::mv60534
  :past "PAST" :raw-text "inhibited")
 (:var sparser::mv60530 :isa sparser::protein :raw-text "MEK2" :uid "UP:P36507" :name
  "MP2K2_HUMAN")
 (:var sparser::mv60534 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    source-start
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    question-mark
                    end-of-source
("Is STAT3 a transcription factor for c-fos gene?"
 (:var sparser::mv60545 :isa sparser::polar-question :statement sparser::mv60540)
 (:var sparser::mv60540 :isa sparser::be :subject sparser::mv60537 :predicate sparser::mv60538)
 (:var sparser::mv60537 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60538 :isa sparser::transcription-factor :controlled-gene sparser::mv60543
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv60543 :isa sparser::gene :expresses sparser::mv60539 :raw-text "gene")
 (:var sparser::mv60539 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
221: "Is STAT3 one of the regulators of the c-fos gene?"

                    source-start
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    question-mark
                    end-of-source
("Is STAT3 one of the regulators of the c-fos gene?"
 (:var sparser::mv60564 :isa sparser::polar-question :statement sparser::mv60548)
 (:var sparser::mv60548 :isa sparser::be :subject sparser::mv60546 :predicate sparser::mv60563)
 (:var sparser::mv60546 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60563 :isa sparser::regulator :plural t :quantifier sparser::mv60551 :theme
  sparser::mv60558 :has-determiner "THE" :raw-text "regulators")
 (:var sparser::mv60551 :isa number :value 1)
 (:var sparser::mv60558 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv60547
  :raw-text "gene")
 (:var sparser::mv60547 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
222: "Is Selumetinib an inhibitor of MEK1?"

                    source-start
e13   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    question-mark
                    end-of-source
("Is Selumetinib an inhibitor of MEK1?"
 (:var sparser::mv60572 :isa sparser::polar-question :statement sparser::mv60566)
 (:var sparser::mv60566 :isa sparser::be :subject sparser::mv60567 :predicate sparser::mv60569)
 (:var sparser::mv60567 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv60569 :isa sparser::inhibitor :protein sparser::mv60565 :has-determiner "AN"
  :raw-text "inhibitor")
 (:var sparser::mv60565 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    source-start
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    question-mark
                    end-of-source
("Is Vemurafenib an inhibitor for BRAF?"
 (:var sparser::mv60580 :isa sparser::polar-question :statement sparser::mv60573)
 (:var sparser::mv60573 :isa sparser::be :subject sparser::mv60574 :predicate sparser::mv60576)
 (:var sparser::mv60574 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv60576 :isa sparser::inhibitor :|target-OR-protein| sparser::mv60578
  :has-determiner "AN" :raw-text "inhibitor")
 (:var sparser::mv60578 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
224: "Is fakeprotein a kinase"

                    source-start
e8    BE            1 "Is fakeprotein a kinase" 5
                    end-of-source
("Is fakeprotein a kinase"
 (:var sparser::mv60585 :isa sparser::polar-question :statement sparser::mv60581)
 (:var sparser::mv60581 :isa sparser::be :subject sparser::mv60582 :predicate sparser::mv60584)
 (:var sparser::mv60582 :isa sparser::bio-entity :name "fakeprotein")
 (:var sparser::mv60584 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
225: "Is hmga2 a kinase"

                    source-start
e9    BE            1 "Is hmga2 a kinase" 6
                    end-of-source
("Is hmga2 a kinase"
 (:var sparser::mv60590 :isa sparser::polar-question :statement sparser::mv60587)
 (:var sparser::mv60587 :isa sparser::be :subject sparser::mv60586 :predicate sparser::mv60589)
 (:var sparser::mv60586 :isa sparser::protein :raw-text "hmga2" :uid "UP:P52926" :name
  "HMGA2_HUMAN")
 (:var sparser::mv60589 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
226: "Is stat3 an apoptotic regulator?"

                    source-start
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    question-mark
                    end-of-source
("Is stat3 an apoptotic regulator?"
 (:var sparser::mv60597 :isa sparser::polar-question :statement sparser::mv60592)
 (:var sparser::mv60592 :isa sparser::be :subject sparser::mv60591 :predicate sparser::mv60596)
 (:var sparser::mv60591 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60596 :isa sparser::regulator :has-determiner "AN" :cellular-process
  sparser::mv60594 :raw-text "regulator")
 (:var sparser::mv60594 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    source-start
e15   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    question-mark
                    end-of-source
("Is stat3 involved in any apoptotic pathways?"
 (:var sparser::mv60610 :isa sparser::polar-question :statement sparser::mv60600)
 (:var sparser::mv60600 :isa sparser::involve :object sparser::mv60598 :|context-OR-theme|
  sparser::mv60608 :past "PAST")
 (:var sparser::mv60598 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60608 :isa sparser::pathway :plural t :quantifier sparser::mv60602
  :cellular-process sparser::mv60603 :raw-text "pathways")
 (:var sparser::mv60602 :isa sparser::any :word "any")
 (:var sparser::mv60603 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    source-start
e13   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    question-mark
                    end-of-source
("Is stat3 involved in apoptotic regulation?"
 (:var sparser::mv60619 :isa sparser::polar-question :statement sparser::mv60613)
 (:var sparser::mv60613 :isa sparser::involve :object sparser::mv60611 :theme sparser::mv60617
  :past "PAST")
 (:var sparser::mv60611 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60617 :isa sparser::regulate :cellular-process sparser::mv60615 :raw-text
  "regulation")
 (:var sparser::mv60615 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    source-start
e12   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    question-mark
                    end-of-source
("Is stat3 involved in regulating apoptosis?"
 (:var sparser::mv60627 :isa sparser::polar-question :statement sparser::mv60622)
 (:var sparser::mv60622 :isa sparser::involve :object sparser::mv60620 :theme sparser::mv60624
  :past "PAST")
 (:var sparser::mv60620 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60624 :isa sparser::regulate :affected-process sparser::mv60625 :progressive
  "PROGRESSIVE" :raw-text "regulating")
 (:var sparser::mv60625 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    source-start
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    question-mark
                    end-of-source
("What proteins does MEK phosphorylate?"
 (:var sparser::mv60633 :isa sparser::phosphorylate :substrate sparser::mv60634 :agent
  sparser::mv60632 :present "PRESENT" :raw-text "phosphorylate")
 (:var sparser::mv60634 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv60632 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK"))

___________________
231: "Is the first one a kinase"

                    source-start
e15   BE            1 "Is the first one a kinase" 7
                    end-of-source
("Is the first one a kinase"
 (:var sparser::mv60644 :isa sparser::polar-question :statement sparser::mv60635)
 (:var sparser::mv60635 :isa sparser::be :subject sparser::mv60643 :predicate sparser::mv60642)
 (:var sparser::mv60643 :isa sparser::indefinite-pronoun :has-determiner "THE" :ordinal
  sparser::mv60640 :word "one")
 (:var sparser::mv60640 :isa number :value 1)
 (:var sparser::mv60642 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
232: "Is there a drug that targets BRAF?"

                    source-start
e19   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    question-mark
                    end-of-source
("Is there a drug that targets BRAF?"
 (:var sparser::mv60656 :isa sparser::polar-question :statement sparser::mv60655)
 (:var sparser::mv60655 :isa sparser::there-exists :value sparser::mv60649 :predicate
  sparser::mv60646)
 (:var sparser::mv60649 :isa sparser::drug :predication sparser::mv60653 :has-determiner "A"
  :raw-text "drug")
 (:var sparser::mv60653 :isa sparser::target :agent sparser::mv60649 :that-rel t :object
  sparser::mv60654 :present "PRESENT" :raw-text "targets")
 (:var sparser::mv60654 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv60646 :isa sparser::syntactic-there))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    source-start
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    question-mark
                    end-of-source
("Is there an apoptotic pathway regulated by stat3?"
 (:var sparser::mv60669 :isa sparser::polar-question :statement sparser::mv60667)
 (:var sparser::mv60667 :isa sparser::there-exists :value sparser::mv60664 :predicate
  sparser::mv60659)
 (:var sparser::mv60664 :isa sparser::pathway :predication sparser::mv60665 :has-determiner "AN"
  :cellular-process sparser::mv60662 :raw-text "pathway")
 (:var sparser::mv60665 :isa sparser::regulate :affected-process sparser::mv60664 :agent
  sparser::mv60657 :past "PAST" :raw-text "regulated")
 (:var sparser::mv60657 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60662 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv60659 :isa sparser::syntactic-there))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    source-start
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    question-mark
                    end-of-source
("Is there an apoptotic pathway that is regulated by stat3?"
 (:var sparser::mv60685 :isa sparser::polar-question :statement sparser::mv60682)
 (:var sparser::mv60682 :isa sparser::there-exists :value sparser::mv60677 :predicate
  sparser::mv60672)
 (:var sparser::mv60677 :isa sparser::pathway :predication sparser::mv60683 :has-determiner "AN"
  :cellular-process sparser::mv60675 :raw-text "pathway")
 (:var sparser::mv60683 :isa sparser::regulate :affected-process sparser::mv60677 :that-rel t
  :agent sparser::mv60670 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv60670 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60675 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv60672 :isa sparser::syntactic-there))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    source-start
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    end-of-source
("Let me know if there are any apoptotic genes stat3 regulates"
 (:var sparser::mv60687 :isa let :complement sparser::mv60705 :present "PRESENT")
 (:var sparser::mv60705 :isa sparser::know :agent sparser::mv60688 :statement sparser::mv60704
  :present "PRESENT")
 (:var sparser::mv60688 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv60704 :isa sparser::wh-question :statement sparser::mv60700 :wh if)
 (:var sparser::mv60700 :isa sparser::there-exists :value sparser::mv60703 :predicate
  sparser::mv60693)
 (:var sparser::mv60703 :isa sparser::gene :plural t :predication sparser::mv60699 :quantifier
  sparser::mv60694 :cellular-process sparser::mv60695 :raw-text "genes")
 (:var sparser::mv60699 :isa sparser::regulate :object sparser::mv60703 :agent sparser::mv60686
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv60686 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60694 :isa sparser::any :word "any")
 (:var sparser::mv60695 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv60693 :isa sparser::be))

___________________
236: "Let me know which genes stat3 regulates"

                    source-start
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    end-of-source
("Let me know which genes stat3 regulates"
 (:var sparser::mv60707 :isa let :complement sparser::mv60716 :present "PRESENT")
 (:var sparser::mv60716 :isa sparser::know :agent sparser::mv60708 :statement sparser::mv60715
  :present "PRESENT")
 (:var sparser::mv60708 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv60715 :isa sparser::gene :plural t :predication sparser::mv60713 :has-determiner
  "WHICH" :raw-text "genes")
 (:var sparser::mv60713 :isa sparser::regulate :object sparser::mv60715 :agent sparser::mv60706
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv60706 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    source-start
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    question-mark
                    end-of-source
("List all the genes regulated by elk1 and srf?"
 (:var sparser::mv60718 :isa list :theme sparser::mv60729 :present "PRESENT")
 (:var sparser::mv60729 :isa sparser::gene :plural t :predication sparser::mv60723 :quantifier
  sparser::mv60719 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv60723 :isa sparser::regulate :object sparser::mv60729 :agent sparser::mv60727
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv60727 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv60717 sparser::mv60726))
 (:var sparser::mv60717 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv60726 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60719 :isa sparser::all :word "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    source-start
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    end-of-source
("List genes regulated by elk1 and srf"
 (:var sparser::mv60733 :isa list :theme sparser::mv60735 :present "PRESENT")
 (:var sparser::mv60735 :isa sparser::gene :plural t :predication sparser::mv60736 :raw-text
  "genes")
 (:var sparser::mv60736 :isa sparser::regulate :object sparser::mv60735 :agent sparser::mv60740
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv60740 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv60732 sparser::mv60739))
 (:var sparser::mv60732 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv60739 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    source-start
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    end-of-source
("List some genes that are regulated by elk1 and srf"
 (:var sparser::mv60744 :isa list :theme sparser::mv60758 :present "PRESENT")
 (:var sparser::mv60758 :isa sparser::gene :plural t :predication sparser::mv60756 :quantifier
  sparser::mv60745 :raw-text "genes")
 (:var sparser::mv60756 :isa sparser::regulate :object sparser::mv60758 :that-rel t :agent
  sparser::mv60754 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv60754 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv60743 sparser::mv60753))
 (:var sparser::mv60743 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv60753 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60745 :isa some :word "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    source-start
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    period
                    end-of-source
("List the evidence that kras decreases frizzled8."
 (:var sparser::mv60760 :isa list :theme sparser::mv60766 :present "PRESENT")
 (:var sparser::mv60766 :isa sparser::evidence :statement sparser::mv60765 :has-determiner "THE")
 (:var sparser::mv60765 :isa sparser::decrease :agent sparser::mv60764 :object sparser::mv60759
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv60764 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv60759 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    source-start
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    end-of-source
("Name genes regulated by elk1 and srf"
 (:var sparser::mv60768 :isa sparser::name-something :patient sparser::mv60772 :present "PRESENT")
 (:var sparser::mv60772 :isa sparser::gene :plural t :predication sparser::mv60773 :raw-text
  "genes")
 (:var sparser::mv60773 :isa sparser::regulate :object sparser::mv60772 :agent sparser::mv60777
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv60777 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv60767 sparser::mv60776))
 (:var sparser::mv60767 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv60776 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    source-start
e34   COPULAR-PREDICATION 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    question-mark
                    end-of-source
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:var sparser::mv60798 :isa sparser::copular-predication :item sparser::mv60801 :value
  sparser::mv60791 :predicate sparser::mv60790)
 (:var sparser::mv60801 :isa sparser::gene :plural t :has-determiner "WHICH" :predication
  sparser::mv60787 :has-determiner "THE" :cellular-process sparser::mv60783 :raw-text "genes")
 (:var sparser::mv60787 :isa sparser::regulate :object sparser::mv60801 :agent sparser::mv60780
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv60780 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60783 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv60791 :isa sparser::active :organ sparser::mv60794)
 (:var sparser::mv60794 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv60790 :isa sparser::be :present "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    source-start
e31   COPULAR-PREDICATION 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    question-mark
                    end-of-source
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:var sparser::mv60820 :isa sparser::copular-predication :item sparser::mv60822 :value
  sparser::mv60813 :predicate sparser::mv60812)
 (:var sparser::mv60822 :isa sparser::gene :plural t :has-determiner "WHICH" :predication
  sparser::mv60810 :has-determiner "THE" :cellular-process sparser::mv60806 :raw-text "genes")
 (:var sparser::mv60810 :isa sparser::regulate :object sparser::mv60822 :agent sparser::mv60803
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv60803 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60806 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv60813 :isa sparser::active :organ sparser::mv60816)
 (:var sparser::mv60816 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv60812 :isa sparser::be :present "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    source-start
e29   COPULAR-PREDICATION 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    question-mark
                    end-of-source
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:var sparser::mv60838 :isa sparser::copular-predication :item sparser::mv60841 :value
  sparser::mv60835 :predicate sparser::mv60834)
 (:var sparser::mv60841 :isa sparser::gene :plural t :has-determiner "WHICH" :predication
  sparser::mv60829 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv60829 :isa sparser::regulate :object sparser::mv60841 :agent sparser::mv60824
  :organ sparser::mv60832 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv60824 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60832 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv60835 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv60834 :isa sparser::be :present "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    source-start
e23   COPULAR-PREDICATION 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    question-mark
                    end-of-source
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:var sparser::mv60856 :isa sparser::copular-predication :item sparser::mv60858 :value
  sparser::mv60852 :predicate sparser::mv60851)
 (:var sparser::mv60858 :isa sparser::gene :plural t :has-determiner "WHICH" :predication
  sparser::mv60849 :has-determiner "THE" :non-cellular-location sparser::mv60846 :raw-text "genes")
 (:var sparser::mv60849 :isa sparser::regulate :object sparser::mv60858 :agent sparser::mv60843
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv60843 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60846 :isa sparser::liver)
 (:var sparser::mv60852 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv60851 :isa sparser::be :present "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    source-start
e23   COPULAR-PREDICATION 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    question-mark
                    end-of-source
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:var sparser::mv60873 :isa sparser::copular-predication :item sparser::mv60875 :value
  sparser::mv60869 :predicate sparser::mv60868)
 (:var sparser::mv60875 :isa sparser::gene :plural t :has-determiner "WHICH" :predication
  sparser::mv60866 :has-determiner "THE" :non-cellular-location sparser::mv60863 :raw-text "genes")
 (:var sparser::mv60866 :isa sparser::regulate :object sparser::mv60875 :agent sparser::mv60860
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv60860 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv60863 :isa sparser::liver)
 (:var sparser::mv60869 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv60868 :isa sparser::be :present "PRESENT"))

___________________
247: "Please find pathways involving SRF"

                    source-start
e8    BIO-FIND      1 "Please find pathways involving SRF" 6
                    end-of-source
("Please find pathways involving SRF"
 (:var sparser::mv60879 :isa sparser::bio-find :object sparser::mv60881 :present "PRESENT" :adverb
  sparser::mv60877 :raw-text "find")
 (:var sparser::mv60881 :isa sparser::pathway :plural t :predication sparser::mv60882 :raw-text
  "pathways")
 (:var sparser::mv60882 :isa sparser::involve :theme sparser::mv60881 :object sparser::mv60883
  :progressive "PROGRESSIVE")
 (:var sparser::mv60883 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60877 :isa sparser::please :name "please"))

___________________
248: "Please show me KEGG pathways involving SRF"

                    source-start
e13   SHOW          1 "Please show me KEGG pathways involving SRF" 8
                    end-of-source
("Please show me KEGG pathways involving SRF"
 (:var sparser::mv60886 :isa sparser::show :|statement-OR-theme| sparser::mv60894 :beneficiary
  sparser::mv60887 :present "PRESENT" :adverb sparser::mv60885)
 (:var sparser::mv60894 :isa sparser::pathway :plural t :predication sparser::mv60891 :modifier
  sparser::mv60888 :raw-text "pathways")
 (:var sparser::mv60891 :isa sparser::involve :theme sparser::mv60894 :object sparser::mv60892
  :progressive "PROGRESSIVE")
 (:var sparser::mv60892 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60888 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv60887 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv60885 :isa sparser::please :name "please"))

___________________
249: "Please show me pathways involving SRF"

                    source-start
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    end-of-source
("Please show me pathways involving SRF"
 (:var sparser::mv60896 :isa sparser::show :|statement-OR-theme| sparser::mv60902 :beneficiary
  sparser::mv60897 :present "PRESENT" :adverb sparser::mv60895)
 (:var sparser::mv60902 :isa sparser::pathway :plural t :predication sparser::mv60900 :raw-text
  "pathways")
 (:var sparser::mv60900 :isa sparser::involve :theme sparser::mv60902 :object sparser::mv60901
  :progressive "PROGRESSIVE")
 (:var sparser::mv60901 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60897 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv60895 :isa sparser::please :name "please"))

___________________
250: "MEK activates ERK"

                    source-start
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    end-of-source
("MEK activates ERK"
 (:var sparser::mv60904 :isa sparser::bio-activate :agent sparser::mv60903 :object sparser::mv60905
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv60903 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv60905 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
251: "Remove the fact that MEK activates ERK"

                    source-start
e14   REMOVE        1 "Remove the fact that MEK activates ERK" 8
                    end-of-source
("Remove the fact that MEK activates ERK"
 (:var sparser::mv60906 :isa remove :object sparser::mv60913 :present "PRESENT" :raw-text "Remove")
 (:var sparser::mv60913 :isa sparser::fact :statement sparser::mv60911 :has-determiner "THE")
 (:var sparser::mv60911 :isa sparser::bio-activate :agent sparser::mv60910 :object sparser::mv60912
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv60910 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv60912 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
252: "Inactive MEK activates ERK"

                    source-start
e6    BIO-ACTIVATE  1 "Inactive MEK activates ERK" 5
                    end-of-source
("Inactive MEK activates ERK"
 (:var sparser::mv60916 :isa sparser::bio-activate :agent sparser::mv60915 :object sparser::mv60917
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv60915 :isa sparser::protein-family :predication sparser::mv60914 :raw-text "MEK"
  :name "MEK" :count 2 :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv60914 :isa sparser::inactive)
 (:var sparser::mv60917 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
253: "Remove the fact that inactive MEK activates ERK"

                    source-start
e16   REMOVE        1 "Remove the fact that inactive MEK activates ERK" 9
                    end-of-source
("Remove the fact that inactive MEK activates ERK"
 (:var sparser::mv60918 :isa remove :object sparser::mv60926 :present "PRESENT" :raw-text "Remove")
 (:var sparser::mv60926 :isa sparser::fact :statement sparser::mv60924 :has-determiner "THE")
 (:var sparser::mv60924 :isa sparser::bio-activate :agent sparser::mv60923 :object sparser::mv60925
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv60923 :isa sparser::protein-family :predication sparser::mv60922 :raw-text "MEK"
  :name "MEK" :count 2 :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv60922 :isa sparser::inactive)
 (:var sparser::mv60925 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
254: "Show immune system pathways"

                    source-start
e5    SHOW          1 "Show immune system pathways" 5
                    end-of-source
("Show immune system pathways"
 (:var sparser::mv60928 :isa sparser::show :|statement-OR-theme| sparser::mv60931 :present
  "PRESENT")
 (:var sparser::mv60931 :isa sparser::pathway :plural t :non-cellular-location sparser::mv60927
  :raw-text "pathways")
 (:var sparser::mv60927 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    source-start
e9    SHOW          1 "Show me pathways involving SRF" 6
                    end-of-source
("Show me pathways involving SRF"
 (:var sparser::mv60932 :isa sparser::show :|statement-OR-theme| sparser::mv60938 :beneficiary
  sparser::mv60933 :present "PRESENT")
 (:var sparser::mv60938 :isa sparser::pathway :plural t :predication sparser::mv60936 :raw-text
  "pathways")
 (:var sparser::mv60936 :isa sparser::involve :theme sparser::mv60938 :object sparser::mv60937
  :progressive "PROGRESSIVE")
 (:var sparser::mv60937 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60933 :isa sparser::interlocutor :name "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    source-start
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    end-of-source
("Show me pathways with SRF in them"
 (:var sparser::mv60939 :isa sparser::show :|statement-OR-theme| sparser::mv60949 :beneficiary
  sparser::mv60940 :present "PRESENT")
 (:var sparser::mv60949 :isa sparser::pathway :plural t :pathwaycomponent sparser::mv60944
  :raw-text "pathways")
 (:var sparser::mv60944 :isa sparser::protein
  :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway-OR-in-family|
  sparser::mv60946 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60946 :isa sparser::pronoun/plural :word "them")
 (:var sparser::mv60940 :isa sparser::interlocutor :name "speaker"))

___________________
257: "Show me pathways with SRF"

                    source-start
e8    SHOW          1 "Show me pathways with SRF" 6
                    end-of-source
("Show me pathways with SRF"
 (:var sparser::mv60950 :isa sparser::show :|statement-OR-theme| sparser::mv60957 :beneficiary
  sparser::mv60951 :present "PRESENT")
 (:var sparser::mv60957 :isa sparser::pathway :plural t :pathwaycomponent sparser::mv60955
  :raw-text "pathways")
 (:var sparser::mv60955 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv60951 :isa sparser::interlocutor :name "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    source-start
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    period
                    end-of-source
("Show me the evidence that kras decreases frizzled8."
 (:var sparser::mv60959 :isa sparser::show :|statement-OR-theme| sparser::mv60966 :beneficiary
  sparser::mv60960 :present "PRESENT")
 (:var sparser::mv60966 :isa sparser::evidence :statement sparser::mv60965 :has-determiner "THE")
 (:var sparser::mv60965 :isa sparser::decrease :agent sparser::mv60964 :object sparser::mv60958
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv60964 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv60958 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv60960 :isa sparser::interlocutor :name "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    source-start
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    question-mark
                    end-of-source
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:var sparser::mv60968 :isa sparser::show :|statement-OR-theme| sparser::mv60979 :beneficiary
  sparser::mv60969 :present "PRESENT")
 (:var sparser::mv60979 :isa sparser::evidence :statement sparser::mv60974 :has-determiner "THE")
 (:var sparser::mv60974 :isa sparser::decrease :agent sparser::mv60973
  :|affected-process-OR-object| sparser::mv60976 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv60973 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv60976 :isa sparser::bio-amount :measured-item sparser::mv60967 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv60967 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv60969 :isa sparser::interlocutor :name "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    source-start
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    question-mark
                    end-of-source
("Show me the evidence that kras regulates frizzled8?"
 (:var sparser::mv60981 :isa sparser::show :|statement-OR-theme| sparser::mv60988 :beneficiary
  sparser::mv60982 :present "PRESENT")
 (:var sparser::mv60988 :isa sparser::evidence :statement sparser::mv60987 :has-determiner "THE")
 (:var sparser::mv60987 :isa sparser::regulate :agent sparser::mv60986 :object sparser::mv60980
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv60986 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv60980 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv60982 :isa sparser::interlocutor :name "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    source-start
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    end-of-source
("Show transcription factors shared by elk1 and srf"
 (:var sparser::mv60992 :isa sparser::show :|statement-OR-theme| sparser::mv60990 :present
  "PRESENT")
 (:var sparser::mv60990 :isa sparser::transcription-factor :plural t :predication sparser::mv60993
  :raw-text "transcription factors")
 (:var sparser::mv60993 :isa sparser::share :object sparser::mv60990 :participant sparser::mv60997
  :past "PAST" :raw-text "shared")
 (:var sparser::mv60997 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv60991 sparser::mv60996))
 (:var sparser::mv60991 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv60996 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
262: "Tell me how stat3 regulates apoptosis"

                    source-start
e10   TELL          1 "Tell me " 3
e9    REGULATE      3 "how stat3 regulates apoptosis" 8
                    end-of-source
                    source-start
e10   VG            1 "Tell me " 3
e9    HOWCOMP       3 "how stat3 regulates apoptosis" 8
                    end-of-source


___________________
263: "Tell me what apoptotic pathways are regulated by stat3 in the liver"

                    source-start
e27   TELL          1 "Tell me what apoptotic pathways are regulated by stat3 in the liver" 14
                    end-of-source
("Tell me what apoptotic pathways are regulated by stat3 in the liver"
 (:var sparser::mv61008 :isa sparser::tell :theme sparser::mv61029 :beneficiary sparser::mv61009
  :present "PRESENT")
 (:var sparser::mv61029 :isa sparser::pathway :plural t :predication sparser::mv61027
  :has-determiner "WHAT" :cellular-process sparser::mv61011 :raw-text "pathways")
 (:var sparser::mv61027 :isa sparser::regulate :wh-element sparser::mv61022 :wh-path nil :raw-text
  "regulated" :present "PRESENT" :agent sparser::mv61007 :affected-process sparser::mv61022)
 (:var sparser::mv61022 :isa sparser::pathway :plural t :has-determiner "WHAT" :cellular-process
  sparser::mv61011 :raw-text "pathways")
 (:var sparser::mv61011 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv61007 :isa sparser::protein :organ sparser::mv61020 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv61020 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv61009 :isa sparser::interlocutor :name "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    source-start
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    end-of-source
("Tell me what genes elk1 and srf regulate"
 (:var sparser::mv61031 :isa sparser::tell :theme sparser::mv61041 :beneficiary sparser::mv61032
  :present "PRESENT")
 (:var sparser::mv61041 :isa sparser::gene :plural t :predication sparser::mv61038 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv61038 :isa sparser::regulate :object sparser::mv61041 :agent sparser::mv61039
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61039 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv61030 sparser::mv61037))
 (:var sparser::mv61030 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv61037 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv61032 :isa sparser::interlocutor :name "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    source-start
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    end-of-source
("Tell me what pathways are regulated by stat3 in the liver"
 (:var sparser::mv61043 :isa sparser::tell :theme sparser::mv61061 :beneficiary sparser::mv61044
  :present "PRESENT")
 (:var sparser::mv61061 :isa sparser::pathway :plural t :predication sparser::mv61059
  :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv61059 :isa sparser::regulate :wh-element sparser::mv61054 :wh-path nil :raw-text
  "regulated" :present "PRESENT" :agent sparser::mv61042 :affected-process sparser::mv61054)
 (:var sparser::mv61054 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv61042 :isa sparser::protein :organ sparser::mv61053 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv61053 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv61044 :isa sparser::interlocutor :name "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    source-start
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    question-mark
                    end-of-source
("What KEGG pathways involve immune signaling?"
 (:var sparser::mv61066 :isa sparser::involve :theme sparser::mv61070 :object sparser::mv61068
  :present "PRESENT")
 (:var sparser::mv61070 :isa sparser::pathway :plural t :has-determiner "WHAT" :modifier
  sparser::mv61063 :raw-text "pathways")
 (:var sparser::mv61063 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv61068 :isa signal :modifier sparser::mv61067 :raw-text "signaling")
 (:var sparser::mv61067 :isa sparser::immune :name "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    source-start
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    question-mark
                    end-of-source
("What MAP kinase phosphatases are regulated by ELK1?"
 (:var sparser::mv61081 :isa sparser::regulate :object sparser::mv61080 :agent sparser::mv61072
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv61080 :isa sparser::phosphatase :plural t :has-determiner "WHAT" :enzyme
  sparser::mv61071 :raw-text "phosphatases")
 (:var sparser::mv61071 :isa sparser::protein-family :raw-text "MAP kinase" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv61072 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    source-start
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    question-mark
                    end-of-source
("What apoptotic genes are downstream of stat3?"
 (:var sparser::mv61089 :isa sparser::be :subject sparser::mv61094 :predicate sparser::mv61090
  :present "PRESENT")
 (:var sparser::mv61094 :isa sparser::gene :plural t :has-determiner "WHAT" :cellular-process
  sparser::mv61085 :raw-text "genes")
 (:var sparser::mv61085 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv61090 :isa sparser::downstream-segment :pathwaycomponent sparser::mv61083
  :raw-text "downstream")
 (:var sparser::mv61083 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    source-start
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    question-mark
                    end-of-source
("What apoptotic genes does stat3 regulate in the liver?"
 (:var sparser::mv61103 :isa sparser::regulate :object sparser::mv61108 :agent sparser::mv61096
  :organ sparser::mv61106 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61108 :isa sparser::gene :plural t :has-determiner "WHAT" :cellular-process
  sparser::mv61098 :raw-text "genes")
 (:var sparser::mv61098 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv61096 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv61106 :isa sparser::liver :has-determiner "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    source-start
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    question-mark
                    end-of-source
("What apoptotic genes does stat3 regulate?"
 (:var sparser::mv61117 :isa sparser::regulate :object sparser::mv61119 :agent sparser::mv61110
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61119 :isa sparser::gene :plural t :has-determiner "WHAT" :cellular-process
  sparser::mv61112 :raw-text "genes")
 (:var sparser::mv61112 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv61110 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    source-start
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    question-mark
                    end-of-source
("What apoptotic genes is stat3 upstream of?"
 (:var sparser::mv61126 :isa sparser::be :subject sparser::mv61131 :predicate sparser::mv61127
  :present "PRESENT")
 (:var sparser::mv61131 :isa sparser::gene :plural t :has-determiner "WHAT" :cellular-process
  sparser::mv61122 :raw-text "genes")
 (:var sparser::mv61122 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv61127 :isa sparser::upstream-segment :pathwaycomponent sparser::mv61131 :modifier
  sparser::mv61120 :raw-text "upstream")
 (:var sparser::mv61120 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    source-start
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    question-mark
                    end-of-source
("What apoptotic pathways involve stat3?"
 (:var sparser::mv61138 :isa sparser::involve :theme sparser::mv61140 :object sparser::mv61132
  :present "PRESENT")
 (:var sparser::mv61140 :isa sparser::pathway :plural t :has-determiner "WHAT" :cellular-process
  sparser::mv61134 :raw-text "pathways")
 (:var sparser::mv61134 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv61132 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    source-start
e9    BE            1 "What are Selumetinib's targets" 7
                    question-mark
                    end-of-source
("What are Selumetinib's targets?"
 (:var sparser::mv61142 :isa sparser::be :subject sparser::mv61141 :predicate sparser::mv61148
  :present "PRESENT")
 (:var sparser::mv61141 :isa sparser::what)
 (:var sparser::mv61148 :isa sparser::target-protein :plural t :treatment sparser::mv61144
  :raw-text "targets")
 (:var sparser::mv61144 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
274: "What are some JAK1 inhibitors?"

                    source-start
e9    BE            1 "What are some JAK1 inhibitors" 7
                    question-mark
                    end-of-source
("What are some JAK1 inhibitors?"
 (:var sparser::mv61151 :isa sparser::be :subject sparser::mv61150 :predicate sparser::mv61156
  :present "PRESENT")
 (:var sparser::mv61150 :isa sparser::what)
 (:var sparser::mv61156 :isa sparser::inhibitor :plural t :quantifier sparser::mv61152 :protein
  sparser::mv61149 :raw-text "inhibitors")
 (:var sparser::mv61152 :isa some :word "some")
 (:var sparser::mv61149 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    source-start
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    question-mark
                    end-of-source
("What are some drugs that inhibit BRAF?"
 (:var sparser::mv61158 :isa sparser::be :subject sparser::mv61157 :predicate sparser::mv61166
  :present "PRESENT")
 (:var sparser::mv61157 :isa sparser::what)
 (:var sparser::mv61166 :isa sparser::drug :plural t :predication sparser::mv61163 :quantifier
  sparser::mv61159 :raw-text "drugs")
 (:var sparser::mv61163 :isa sparser::inhibit :agent sparser::mv61166 :that-rel t :object
  sparser::mv61164 :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv61164 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv61159 :isa some :word "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    source-start
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("What are some genes in the MAPK signaling pathway?"
 (:var sparser::mv61169 :isa sparser::be :subject sparser::mv61168 :predicate sparser::mv61178
  :present "PRESENT")
 (:var sparser::mv61168 :isa sparser::what)
 (:var sparser::mv61178 :isa sparser::gene :plural t :context sparser::mv61167 :quantifier
  sparser::mv61170 :raw-text "genes")
 (:var sparser::mv61167 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv61175 :raw-text "signaling pathway")
 (:var sparser::mv61175 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv61170 :isa some :word "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    source-start
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("What are some proteins in the MAPK signaling pathway?"
 (:var sparser::mv61181 :isa sparser::be :subject sparser::mv61180 :predicate sparser::mv61190
  :present "PRESENT")
 (:var sparser::mv61180 :isa sparser::what)
 (:var sparser::mv61190 :isa sparser::protein :plural t :in-pathway sparser::mv61179 :quantifier
  sparser::mv61182 :raw-text "proteins")
 (:var sparser::mv61179 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv61187 :raw-text "signaling pathway")
 (:var sparser::mv61187 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv61182 :isa some :word "some"))

___________________
278: "What are the members of RAS?"

                    source-start
e12   BE            1 "What are the members of RAS" 7
                    question-mark
                    end-of-source
("What are the members of RAS?"
 (:var sparser::mv61192 :isa sparser::be :subject sparser::mv61191 :predicate sparser::mv61200
  :present "PRESENT")
 (:var sparser::mv61191 :isa sparser::what)
 (:var sparser::mv61200 :isa member :plural t :set sparser::mv61197 :has-determiner "THE")
 (:var sparser::mv61197 :isa sparser::protein-family :raw-text "RAS" :name "Ras" :count 3
  :family-members
  ((sparser::protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
   (sparser::protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
   (sparser::protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
  :uid "FA:03663"))

___________________
279: "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    source-start
e28   BE            1 "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 20
                    question-mark
                    end-of-source
("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:var sparser::mv61205 :isa sparser::be :subject sparser::mv61204 :predicate sparser::mv61216
  :present "PRESENT")
 (:var sparser::mv61204 :isa sparser::what)
 (:var sparser::mv61216 :isa sparser::micro-rna :plural t :predication sparser::mv61210
  :has-determiner "THE" :raw-text "miRNAS")
 (:var sparser::mv61210 :isa sparser::regulate :agent sparser::mv61216 :that-rel t :object
  sparser::mv61214 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61214 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv61211 sparser::mv61212 sparser::mv61201 sparser::mv61202 sparser::mv61203))
 (:var sparser::mv61211 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv61212 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv61201 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv61202 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv61203 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    source-start
e18   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    end-of-source
("What are the regulators of MAPPK14 in bladder"
 (:var sparser::mv61219 :isa sparser::be :subject sparser::mv61218 :predicate sparser::mv61229
  :present "PRESENT")
 (:var sparser::mv61218 :isa sparser::what)
 (:var sparser::mv61229 :isa sparser::regulator :plural t :theme sparser::mv61217 :has-determiner
  "THE" :raw-text "regulators")
 (:var sparser::mv61217 :isa sparser::bio-entity :organ sparser::mv61225 :name "MAPPK14")
 (:var sparser::mv61225 :isa sparser::bio-organ :name "bladder" :uid "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    source-start
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    question-mark
                    end-of-source
("What are the regulators of SMURF2 in liver?"
 (:var sparser::mv61232 :isa sparser::be :subject sparser::mv61231 :predicate sparser::mv61242
  :present "PRESENT")
 (:var sparser::mv61231 :isa sparser::what)
 (:var sparser::mv61242 :isa sparser::regulator :plural t :theme sparser::mv61230 :has-determiner
  "THE" :raw-text "regulators")
 (:var sparser::mv61230 :isa sparser::protein :organ sparser::mv61238 :raw-text "SMURF2" :uid
  "UP:Q9HAU4" :name "SMUF2_HUMAN")
 (:var sparser::mv61238 :isa sparser::liver))

___________________
282: "What are the regulators of SMURF2?"

                    source-start
e13   BE            1 "What are the regulators of SMURF2" 8
                    question-mark
                    end-of-source
("What are the regulators of SMURF2?"
 (:var sparser::mv61245 :isa sparser::be :subject sparser::mv61244 :predicate sparser::mv61252
  :present "PRESENT")
 (:var sparser::mv61244 :isa sparser::what)
 (:var sparser::mv61252 :isa sparser::regulator :plural t :theme sparser::mv61243 :has-determiner
  "THE" :raw-text "regulators")
 (:var sparser::mv61243 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    source-start
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    question-mark
                    end-of-source
("What are the regulators of c-fos in lung?"
 (:var sparser::mv61255 :isa sparser::be :subject sparser::mv61254 :predicate sparser::mv61265
  :present "PRESENT")
 (:var sparser::mv61254 :isa sparser::what)
 (:var sparser::mv61265 :isa sparser::regulator :plural t :theme sparser::mv61253 :has-determiner
  "THE" :raw-text "regulators")
 (:var sparser::mv61253 :isa sparser::protein :organ sparser::mv61261 :raw-text "c-fos" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv61261 :isa sparser::lung))

___________________
284: "What are the regulators of mapk14 in bladeeer"

                    source-start
e17   BE            1 "What are the regulators of mapk14 " 8
e13   IN            8 "in bladeeer" 10
                    end-of-source
                    source-start
e17   S             1 "What are the regulators of mapk14 " 8
e13   PP            8 "in bladeeer" 10
                    end-of-source


___________________
285: "What are the regulators of mapk14"

                    source-start
e13   BE            1 "What are the regulators of mapk14" 8
                    end-of-source
("What are the regulators of mapk14"
 (:var sparser::mv61281 :isa sparser::be :subject sparser::mv61280 :predicate sparser::mv61288
  :present "PRESENT")
 (:var sparser::mv61280 :isa sparser::what)
 (:var sparser::mv61288 :isa sparser::regulator :plural t :theme sparser::mv61279 :has-determiner
  "THE" :raw-text "regulators")
 (:var sparser::mv61279 :isa sparser::protein :raw-text "mapk14" :uid "UP:Q16539" :name
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    source-start
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    question-mark
                    end-of-source
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:var sparser::mv61308 :isa sparser::copular-predication :item sparser::mv61293 :value
  sparser::mv61291 :predicate sparser::mv61294)
 (:var sparser::mv61293 :isa sparser::what)
 (:var sparser::mv61291 :isa sparser::in-common :theme sparser::mv61306)
 (:var sparser::mv61306 :isa sparser::gene :plural t :has-determiner "THE" :expresses
  sparser::mv61303 :raw-text "genes")
 (:var sparser::mv61303 :isa sparser::collection :raw-text "SRF, HRAS, and elk1" :type
  sparser::protein :number 3 :items (sparser::mv61298 sparser::mv61299 sparser::mv61292))
 (:var sparser::mv61298 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv61299 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv61292 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv61294 :isa sparser::be :predicate sparser::mv61304 :present "PRESENT")
 (:var sparser::mv61304 :isa sparser::transcription-factor :plural t :has-determiner "THE"
  :raw-text "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    source-start
e20   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    question-mark
                    end-of-source
("What are the transcription factors that regulate EELK1 and SRF?"
 (:var sparser::mv61313 :isa sparser::be :subject sparser::mv61312 :predicate sparser::mv61321
  :present "PRESENT")
 (:var sparser::mv61312 :isa sparser::what)
 (:var sparser::mv61321 :isa sparser::transcription-factor :plural t :predication sparser::mv61316
  :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv61316 :isa sparser::regulate :agent sparser::mv61321 :that-rel t :object
  sparser::mv61319 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61319 :isa sparser::collection :raw-text "EELK1 and SRF" :type sparser::protein
  :number 2 :items (sparser::mv61311 sparser::mv61318))
 (:var sparser::mv61311 :isa sparser::bio-entity :name "EELK1")
 (:var sparser::mv61318 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    source-start
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    question-mark
                    end-of-source
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:var sparser::mv61328 :isa sparser::be :subject sparser::mv61327 :predicate sparser::mv61337
  :present "PRESENT")
 (:var sparser::mv61327 :isa sparser::what)
 (:var sparser::mv61337 :isa sparser::transcription-factor :plural t :predication sparser::mv61331
  :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv61331 :isa sparser::regulate :agent sparser::mv61337 :that-rel t :object
  sparser::mv61335 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61335 :isa sparser::collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv61332 sparser::mv61333 sparser::mv61324 sparser::mv61325 sparser::mv61326))
 (:var sparser::mv61332 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv61333 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv61324 :isa sparser::bio-entity :name "STAAT3")
 (:var sparser::mv61325 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv61326 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    source-start
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    question-mark
                    end-of-source
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:var sparser::mv61344 :isa sparser::be :subject sparser::mv61343 :predicate sparser::mv61353
  :present "PRESENT")
 (:var sparser::mv61343 :isa sparser::what)
 (:var sparser::mv61353 :isa sparser::transcription-factor :plural t :predication sparser::mv61347
  :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv61347 :isa sparser::regulate :agent sparser::mv61353 :that-rel t :object
  sparser::mv61351 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61351 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv61348 sparser::mv61349 sparser::mv61340 sparser::mv61341 sparser::mv61342))
 (:var sparser::mv61348 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv61349 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv61340 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv61341 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv61342 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    source-start
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    question-mark
                    end-of-source
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:var sparser::mv61358 :isa sparser::be :subject sparser::mv61357 :predicate sparser::mv61371
  :present "PRESENT")
 (:var sparser::mv61357 :isa sparser::what)
 (:var sparser::mv61371 :isa sparser::regulator :plural t :theme sparser::mv61367 :has-determiner
  "THE" :context sparser::mv61360 :raw-text "regulators")
 (:var sparser::mv61367 :isa sparser::collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type
  sparser::protein :number 4 :items
  (sparser::mv61354 sparser::mv61355 sparser::mv61365 sparser::mv61356))
 (:var sparser::mv61354 :isa sparser::protein :raw-text "CCND1" :uid "UP:P24385" :name
  "CCND1_HUMAN")
 (:var sparser::mv61355 :isa sparser::protein :raw-text "FOXM1" :uid "UP:Q08050" :name
  "FOXM1_HUMAN")
 (:var sparser::mv61365 :isa sparser::protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
 (:var sparser::mv61356 :isa sparser::protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
 (:var sparser::mv61360 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    source-start
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    question-mark
                    end-of-source
("What cell cycle genes are regulated by FOS?"
 (:var sparser::mv61382 :isa sparser::regulate :object sparser::mv61381 :agent sparser::mv61379
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv61381 :isa sparser::gene :plural t :has-determiner "WHAT" :cellular-process
  sparser::mv61372 :raw-text "genes")
 (:var sparser::mv61372 :isa sparser::cellular-process :raw-text "cell cycle" :name "cell cycle"
  :uid "GO:0007049")
 (:var sparser::mv61379 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    source-start
e5    REGULATE      1 "What does ERBB regulate" 5
                    question-mark
                    end-of-source
("What does ERBB regulate?"
 (:var sparser::mv61387 :isa sparser::regulate :|affected-process-OR-object| sparser::mv61384
  :agent sparser::mv61386 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61384 :isa sparser::what)
 (:var sparser::mv61386 :isa sparser::protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    source-start
e11   REGULATE      1 "What does it regulate in liver" 7
                    end-of-source
("What does it regulate in liver"
 (:var sparser::mv61391 :isa sparser::regulate :|affected-process-OR-object| sparser::mv61388
  :|agent-OR-cause| sparser::mv61390 :organ sparser::mv61393 :present "PRESENT" :raw-text
  "regulate")
 (:var sparser::mv61388 :isa sparser::what)
 (:var sparser::mv61390 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv61393 :isa sparser::liver))

___________________
294: "What does miR-20b-5p target"

                    source-start
e7    TARGET        1 "What does miR-20b-5p target" 11
                    end-of-source
("What does miR-20b-5p target"
 (:var sparser::mv61399 :isa sparser::target :|affected-process-OR-object| sparser::mv61396 :agent
  sparser::mv61395 :present "PRESENT" :raw-text "target")
 (:var sparser::mv61396 :isa sparser::what)
 (:var sparser::mv61395 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    source-start
e6    REGULATE      1 "What does p53 regulate" 6
                    question-mark
                    end-of-source
("What does p53 regulate?"
 (:var sparser::mv61403 :isa sparser::regulate :|affected-process-OR-object| sparser::mv61401
  :agent sparser::mv61400 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61401 :isa sparser::what)
 (:var sparser::mv61400 :isa sparser::protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    source-start
e6    REGULATE      1 "What does rb1 regulate" 6
                    end-of-source
("What does rb1 regulate"
 (:var sparser::mv61407 :isa sparser::regulate :|affected-process-OR-object| sparser::mv61405
  :agent sparser::mv61404 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61405 :isa sparser::what)
 (:var sparser::mv61404 :isa sparser::protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    source-start
e6    REGULATE      1 "What does smad2 regulate" 6
                    end-of-source
("What does smad2 regulate"
 (:var sparser::mv61411 :isa sparser::regulate :|affected-process-OR-object| sparser::mv61409
  :agent sparser::mv61408 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61409 :isa sparser::what)
 (:var sparser::mv61408 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    source-start
e5    REGULATE      1 "What does stat regulate" 5
                    end-of-source
("What does stat regulate"
 (:var sparser::mv61415 :isa sparser::regulate :|affected-process-OR-object| sparser::mv61412
  :agent sparser::mv61414 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61412 :isa sparser::what)
 (:var sparser::mv61414 :isa sparser::protein :raw-text "stat" :uid "UP:P35610" :name
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    source-start
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    question-mark
                    end-of-source
("What downregulates fzd8?"
 (:var sparser::mv61418 :isa sparser::downregulate :|agent-OR-cause| sparser::mv61417 :object
  sparser::mv61416 :present "PRESENT" :raw-text "downregulates")
 (:var sparser::mv61417 :isa sparser::what)
 (:var sparser::mv61416 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    source-start
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    question-mark
                    end-of-source
("What drug could I use to target pancreatic cancer?"
 (:var sparser::mv61432 :isa sparser::bio-use :patient sparser::mv61421 :modal sparser::mv61422
  :agent sparser::mv61423 :theme sparser::mv61431 :present "PRESENT" :raw-text "use")
 (:var sparser::mv61421 :isa sparser::drug :has-determiner "WHAT" :raw-text "drug")
 (:var sparser::mv61422 :isa sparser::could)
 (:var sparser::mv61423 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv61431 :isa sparser::target :object sparser::mv61419 :raw-text "target")
 (:var sparser::mv61419 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    source-start
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    question-mark
                    end-of-source
("What drug should I use for pancreatic cancer?"
 (:var sparser::mv61444 :isa sparser::bio-use :object sparser::mv61435 :modal sparser::mv61436
  :agent sparser::mv61437 :purpose sparser::mv61433 :present "PRESENT" :raw-text "use")
 (:var sparser::mv61435 :isa sparser::drug :has-determiner "WHAT" :raw-text "drug")
 (:var sparser::mv61436 :isa sparser::should)
 (:var sparser::mv61437 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv61433 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    source-start
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    question-mark
                    end-of-source
("What drugs are inhibitors of GRB2?"
 (:var sparser::mv61449 :isa sparser::be :subject sparser::mv61453 :predicate sparser::mv61455
  :present "PRESENT")
 (:var sparser::mv61453 :isa sparser::drug :plural t :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv61455 :isa sparser::inhibitor :plural t :protein sparser::mv61445 :raw-text
  "inhibitors")
 (:var sparser::mv61445 :isa sparser::protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    source-start
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    question-mark
                    end-of-source
("What drugs inhibit MAP2K1?"
 (:var sparser::mv61460 :isa sparser::inhibit :agent sparser::mv61461 :object sparser::mv61456
  :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv61461 :isa sparser::drug :plural t :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv61456 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    source-start
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    question-mark
                    end-of-source
("What drugs regulate BRAF?"
 (:var sparser::mv61465 :isa sparser::regulate :agent sparser::mv61467 :object sparser::mv61466
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61467 :isa sparser::drug :plural t :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv61466 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    source-start
e7    TARGET        1 "What drugs target BRAF" 5
                    question-mark
                    end-of-source
("What drugs target BRAF?"
 (:var sparser::mv61472 :isa sparser::target :agent sparser::mv61474 :object sparser::mv61473
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv61474 :isa sparser::drug :plural t :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv61473 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    source-start
e13   BE            1 "What genes are downstream of stat3" 8
                    question-mark
                    end-of-source
("What genes are downstream of stat3?"
 (:var sparser::mv61479 :isa sparser::be :subject sparser::mv61483 :predicate sparser::mv61480
  :present "PRESENT")
 (:var sparser::mv61483 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61480 :isa sparser::downstream-segment :pathwaycomponent sparser::mv61475
  :raw-text "downstream")
 (:var sparser::mv61475 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    question-mark
                    end-of-source
("What genes are in the MAPK signaling pathway?"
 (:var sparser::mv61498 :isa sparser::copular-predication-of-pp :item sparser::mv61493 :value
  sparser::mv61497 :prep "IN" :predicate sparser::mv61489)
 (:var sparser::mv61493 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61497 :isa sparser::gene :plural t :context sparser::mv61485 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv61485 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv61492 :raw-text "signaling pathway")
 (:var sparser::mv61492 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv61489 :isa sparser::be :present "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    source-start
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    question-mark
                    end-of-source
("What genes are in the MAPK signaling pathways?"
 (:var sparser::mv61516 :isa sparser::copular-predication-of-pp :item sparser::mv61509 :value
  sparser::mv61515 :prep "IN" :predicate sparser::mv61505)
 (:var sparser::mv61509 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61515 :isa sparser::gene :plural t :context sparser::mv61511 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv61511 :isa sparser::signaling-pathway :plural t :has-determiner "THE" :modifier
  sparser::mv61508 :raw-text "signaling pathways")
 (:var sparser::mv61508 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv61505 :isa sparser::be :present "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    question-mark
                    end-of-source
("What genes are in the immune system pathway?"
 (:var sparser::mv61531 :isa sparser::copular-predication-of-pp :item sparser::mv61526 :value
  sparser::mv61530 :prep "IN" :predicate sparser::mv61522)
 (:var sparser::mv61526 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61530 :isa sparser::gene :plural t :context sparser::mv61525 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv61525 :isa sparser::pathway :has-determiner "THE" :non-cellular-location
  sparser::mv61518 :raw-text "pathway")
 (:var sparser::mv61518 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405")
 (:var sparser::mv61522 :isa sparser::be :present "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    question-mark
                    end-of-source
("What genes are in the prolactin signaling pathway?"
 (:var sparser::mv61546 :isa sparser::copular-predication-of-pp :item sparser::mv61541 :value
  sparser::mv61545 :prep "IN" :predicate sparser::mv61537)
 (:var sparser::mv61541 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61545 :isa sparser::gene :plural t :context sparser::mv61533 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv61533 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv61540 :raw-text "signaling pathway")
 (:var sparser::mv61540 :isa sparser::protein :raw-text "prolactin" :uid "UP:P01236" :name
  "PRL_HUMAN")
 (:var sparser::mv61537 :isa sparser::be :present "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    source-start
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    question-mark
                    end-of-source
("What genes are involved in the IL-12 pathway?"
 (:var sparser::mv61559 :isa sparser::involve :object sparser::mv61558 :|context-OR-theme|
  sparser::mv61557 :present "PRESENT")
 (:var sparser::mv61558 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61557 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv61549
  :raw-text "pathway")
 (:var sparser::mv61549 :isa sparser::protein :raw-text "IL-12" :uid "NCIT:C20514" :name
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    source-start
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    question-mark
                    end-of-source
("What genes are involved in the Prolactin pathway?"
 (:var sparser::mv61571 :isa sparser::involve :object sparser::mv61570 :|context-OR-theme|
  sparser::mv61569 :present "PRESENT")
 (:var sparser::mv61570 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61569 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv61568
  :raw-text "pathway")
 (:var sparser::mv61568 :isa sparser::protein :raw-text "Prolactin" :uid "UP:P01236" :name
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    source-start
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    question-mark
                    end-of-source
("What genes are involved in the il-12 pathway?"
 (:var sparser::mv61583 :isa sparser::involve :object sparser::mv61582 :|context-OR-theme|
  sparser::mv61581 :present "PRESENT")
 (:var sparser::mv61582 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61581 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv61573
  :raw-text "pathway")
 (:var sparser::mv61573 :isa sparser::protein-family :raw-text "il-12" :name "IL-12" :count 2
  :family-members
  ((sparser::protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
   (sparser::protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
  :uid "FPLX:IL12"))

___________________
314: "What genes are involved in the immune system pathway?"

                    source-start
e17   INVOLVE       1 "What genes are involved in the immune system pathway" 10
                    question-mark
                    end-of-source
("What genes are involved in the immune system pathway?"
 (:var sparser::mv61595 :isa sparser::involve :object sparser::mv61594 :|context-OR-theme|
  sparser::mv61593 :present "PRESENT")
 (:var sparser::mv61594 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61593 :isa sparser::pathway :has-determiner "THE" :non-cellular-location
  sparser::mv61585 :raw-text "pathway")
 (:var sparser::mv61585 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    source-start
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    question-mark
                    end-of-source
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:var sparser::mv61611 :isa sparser::regulate :object sparser::mv61610 :agent sparser::mv61609
  :present "PRESENT" :superlative sparser::mv61604 :adverb sparser::mv61605 :raw-text "regulated")
 (:var sparser::mv61610 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61609 :isa sparser::collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p"
  :type sparser::micro-rna :number 3 :items (sparser::mv61597 sparser::mv61598 sparser::mv61599))
 (:var sparser::mv61597 :isa sparser::micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid
  "MIMAT0000765")
 (:var sparser::mv61598 :isa sparser::micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid
  "MIMAT0000646")
 (:var sparser::mv61599 :isa sparser::micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
  "MIMAT0000437")
 (:var sparser::mv61604 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv61605 :isa sparser::frequently :name "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    source-start
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    question-mark
                    end-of-source
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:var sparser::mv61628 :isa sparser::regulate :object sparser::mv61627 :agent sparser::mv61626
  :present "PRESENT" :superlative sparser::mv61621 :adverb sparser::mv61622 :raw-text "regulated")
 (:var sparser::mv61627 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61626 :isa sparser::collection :raw-text
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :type sparser::micro-rna :number 4 :items
  (sparser::mv61613 sparser::mv61614 sparser::mv61615 sparser::mv61616))
 (:var sparser::mv61613 :isa sparser::micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid
  "MIMAT0000765")
 (:var sparser::mv61614 :isa sparser::micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid
  "MIMAT0000646")
 (:var sparser::mv61615 :isa sparser::micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
  "MIMAT0000437")
 (:var sparser::mv61616 :isa sparser::micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm"
  :uid "MIMAT0000075")
 (:var sparser::mv61621 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv61622 :isa sparser::frequently :name "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    source-start
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    question-mark
                    end-of-source
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:var sparser::mv61645 :isa sparser::regulate :object sparser::mv61644 :agent sparser::mv61643
  :present "PRESENT" :superlative sparser::mv61638 :adverb sparser::mv61639 :raw-text "regulated")
 (:var sparser::mv61644 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61643 :isa sparser::collection :raw-text
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :type sparser::micro-rna :number 4 :items
  (sparser::mv61630 sparser::mv61631 sparser::mv61632 sparser::mv61633))
 (:var sparser::mv61630 :isa sparser::micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid
  "MIMAT0000765")
 (:var sparser::mv61631 :isa sparser::micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid
  "MIMAT0000646")
 (:var sparser::mv61632 :isa sparser::micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
  "MIMAT0000437")
 (:var sparser::mv61633 :isa sparser::micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm"
  :uid "MIMAT0000075")
 (:var sparser::mv61638 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv61639 :isa sparser::frequently :name "frequently"))

___________________
318: "What genes are regulated by FAKEPRTN"

                    source-start
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    end-of-source
("What genes are regulated by FAKEPRTN"
 (:var sparser::mv61655 :isa sparser::regulate :object sparser::mv61654 :agent sparser::mv61653
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv61654 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61653 :isa sparser::bio-entity :name "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    source-start
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    question-mark
                    end-of-source
("What genes are regulated by elk1 and srf?"
 (:var sparser::mv61668 :isa sparser::regulate :object sparser::mv61667 :agent sparser::mv61666
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv61667 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61666 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv61657 sparser::mv61665))
 (:var sparser::mv61657 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv61665 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    source-start
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    question-mark
                    end-of-source
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:var sparser::mv61681 :isa sparser::regulate :object sparser::mv61680 :agent sparser::mv61679
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv61680 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61679 :isa sparser::collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type
  sparser::micro-rna :number 2 :items (sparser::mv61670 sparser::mv61671))
 (:var sparser::mv61670 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413")
 (:var sparser::mv61671 :isa sparser::micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm"
  :uid "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    source-start
e12   REGULATE      1 "What genes are regulated by smda2" 8
                    end-of-source
("What genes are regulated by smda2"
 (:var sparser::mv61691 :isa sparser::regulate :object sparser::mv61690 :agent sparser::mv61683
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv61690 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61683 :isa sparser::bio-entity :name "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    source-start
e11   REGULATE      1 "What genes are regulated by srf" 7
                    end-of-source
("What genes are regulated by srf"
 (:var sparser::mv61701 :isa sparser::regulate :object sparser::mv61700 :agent sparser::mv61699
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv61700 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61699 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    source-start
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    end-of-source
("What genes are regulated by stat3 and srf"
 (:var sparser::mv61714 :isa sparser::regulate :object sparser::mv61713 :agent sparser::mv61712
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv61713 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61712 :isa sparser::collection :raw-text "stat3 and srf" :type sparser::protein
  :number 2 :items (sparser::mv61703 sparser::mv61711))
 (:var sparser::mv61703 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv61711 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    source-start
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    question-mark
                    end-of-source
("What genes are targeted by lung cancer?"
 (:var sparser::mv61724 :isa sparser::target :object sparser::mv61723 :cause sparser::mv61716
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv61723 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61716 :isa sparser::cancer :name "lung cancer" :uid "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    source-start
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("What genes are there in the MAPK signaling pathway?"
 (:var sparser::mv61741 :isa sparser::copular-predication-of-pp :item sparser::mv61736 :value
  sparser::mv61740 :prep "IN" :predicate sparser::mv61730)
 (:var sparser::mv61736 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61740 :isa sparser::gene :plural t :context sparser::mv61726 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv61726 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv61735 :raw-text "signaling pathway")
 (:var sparser::mv61735 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv61730 :isa sparser::be :present "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    source-start
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("What genes are used in the MAPK signaling pathway?"
 (:var sparser::mv61753 :isa sparser::bio-use :object sparser::mv61752 :context sparser::mv61743
  :present "PRESENT" :raw-text "used")
 (:var sparser::mv61752 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61743 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv61751 :raw-text "signaling pathway")
 (:var sparser::mv61751 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019"))

___________________
327: "What genes does lung cancer target?"

                    source-start
e9    TARGET        1 "What genes does lung cancer target" 7
                    question-mark
                    end-of-source
("What genes does lung cancer target?"
 (:var sparser::mv61761 :isa sparser::target :object sparser::mv61762 :cause sparser::mv61755
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv61762 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61755 :isa sparser::cancer :name "lung cancer" :uid "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    source-start
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    question-mark
                    end-of-source
("What genes does miR-20b-5p target?"
 (:var sparser::mv61769 :isa sparser::target :object sparser::mv61770 :agent sparser::mv61763
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv61770 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61763 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    source-start
e9    TARGET        1 "What genes does miR-562 target" 8
                    question-mark
                    end-of-source
("What genes does miR-562 target?"
 (:var sparser::mv61777 :isa sparser::target :object sparser::mv61778 :agent sparser::mv61771
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv61778 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61771 :isa sparser::micro-rna :raw-text "miR-562" :name "microRNA 562" :uid
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    source-start
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    question-mark
                    end-of-source
("What genes does smad2 upregulate?"
 (:var sparser::mv61784 :isa sparser::upregulate :object sparser::mv61785 :agent sparser::mv61779
  :present "PRESENT" :raw-text "upregulate")
 (:var sparser::mv61785 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61779 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    source-start
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    question-mark
                    end-of-source
("What genes does stat3 regulate in liver cells?"
 (:var sparser::mv61791 :isa sparser::regulate :object sparser::mv61796 :agent sparser::mv61786
  :cell-type sparser::mv61797 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61796 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61786 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv61797 :isa sparser::cell-type :plural t :non-cellular-location sparser::mv61793)
 (:var sparser::mv61793 :isa sparser::liver))

___________________
332: "What genes does stat3 regulate in liver?"

                    source-start
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    question-mark
                    end-of-source
("What genes does stat3 regulate in liver?"
 (:var sparser::mv61804 :isa sparser::regulate :object sparser::mv61807 :agent sparser::mv61799
  :organ sparser::mv61806 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61807 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61799 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv61806 :isa sparser::liver))

___________________
333: "What genes does stat3 regulate in lung?"

                    source-start
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    question-mark
                    end-of-source
("What genes does stat3 regulate in lung?"
 (:var sparser::mv61814 :isa sparser::regulate :object sparser::mv61817 :agent sparser::mv61809
  :organ sparser::mv61816 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61817 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61809 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv61816 :isa sparser::lung))

___________________
334: "What genes does stat3 regulate"

                    source-start
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    end-of-source
("What genes does stat3 regulate"
 (:var sparser::mv61824 :isa sparser::regulate :object sparser::mv61825 :agent sparser::mv61819
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61825 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61819 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    source-start
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    question-mark
                    end-of-source
("What genes in the liver does stat3 regulate?"
 (:var sparser::mv61834 :isa sparser::regulate :object sparser::mv61837 :agent sparser::mv61826
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61837 :isa sparser::gene :plural t :organ sparser::mv61832 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv61832 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv61826 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
336: "What genes is stat3 upstream from?"

                    source-start
e11   BE            1 "What genes is stat3 upstream " 7
e7    FROM          7 "from" 8
                    question-mark
                    end-of-source
                    source-start
e11   S             1 "What genes is stat3 upstream " 7
e7    PREPOSITION   7 "from" 8
                    question-mark
                    end-of-source


___________________
337: "What genes is stat3 upstream of?"

                    source-start
e12   BE            1 "What genes is stat3 upstream of" 8
                    question-mark
                    end-of-source
("What genes is stat3 upstream of?"
 (:var sparser::mv61851 :isa sparser::be :subject sparser::mv61855 :predicate sparser::mv61852
  :present "PRESENT")
 (:var sparser::mv61855 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv61852 :isa sparser::upstream-segment :pathwaycomponent sparser::mv61855 :modifier
  sparser::mv61847 :raw-text "upstream")
 (:var sparser::mv61847 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    source-start
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    question-mark
                    end-of-source
("What genes regulated by FOS are kinases?"
 (:var sparser::mv61862 :isa sparser::be :subject sparser::mv61867 :predicate sparser::mv61864
  :present "PRESENT")
 (:var sparser::mv61867 :isa sparser::gene :plural t :predication sparser::mv61859 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv61859 :isa sparser::regulate :object sparser::mv61867 :agent sparser::mv61861
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv61861 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv61864 :isa sparser::kinase :plural t :raw-text "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    source-start
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    question-mark
                    end-of-source
("What genes regulated by stat3 are kinases?"
 (:var sparser::mv61874 :isa sparser::be :subject sparser::mv61879 :predicate sparser::mv61876
  :present "PRESENT")
 (:var sparser::mv61879 :isa sparser::gene :plural t :predication sparser::mv61872 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv61872 :isa sparser::regulate :object sparser::mv61879 :agent sparser::mv61868
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv61868 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv61876 :isa sparser::kinase :plural t :raw-text "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    source-start
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    question-mark
                    end-of-source
("What immune pathways involve KRAS and ELK1?"
 (:var sparser::mv61885 :isa sparser::involve :theme sparser::mv61890 :object sparser::mv61888
  :present "PRESENT")
 (:var sparser::mv61890 :isa sparser::pathway :plural t :has-determiner "WHAT" :modifier
  sparser::mv61882 :raw-text "pathways")
 (:var sparser::mv61882 :isa sparser::immune :name "immune")
 (:var sparser::mv61888 :isa sparser::collection :raw-text "KRAS and ELK1" :type sparser::protein
  :number 2 :items (sparser::mv61886 sparser::mv61880))
 (:var sparser::mv61886 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv61880 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    source-start
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    question-mark
                    end-of-source
("What immune pathways involve SRF?"
 (:var sparser::mv61895 :isa sparser::involve :theme sparser::mv61898 :object sparser::mv61896
  :present "PRESENT")
 (:var sparser::mv61898 :isa sparser::pathway :plural t :has-determiner "WHAT" :modifier
  sparser::mv61892 :raw-text "pathways")
 (:var sparser::mv61892 :isa sparser::immune :name "immune")
 (:var sparser::mv61896 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    source-start
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    question-mark
                    end-of-source
("What immune pathways involve kras and elk1?"
 (:var sparser::mv61904 :isa sparser::involve :theme sparser::mv61909 :object sparser::mv61907
  :present "PRESENT")
 (:var sparser::mv61909 :isa sparser::pathway :plural t :has-determiner "WHAT" :modifier
  sparser::mv61901 :raw-text "pathways")
 (:var sparser::mv61901 :isa sparser::immune :name "immune")
 (:var sparser::mv61907 :isa sparser::collection :raw-text "kras and elk1" :type sparser::protein
  :number 2 :items (sparser::mv61905 sparser::mv61899))
 (:var sparser::mv61905 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv61899 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    source-start
e13   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    question-mark
                    end-of-source
("What immune pathways involve tap1 and jak1?"
 (:var sparser::mv61916 :isa sparser::involve :theme sparser::mv61920 :object sparser::mv61918
  :present "PRESENT")
 (:var sparser::mv61920 :isa sparser::pathway :plural t :has-determiner "WHAT" :modifier
  sparser::mv61913 :raw-text "pathways")
 (:var sparser::mv61913 :isa sparser::immune :name "immune")
 (:var sparser::mv61918 :isa sparser::collection :raw-text "tap1 and jak1" :type sparser::protein
  :number 2 :items (sparser::mv61910 sparser::mv61911))
 (:var sparser::mv61910 :isa sparser::protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
 (:var sparser::mv61911 :isa sparser::protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    source-start
e4    INHIBIT       1 "What inhibits BRAF" 4
                    question-mark
                    end-of-source
("What inhibits BRAF?"
 (:var sparser::mv61922 :isa sparser::inhibit :|agent-OR-cause| sparser::mv61921 :object
  sparser::mv61923 :present "PRESENT" :raw-text "inhibits")
 (:var sparser::mv61921 :isa sparser::what)
 (:var sparser::mv61923 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    source-start
e5    BE            1 "What is STAT3" 5
                    question-mark
                    end-of-source
("What is STAT3?"
 (:var sparser::mv61926 :isa sparser::be :subject sparser::mv61925 :predicate sparser::mv61924
  :present "PRESENT")
 (:var sparser::mv61925 :isa sparser::what)
 (:var sparser::mv61924 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    source-start
e4    BE            1 "What is STAT" 4
                    question-mark
                    end-of-source
("What is STAT?"
 (:var sparser::mv61928 :isa sparser::be :subject sparser::mv61927 :predicate sparser::mv61929
  :present "PRESENT")
 (:var sparser::mv61927 :isa sparser::what)
 (:var sparser::mv61929 :isa sparser::protein :raw-text "STAT" :uid "UP:P35610" :name
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    source-start
e11   BE            1 "What is downstream of stat3" 7
                    question-mark
                    end-of-source
("What is downstream of stat3?"
 (:var sparser::mv61932 :isa sparser::be :subject sparser::mv61931 :predicate sparser::mv61933
  :present "PRESENT")
 (:var sparser::mv61931 :isa sparser::what)
 (:var sparser::mv61933 :isa sparser::downstream-segment :pathwaycomponent sparser::mv61930
  :raw-text "downstream")
 (:var sparser::mv61930 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    source-start
e4    BE            1 "What is erbb" 4
                    question-mark
                    end-of-source
("What is erbb?"
 (:var sparser::mv61938 :isa sparser::be :subject sparser::mv61937 :predicate sparser::mv61939
  :present "PRESENT")
 (:var sparser::mv61937 :isa sparser::what)
 (:var sparser::mv61939 :isa sparser::protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    source-start
e4    BE            1 "What is errb" 4
                    question-mark
                    end-of-source
("What is errb?"
 (:var sparser::mv61941 :isa sparser::be :subject sparser::mv61940 :predicate sparser::mv61942
  :present "PRESENT")
 (:var sparser::mv61940 :isa sparser::what)
 (:var sparser::mv61942 :isa sparser::bio-entity :name "errb"))

___________________
350: "What is regulated by elk1"

                    source-start
e10   REGULATE      1 "What is regulated by elk1" 7
                    end-of-source
("What is regulated by elk1"
 (:var sparser::mv61948 :isa sparser::regulate :|affected-process-OR-object| sparser::mv61944
  :agent sparser::mv61943 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv61944 :isa sparser::what)
 (:var sparser::mv61943 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    source-start
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    question-mark
                    end-of-source
("What is the evidence that kras decreases frizzled8?"
 (:var sparser::mv61952 :isa sparser::be :subject sparser::mv61951 :predicate sparser::mv61958
  :present "PRESENT")
 (:var sparser::mv61951 :isa sparser::what)
 (:var sparser::mv61958 :isa sparser::evidence :statement sparser::mv61957 :has-determiner "THE")
 (:var sparser::mv61957 :isa sparser::decrease :agent sparser::mv61956 :object sparser::mv61950
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv61956 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv61950 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    source-start
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    question-mark
                    end-of-source
("What is the evidence that kras decreases the amount of frizzled8?"
 (:var sparser::mv61961 :isa sparser::be :subject sparser::mv61960 :predicate sparser::mv61971
  :present "PRESENT")
 (:var sparser::mv61960 :isa sparser::what)
 (:var sparser::mv61971 :isa sparser::evidence :statement sparser::mv61966 :has-determiner "THE")
 (:var sparser::mv61966 :isa sparser::decrease :agent sparser::mv61965
  :|affected-process-OR-object| sparser::mv61968 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv61965 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv61968 :isa sparser::bio-amount :measured-item sparser::mv61959 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv61959 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    source-start
e13   BE            1 "What is the target of Selumetinib" 7
                    question-mark
                    end-of-source
("What is the target of Selumetinib?"
 (:var sparser::mv61973 :isa sparser::be :subject sparser::mv61972 :predicate sparser::mv61975
  :present "PRESENT")
 (:var sparser::mv61972 :isa sparser::what)
 (:var sparser::mv61975 :isa sparser::target-protein :treatment sparser::mv61978 :has-determiner
  "THE" :raw-text "target")
 (:var sparser::mv61978 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
354: "What kinases does smad2 regulate"

                    source-start
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    end-of-source
("What kinases does smad2 regulate"
 (:var sparser::mv61985 :isa sparser::regulate :object sparser::mv61986 :agent sparser::mv61980
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv61986 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv61980 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    source-start
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    question-mark
                    end-of-source
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:var sparser::mv61995 :isa sparser::regulate :agent sparser::mv62000 :object sparser::mv61999
  :present "PRESENT" :adverb sparser::mv61993 :adverb sparser::mv61994 :raw-text "regulate")
 (:var sparser::mv62000 :isa sparser::micro-rna :plural t :has-determiner "WHAT" :raw-text
  "miRNAs")
 (:var sparser::mv61999 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv61996 sparser::mv61997 sparser::mv61987 sparser::mv61988 sparser::mv61989))
 (:var sparser::mv61996 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv61997 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv61987 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv61988 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv61989 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN")
 (:var sparser::mv61993 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv61994 :isa sparser::frequently :name "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    source-start
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    question-mark
                    end-of-source
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:var sparser::mv62007 :isa sparser::regulate :agent sparser::mv62012 :object sparser::mv62011
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62012 :isa sparser::micro-rna :plural t :has-determiner "WHAT" :raw-text
  "miRNAs")
 (:var sparser::mv62011 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv62008 sparser::mv62009 sparser::mv62001 sparser::mv62002 sparser::mv62003))
 (:var sparser::mv62008 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv62009 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv62001 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62002 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv62003 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    source-start
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    question-mark
                    end-of-source
("What micrornas are regulated by p53?"
 (:var sparser::mv62021 :isa sparser::regulate :object sparser::mv62020 :agent sparser::mv62013
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv62020 :isa sparser::micro-rna :plural t :has-determiner "WHAT" :raw-text
  "micrornas")
 (:var sparser::mv62013 :isa sparser::protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    source-start
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    end-of-source
("What micrornas regulate genes in the mapk signaling pathways"
 (:var sparser::mv62028 :isa sparser::regulate :agent sparser::mv62034 :object sparser::mv62038
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62034 :isa sparser::micro-rna :plural t :has-determiner "WHAT" :raw-text
  "micrornas")
 (:var sparser::mv62038 :isa sparser::gene :plural t :context sparser::mv62036 :raw-text "genes")
 (:var sparser::mv62036 :isa sparser::signaling-pathway :plural t :has-determiner "THE" :modifier
  sparser::mv62033 :raw-text "signaling pathways")
 (:var sparser::mv62033 :isa sparser::protein-family :raw-text "mapk" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019"))

___________________
359: "What pahtways involve SRF?"

                    source-start
e4    BIO-ENTITY    1 "What pahtways " 3
e5    INVOLVE       3 "involve SRF" 5
                    question-mark
                    end-of-source
                    source-start
e4    NP            1 "What pahtways " 3
e5    VP            3 "involve SRF" 5
                    question-mark
                    end-of-source


___________________
360: "What pathways are common to STAT3 and SRF?"

                    source-start
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    question-mark
                    end-of-source
("What pathways are common to STAT3 and SRF?"
 (:var sparser::mv62055 :isa sparser::copular-predication :item sparser::mv62053 :value
  sparser::mv62048 :predicate sparser::mv62047)
 (:var sparser::mv62053 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv62048 :isa sparser::common :theme sparser::mv62052)
 (:var sparser::mv62052 :isa sparser::collection :raw-text "STAT3 and SRF" :type sparser::protein
  :number 2 :items (sparser::mv62043 sparser::mv62051))
 (:var sparser::mv62043 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62051 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv62047 :isa sparser::be :present "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    source-start
e6    INVOLVE       1 "What pathways involve cfos" 5
                    question-mark
                    end-of-source
("What pathways involve cfos?"
 (:var sparser::mv62059 :isa sparser::involve :theme sparser::mv62061 :object sparser::mv62060
  :present "PRESENT")
 (:var sparser::mv62061 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv62060 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    source-start
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    question-mark
                    end-of-source
("What pathways involve kras and elk1?"
 (:var sparser::mv62066 :isa sparser::involve :theme sparser::mv62070 :object sparser::mv62069
  :present "PRESENT")
 (:var sparser::mv62070 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv62069 :isa sparser::collection :raw-text "kras and elk1" :type sparser::protein
  :number 2 :items (sparser::mv62067 sparser::mv62062))
 (:var sparser::mv62067 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv62062 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    source-start
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    question-mark
                    end-of-source
("What pathways involve the SRF transcription factor?"
 (:var sparser::mv62075 :isa sparser::involve :theme sparser::mv62078 :object sparser::mv62071
  :present "PRESENT")
 (:var sparser::mv62078 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv62071 :isa sparser::transcription-factor :has-determiner "THE" :modifier
  sparser::mv62077 :raw-text "transcription factor")
 (:var sparser::mv62077 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
364: "What pathways utilize srf and is srf a kinase"

                    source-start
e15   BIO-UTILIZE   1 "What pathways utilize srf and is srf " 8
e11   KINASE        8 "a kinase" 10
                    end-of-source
                    source-start
e15   S             1 "What pathways utilize srf and is srf " 8
e11   NP            8 "a kinase" 10
                    end-of-source


___________________
365: "What proteins are in the MAPK family?"

                    source-start
e17   COPULAR-PREDICATE 1 "What proteins are in the MAPK family" 8
                    question-mark
                    end-of-source
("What proteins are in the MAPK family?"
 (:var sparser::mv62106 :isa sparser::copular-predication-of-pp :item sparser::mv62100 :value
  sparser::mv62105 :prep "IN" :predicate sparser::mv62094)
 (:var sparser::mv62100 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv62105 :isa sparser::protein :plural t :in-family sparser::mv62101 :has-determiner
  "WHAT" :raw-text "proteins")
 (:var sparser::mv62101 :isa sparser::protein-family :has-determiner "THE" :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv62094 :isa sparser::be :present "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    source-start
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    question-mark
                    end-of-source
("What proteins are targeted by lung cancer?"
 (:var sparser::mv62116 :isa sparser::target :object sparser::mv62115 :cause sparser::mv62108
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv62115 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv62108 :isa sparser::cancer :name "lung cancer" :uid "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    source-start
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    question-mark
                    end-of-source
("What proteins does PLX-4720 target?"
 (:var sparser::mv62124 :isa sparser::target :object sparser::mv62125 :agent sparser::mv62118
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv62125 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv62118 :isa sparser::drug :raw-text "PLX-4720" :name "PLX 4720" :uid
  "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    source-start
e9    TARGET        1 "What proteins does lung cancer target" 7
                    question-mark
                    end-of-source
("What proteins does lung cancer target?"
 (:var sparser::mv62132 :isa sparser::target :object sparser::mv62133 :cause sparser::mv62126
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv62133 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv62126 :isa sparser::cancer :name "lung cancer" :uid "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    source-start
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    question-mark
                    end-of-source
("What proteins does vemurafenib target?"
 (:var sparser::mv62140 :isa sparser::target :object sparser::mv62141 :agent sparser::mv62138
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv62141 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv62138 :isa sparser::drug :raw-text "vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    source-start
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    question-mark
                    end-of-source
("What proteins might lead to the development of lung cancer?"
 (:var sparser::mv62147 :isa sparser::lead :agent sparser::mv62152 :theme sparser::mv62150 :modal
  sparser::mv62146 :raw-text "lead")
 (:var sparser::mv62152 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv62150 :isa sparser::development :disease sparser::mv62142 :has-determiner "THE"
  :raw-text "development")
 (:var sparser::mv62142 :isa sparser::cancer :name "lung cancer" :uid "TS-0571")
 (:var sparser::mv62146 :isa sparser::might))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    source-start
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    period
                    end-of-source
("What proteins might lead to the development of pancreatic cancer."
 (:var sparser::mv62160 :isa sparser::lead :agent sparser::mv62165 :theme sparser::mv62163 :modal
  sparser::mv62159 :raw-text "lead")
 (:var sparser::mv62165 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv62163 :isa sparser::development :disease sparser::mv62155 :has-determiner "THE"
  :raw-text "development")
 (:var sparser::mv62155 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv62159 :isa sparser::might))

___________________
372: "What reactome pathways involve immune signaling?"

                    source-start
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    question-mark
                    end-of-source
("What reactome pathways involve immune signaling?"
 (:var sparser::mv62172 :isa sparser::involve :theme sparser::mv62176 :object sparser::mv62174
  :present "PRESENT")
 (:var sparser::mv62176 :isa sparser::pathway :plural t :has-determiner "WHAT" :modifier
  sparser::mv62169 :raw-text "pathways")
 (:var sparser::mv62169 :isa sparser::database :name "Reactome" :uid "Reactome")
 (:var sparser::mv62174 :isa signal :modifier sparser::mv62173 :raw-text "signaling")
 (:var sparser::mv62173 :isa sparser::immune :name "immune"))

___________________
373: "What regulates HGF?"

                    source-start
e4    REGULATE      1 "What regulates HGF" 4
                    question-mark
                    end-of-source
("What regulates HGF?"
 (:var sparser::mv62178 :isa sparser::regulate :|agent-OR-cause| sparser::mv62177 :object
  sparser::mv62179 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv62177 :isa sparser::what)
 (:var sparser::mv62179 :isa sparser::protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    source-start
e5    REGULATE      1 "What regulates SMURF2" 5
                    question-mark
                    end-of-source
("What regulates SMURF2?"
 (:var sparser::mv62182 :isa sparser::regulate :|agent-OR-cause| sparser::mv62181 :object
  sparser::mv62180 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv62181 :isa sparser::what)
 (:var sparser::mv62180 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    source-start
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    end-of-source
("What regulates smurf2 in liver"
 (:var sparser::mv62185 :isa sparser::regulate :|agent-OR-cause| sparser::mv62184 :object
  sparser::mv62183 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv62184 :isa sparser::what)
 (:var sparser::mv62183 :isa sparser::protein :organ sparser::mv62187 :raw-text "smurf2" :uid
  "UP:Q9HAU4" :name "SMUF2_HUMAN")
 (:var sparser::mv62187 :isa sparser::liver))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    source-start
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    question-mark
                    end-of-source
("What signaling pathways are shared by RELA and ELK1?"
 (:var sparser::mv62200 :isa sparser::share :object sparser::mv62199 :participant sparser::mv62198
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv62199 :isa sparser::signaling-pathway :plural t :has-determiner "WHAT" :raw-text
  "signaling pathways")
 (:var sparser::mv62198 :isa sparser::collection :raw-text "RELA and ELK1" :type sparser::protein
  :number 2 :items (sparser::mv62196 sparser::mv62191))
 (:var sparser::mv62196 :isa sparser::protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
 (:var sparser::mv62191 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    source-start
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    question-mark
                    end-of-source
("What signaling pathways are shared by STAT3 and SRF?"
 (:var sparser::mv62213 :isa sparser::share :object sparser::mv62212 :participant sparser::mv62211
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv62212 :isa sparser::signaling-pathway :plural t :has-determiner "WHAT" :raw-text
  "signaling pathways")
 (:var sparser::mv62211 :isa sparser::collection :raw-text "STAT3 and SRF" :type sparser::protein
  :number 2 :items (sparser::mv62204 sparser::mv62210))
 (:var sparser::mv62204 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62210 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    source-start
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    question-mark
                    end-of-source
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:var sparser::mv62227 :isa sparser::share :object sparser::mv62226 :participant sparser::mv62225
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv62226 :isa sparser::signaling-pathway :plural t :has-determiner "WHAT" :raw-text
  "signaling pathways")
 (:var sparser::mv62225 :isa sparser::collection :raw-text "STAT3, SOCS3 and SRF" :type
  sparser::protein :number 3 :items (sparser::mv62217 sparser::mv62218 sparser::mv62224))
 (:var sparser::mv62217 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62218 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62224 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
379: "What tissues is STAT3 expressed in?"

                    source-start
e8    TISSUE        1 "What tissues " 3
e4    BE            3 "is " 4
e1    PROTEIN       4 "STAT3 " 6
e5    GENE-TRANSCRIPT-EXPRESS 6 "expressed " 7
e7    IN            7 "in" 8
                    question-mark
                    end-of-source
                    source-start
e8    NP            1 "What tissues " 3
e4    VG            3 "is " 4
e1    PROPER-NOUN   4 "STAT3 " 6
e5    VG+ED         6 "expressed " 7
e7    PREPOSITION   7 "in" 8
                    question-mark
                    end-of-source


___________________
380: "What transcription factor produces SMURF2?"

                    source-start
e8    BIO-PRODUCE   1 "What transcription factor produces SMURF2" 7
                    question-mark
                    end-of-source
("What transcription factor produces SMURF2?"
 (:var sparser::mv62240 :isa sparser::bio-produce :agent sparser::mv62237 :object sparser::mv62238
  :present "PRESENT" :raw-text "produces")
 (:var sparser::mv62237 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factor")
 (:var sparser::mv62238 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    source-start
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    question-mark
                    end-of-source
("What transcription factor transcribes SMURF2?"
 (:var sparser::mv62244 :isa sparser::transcribe :agent sparser::mv62241 :object sparser::mv62242
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv62241 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factor")
 (:var sparser::mv62242 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    question-mark
                    end-of-source
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv62265 :isa sparser::copular-predication :item sparser::mv62261 :value
  sparser::mv62253 :predicate sparser::mv62252)
 (:var sparser::mv62261 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62253 :isa sparser::common :theme sparser::mv62263)
 (:var sparser::mv62263 :isa sparser::gene :plural t :has-determiner "THE" :expresses
  sparser::mv62260 :raw-text "genes")
 (:var sparser::mv62260 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv62247 sparser::mv62248 sparser::mv62256 sparser::mv62249 sparser::mv62250))
 (:var sparser::mv62247 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62248 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62256 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv62249 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv62250 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN")
 (:var sparser::mv62252 :isa sparser::be :present "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    source-start
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    question-mark
                    end-of-source
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:var sparser::mv62284 :isa sparser::copular-predication :item sparser::mv62280 :value
  sparser::mv62273 :predicate sparser::mv62272)
 (:var sparser::mv62280 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62273 :isa sparser::common :theme sparser::mv62282)
 (:var sparser::mv62282 :isa sparser::gene :plural t :has-determiner "THE" :expresses
  sparser::mv62279 :raw-text "genes")
 (:var sparser::mv62279 :isa sparser::collection :raw-text "STAT3, SOCS3, and CREB5" :type
  sparser::protein :number 3 :items (sparser::mv62268 sparser::mv62269 sparser::mv62270))
 (:var sparser::mv62268 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62269 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62270 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN")
 (:var sparser::mv62272 :isa sparser::be :present "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    source-start
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    question-mark
                    end-of-source
("What genes does stat3 regulate?"
 (:var sparser::mv62290 :isa sparser::regulate :object sparser::mv62291 :agent sparser::mv62285
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62291 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv62285 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    source-start
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    question-mark
                    end-of-source
("What transcription factors are common to these genes?"
 (:var sparser::mv62304 :isa sparser::copular-predication :item sparser::mv62301 :value
  sparser::mv62296 :predicate sparser::mv62295)
 (:var sparser::mv62301 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62296 :isa sparser::common :theme sparser::mv62302)
 (:var sparser::mv62302 :isa sparser::gene :plural t :has-determiner "THESE" :raw-text "genes")
 (:var sparser::mv62295 :isa sparser::be :present "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    question-mark
                    end-of-source
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv62325 :isa sparser::copular-predication :item sparser::mv62321 :value
  sparser::mv62307 :predicate sparser::mv62313)
 (:var sparser::mv62321 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62307 :isa sparser::in-common :theme sparser::mv62323)
 (:var sparser::mv62323 :isa sparser::gene :plural t :has-determiner "THE" :expresses
  sparser::mv62320 :raw-text "genes")
 (:var sparser::mv62320 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv62308 sparser::mv62309 sparser::mv62316 sparser::mv62310 sparser::mv62311))
 (:var sparser::mv62308 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62309 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62316 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv62310 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv62311 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN")
 (:var sparser::mv62313 :isa sparser::be :present "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    source-start
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    question-mark
                    end-of-source
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:var sparser::mv62344 :isa sparser::copular-predication :item sparser::mv62340 :value
  sparser::mv62328 :predicate sparser::mv62333)
 (:var sparser::mv62340 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62328 :isa sparser::in-common :theme sparser::mv62342)
 (:var sparser::mv62342 :isa sparser::gene :plural t :has-determiner "THE" :expresses
  sparser::mv62339 :raw-text "genes")
 (:var sparser::mv62339 :isa sparser::collection :raw-text "STAT3, SOCS3, and CREB5" :type
  sparser::protein :number 3 :items (sparser::mv62329 sparser::mv62330 sparser::mv62331))
 (:var sparser::mv62329 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62330 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62331 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN")
 (:var sparser::mv62333 :isa sparser::be :present "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    source-start
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    question-mark
                    end-of-source
("What transcription factors are regulators of SMURF2 in liver?"
 (:var sparser::mv62349 :isa sparser::be :subject sparser::mv62355 :predicate sparser::mv62358
  :present "PRESENT")
 (:var sparser::mv62355 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62358 :isa sparser::regulator :plural t :theme sparser::mv62347 :raw-text
  "regulators")
 (:var sparser::mv62347 :isa sparser::protein :organ sparser::mv62354 :raw-text "SMURF2" :uid
  "UP:Q9HAU4" :name "SMUF2_HUMAN")
 (:var sparser::mv62354 :isa sparser::liver))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    source-start
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    question-mark
                    end-of-source
("What transcription factors are regulators of SMURF2?"
 (:var sparser::mv62363 :isa sparser::be :subject sparser::mv62367 :predicate sparser::mv62369
  :present "PRESENT")
 (:var sparser::mv62367 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62369 :isa sparser::regulator :plural t :theme sparser::mv62361 :raw-text
  "regulators")
 (:var sparser::mv62361 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    source-start
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    question-mark
                    end-of-source
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:var sparser::mv62385 :isa sparser::share :object sparser::mv62384 :participant sparser::mv62387
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv62384 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62387 :isa sparser::gene :plural t :has-determiner "THE" :expresses
  sparser::mv62383 :raw-text "genes")
 (:var sparser::mv62383 :isa sparser::collection :raw-text "SRF, HRAS, and elk1" :type
  sparser::protein :number 3 :items (sparser::mv62378 sparser::mv62379 sparser::mv62372))
 (:var sparser::mv62378 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv62379 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv62372 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    source-start
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    question-mark
                    end-of-source
("What transcription factors regulate SMURF2 in liver?"
 (:var sparser::mv62393 :isa sparser::regulate :agent sparser::mv62396 :object sparser::mv62391
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62396 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62391 :isa sparser::protein :organ sparser::mv62395 :raw-text "SMURF2" :uid
  "UP:Q9HAU4" :name "SMUF2_HUMAN")
 (:var sparser::mv62395 :isa sparser::liver))

___________________
392: "What transcription factors regulate ZEB1?"

                    source-start
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    question-mark
                    end-of-source
("What transcription factors regulate ZEB1?"
 (:var sparser::mv62402 :isa sparser::regulate :agent sparser::mv62403 :object sparser::mv62400
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62403 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62400 :isa sparser::protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    source-start
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    end-of-source
("What transcription factors regulate erk"
 (:var sparser::mv62407 :isa sparser::regulate :agent sparser::mv62409 :object sparser::mv62408
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62409 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62408 :isa sparser::protein-family :raw-text "erk" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
394: "What transcription factors regulate genes in the mapk signaling pathwya"

                    source-start
e19   REGULATE      1 "What transcription factors regulate genes in the mapk signaling pathwya" 11
                    end-of-source
("What transcription factors regulate genes in the mapk signaling pathwya"
 (:var sparser::mv62413 :isa sparser::regulate :agent sparser::mv62421 :theme sparser::mv62420
  :object sparser::mv62415 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62421 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62420 :isa sparser::bio-entity :has-determiner "THE" :modifier sparser::mv62418
  :cellular-process sparser::mv62419 :name "pathwya")
 (:var sparser::mv62418 :isa sparser::protein-family :raw-text "mapk" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv62419 :isa signal :raw-text "signaling")
 (:var sparser::mv62415 :isa sparser::gene :plural t :raw-text "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    source-start
e8    REGULATE      1 "What transcription factors regulated frizzled8" 7
                    question-mark
                    end-of-source
("What transcription factors regulated frizzled8?"
 (:var sparser::mv62427 :isa sparser::regulate :agent sparser::mv62428 :object sparser::mv62425
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv62428 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62425 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    source-start
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    question-mark
                    end-of-source
("What transcription factors transcribe SMURF2?"
 (:var sparser::mv62433 :isa sparser::transcribe :agent sparser::mv62434 :object sparser::mv62431
  :present "PRESENT" :raw-text "transcribe")
 (:var sparser::mv62434 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62431 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    source-start
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    question-mark
                    end-of-source
("What upregulates fzd8?"
 (:var sparser::mv62437 :isa sparser::upregulate :|agent-OR-cause| sparser::mv62436 :object
  sparser::mv62435 :present "PRESENT" :raw-text "upregulates")
 (:var sparser::mv62436 :isa sparser::what)
 (:var sparser::mv62435 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    source-start
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    question-mark
                    end-of-source
("Where is STAT3 expressed?"
 (:var sparser::mv62443 :isa sparser::gene-transcript-express :location sparser::mv62439 :object
  sparser::mv62438 :past "PAST" :raw-text "expressed")
 (:var sparser::mv62439 :isa sparser::where)
 (:var sparser::mv62438 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    source-start
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    question-mark
                    end-of-source
("Which KEGG pathways involve SRF?"
 (:var sparser::mv62448 :isa sparser::involve :theme sparser::mv62451 :object sparser::mv62449
  :present "PRESENT")
 (:var sparser::mv62451 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv62445 :raw-text "pathways")
 (:var sparser::mv62445 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv62449 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    source-start
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    question-mark
                    end-of-source
("Which KEGG pathways use SRF?"
 (:var sparser::mv62457 :isa sparser::bio-use :agent sparser::mv62460 :object sparser::mv62458
  :present "PRESENT" :raw-text "use")
 (:var sparser::mv62460 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv62453 :raw-text "pathways")
 (:var sparser::mv62453 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv62458 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    source-start
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    question-mark
                    end-of-source
("What transcription factors regulate frizzled8?"
 (:var sparser::mv62465 :isa sparser::regulate :agent sparser::mv62466 :object sparser::mv62463
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62466 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62463 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    source-start
e7    REGULATE      1 "Which also regulate srf" 5
                    end-of-source
("Which also regulate srf"
 (:var sparser::mv62470 :isa sparser::regulate :|agent-OR-cause| sparser::mv62467 :object
  sparser::mv62471 :present "PRESENT" :adverb sparser::mv62468 :raw-text "regulate")
 (:var sparser::mv62467 :isa sparser::which)
 (:var sparser::mv62471 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv62468 :isa sparser::also :name "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    source-start
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    question-mark
                    end-of-source
("Which apoptotic genes are regulated by stat3?"
 (:var sparser::mv62483 :isa sparser::regulate :object sparser::mv62482 :agent sparser::mv62472
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv62482 :isa sparser::gene :plural t :has-determiner "WHICH" :cellular-process
  sparser::mv62474 :raw-text "genes")
 (:var sparser::mv62474 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv62472 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    source-start
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    question-mark
                    end-of-source
("Which apoptotic genes is stat3 upstream of?"
 (:var sparser::mv62491 :isa sparser::be :subject sparser::mv62496 :predicate sparser::mv62492
  :present "PRESENT")
 (:var sparser::mv62496 :isa sparser::gene :plural t :has-determiner "WHICH" :cellular-process
  sparser::mv62487 :raw-text "genes")
 (:var sparser::mv62487 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv62492 :isa sparser::upstream-segment :pathwaycomponent sparser::mv62496 :modifier
  sparser::mv62485 :raw-text "upstream")
 (:var sparser::mv62485 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    source-start
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    question-mark
                    end-of-source
("Which genes are targeted by STAT3?"
 (:var sparser::mv62505 :isa sparser::target :object sparser::mv62504 :agent sparser::mv62497
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv62504 :isa sparser::gene :plural t :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv62497 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    source-start
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    question-mark
                    end-of-source
("Which genes regulated by stat3 are kinases?"
 (:var sparser::mv62513 :isa sparser::be :subject sparser::mv62518 :predicate sparser::mv62515
  :present "PRESENT")
 (:var sparser::mv62518 :isa sparser::gene :plural t :predication sparser::mv62511 :has-determiner
  "WHICH" :raw-text "genes")
 (:var sparser::mv62511 :isa sparser::regulate :object sparser::mv62518 :agent sparser::mv62507
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv62507 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62515 :isa sparser::kinase :plural t :raw-text "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    question-mark
                    end-of-source
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv62537 :isa sparser::share :object sparser::mv62536 :participant sparser::mv62538
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv62536 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv62524 :raw-text "pathways")
 (:var sparser::mv62524 :isa sparser::immune :name "immune")
 (:var sparser::mv62538 :isa sparser::gene :plural t :expresses sparser::mv62534 :raw-text "genes")
 (:var sparser::mv62534 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv62519 sparser::mv62520 sparser::mv62530 sparser::mv62521 sparser::mv62522))
 (:var sparser::mv62519 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62520 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62530 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv62521 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv62522 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    source-start
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    question-mark
                    end-of-source
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:var sparser::mv62557 :isa sparser::share :object sparser::mv62556 :participant sparser::mv62559
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv62556 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv62544 :raw-text "pathways")
 (:var sparser::mv62544 :isa sparser::immune :name "immune")
 (:var sparser::mv62559 :isa sparser::gene :plural t :has-determiner "THE" :expresses
  sparser::mv62554 :raw-text "genes")
 (:var sparser::mv62554 :isa sparser::collection :raw-text "STAT3, SOCS3, and CREB5" :type
  sparser::protein :number 3 :items (sparser::mv62540 sparser::mv62541 sparser::mv62542))
 (:var sparser::mv62540 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62541 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62542 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    source-start
e15   BIO-UTILIZE   1 "Which kegg pathways utilize genes regulated by smad2" 10
                    end-of-source
("Which kegg pathways utilize genes regulated by smad2"
 (:var sparser::mv62566 :isa sparser::bio-utilize :agent sparser::mv62572 :object sparser::mv62568
  :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv62572 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv62563 :raw-text "pathways")
 (:var sparser::mv62563 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv62568 :isa sparser::gene :plural t :predication sparser::mv62569 :raw-text
  "genes")
 (:var sparser::mv62569 :isa sparser::regulate :object sparser::mv62568 :agent sparser::mv62561
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv62561 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    source-start
e8    BIO-UTILIZE   1 "Which Reactome pathways utilize SRF" 6
                    question-mark
                    end-of-source
("Which Reactome pathways utilize SRF?"
 (:var sparser::mv62579 :isa sparser::bio-utilize :agent sparser::mv62582 :object sparser::mv62580
  :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv62582 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv62576 :raw-text "pathways")
 (:var sparser::mv62576 :isa sparser::database :name "Reactome" :uid "Reactome")
 (:var sparser::mv62580 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    source-start
e9    BIO-UTILIZE   1 "Which kegg pathways utilize it" 6
                    end-of-source
("Which kegg pathways utilize it"
 (:var sparser::mv62587 :isa sparser::bio-utilize :agent sparser::mv62590 :object sparser::mv62588
  :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv62590 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv62584 :raw-text "pathways")
 (:var sparser::mv62584 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv62588 :isa sparser::pronoun/inanimate :word "it"))

___________________
412: "Which of them are regulated by elk1"

                    source-start
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    end-of-source
("Which of them are regulated by elk1"
 (:var sparser::mv62598 :isa sparser::regulate :|affected-process-OR-object| sparser::mv62594
  :agent sparser::mv62591 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv62594 :isa sparser::pronoun/plural :quantifier sparser::mv62592 :word "them")
 (:var sparser::mv62592 :isa sparser::which)
 (:var sparser::mv62591 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    source-start
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    end-of-source
("Which of these are expressed in liver"
 (:var sparser::mv62608 :isa sparser::gene-transcript-express :object sparser::mv62603 :organ
  sparser::mv62607 :present "PRESENT" :raw-text "expressed")
 (:var sparser::mv62603 :isa sparser::these :quantifier sparser::mv62601 :word "these")
 (:var sparser::mv62601 :isa sparser::which) (:var sparser::mv62607 :isa sparser::liver))

___________________
414: "Which of these are in immune pathways"

                    source-start
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    end-of-source
("Which of these are in immune pathways"
 (:var sparser::mv62621 :isa sparser::copular-predication-of-pp :item sparser::mv62613 :value
  sparser::mv62619 :prep sparser::mv62615 :predicate sparser::mv62614)
 (:var sparser::mv62613 :isa sparser::these :quantifier sparser::mv62611 :word "these")
 (:var sparser::mv62611 :isa sparser::which)
 (:var sparser::mv62619 :isa sparser::pathway :plural t :modifier sparser::mv62616 :raw-text
  "pathways")
 (:var sparser::mv62616 :isa sparser::immune :name "immune")
 (:var sparser::mv62615 :isa sparser::in :word "in")
 (:var sparser::mv62614 :isa sparser::be :present "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    source-start
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    question-mark
                    end-of-source
("what proteins does MEK phosphorylate?"
 (:var sparser::mv62628 :isa sparser::phosphorylate :substrate sparser::mv62629 :agent
  sparser::mv62627 :present "PRESENT" :raw-text "phosphorylate")
 (:var sparser::mv62629 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv62627 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK"))

___________________
416: "Which of these are kinases"

                    source-start
e9    BE            1 "Which of these are kinases" 6
                    end-of-source
("Which of these are kinases"
 (:var sparser::mv62633 :isa sparser::be :subject sparser::mv62632 :predicate sparser::mv62635
  :present "PRESENT")
 (:var sparser::mv62632 :isa sparser::these :quantifier sparser::mv62630 :word "these")
 (:var sparser::mv62630 :isa sparser::which)
 (:var sparser::mv62635 :isa sparser::kinase :plural t :raw-text "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    source-start
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    end-of-source
("Which of those are regulated by elk1"
 (:var sparser::mv62644 :isa sparser::regulate :|affected-process-OR-object| sparser::mv62640
  :agent sparser::mv62637 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv62640 :isa sparser::those :quantifier sparser::mv62638 :word "those")
 (:var sparser::mv62638 :isa sparser::which)
 (:var sparser::mv62637 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    source-start
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    end-of-source
("Which of these are regulated by elk1"
 (:var sparser::mv62654 :isa sparser::regulate :|affected-process-OR-object| sparser::mv62650
  :agent sparser::mv62647 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv62650 :isa sparser::these :quantifier sparser::mv62648 :word "these")
 (:var sparser::mv62648 :isa sparser::which)
 (:var sparser::mv62647 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    source-start
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    end-of-source
("Which of these are regulated by fakeprotein"
 (:var sparser::mv62664 :isa sparser::regulate :|affected-process-OR-object| sparser::mv62659
  :agent sparser::mv62663 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv62659 :isa sparser::these :quantifier sparser::mv62657 :word "these")
 (:var sparser::mv62657 :isa sparser::which)
 (:var sparser::mv62663 :isa sparser::bio-entity :name "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    question-mark
                    end-of-source
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv62683 :isa sparser::share :object sparser::mv62682 :participant sparser::mv62684
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv62682 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv62684 :isa sparser::gene :plural t :expresses sparser::mv62681 :raw-text "genes")
 (:var sparser::mv62681 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv62667 sparser::mv62668 sparser::mv62677 sparser::mv62669 sparser::mv62670))
 (:var sparser::mv62667 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62668 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62677 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv62669 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv62670 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    source-start
e20   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    end-of-source
("Which pathways are shared by stat3, socs3, and creb5"
 (:var sparser::mv62698 :isa sparser::share :object sparser::mv62697 :participant sparser::mv62696
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv62697 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv62696 :isa sparser::collection :raw-text "stat3, socs3, and creb5" :type
  sparser::protein :number 3 :items (sparser::mv62686 sparser::mv62687 sparser::mv62688))
 (:var sparser::mv62686 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62687 :isa sparser::protein :raw-text "socs3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62688 :isa sparser::protein :raw-text "creb5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    question-mark
                    end-of-source
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv62717 :isa sparser::share :object sparser::mv62716 :participant sparser::mv62719
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv62716 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv62719 :isa sparser::gene :plural t :has-determiner "THE" :expresses
  sparser::mv62715 :raw-text "genes")
 (:var sparser::mv62715 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv62700 sparser::mv62701 sparser::mv62711 sparser::mv62702 sparser::mv62703))
 (:var sparser::mv62700 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62701 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv62711 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv62702 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv62703 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    source-start
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    question-mark
                    end-of-source
("Which pathways involve TAP1 and JAK1?"
 (:var sparser::mv62726 :isa sparser::involve :theme sparser::mv62729 :object sparser::mv62728
  :present "PRESENT")
 (:var sparser::mv62729 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv62728 :isa sparser::collection :raw-text "TAP1 and JAK1" :type sparser::protein
  :number 2 :items (sparser::mv62721 sparser::mv62722))
 (:var sparser::mv62721 :isa sparser::protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
 (:var sparser::mv62722 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    source-start
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    question-mark
                    end-of-source
("Which pathways involve calcium?"
 (:var sparser::mv62733 :isa sparser::involve :theme sparser::mv62735 :object sparser::mv62734
  :present "PRESENT")
 (:var sparser::mv62735 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv62734 :isa sparser::calcium :raw-text "calcium"))

___________________
425: "Which pathways use SRF?"

                    source-start
e7    BIO-USE       1 "Which pathways use SRF" 5
                    question-mark
                    end-of-source
("Which pathways use SRF?"
 (:var sparser::mv62740 :isa sparser::bio-use :agent sparser::mv62742 :object sparser::mv62741
  :present "PRESENT" :raw-text "use")
 (:var sparser::mv62742 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv62741 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    source-start
e7    BIO-USE       1 "Which pathways use these" 5
                    end-of-source
("Which pathways use these"
 (:var sparser::mv62747 :isa sparser::bio-use :agent sparser::mv62749 :object sparser::mv62748
  :present "PRESENT" :raw-text "use")
 (:var sparser::mv62749 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv62748 :isa sparser::these :word "these"))

___________________
427: "Which pathways utilize SRF?"

                    source-start
e6    BIO-UTILIZE   1 "Which pathways utilize SRF" 5
                    question-mark
                    end-of-source
("Which pathways utilize SRF?"
 (:var sparser::mv62753 :isa sparser::bio-utilize :agent sparser::mv62755 :object sparser::mv62754
  :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv62755 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv62754 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    source-start
e8    BIO-UTILIZE   1 "Which pathways utilize these genes" 6
                    end-of-source
("Which pathways utilize these genes"
 (:var sparser::mv62759 :isa sparser::bio-utilize :agent sparser::mv62763 :object sparser::mv62764
  :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv62763 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv62764 :isa sparser::gene :plural t :has-determiner "THESE" :raw-text "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    source-start
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    question-mark
                    end-of-source
("Which proteins are targeted by STAT3?"
 (:var sparser::mv62773 :isa sparser::target :object sparser::mv62772 :agent sparser::mv62765
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv62772 :isa sparser::protein :plural t :has-determiner "WHICH" :raw-text
  "proteins")
 (:var sparser::mv62765 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    source-start
e8    BIO-UTILIZE   1 "Which reactome pathways utilize srf" 6
                    end-of-source
("Which reactome pathways utilize srf"
 (:var sparser::mv62779 :isa sparser::bio-utilize :agent sparser::mv62782 :object sparser::mv62780
  :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv62782 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv62776 :raw-text "pathways")
 (:var sparser::mv62776 :isa sparser::database :name "Reactome" :uid "Reactome")
 (:var sparser::mv62780 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    source-start
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("Which transcription factors are in the MAPK signaling pathway?"
 (:var sparser::mv62796 :isa sparser::copular-predication-of-pp :item sparser::mv62791 :value
  sparser::mv62795 :prep "IN" :predicate sparser::mv62787)
 (:var sparser::mv62791 :isa sparser::transcription-factor :plural t :has-determiner "WHICH"
  :raw-text "transcription factors")
 (:var sparser::mv62795 :isa sparser::transcription-factor :plural t :in-pathway sparser::mv62785
  :has-determiner "WHICH" :raw-text "transcription factors")
 (:var sparser::mv62785 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv62790 :raw-text "signaling pathway")
 (:var sparser::mv62790 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv62787 :isa sparser::be :present "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    source-start
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    question-mark
                    end-of-source
("Which transcription factors regulate frizzled8 in the liver?"
 (:var sparser::mv62802 :isa sparser::regulate :agent sparser::mv62806 :object sparser::mv62800
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62806 :isa sparser::transcription-factor :plural t :has-determiner "WHICH"
  :raw-text "transcription factors")
 (:var sparser::mv62800 :isa sparser::protein :organ sparser::mv62805 :raw-text "frizzled8" :uid
  "UP:Q9H461" :name "FZD8_HUMAN")
 (:var sparser::mv62805 :isa sparser::liver :has-determiner "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    source-start
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    question-mark
                    end-of-source
("Which transcription factors regulate frizzled8?"
 (:var sparser::mv62812 :isa sparser::regulate :agent sparser::mv62813 :object sparser::mv62810
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62813 :isa sparser::transcription-factor :plural t :has-determiner "WHICH"
  :raw-text "transcription factors")
 (:var sparser::mv62810 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    source-start
e12   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    period
                    end-of-source
("Let's move AKT1 on top."
 (:var sparser::mv62821 :isa sparser::explicit-suggestion :suggestion sparser::mv62817 :marker
  sparser::let-as-directive)
 (:var sparser::mv62817 :isa sparser::move-to :|at-relative-location-OR-goal| sparser::mv62819
  :theme sparser::mv62815 :present "PRESENT")
 (:var sparser::mv62819 :isa sparser::top-qua-location)
 (:var sparser::mv62815 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    source-start
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    period
                    end-of-source
("Let's show the phosphorylated AKT1 on top."
 (:var sparser::mv62830 :isa sparser::explicit-suggestion :suggestion sparser::mv62824 :marker
  sparser::let-as-directive)
 (:var sparser::mv62824 :isa sparser::show :at-relative-location sparser::mv62828
  :|statement-OR-theme| sparser::mv62823 :present "PRESENT")
 (:var sparser::mv62828 :isa sparser::top-qua-location)
 (:var sparser::mv62823 :isa sparser::protein :has-determiner "THE" :predication sparser::mv62826
  :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv62826 :isa sparser::phosphorylate :substrate sparser::mv62823 :raw-text
  "phosphorylated"))

___________________
436: "What are the common upstreams of AKT1 and  BRAF?"

                    source-start
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    question-mark
                    end-of-source
("What are the common upstreams of AKT1 and  BRAF?"
 (:var sparser::mv62833 :isa sparser::be :subject sparser::mv62832 :predicate sparser::mv62845
  :present "PRESENT")
 (:var sparser::mv62832 :isa sparser::what)
 (:var sparser::mv62845 :isa sparser::upstream-segment :plural t :pathwaycomponent sparser::mv62841
  :has-determiner "THE" :predication sparser::mv62835 :raw-text "upstreams")
 (:var sparser::mv62841 :isa sparser::collection :raw-text "AKT1 and  BRAF" :type sparser::protein
  :number 2 :items (sparser::mv62831 sparser::mv62840))
 (:var sparser::mv62831 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv62840 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv62835 :isa sparser::common))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    source-start
e12   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    question-mark
                    end-of-source
("Is stat3 expressed exclusively in liver?"
 (:var sparser::mv62853 :isa sparser::polar-question :statement sparser::mv62848)
 (:var sparser::mv62848 :isa sparser::gene-transcript-express :object sparser::mv62846 :organ
  sparser::mv62851 :past "PAST" :raw-text "expressed")
 (:var sparser::mv62846 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62851 :isa sparser::liver))

___________________
438: "Is stat3 expressed in spleen?"

                    source-start
e10   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    question-mark
                    end-of-source
("Is stat3 expressed in spleen?"
 (:var sparser::mv62860 :isa sparser::polar-question :statement sparser::mv62856)
 (:var sparser::mv62856 :isa sparser::gene-transcript-express :object sparser::mv62854 :organ
  sparser::mv62858 :past "PAST" :raw-text "expressed")
 (:var sparser::mv62854 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62858 :isa sparser::spleen))

___________________
439: "Show phosphorylated akt1 on top."

                    source-start
e11   SHOW          1 "Show phosphorylated akt1 on top" 7
                    period
                    end-of-source
("Show phosphorylated akt1 on top."
 (:var sparser::mv62862 :isa sparser::show :at-relative-location sparser::mv62865
  :|statement-OR-theme| sparser::mv62861 :present "PRESENT")
 (:var sparser::mv62865 :isa sparser::top-qua-location)
 (:var sparser::mv62861 :isa sparser::protein :predication sparser::mv62863 :raw-text "akt1" :uid
  "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv62863 :isa sparser::phosphorylate :substrate sparser::mv62861 :raw-text
  "phosphorylated"))

___________________
440: "What are the common upstreams of AKT1 and  BRA?"

                    source-start
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    question-mark
                    end-of-source
("What are the common upstreams of AKT1 and  BRA?"
 (:var sparser::mv62869 :isa sparser::be :subject sparser::mv62868 :predicate sparser::mv62881
  :present "PRESENT")
 (:var sparser::mv62868 :isa sparser::what)
 (:var sparser::mv62881 :isa sparser::upstream-segment :plural t :pathwaycomponent sparser::mv62877
  :has-determiner "THE" :predication sparser::mv62871 :raw-text "upstreams")
 (:var sparser::mv62877 :isa sparser::collection :raw-text "AKT1 and  BRA" :type sparser::protein
  :number 2 :items (sparser::mv62867 sparser::mv62876))
 (:var sparser::mv62867 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv62876 :isa sparser::bio-entity :name "BRA")
 (:var sparser::mv62871 :isa sparser::common))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    source-start
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    period
                    end-of-source
("RAF activates MEK and MEK activates ERK."
 (:var sparser::mv62889 :isa sparser::collection :raw-text
  "RAF activates MEK and MEK activates ERK" :type sparser::bio-activate :number 2 :items
  (sparser::mv62883 sparser::mv62887))
 (:var sparser::mv62883 :isa sparser::bio-activate :agent sparser::mv62882 :object sparser::mv62884
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv62882 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114")
 (:var sparser::mv62884 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv62887 :isa sparser::bio-activate :agent sparser::mv62886 :object sparser::mv62888
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv62886 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv62888 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
442: "What is the path from RAF to MEK?"

                    source-start
e16   BE            1 "What is the path from RAF to MEK" 9
                    question-mark
                    end-of-source
("What is the path from RAF to MEK?"
 (:var sparser::mv62891 :isa sparser::be :subject sparser::mv62890 :predicate sparser::mv62893
  :present "PRESENT")
 (:var sparser::mv62890 :isa sparser::what)
 (:var sparser::mv62893 :isa sparser::path :end sparser::mv62897 :start sparser::mv62895
  :has-determiner "THE")
 (:var sparser::mv62897 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv62895 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114"))

___________________
443: "remove the fact that mek activates erk"

                    source-start
e14   REMOVE        1 "remove the fact that mek activates erk" 8
                    end-of-source
("remove the fact that mek activates erk"
 (:var sparser::mv62900 :isa remove :object sparser::mv62907 :present "PRESENT" :raw-text "remove")
 (:var sparser::mv62907 :isa sparser::fact :statement sparser::mv62905 :has-determiner "THE")
 (:var sparser::mv62905 :isa sparser::bio-activate :agent sparser::mv62904 :object sparser::mv62906
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv62904 :isa sparser::protein-family :raw-text "mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv62906 :isa sparser::protein-family :raw-text "erk" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
444: "let's show phosphorylated akt1 on top."

                    source-start
e14   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 on top" 10
                    period
                    end-of-source
("let's show phosphorylated akt1 on top."
 (:var sparser::mv62915 :isa sparser::explicit-suggestion :suggestion sparser::mv62910 :marker
  sparser::let-as-directive)
 (:var sparser::mv62910 :isa sparser::show :at-relative-location sparser::mv62913
  :|statement-OR-theme| sparser::mv62909 :present "PRESENT")
 (:var sparser::mv62913 :isa sparser::top-qua-location)
 (:var sparser::mv62909 :isa sparser::protein :predication sparser::mv62911 :raw-text "akt1" :uid
  "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv62911 :isa sparser::phosphorylate :substrate sparser::mv62909 :raw-text
  "phosphorylated"))

___________________
445: "what are positive regulators of the cfos gene?"

                    source-start
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    question-mark
                    end-of-source
("what are positive regulators of the cfos gene?"
 (:var sparser::mv62919 :isa sparser::be :subject sparser::mv62918 :predicate sparser::mv62925
  :present "PRESENT")
 (:var sparser::mv62918 :isa sparser::what)
 (:var sparser::mv62925 :isa sparser::positive-regulator :plural t :theme sparser::mv62923
  :raw-text "positive regulators")
 (:var sparser::mv62923 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv62922
  :raw-text "gene")
 (:var sparser::mv62922 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    source-start
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    question-mark
                    end-of-source
("what transcription factors regulate FOS in soft tissue?"
 (:var sparser::mv62930 :isa sparser::regulate :agent sparser::mv62933 :object sparser::mv62931
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv62933 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv62931 :isa sparser::protein :organ sparser::mv62928 :raw-text "FOS" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv62928 :isa sparser::bio-organ :name "soft tissue" :uid "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    source-start
e14   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    question-mark
                    end-of-source
("Are there any drugs inhibiting MEK?"
 (:var sparser::mv62946 :isa sparser::polar-question :statement sparser::mv62943)
 (:var sparser::mv62943 :isa sparser::there-exists :value sparser::mv62945 :predicate
  sparser::mv62936)
 (:var sparser::mv62945 :isa sparser::drug :plural t :predication sparser::mv62941 :quantifier
  sparser::mv62938 :raw-text "drugs")
 (:var sparser::mv62941 :isa sparser::inhibit :agent sparser::mv62945 :object sparser::mv62942
  :progressive "PROGRESSIVE" :raw-text "inhibiting")
 (:var sparser::mv62942 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv62938 :isa sparser::any :word "any")
 (:var sparser::mv62936 :isa sparser::syntactic-there))

___________________
448: "Are there any drugs targeting KRAS?"

                    source-start
e14   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    question-mark
                    end-of-source
("Are there any drugs targeting KRAS?"
 (:var sparser::mv62958 :isa sparser::polar-question :statement sparser::mv62955)
 (:var sparser::mv62955 :isa sparser::there-exists :value sparser::mv62957 :predicate
  sparser::mv62948)
 (:var sparser::mv62957 :isa sparser::drug :plural t :predication sparser::mv62953 :quantifier
  sparser::mv62950 :raw-text "drugs")
 (:var sparser::mv62953 :isa sparser::target :agent sparser::mv62957 :object sparser::mv62954
  :progressive "PROGRESSIVE" :raw-text "targeting")
 (:var sparser::mv62954 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv62950 :isa sparser::any :word "any")
 (:var sparser::mv62948 :isa sparser::syntactic-there))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    source-start
e31   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    question-mark
                    end-of-source
("Are there any genes in the liver that are regulated by stat3?"
 (:var sparser::mv62980 :isa sparser::polar-question :statement sparser::mv62973)
 (:var sparser::mv62973 :isa sparser::there-exists :value sparser::mv62979 :predicate
  sparser::mv62961)
 (:var sparser::mv62979 :isa sparser::gene :plural t :predication sparser::mv62975 :organ
  sparser::mv62968 :quantifier sparser::mv62963 :raw-text "genes")
 (:var sparser::mv62975 :isa sparser::regulate :object sparser::mv62979 :that-rel t :agent
  sparser::mv62959 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv62959 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62968 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv62963 :isa sparser::any :word "any")
 (:var sparser::mv62961 :isa sparser::syntactic-there))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    source-start
e31   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    question-mark
                    end-of-source
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:var sparser::mv63001 :isa sparser::polar-question :statement sparser::mv62995)
 (:var sparser::mv62995 :isa sparser::there-exists :value sparser::mv63000 :predicate
  sparser::mv62983)
 (:var sparser::mv63000 :isa sparser::gene :plural t :predication sparser::mv62988 :quantifier
  sparser::mv62985 :raw-text "genes")
 (:var sparser::mv62988 :isa sparser::involve :object sparser::mv63000 :theme sparser::mv62990
  :past "PAST")
 (:var sparser::mv62990 :isa sparser::apoptosis :predication sparser::mv62997 :raw-text
  "apoptosis")
 (:var sparser::mv62997 :isa sparser::regulate :affected-process sparser::mv62990 :that-rel t
  :agent sparser::mv62981 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv62981 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv62985 :isa sparser::any :word "any")
 (:var sparser::mv62983 :isa sparser::syntactic-there))

___________________
451: "Are there any genes stat3 is upstream of?"

                    source-start
e13   THERE-EXISTS  1 "Are there " 3
e17   BE            3 "any genes stat3 is upstream " 9
e12   OF            9 "of" 10
                    question-mark
                    end-of-source
                    source-start
e13   SUBJ+VERB     1 "Are there " 3
e17   S             3 "any genes stat3 is upstream " 9
e12   PREPOSITION   9 "of" 10
                    question-mark
                    end-of-source


___________________
452: "Are there any inhibitors for JAK1?"

                    source-start
e15   THERE-EXISTS  1 "Are there any inhibitors for JAK1" 8
                    question-mark
                    end-of-source
("Are there any inhibitors for JAK1?"
 (:var sparser::mv63026 :isa sparser::polar-question :statement sparser::mv63022)
 (:var sparser::mv63022 :isa sparser::there-exists :value sparser::mv63025 :predicate
  sparser::mv63016)
 (:var sparser::mv63025 :isa sparser::inhibitor :plural t :|target-OR-protein| sparser::mv63014
  :quantifier sparser::mv63018 :raw-text "inhibitors")
 (:var sparser::mv63014 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
 (:var sparser::mv63018 :isa sparser::any :word "any")
 (:var sparser::mv63016 :isa sparser::syntactic-there))

___________________
453: "Are there genes regulated by elk1 and srf"

                    source-start
e19   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    end-of-source
("Are there genes regulated by elk1 and srf"
 (:var sparser::mv63041 :isa sparser::polar-question :statement sparser::mv63037)
 (:var sparser::mv63037 :isa sparser::there-exists :value sparser::mv63040 :predicate
  sparser::mv63029)
 (:var sparser::mv63040 :isa sparser::gene :plural t :predication sparser::mv63033 :raw-text
  "genes")
 (:var sparser::mv63033 :isa sparser::regulate :object sparser::mv63040 :agent sparser::mv63038
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv63038 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv63027 sparser::mv63036))
 (:var sparser::mv63027 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63036 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv63029 :isa sparser::syntactic-there))

___________________
454: "Can you find any apoptotic pathways stat3 is involved in?"

                    source-start
e24   BIO-FIND      1 "Can you find any apoptotic pathways stat3 " 9
e21   INVOLVE       9 "is involved " 11
e13   IN            11 "in" 12
                    question-mark
                    end-of-source
                    source-start
e24   S             1 "Can you find any apoptotic pathways stat3 " 9
e21   VG+PASSIVE    9 "is involved " 11
e13   PREPOSITION   11 "in" 12
                    question-mark
                    end-of-source


___________________
455: "Can you find any apoptotic pathways that stat3 is involved in?"

                    source-start
e2    MODAL         1 "Can " 2
e27   BIO-FIND      2 "you find any apoptotic pathways that stat3 is involved " 12
e15   IN            12 "in" 13
                    question-mark
                    end-of-source
                    source-start
e2    PREPOSED-AUXILIARY  1 "Can " 2
e27   S             2 "you find any apoptotic pathways that stat3 is involved " 12
e15   PREPOSITION   12 "in" 13
                    question-mark
                    end-of-source


___________________
456: "Can you look up which genes targeted by stat3 are involved in apoptosis?"

                    source-start
e32   LOOK-UP       1 "Can you look up which " 6
e28   INVOLVE       6 "genes targeted by stat3 are involved in apoptosis" 15
                    question-mark
                    end-of-source
                    source-start
e32   TRANSITIVE-CLAUSE-WITHOUT-OBJECT  1 "Can you look up which " 6
e28   S             6 "genes targeted by stat3 are involved in apoptosis" 15
                    question-mark
                    end-of-source


___________________
457: "Can you show me genes regulated by ELK1"

                    source-start
e19   SHOW          1 "Can you show me genes regulated by ELK1" 10
                    end-of-source
("Can you show me genes regulated by ELK1"
 (:var sparser::mv63108 :isa sparser::polar-question :statement sparser::mv63100)
 (:var sparser::mv63100 :isa sparser::show :agent sparser::mv63099 :|statement-OR-theme|
  sparser::mv63107 :beneficiary sparser::mv63101 :modal "CAN")
 (:var sparser::mv63099 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63107 :isa sparser::gene :plural t :predication sparser::mv63104 :raw-text
  "genes")
 (:var sparser::mv63104 :isa sparser::regulate :object sparser::mv63107 :agent sparser::mv63097
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv63097 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63101 :isa sparser::interlocutor :name "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    source-start
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    end-of-source
("Can you show me genes that are regulated by ELK1"
 (:var sparser::mv63123 :isa sparser::polar-question :statement sparser::mv63112)
 (:var sparser::mv63112 :isa sparser::show :agent sparser::mv63111 :|statement-OR-theme|
  sparser::mv63122 :beneficiary sparser::mv63113 :modal "CAN")
 (:var sparser::mv63111 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63122 :isa sparser::gene :plural t :predication sparser::mv63120 :raw-text
  "genes")
 (:var sparser::mv63120 :isa sparser::regulate :object sparser::mv63122 :that-rel t :agent
  sparser::mv63109 :modal "CAN" :raw-text "regulated")
 (:var sparser::mv63109 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63113 :isa sparser::interlocutor :name "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    source-start
e21   SHOW          1 "Can you show me the pahtways " 7
e17   INVOLVE       7 "that involve SRF" 10
                    end-of-source
                    source-start
e21   S             1 "Can you show me the pahtways " 7
e17   SUBJECT-RELATIVE-CLAUSE 7 "that involve SRF" 10
                    end-of-source


___________________
460: "Can you tell me the genes regulated by STAT3"

                    source-start
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    end-of-source
("Can you tell me the genes regulated by STAT3"
 (:var sparser::mv63147 :isa sparser::polar-question :statement sparser::mv63137)
 (:var sparser::mv63137 :isa sparser::tell :agent sparser::mv63136 :theme sparser::mv63146
  :beneficiary sparser::mv63138 :modal "CAN")
 (:var sparser::mv63136 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63146 :isa sparser::gene :plural t :predication sparser::mv63142 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63142 :isa sparser::regulate :object sparser::mv63146 :agent sparser::mv63134
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv63134 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63138 :isa sparser::interlocutor :name "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    source-start
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    end-of-source
("Can you tell me the genes that STAT3 regulates"
 (:var sparser::mv63160 :isa sparser::polar-question :statement sparser::mv63151)
 (:var sparser::mv63151 :isa sparser::tell :agent sparser::mv63150 :theme sparser::mv63159
  :beneficiary sparser::mv63152 :modal "CAN")
 (:var sparser::mv63150 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63159 :isa sparser::gene :plural t :predication sparser::mv63157 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63157 :isa sparser::regulate :object sparser::mv63159 :that-rel t :agent
  sparser::mv63148 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv63148 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63152 :isa sparser::interlocutor :name "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    source-start
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    end-of-source
("Can you tell me the genes that are regulated by STAT3"
 (:var sparser::mv63177 :isa sparser::polar-question :statement sparser::mv63164)
 (:var sparser::mv63164 :isa sparser::tell :agent sparser::mv63163 :theme sparser::mv63176
  :beneficiary sparser::mv63165 :modal "CAN")
 (:var sparser::mv63163 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63176 :isa sparser::gene :plural t :predication sparser::mv63174 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63174 :isa sparser::regulate :object sparser::mv63176 :that-rel t :agent
  sparser::mv63161 :modal "CAN" :raw-text "regulated")
 (:var sparser::mv63161 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63165 :isa sparser::interlocutor :name "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    source-start
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    end-of-source
("Can you tell me the genes which are regulated by STAT3"
 (:var sparser::mv63195 :isa sparser::polar-question :statement sparser::mv63181)
 (:var sparser::mv63181 :isa sparser::tell :agent sparser::mv63180 :theme sparser::mv63194
  :beneficiary sparser::mv63182 :modal "CAN")
 (:var sparser::mv63180 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63194 :isa sparser::gene :plural t :predication sparser::mv63193 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63193 :isa sparser::regulate :object sparser::mv63194 :agent sparser::mv63178
  :modal sparser::mv63179 :raw-text "regulated")
 (:var sparser::mv63178 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63179 :isa sparser::can)
 (:var sparser::mv63182 :isa sparser::interlocutor :name "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    source-start
e29   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    end-of-source
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:var sparser::mv63217 :isa sparser::polar-question :statement sparser::mv63201)
 (:var sparser::mv63201 :isa sparser::tell :agent sparser::mv63200 :theme sparser::mv63216
  :beneficiary sparser::mv63202 :modal "CAN")
 (:var sparser::mv63200 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63216 :isa sparser::transcription-factor :plural t :predication sparser::mv63214
  :has-determiner "WHAT" :raw-text "transcription factors")
 (:var sparser::mv63214 :isa sparser::share :wh-element sparser::mv63210 :wh-path nil :raw-text
  "shared" :modal sparser::mv63199 :participant sparser::mv63209 :object sparser::mv63210)
 (:var sparser::mv63210 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv63199 :isa sparser::can)
 (:var sparser::mv63209 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv63198 sparser::mv63208))
 (:var sparser::mv63198 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63208 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv63202 :isa sparser::interlocutor :name "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    source-start
e25   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    end-of-source
("Can you tell me which genes are regulated by STAT3"
 (:var sparser::mv63236 :isa sparser::polar-question :statement sparser::mv63221)
 (:var sparser::mv63221 :isa sparser::tell :agent sparser::mv63220 :theme sparser::mv63235
  :beneficiary sparser::mv63222 :modal "CAN")
 (:var sparser::mv63220 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63235 :isa sparser::gene :plural t :predication sparser::mv63233 :has-determiner
  "WHICH" :raw-text "genes")
 (:var sparser::mv63233 :isa sparser::regulate :wh-element sparser::mv63229 :wh-path nil :raw-text
  "regulated" :modal sparser::mv63219 :agent sparser::mv63218 :object sparser::mv63229)
 (:var sparser::mv63229 :isa sparser::gene :plural t :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv63219 :isa sparser::can)
 (:var sparser::mv63218 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63222 :isa sparser::interlocutor :name "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    source-start
e33   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    question-mark
                    end-of-source
("Can you tell me which genes in the liver are regulated by stat3?"
 (:var sparser::mv63260 :isa sparser::polar-question :statement sparser::mv63240)
 (:var sparser::mv63240 :isa sparser::tell :agent sparser::mv63239 :theme sparser::mv63259
  :beneficiary sparser::mv63241 :modal "CAN")
 (:var sparser::mv63239 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63259 :isa sparser::gene :plural t :predication sparser::mv63257 :organ
  sparser::mv63247 :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv63257 :isa sparser::regulate :wh-element sparser::mv63255 :wh-path nil :raw-text
  "regulated" :modal sparser::mv63238 :agent sparser::mv63237 :object sparser::mv63255)
 (:var sparser::mv63255 :isa sparser::gene :plural t :organ sparser::mv63247 :has-determiner
  "WHICH" :raw-text "genes")
 (:var sparser::mv63247 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv63238 :isa sparser::can)
 (:var sparser::mv63237 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63241 :isa sparser::interlocutor :name "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    source-start
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    question-mark
                    end-of-source
("Can you tell me which genes stat3 regulates?"
 (:var sparser::mv63272 :isa sparser::polar-question :statement sparser::mv63264)
 (:var sparser::mv63264 :isa sparser::tell :agent sparser::mv63263 :theme sparser::mv63271
  :beneficiary sparser::mv63265 :modal "CAN")
 (:var sparser::mv63263 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv63271 :isa sparser::gene :plural t :predication sparser::mv63269 :has-determiner
  "WHICH" :raw-text "genes")
 (:var sparser::mv63269 :isa sparser::regulate :object sparser::mv63271 :agent sparser::mv63261
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv63261 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63265 :isa sparser::interlocutor :name "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    source-start
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    question-mark
                    end-of-source
("Does STAT3 affect the expression of c-fos?"
 (:var sparser::mv63282 :isa sparser::polar-question :statement sparser::mv63280)
 (:var sparser::mv63280 :isa sparser::affect :agent sparser::mv63273 :affected-process
  sparser::mv63278 :raw-text "affect")
 (:var sparser::mv63273 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63278 :isa sparser::gene-transcript-express :object sparser::mv63274
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv63274 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    source-start
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    question-mark
                    end-of-source
("Does STAT3 affect the expression of the c-fos gene?"
 (:var sparser::mv63294 :isa sparser::polar-question :statement sparser::mv63292)
 (:var sparser::mv63292 :isa sparser::affect :agent sparser::mv63283 :affected-process
  sparser::mv63288 :raw-text "affect")
 (:var sparser::mv63283 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63288 :isa sparser::gene-transcript-express :object sparser::mv63291
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv63291 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv63284
  :raw-text "gene")
 (:var sparser::mv63284 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    source-start
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    question-mark
                    end-of-source
("Does STAT3 increase the expression of the c-fos gene?"
 (:var sparser::mv63307 :isa sparser::polar-question :statement sparser::mv63305)
 (:var sparser::mv63305 :isa sparser::increase :agent sparser::mv63295 :affected-process
  sparser::mv63301 :raw-text "increase")
 (:var sparser::mv63295 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63301 :isa sparser::gene-transcript-express :object sparser::mv63304
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv63304 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv63296
  :raw-text "gene")
 (:var sparser::mv63296 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    source-start
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    question-mark
                    end-of-source
("Does STAT3 increase transcription of the c-fos gene?"
 (:var sparser::mv63319 :isa sparser::polar-question :statement sparser::mv63317)
 (:var sparser::mv63317 :isa sparser::increase :agent sparser::mv63308 :affected-process
  sparser::mv63313 :raw-text "increase")
 (:var sparser::mv63308 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63313 :isa sparser::transcribe :object sparser::mv63316 :raw-text
  "transcription")
 (:var sparser::mv63316 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv63309
  :raw-text "gene")
 (:var sparser::mv63309 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    source-start
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    question-mark
                    end-of-source
("Does stat3 affect the expression of cfos?"
 (:var sparser::mv63329 :isa sparser::polar-question :statement sparser::mv63327)
 (:var sparser::mv63327 :isa sparser::affect :agent sparser::mv63320 :affected-process
  sparser::mv63324 :raw-text "affect")
 (:var sparser::mv63320 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63324 :isa sparser::gene-transcript-express :object sparser::mv63326
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv63326 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    source-start
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    question-mark
                    end-of-source
("Does the mTor pathway contain SGK1?"
 (:var sparser::mv63339 :isa sparser::polar-question :statement sparser::mv63338)
 (:var sparser::mv63338 :isa sparser::contain :theme sparser::mv63336 :patient sparser::mv63330)
 (:var sparser::mv63336 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv63333
  :raw-text "pathway")
 (:var sparser::mv63333 :isa sparser::protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
 (:var sparser::mv63330 :isa sparser::protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    source-start
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    period
                    end-of-source
("Find a treatment for pancreatic cancer."
 (:var sparser::mv63342 :isa sparser::bio-find :object sparser::mv63344 :present "PRESENT"
  :raw-text "Find")
 (:var sparser::mv63344 :isa sparser::treatment :disease sparser::mv63340 :has-determiner "A"
  :raw-text "treatment")
 (:var sparser::mv63340 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    source-start
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    end-of-source
("Find genes in the liver regulated by stat3"
 (:var sparser::mv63349 :isa sparser::bio-find :object sparser::mv63359 :present "PRESENT"
  :raw-text "Find")
 (:var sparser::mv63359 :isa sparser::gene :plural t :predication sparser::mv63355 :organ
  sparser::mv63354 :raw-text "genes")
 (:var sparser::mv63355 :isa sparser::regulate :object sparser::mv63359 :agent sparser::mv63347
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv63347 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63354 :isa sparser::liver :has-determiner "THE"))

___________________
476: "Find genes that stat3 regulates"

                    source-start
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    end-of-source
("Find genes that stat3 regulates"
 (:var sparser::mv63363 :isa sparser::bio-find :object sparser::mv63368 :present "PRESENT"
  :raw-text "Find")
 (:var sparser::mv63368 :isa sparser::gene :plural t :predication sparser::mv63367 :raw-text
  "genes")
 (:var sparser::mv63367 :isa sparser::regulate :object sparser::mv63368 :that-rel t :agent
  sparser::mv63361 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv63361 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    source-start
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    end-of-source
("Find transcription factors shared by elk1 and srf"
 (:var sparser::mv63373 :isa sparser::bio-find :object sparser::mv63370 :present "PRESENT"
  :raw-text "Find")
 (:var sparser::mv63370 :isa sparser::transcription-factor :plural t :predication sparser::mv63374
  :raw-text "transcription factors")
 (:var sparser::mv63374 :isa sparser::share :object sparser::mv63370 :participant sparser::mv63378
  :past "PAST" :raw-text "shared")
 (:var sparser::mv63378 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv63371 sparser::mv63377))
 (:var sparser::mv63371 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63377 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    source-start
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    question-mark
                    end-of-source
("How does KRAS activate MAPK3?"
 (:var sparser::mv63385 :isa sparser::bio-activate :manner sparser::mv63382 :agent sparser::mv63384
  :object sparser::mv63381 :present "PRESENT" :raw-text "activate")
 (:var sparser::mv63382 :isa sparser::how)
 (:var sparser::mv63384 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv63381 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    source-start
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    question-mark
                    end-of-source
("How does STAT3 regulate the c-fos gene?"
 (:var sparser::mv63390 :isa sparser::regulate :manner sparser::mv63388 :agent sparser::mv63386
  :object sparser::mv63392 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv63388 :isa sparser::how)
 (:var sparser::mv63386 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63392 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv63387
  :raw-text "gene")
 (:var sparser::mv63387 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
480: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    source-start
e26   KNOCK-OUT     1 "How does knocking out p53 cause cancer via its effect on miRNAs" 14
                    question-mark
                    end-of-source
("How does knocking out p53 cause cancer via its effect on miRNAs?"
 (:var sparser::mv63408 :isa sparser::knock-out :raw-text "knocking out" :|agent-OR-cause|
  sparser::mv63394 :object sparser::mv63412)
 (:var sparser::mv63394 :isa sparser::how)
 (:var sparser::mv63412 :isa sparser::cancer :modifier sparser::mv63398 :modifier sparser::mv63398)
 (:var sparser::mv63398 :isa sparser::cause :by-means-of sparser::mv63410 :raw-text "cause")
 (:var sparser::mv63410 :isa sparser::effect :object sparser::mv63407 :participant sparser::mv63402
  :raw-text "effect")
 (:var sparser::mv63407 :isa sparser::micro-rna :plural t :raw-text "miRNAs")
 (:var sparser::mv63402 :isa sparser::pronoun/inanimate :word "its"))

___________________
481: "How does stat3 regulate apoptosis in the liver?"

                    source-start
e16   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    question-mark
                    end-of-source
("How does stat3 regulate apoptosis in the liver?"
 (:var sparser::mv63416 :isa sparser::regulate :manner sparser::mv63414 :agent sparser::mv63413
  :affected-process sparser::mv63417 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv63414 :isa sparser::how)
 (:var sparser::mv63413 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63417 :isa sparser::apoptosis :organ sparser::mv63420 :raw-text "apoptosis")
 (:var sparser::mv63420 :isa sparser::liver :has-determiner "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    source-start
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    question-mark
                    end-of-source
("How does stat3 regulate apoptosis?"
 (:var sparser::mv63425 :isa sparser::regulate :manner sparser::mv63423 :agent sparser::mv63422
  :affected-process sparser::mv63426 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv63423 :isa sparser::how)
 (:var sparser::mv63422 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63426 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    source-start
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    question-mark
                    end-of-source
("How does stat3 regulate apoptotic genes?"
 (:var sparser::mv63430 :isa sparser::regulate :manner sparser::mv63428 :agent sparser::mv63427
  :object sparser::mv63435 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv63428 :isa sparser::how)
 (:var sparser::mv63427 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63435 :isa sparser::gene :plural t :cellular-process sparser::mv63431 :raw-text
  "genes")
 (:var sparser::mv63431 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    source-start
e16   BE            1 "How is stat3 involved in apoptotic regulation" 9
                    question-mark
                    end-of-source
("How is stat3 involved in apoptotic regulation?"
 (:var sparser::mv63445 :isa sparser::wh-question :statement sparser::mv63438 :wh sparser::how)
 (:var sparser::mv63438 :isa sparser::be :predicate sparser::mv63436 :present "PRESENT")
 (:var sparser::mv63436 :isa sparser::protein :predication sparser::mv63439 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv63439 :isa sparser::involve :object sparser::mv63436 :theme sparser::mv63443
  :past "PAST")
 (:var sparser::mv63443 :isa sparser::regulate :cellular-process sparser::mv63441 :raw-text
  "regulation")
 (:var sparser::mv63441 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    source-start
e23   BE            1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    question-mark
                    end-of-source
("How is stat3 involved in apoptotis regulation in the liver?"
 (:var sparser::mv63458 :isa sparser::wh-question :statement sparser::mv63448 :wh sparser::how)
 (:var sparser::mv63448 :isa sparser::be :predicate sparser::mv63446 :present "PRESENT")
 (:var sparser::mv63446 :isa sparser::protein :predication sparser::mv63449 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv63449 :isa sparser::involve :object sparser::mv63446 :theme sparser::mv63452
  :past "PAST")
 (:var sparser::mv63452 :isa sparser::regulate :organ sparser::mv63455 :|agent-OR-object|
  sparser::mv63451 :raw-text "regulation")
 (:var sparser::mv63455 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv63451 :isa sparser::bio-entity :name "apoptotis"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    source-start
e15   BE            1 "How is stat3 involved in regulating apoptosis" 9
                    question-mark
                    end-of-source
("How is stat3 involved in regulating apoptosis?"
 (:var sparser::mv63467 :isa sparser::wh-question :statement sparser::mv63461 :wh sparser::how)
 (:var sparser::mv63461 :isa sparser::be :predicate sparser::mv63459 :present "PRESENT")
 (:var sparser::mv63459 :isa sparser::protein :predication sparser::mv63462 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv63462 :isa sparser::involve :object sparser::mv63459 :theme sparser::mv63464
  :past "PAST")
 (:var sparser::mv63464 :isa sparser::regulate :affected-process sparser::mv63465 :progressive
  "PROGRESSIVE" :raw-text "regulating")
 (:var sparser::mv63465 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    source-start
e15   BE            1 "How is stat3 used to regulate apoptosis" 9
                    question-mark
                    end-of-source
("How is stat3 used to regulate apoptosis?"
 (:var sparser::mv63476 :isa sparser::wh-question :statement sparser::mv63470 :wh sparser::how)
 (:var sparser::mv63470 :isa sparser::be :predicate sparser::mv63468 :present "PRESENT")
 (:var sparser::mv63468 :isa sparser::protein :predication sparser::mv63471 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv63471 :isa sparser::bio-use :object sparser::mv63468 :theme sparser::mv63475
  :past "PAST" :raw-text "used")
 (:var sparser::mv63475 :isa sparser::regulate :affected-process sparser::mv63474 :raw-text
  "regulate")
 (:var sparser::mv63474 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    source-start
e18   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("How many genes are in the MAPK signaling pathway?"
 (:var sparser::mv63490 :isa sparser::copular-predication-of-pp :item sparser::mv63485 :value
  sparser::mv63489 :prep "IN" :predicate sparser::mv63481)
 (:var sparser::mv63485 :isa sparser::gene :plural t :quantifier sparser::how-many :raw-text
  "genes")
 (:var sparser::mv63489 :isa sparser::gene :plural t :context sparser::mv63478 :quantifier
  sparser::how-many :raw-text "genes")
 (:var sparser::mv63478 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv63484 :raw-text "signaling pathway")
 (:var sparser::mv63484 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv63481 :isa sparser::be :present "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    source-start
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    question-mark
                    end-of-source
("How might a STAT3 mutation affect breast cancer?"
 (:var sparser::mv63499 :isa sparser::affect :manner sparser::mv63494 :modal sparser::mv63495
  :agent sparser::mv63497 :object sparser::mv63493 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv63494 :isa sparser::how) (:var sparser::mv63495 :isa sparser::might)
 (:var sparser::mv63497 :isa sparser::mutation :has-determiner "A" :object sparser::mv63492
  :raw-text "mutation")
 (:var sparser::mv63492 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63493 :isa sparser::cancer :name "breast cancer" :uid "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    source-start
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    question-mark
                    end-of-source
("Is STAT3 a regulator for c-fos?"
 (:var sparser::mv63507 :isa sparser::polar-question :statement sparser::mv63502)
 (:var sparser::mv63502 :isa sparser::be :subject sparser::mv63500 :predicate sparser::mv63504)
 (:var sparser::mv63500 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63504 :isa sparser::regulator :theme sparser::mv63501 :has-determiner "A"
  :raw-text "regulator")
 (:var sparser::mv63501 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
491: "Is STAT3 a regulator of c-fos"

                    source-start
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    end-of-source
("Is STAT3 a regulator of c-fos"
 (:var sparser::mv63515 :isa sparser::polar-question :statement sparser::mv63510)
 (:var sparser::mv63510 :isa sparser::be :subject sparser::mv63508 :predicate sparser::mv63512)
 (:var sparser::mv63508 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63512 :isa sparser::regulator :theme sparser::mv63509 :has-determiner "A"
  :raw-text "regulator")
 (:var sparser::mv63509 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    source-start
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    end-of-source
("Is STAT3 a regulator of the c-fos gene"
 (:var sparser::mv63525 :isa sparser::polar-question :statement sparser::mv63518)
 (:var sparser::mv63518 :isa sparser::be :subject sparser::mv63516 :predicate sparser::mv63520)
 (:var sparser::mv63516 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63520 :isa sparser::regulator :theme sparser::mv63523 :has-determiner "A"
  :raw-text "regulator")
 (:var sparser::mv63523 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv63517
  :raw-text "gene")
 (:var sparser::mv63517 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
493: "Is STAT3 a regulator of the c-fos gene?"

                    source-start
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    question-mark
                    end-of-source
("Is STAT3 a regulator of the c-fos gene?"
 (:var sparser::mv63535 :isa sparser::polar-question :statement sparser::mv63528)
 (:var sparser::mv63528 :isa sparser::be :subject sparser::mv63526 :predicate sparser::mv63530)
 (:var sparser::mv63526 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63530 :isa sparser::regulator :theme sparser::mv63533 :has-determiner "A"
  :raw-text "regulator")
 (:var sparser::mv63533 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv63527
  :raw-text "gene")
 (:var sparser::mv63527 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    source-start
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    end-of-source
("Is STAT3 a transcription factor for c-fos gene"
 (:var sparser::mv63544 :isa sparser::polar-question :statement sparser::mv63539)
 (:var sparser::mv63539 :isa sparser::be :subject sparser::mv63536 :predicate sparser::mv63537)
 (:var sparser::mv63536 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63537 :isa sparser::transcription-factor :controlled-gene sparser::mv63542
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv63542 :isa sparser::gene :expresses sparser::mv63538 :raw-text "gene")
 (:var sparser::mv63538 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
495: "Is STAT3 a transcription factor for c-fos"

                    source-start
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    end-of-source
("Is STAT3 a transcription factor for c-fos"
 (:var sparser::mv63552 :isa sparser::polar-question :statement sparser::mv63548)
 (:var sparser::mv63548 :isa sparser::be :subject sparser::mv63545 :predicate sparser::mv63546)
 (:var sparser::mv63545 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63546 :isa sparser::transcription-factor :controlled-gene sparser::mv63547
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv63547 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
496: "Is STAT3 a transcription factor for c-fos?"

                    source-start
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    question-mark
                    end-of-source
("Is STAT3 a transcription factor for c-fos?"
 (:var sparser::mv63560 :isa sparser::polar-question :statement sparser::mv63556)
 (:var sparser::mv63556 :isa sparser::be :subject sparser::mv63553 :predicate sparser::mv63554)
 (:var sparser::mv63553 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63554 :isa sparser::transcription-factor :controlled-gene sparser::mv63555
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv63555 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
497: "Is STAT3 a transcription factor for the c-fos gene?"

                    source-start
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    question-mark
                    end-of-source
("Is STAT3 a transcription factor for the c-fos gene?"
 (:var sparser::mv63570 :isa sparser::polar-question :statement sparser::mv63564)
 (:var sparser::mv63564 :isa sparser::be :subject sparser::mv63561 :predicate sparser::mv63562)
 (:var sparser::mv63561 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63562 :isa sparser::transcription-factor :controlled-gene sparser::mv63568
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv63568 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv63563
  :raw-text "gene")
 (:var sparser::mv63563 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
498: "Is STAT3 regulated by c-fos?"

                    source-start
e11   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    question-mark
                    end-of-source
("Is STAT3 regulated by c-fos?"
 (:var sparser::mv63577 :isa sparser::polar-question :statement sparser::mv63574)
 (:var sparser::mv63574 :isa sparser::regulate :object sparser::mv63571 :agent sparser::mv63572
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv63571 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63572 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    source-start
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    end-of-source
("Is Stat3 a transcription factor for the c-fos gene"
 (:var sparser::mv63587 :isa sparser::polar-question :statement sparser::mv63581)
 (:var sparser::mv63581 :isa sparser::be :subject sparser::mv63578 :predicate sparser::mv63579)
 (:var sparser::mv63578 :isa sparser::protein :raw-text "Stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63579 :isa sparser::transcription-factor :controlled-gene sparser::mv63585
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv63585 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv63580
  :raw-text "gene")
 (:var sparser::mv63580 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
500: "List genes regulated by ELK1"

                    source-start
e9    LIST          1 "List genes regulated by ELK1" 7
                    end-of-source
("List genes regulated by ELK1"
 (:var sparser::mv63589 :isa list :theme sparser::mv63591 :present "PRESENT")
 (:var sparser::mv63591 :isa sparser::gene :plural t :predication sparser::mv63592 :raw-text
  "genes")
 (:var sparser::mv63592 :isa sparser::regulate :object sparser::mv63591 :agent sparser::mv63588
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv63588 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    source-start
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    end-of-source
("List genes that are regulated by ELK1"
 (:var sparser::mv63597 :isa list :theme sparser::mv63606 :present "PRESENT")
 (:var sparser::mv63606 :isa sparser::gene :plural t :predication sparser::mv63604 :raw-text
  "genes")
 (:var sparser::mv63604 :isa sparser::regulate :object sparser::mv63606 :that-rel t :agent
  sparser::mv63596 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv63596 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    source-start
e13   LIST          1 "List some genes that stat3 regulates" 8
                    end-of-source
("List some genes that stat3 regulates"
 (:var sparser::mv63608 :isa list :theme sparser::mv63615 :present "PRESENT")
 (:var sparser::mv63615 :isa sparser::gene :plural t :predication sparser::mv63613 :quantifier
  sparser::mv63609 :raw-text "genes")
 (:var sparser::mv63613 :isa sparser::regulate :object sparser::mv63615 :that-rel t :agent
  sparser::mv63607 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv63607 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63609 :isa some :word "some"))

___________________
503: "List the genes STAT3 regulates"

                    source-start
e11   LIST          1 "List the genes STAT3 regulates" 7
                    end-of-source
("List the genes STAT3 regulates"
 (:var sparser::mv63617 :isa list :theme sparser::mv63623 :present "PRESENT")
 (:var sparser::mv63623 :isa sparser::gene :plural t :predication sparser::mv63621 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63621 :isa sparser::regulate :object sparser::mv63623 :agent sparser::mv63616
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv63616 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    source-start
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    end-of-source
("List the genes that are regulated by STAT3"
 (:var sparser::mv63625 :isa list :theme sparser::mv63636 :present "PRESENT")
 (:var sparser::mv63636 :isa sparser::gene :plural t :predication sparser::mv63634 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63634 :isa sparser::regulate :object sparser::mv63636 :that-rel t :agent
  sparser::mv63624 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv63624 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    source-start
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    end-of-source
("List the genes which STAT3 regulates"
 (:var sparser::mv63638 :isa list :theme sparser::mv63645 :present "PRESENT")
 (:var sparser::mv63645 :isa sparser::gene :plural t :predication sparser::mv63643 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63643 :isa sparser::regulate :object sparser::mv63645 :agent sparser::mv63637
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv63637 :isa sparser::protein :has-determiner "WHICH" :raw-text "STAT3" :uid
  "UP:P40763" :name "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    source-start
e11   LIST          1 "List the pahtways " 4
e10   INVOLVE       4 "that involve SRF" 7
                    end-of-source
                    source-start
e11   VP            1 "List the pahtways " 4
e10   SUBJECT-RELATIVE-CLAUSE 4 "that involve SRF" 7
                    end-of-source


___________________
507: "Show me genes regulated by ELK1"

                    source-start
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    end-of-source
("Show me genes regulated by ELK1"
 (:var sparser::mv63653 :isa sparser::show :|statement-OR-theme| sparser::mv63660 :beneficiary
  sparser::mv63654 :present "PRESENT")
 (:var sparser::mv63660 :isa sparser::gene :plural t :predication sparser::mv63657 :raw-text
  "genes")
 (:var sparser::mv63657 :isa sparser::regulate :object sparser::mv63660 :agent sparser::mv63652
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv63652 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63654 :isa sparser::interlocutor :name "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    source-start
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    end-of-source
("Show me genes that are regulated by ELK1"
 (:var sparser::mv63662 :isa sparser::show :|statement-OR-theme| sparser::mv63672 :beneficiary
  sparser::mv63663 :present "PRESENT")
 (:var sparser::mv63672 :isa sparser::gene :plural t :predication sparser::mv63670 :raw-text
  "genes")
 (:var sparser::mv63670 :isa sparser::regulate :object sparser::mv63672 :that-rel t :agent
  sparser::mv63661 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv63661 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63663 :isa sparser::interlocutor :name "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    source-start
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    end-of-source
("Show me genes that stat3 regulates"
 (:var sparser::mv63674 :isa sparser::show :|statement-OR-theme| sparser::mv63680 :beneficiary
  sparser::mv63675 :present "PRESENT")
 (:var sparser::mv63680 :isa sparser::gene :plural t :predication sparser::mv63679 :raw-text
  "genes")
 (:var sparser::mv63679 :isa sparser::regulate :object sparser::mv63680 :that-rel t :agent
  sparser::mv63673 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv63673 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63675 :isa sparser::interlocutor :name "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    source-start
e13   SHOW          1 "Show me the pahtways " 5
e11   INVOLVE       5 "that involve SRF" 8
                    end-of-source
                    source-start
e13   VP            1 "Show me the pahtways " 5
e11   SUBJECT-RELATIVE-CLAUSE 5 "that involve SRF" 8
                    end-of-source


___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    source-start
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    end-of-source
("Show me what transcription factors are shared by elk1 and srf"
 (:var sparser::mv63691 :isa sparser::show :|statement-OR-theme| sparser::mv63706 :beneficiary
  sparser::mv63692 :present "PRESENT")
 (:var sparser::mv63706 :isa sparser::transcription-factor :plural t :predication sparser::mv63704
  :has-determiner "WHAT" :raw-text "transcription factors")
 (:var sparser::mv63704 :isa sparser::share :wh-element sparser::mv63700 :wh-path nil :raw-text
  "shared" :present "PRESENT" :participant sparser::mv63699 :object sparser::mv63700)
 (:var sparser::mv63700 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv63699 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv63690 sparser::mv63698))
 (:var sparser::mv63690 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63698 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv63692 :isa sparser::interlocutor :name "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    source-start
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    end-of-source
("Show me which genes are regulated by STAT3"
 (:var sparser::mv63708 :isa sparser::show :|statement-OR-theme| sparser::mv63722 :beneficiary
  sparser::mv63709 :present "PRESENT")
 (:var sparser::mv63722 :isa sparser::gene :plural t :predication sparser::mv63720 :has-determiner
  "WHICH" :raw-text "genes")
 (:var sparser::mv63720 :isa sparser::regulate :wh-element sparser::mv63716 :wh-path nil :raw-text
  "regulated" :present "PRESENT" :agent sparser::mv63707 :object sparser::mv63716)
 (:var sparser::mv63716 :isa sparser::gene :plural t :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv63707 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63709 :isa sparser::interlocutor :name "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    source-start
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    end-of-source
("Show the genes which STAT3 regulates"
 (:var sparser::mv63724 :isa sparser::show :|statement-OR-theme| sparser::mv63731 :present
  "PRESENT")
 (:var sparser::mv63731 :isa sparser::gene :plural t :predication sparser::mv63729 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63729 :isa sparser::regulate :object sparser::mv63731 :agent sparser::mv63723
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv63723 :isa sparser::protein :has-determiner "WHICH" :raw-text "STAT3" :uid
  "UP:P40763" :name "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    source-start
e11   SHOW          1 "Show the pahtways " 4
e10   INVOLVE       4 "that involve SRF" 7
                    end-of-source
                    source-start
e11   VP            1 "Show the pahtways " 4
e10   SUBJECT-RELATIVE-CLAUSE 4 "that involve SRF" 7
                    end-of-source


___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    source-start
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    end-of-source
("Show transcription factors that are shared by elk1 and srf"
 (:var sparser::mv63741 :isa sparser::show :|statement-OR-theme| sparser::mv63751 :present
  "PRESENT")
 (:var sparser::mv63751 :isa sparser::transcription-factor :plural t :predication sparser::mv63749
  :raw-text "transcription factors")
 (:var sparser::mv63749 :isa sparser::share :object sparser::mv63751 :that-rel t :participant
  sparser::mv63748 :present "PRESENT" :raw-text "shared")
 (:var sparser::mv63748 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv63740 sparser::mv63747))
 (:var sparser::mv63740 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63747 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    source-start
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    end-of-source
("Tell me the genes which are regulated by STAT3"
 (:var sparser::mv63753 :isa sparser::tell :theme sparser::mv63766 :beneficiary sparser::mv63754
  :present "PRESENT")
 (:var sparser::mv63766 :isa sparser::gene :plural t :predication sparser::mv63765 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63765 :isa sparser::regulate :object sparser::mv63766 :agent sparser::mv63752
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv63752 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63754 :isa sparser::interlocutor :name "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    source-start
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    end-of-source
("Tell me what genes are regulated by elk1 and srf"
 (:var sparser::mv63768 :isa sparser::tell :theme sparser::mv63785 :beneficiary sparser::mv63769
  :present "PRESENT")
 (:var sparser::mv63785 :isa sparser::gene :plural t :predication sparser::mv63783 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv63783 :isa sparser::regulate :wh-element sparser::mv63779 :wh-path nil :raw-text
  "regulated" :present "PRESENT" :agent sparser::mv63778 :object sparser::mv63779)
 (:var sparser::mv63779 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv63778 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv63767 sparser::mv63777))
 (:var sparser::mv63767 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63777 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv63769 :isa sparser::interlocutor :name "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    source-start
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    end-of-source
("Tell me which genes are regulated by STAT3"
 (:var sparser::mv63787 :isa sparser::tell :theme sparser::mv63801 :beneficiary sparser::mv63788
  :present "PRESENT")
 (:var sparser::mv63801 :isa sparser::gene :plural t :predication sparser::mv63799 :has-determiner
  "WHICH" :raw-text "genes")
 (:var sparser::mv63799 :isa sparser::regulate :wh-element sparser::mv63795 :wh-path nil :raw-text
  "regulated" :present "PRESENT" :agent sparser::mv63786 :object sparser::mv63795)
 (:var sparser::mv63795 :isa sparser::gene :plural t :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv63786 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63788 :isa sparser::interlocutor :name "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    source-start
e10   BE            1 "What are positive regulators of cfos" 7
                    question-mark
                    end-of-source
("What are positive regulators of cfos?"
 (:var sparser::mv63805 :isa sparser::be :subject sparser::mv63804 :predicate sparser::mv63809
  :present "PRESENT")
 (:var sparser::mv63804 :isa sparser::what)
 (:var sparser::mv63809 :isa sparser::positive-regulator :plural t :theme sparser::mv63807
  :raw-text "positive regulators")
 (:var sparser::mv63807 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    source-start
e12   BE            1 "What are some regulators of SMURF2" 8
                    question-mark
                    end-of-source
("What are some regulators of SMURF2?"
 (:var sparser::mv63812 :isa sparser::be :subject sparser::mv63811 :predicate sparser::mv63819
  :present "PRESENT")
 (:var sparser::mv63811 :isa sparser::what)
 (:var sparser::mv63819 :isa sparser::regulator :plural t :theme sparser::mv63810 :quantifier
  sparser::mv63813 :raw-text "regulators")
 (:var sparser::mv63810 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN")
 (:var sparser::mv63813 :isa some :word "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    source-start
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    question-mark
                    end-of-source
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:var sparser::mv63826 :isa sparser::be :subject sparser::mv63825 :predicate sparser::mv63838
  :present "PRESENT")
 (:var sparser::mv63825 :isa sparser::what)
 (:var sparser::mv63838 :isa sparser::regulator :plural t :theme sparser::mv63834 :has-determiner
  "THE" :predication sparser::mv63828 :raw-text "regulators")
 (:var sparser::mv63834 :isa sparser::collection :raw-text
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type sparser::protein :number 6 :items
  (sparser::mv63820 sparser::mv63821 sparser::mv63832 sparser::mv63822 sparser::mv63823
   sparser::mv63824))
 (:var sparser::mv63820 :isa sparser::protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
 (:var sparser::mv63821 :isa sparser::protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
 (:var sparser::mv63832 :isa sparser::protein :raw-text "ACADSB" :uid "UP:P45954" :name
  "ACDSB_HUMAN")
 (:var sparser::mv63822 :isa sparser::protein :raw-text "ADGRL1" :uid "UP:O94910" :name
  "AGRL1_HUMAN")
 (:var sparser::mv63823 :isa sparser::protein :raw-text "ADRM1" :uid "UP:Q16186" :name
  "ADRM1_HUMAN")
 (:var sparser::mv63824 :isa sparser::protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name
  "AGAP1_HUMAN")
 (:var sparser::mv63828 :isa sparser::common))

___________________
522: "What are the common regulators of elk1 and srf"

                    source-start
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    end-of-source
("What are the common regulators of elk1 and srf"
 (:var sparser::mv63841 :isa sparser::be :subject sparser::mv63840 :predicate sparser::mv63853
  :present "PRESENT")
 (:var sparser::mv63840 :isa sparser::what)
 (:var sparser::mv63853 :isa sparser::regulator :plural t :theme sparser::mv63849 :has-determiner
  "THE" :predication sparser::mv63843 :raw-text "regulators")
 (:var sparser::mv63849 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv63839 sparser::mv63848))
 (:var sparser::mv63839 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63848 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv63843 :isa sparser::common))

___________________
523: "What are the common regulators of elk1 and srg"

                    source-start
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    end-of-source
("What are the common regulators of elk1 and srg"
 (:var sparser::mv63856 :isa sparser::be :subject sparser::mv63855 :predicate sparser::mv63868
  :present "PRESENT")
 (:var sparser::mv63855 :isa sparser::what)
 (:var sparser::mv63868 :isa sparser::regulator :plural t :theme sparser::mv63864 :has-determiner
  "THE" :predication sparser::mv63858 :raw-text "regulators")
 (:var sparser::mv63864 :isa sparser::collection :raw-text "elk1 and srg" :type sparser::protein
  :number 2 :items (sparser::mv63854 sparser::mv63863))
 (:var sparser::mv63854 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv63863 :isa sparser::bio-entity :name "srg")
 (:var sparser::mv63858 :isa sparser::common))

___________________
524: "What are the common regulators of those genes"

                    source-start
e16   BE            1 "What are the common regulators of those genes" 9
                    end-of-source
("What are the common regulators of those genes"
 (:var sparser::mv63870 :isa sparser::be :subject sparser::mv63869 :predicate sparser::mv63883
  :present "PRESENT")
 (:var sparser::mv63869 :isa sparser::what)
 (:var sparser::mv63883 :isa sparser::regulator :plural t :theme sparser::mv63881 :has-determiner
  "THE" :predication sparser::mv63872 :raw-text "regulators")
 (:var sparser::mv63881 :isa sparser::gene :plural t :has-determiner "THOSE" :raw-text "genes")
 (:var sparser::mv63872 :isa sparser::common))

___________________
525: "What are the genes regulated by STAT3?"

                    source-start
e16   BE            1 "What are the genes regulated by STAT3" 9
                    question-mark
                    end-of-source
("What are the genes regulated by STAT3?"
 (:var sparser::mv63886 :isa sparser::be :subject sparser::mv63885 :predicate sparser::mv63894
  :present "PRESENT")
 (:var sparser::mv63885 :isa sparser::what)
 (:var sparser::mv63894 :isa sparser::gene :plural t :predication sparser::mv63890 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63890 :isa sparser::regulate :object sparser::mv63894 :agent sparser::mv63884
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv63884 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    source-start
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    question-mark
                    end-of-source
("What are the genes which STAT3 regulates?"
 (:var sparser::mv63897 :isa sparser::be :subject sparser::mv63896 :predicate sparser::mv63904
  :present "PRESENT")
 (:var sparser::mv63896 :isa sparser::what)
 (:var sparser::mv63904 :isa sparser::gene :plural t :predication sparser::mv63902 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv63902 :isa sparser::regulate :object sparser::mv63904 :agent sparser::mv63895
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv63895 :isa sparser::protein :has-determiner "WHICH" :raw-text "STAT3" :uid
  "UP:P40763" :name "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    source-start
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    question-mark
                    end-of-source
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:var sparser::mv63909 :isa sparser::be :subject sparser::mv63908 :predicate sparser::mv63923
  :present "PRESENT")
 (:var sparser::mv63908 :isa sparser::what)
 (:var sparser::mv63923 :isa sparser::regulator :plural t :theme sparser::mv63919 :has-determiner
  "THE" :modifier sparser::mv63912 :raw-text "regulators")
 (:var sparser::mv63919 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv63916 sparser::mv63917 sparser::mv63905 sparser::mv63906 sparser::mv63907))
 (:var sparser::mv63916 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv63917 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv63905 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63906 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv63907 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN")
 (:var sparser::mv63912 :isa sparser::frequent :comparative sparser::mv63911 :name "frequent")
 (:var sparser::mv63911 :isa sparser::superlative-quantifier :name "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    source-start
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    question-mark
                    end-of-source
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:var sparser::mv63930 :isa sparser::be :subject sparser::mv63929 :predicate sparser::mv63939
  :present "PRESENT")
 (:var sparser::mv63929 :isa sparser::what)
 (:var sparser::mv63939 :isa sparser::transcription-factor :plural t :predication sparser::mv63933
  :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv63933 :isa sparser::regulate :agent sparser::mv63939 :that-rel t :object
  sparser::mv63937 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv63937 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type
  sparser::protein :number 5 :items
  (sparser::mv63934 sparser::mv63935 sparser::mv63926 sparser::mv63927 sparser::mv63928))
 (:var sparser::mv63934 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv63935 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv63926 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv63927 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv63928 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    source-start
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    question-mark
                    end-of-source
("What other genes are in the first pathway?"
 (:var sparser::mv63955 :isa sparser::copular-predication-of-pp :item sparser::mv63950 :value
  sparser::mv63954 :prep "IN" :predicate sparser::mv63944)
 (:var sparser::mv63950 :isa sparser::gene :plural t :has-determiner "WHAT" :modifier
  sparser::mv63941 :raw-text "genes")
 (:var sparser::mv63941 :isa sparser::other :name "other")
 (:var sparser::mv63954 :isa sparser::gene :plural t :context sparser::mv63948 :has-determiner
  "WHAT" :modifier sparser::mv63941 :raw-text "genes")
 (:var sparser::mv63948 :isa sparser::pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
 (:var sparser::mv63944 :isa sparser::be :present "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    source-start
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    question-mark
                    end-of-source
("What other proteins are in the first pathway?"
 (:var sparser::mv63972 :isa sparser::copular-predication-of-pp :item sparser::mv63967 :value
  sparser::mv63971 :prep "IN" :predicate sparser::mv63961)
 (:var sparser::mv63967 :isa sparser::protein :plural t :has-determiner "WHAT" :modifier
  sparser::mv63958 :raw-text "proteins")
 (:var sparser::mv63958 :isa sparser::other :name "other")
 (:var sparser::mv63971 :isa sparser::protein :plural t :in-pathway sparser::mv63965
  :has-determiner "WHAT" :modifier sparser::mv63958 :raw-text "proteins")
 (:var sparser::mv63965 :isa sparser::pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
 (:var sparser::mv63961 :isa sparser::be :present "PRESENT"))

___________________
531: "What pathways are they in?"

                    source-start
e8    BE            1 "What pathways are they " 5
e5    IN            5 "in" 6
                    question-mark
                    end-of-source
                    source-start
e8    S             1 "What pathways are they " 5
e5    PREPOSITION   5 "in" 6
                    question-mark
                    end-of-source


___________________
532: "What pathways involve SOARING?"

                    source-start
e6    INVOLVE       1 "What pathways involve SOARING" 5
                    question-mark
                    end-of-source
("What pathways involve SOARING?"
 (:var sparser::mv63984 :isa sparser::involve :theme sparser::mv63986 :object sparser::mv63985
  :present "PRESENT")
 (:var sparser::mv63986 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv63985 :isa sparser::soar :progressive "PROGRESSIVE" :raw-text "SOARING"))

___________________
533: "What proteins are in the first pathway"

                    source-start
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    end-of-source
("What proteins are in the first pathway"
 (:var sparser::mv64000 :isa sparser::copular-predication-of-pp :item sparser::mv63995 :value
  sparser::mv63999 :prep "IN" :predicate sparser::mv63990)
 (:var sparser::mv63995 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv63999 :isa sparser::protein :plural t :in-pathway sparser::mv63994
  :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv63994 :isa sparser::pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
 (:var sparser::mv63990 :isa sparser::be :present "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    source-start
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    question-mark
                    end-of-source
("What pathways involve frizzled8?"
 (:var sparser::mv64006 :isa sparser::involve :theme sparser::mv64007 :object sparser::mv64002
  :present "PRESENT")
 (:var sparser::mv64007 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv64002 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    source-start
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    end-of-source
("What genes are in the first pathway"
 (:var sparser::mv64021 :isa sparser::copular-predication-of-pp :item sparser::mv64016 :value
  sparser::mv64020 :prep "IN" :predicate sparser::mv64011)
 (:var sparser::mv64016 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv64020 :isa sparser::gene :plural t :context sparser::mv64015 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv64015 :isa sparser::pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
 (:var sparser::mv64011 :isa sparser::be :present "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    source-start
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    question-mark
                    end-of-source
("What questions can you answer about microRNAs?"
 (:var sparser::mv64036 :isa sparser::answer :patient sparser::mv64034 :modal sparser::mv64027
  :agent sparser::mv64028 :theme sparser::mv64033 :present "PRESENT")
 (:var sparser::mv64034 :isa sparser::bio-question :plural t :has-determiner "WHAT")
 (:var sparser::mv64027 :isa sparser::can)
 (:var sparser::mv64028 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv64033 :isa sparser::micro-rna :plural t :raw-text "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    source-start
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    question-mark
                    end-of-source
("What transcription factors regulate mothers against decapentaplegic?"
 (:var sparser::mv64041 :isa sparser::regulate :agent sparser::mv64042 :object sparser::mv64039
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv64042 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv64039 :isa sparser::protein-family :raw-text "mothers against decapentaplegic"
  :name "SMAD" :count 8 :family-members
  ((sparser::protein (:name "SMAD6_HUMAN") (:uid "UP:O43541"))
   (sparser::protein (:name "SMAD9_HUMAN") (:uid "UP:O15198"))
   (sparser::protein (:name "SMAD7_HUMAN") (:uid "UP:O15105"))
   (sparser::protein (:name "SMAD5_HUMAN") (:uid "UP:Q99717"))
   (sparser::protein (:name "SMAD1_HUMAN") (:uid "UP:Q15797"))
   (sparser::protein (:name "SMAD2_HUMAN") (:uid "UP:Q15796"))
   (sparser::protein (:name "SMAD4_HUMAN") (:uid "UP:Q13485"))
   (sparser::protein (:name "SMAD3_HUMAN") (:uid "UP:P84022")))
  :uid "FPLX:SMAD"))

___________________
538: "Where does stat3 regulate cfos"

                    source-start
e8    REGULATE      1 "Where does stat3 regulate cfos" 7
                    end-of-source
("Where does stat3 regulate cfos"
 (:var sparser::mv64046 :isa sparser::regulate :location sparser::mv64044 :agent sparser::mv64043
  :object sparser::mv64047 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv64044 :isa sparser::where)
 (:var sparser::mv64043 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv64047 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    source-start
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    question-mark
                    end-of-source
("Which KEGG pathways involve ATP?"
 (:var sparser::mv64052 :isa sparser::involve :theme sparser::mv64055 :object sparser::mv64053
  :present "PRESENT")
 (:var sparser::mv64055 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv64049 :raw-text "pathways")
 (:var sparser::mv64049 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv64053 :isa sparser::nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate"
  :uid "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    question-mark
                    end-of-source
("Which genes are in the MAPK signaling pathway?"
 (:var sparser::mv64069 :isa sparser::copular-predication-of-pp :item sparser::mv64064 :value
  sparser::mv64068 :prep "IN" :predicate sparser::mv64060)
 (:var sparser::mv64064 :isa sparser::gene :plural t :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv64068 :isa sparser::gene :plural t :context sparser::mv64056 :has-determiner
  "WHICH" :raw-text "genes")
 (:var sparser::mv64056 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv64063 :raw-text "signaling pathway")
 (:var sparser::mv64063 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv64060 :isa sparser::be :present "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    source-start
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    question-mark
                    end-of-source
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:var sparser::mv64082 :isa sparser::involve :object sparser::mv64081 :|context-OR-theme|
  sparser::mv64071 :present "PRESENT")
 (:var sparser::mv64081 :isa sparser::gene :plural t :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv64071 :isa sparser::signaling-pathway :has-determiner "THE" :predication
  sparser::mv64079 :modifier sparser::mv64080 :raw-text "signaling pathway")
 (:var sparser::mv64079 :isa sparser::oncogenic)
 (:var sparser::mv64080 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019"))

___________________
542: "Which kinases regulate x?"

                    source-start
e6    REGULATE      1 "Which kinases regulate x" 5
                    question-mark
                    end-of-source
("Which kinases regulate x?"
 (:var sparser::mv64087 :isa sparser::regulate :agent sparser::mv64089 :object sparser::mv64088
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv64089 :isa sparser::kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv64088 :isa sparser::bio-entity :name "x"))

___________________
543: "Which kinases negatively regulate x?"

                    source-start
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    question-mark
                    end-of-source
("Which kinases negatively regulate x?"
 (:var sparser::mv64090 :isa sparser::downregulate :agent sparser::mv64095 :object sparser::mv64094
  :present "PRESENT" :raw-text "negatively regulate")
 (:var sparser::mv64095 :isa sparser::kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv64094 :isa sparser::bio-entity :name "x"))

___________________
544: "Which kinases positively regulate x?"

                    source-start
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    question-mark
                    end-of-source
("Which kinases positively regulate x?"
 (:var sparser::mv64096 :isa sparser::upregulate :agent sparser::mv64101 :object sparser::mv64100
  :present "PRESENT" :raw-text "positively regulate")
 (:var sparser::mv64101 :isa sparser::kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv64100 :isa sparser::bio-entity :name "x"))

___________________
545: "Which of these are in immune pathways?"

                    source-start
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    question-mark
                    end-of-source
("Which of these are in immune pathways?"
 (:var sparser::mv64112 :isa sparser::copular-predication-of-pp :item sparser::mv64104 :value
  sparser::mv64110 :prep sparser::mv64106 :predicate sparser::mv64105)
 (:var sparser::mv64104 :isa sparser::these :quantifier sparser::mv64102 :word "these")
 (:var sparser::mv64102 :isa sparser::which)
 (:var sparser::mv64110 :isa sparser::pathway :plural t :modifier sparser::mv64107 :raw-text
  "pathways")
 (:var sparser::mv64107 :isa sparser::immune :name "immune")
 (:var sparser::mv64106 :isa sparser::in :word "in")
 (:var sparser::mv64105 :isa sparser::be :present "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    source-start
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    question-mark
                    end-of-source
("Which of these are in immune system pathways?"
 (:var sparser::mv64124 :isa sparser::copular-predication-of-pp :item sparser::mv64117 :value
  sparser::mv64122 :prep sparser::mv64119 :predicate sparser::mv64118)
 (:var sparser::mv64117 :isa sparser::these :quantifier sparser::mv64115 :word "these")
 (:var sparser::mv64115 :isa sparser::which)
 (:var sparser::mv64122 :isa sparser::pathway :plural t :non-cellular-location sparser::mv64114
  :raw-text "pathways")
 (:var sparser::mv64114 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405")
 (:var sparser::mv64119 :isa sparser::in :word "in")
 (:var sparser::mv64118 :isa sparser::be :present "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    source-start
e13   BE            1 "What are the genes STAT3 regulates" 8
                    question-mark
                    end-of-source
("What are the genes STAT3 regulates?"
 (:var sparser::mv64128 :isa sparser::be :subject sparser::mv64127 :predicate sparser::mv64134
  :present "PRESENT")
 (:var sparser::mv64127 :isa sparser::what)
 (:var sparser::mv64134 :isa sparser::gene :plural t :predication sparser::mv64132 :has-determiner
  "THE" :raw-text "genes")
 (:var sparser::mv64132 :isa sparser::regulate :object sparser::mv64134 :agent sparser::mv64126
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv64126 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    source-start
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    question-mark
                    end-of-source
("Which of those are in the immune pathway?"
 (:var sparser::mv64144 :isa sparser::copular-predication-of-pp :item sparser::mv64137 :value
  sparser::mv64142 :prep sparser::mv64139 :predicate sparser::mv64138)
 (:var sparser::mv64137 :isa sparser::those :quantifier sparser::mv64135 :word "those")
 (:var sparser::mv64135 :isa sparser::which)
 (:var sparser::mv64142 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv64141
  :raw-text "pathway")
 (:var sparser::mv64141 :isa sparser::immune :name "immune")
 (:var sparser::mv64139 :isa sparser::in :word "in")
 (:var sparser::mv64138 :isa sparser::be :present "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    source-start
e7    INVOLVE       1 "Which pathways involve p53" 6
                    question-mark
                    end-of-source
("Which pathways involve p53?"
 (:var sparser::mv64150 :isa sparser::involve :theme sparser::mv64151 :object sparser::mv64146
  :present "PRESENT")
 (:var sparser::mv64151 :isa sparser::pathway :plural t :has-determiner "WHICH" :raw-text
  "pathways")
 (:var sparser::mv64146 :isa sparser::protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    source-start
e21   SHOW          1 "can you show me the pahtways " 7
e17   INVOLVE       7 "that involve SRF" 10
                    end-of-source
                    source-start
e21   S             1 "can you show me the pahtways " 7
e17   SUBJECT-RELATIVE-CLAUSE 7 "that involve SRF" 10
                    end-of-source


___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    source-start
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    question-mark
                    end-of-source
("Does Selumetinib inhibit MAP2K1?"
 (:var sparser::mv64167 :isa sparser::polar-question :statement sparser::mv64166)
 (:var sparser::mv64166 :isa sparser::inhibit :agent sparser::mv64164 :object sparser::mv64162
  :raw-text "inhibit")
 (:var sparser::mv64164 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv64162 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    source-start
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    period
                    end-of-source
("Let's build a model of the KRAS neighborhood."
 (:var sparser::mv64177 :isa sparser::explicit-suggestion :suggestion sparser::mv64169 :marker
  sparser::let-as-directive)
 (:var sparser::mv64169 :isa sparser::build :artifact sparser::mv64171 :present "PRESENT")
 (:var sparser::mv64171 :isa sparser::model :object sparser::mv64175 :has-determiner "A")
 (:var sparser::mv64175 :isa sparser::neighborhood :has-determiner "THE" :modifier
  sparser::mv64174)
 (:var sparser::mv64174 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    source-start
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    period
                    end-of-source
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:var sparser::mv64195 :isa sparser::collection :type sparser::know :number 2 :items
  (sparser::mv64193 sparser::mv64194))
 (:var sparser::mv64193 :isa sparser::know :agent sparser::mv64178 :statement sparser::mv64184
  :present "PRESENT")
 (:var sparser::mv64178 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv64184 :isa sparser::bio-activate :agent sparser::mv64183 :object sparser::mv64185
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv64183 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv64185 :isa sparser::protein-family :raw-text "Raf" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114")
 (:var sparser::mv64194 :isa sparser::collection :raw-text
  "Raf activates Mek and Mek activates Erk" :type sparser::bio-activate :number 2 :items
  (sparser::mv64187 sparser::mv64191))
 (:var sparser::mv64187 :isa sparser::bio-activate :agent sparser::mv64186 :object sparser::mv64188
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv64186 :isa sparser::protein-family :raw-text "Raf" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114")
 (:var sparser::mv64188 :isa sparser::protein-family :raw-text "Mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv64191 :isa sparser::bio-activate :agent sparser::mv64190 :object sparser::mv64192
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv64190 :isa sparser::protein-family :raw-text "Mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv64192 :isa sparser::protein-family :raw-text "Erk" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
554: "MAP2K1 phosphorylates MAPK1."

                    source-start
e6    PHOSPHORYLATE 1 "MAP2K1 phosphorylates MAPK1" 8
                    period
                    end-of-source
("MAP2K1 phosphorylates MAPK1."
 (:var sparser::mv64198 :isa sparser::phosphorylate :agent sparser::mv64196 :substrate
  sparser::mv64197 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv64196 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv64197 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    source-start
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    period
                    end-of-source
("DUSP6 dephosphorylates MAPK1."
 (:var sparser::mv64201 :isa sparser::dephosphorylate :agent sparser::mv64199 :substrate
  sparser::mv64200 :present "PRESENT" :raw-text "dephosphorylates")
 (:var sparser::mv64199 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN")
 (:var sparser::mv64200 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    source-start
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 always high?"
 (:var sparser::mv64212 :isa sparser::polar-question :statement sparser::mv64211)
 (:var sparser::mv64211 :isa sparser::copular-predication :item sparser::mv64205 :value
  sparser::mv64209 :predicate sparser::mv64203)
 (:var sparser::mv64205 :isa sparser::bio-amount :measured-item sparser::mv64202 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64202 :isa sparser::protein :predication sparser::mv64207 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv64207 :isa sparser::phosphorylate :substrate sparser::mv64202 :raw-text
  "phosphorylated")
 (:var sparser::mv64209 :isa sparser::high :adverb sparser::mv64208)
 (:var sparser::mv64208 :isa sparser::always :name "always")
 (:var sparser::mv64203 :isa sparser::be))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    source-start
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 always low?"
 (:var sparser::mv64223 :isa sparser::polar-question :statement sparser::mv64222)
 (:var sparser::mv64222 :isa sparser::copular-predication :item sparser::mv64216 :value
  sparser::mv64220 :predicate sparser::mv64214)
 (:var sparser::mv64216 :isa sparser::bio-amount :measured-item sparser::mv64213 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64213 :isa sparser::protein :predication sparser::mv64218 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv64218 :isa sparser::phosphorylate :substrate sparser::mv64213 :raw-text
  "phosphorylated")
 (:var sparser::mv64220 :isa sparser::low :adverb sparser::mv64219)
 (:var sparser::mv64219 :isa sparser::always :name "always")
 (:var sparser::mv64214 :isa sparser::be))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    source-start
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    question-mark
                    end-of-source
("Does the MAP2K1-MAPK1 complex vanish?"
 (:var sparser::mv64233 :isa sparser::polar-question :statement sparser::mv64232)
 (:var sparser::mv64232 :isa sparser::vanish :agent sparser::mv64231 :raw-text "vanish")
 (:var sparser::mv64231 :isa sparser::bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1"
  :component sparser::mv64225 :component sparser::mv64224)
 (:var sparser::mv64225 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv64224 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    source-start
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    question-mark
                    end-of-source
("Does the DUSP6-MAPK1 complex vanish?"
 (:var sparser::mv64243 :isa sparser::polar-question :statement sparser::mv64242)
 (:var sparser::mv64242 :isa sparser::vanish :agent sparser::mv64241 :raw-text "vanish")
 (:var sparser::mv64241 :isa sparser::bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1"
  :component sparser::mv64235 :component sparser::mv64234)
 (:var sparser::mv64235 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv64234 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    source-start
e50   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    question-mark
                    end-of-source
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:var sparser::mv64273 :isa sparser::polar-question :statement sparser::mv64272)
 (:var sparser::mv64272 :isa sparser::event-relation :subordinated-event sparser::mv64269 :event
  sparser::mv64265)
 (:var sparser::mv64269 :isa sparser::wh-question :statement sparser::mv64266 :wh if)
 (:var sparser::mv64266 :isa sparser::increase :|agent-OR-cause| sparser::mv64253
  :|multiplier-OR-cause| sparser::mv64264 :|affected-process-OR-object| sparser::mv64257 :raw-text
  "increase")
 (:var sparser::mv64253 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv64264 :isa sparser::measurement :number sparser::mv64261)
 (:var sparser::mv64261 :isa number :value 10)
 (:var sparser::mv64257 :isa sparser::bio-amount :measured-item sparser::mv64245 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64245 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN")
 (:var sparser::mv64265 :isa sparser::vanish :cause sparser::mv64248 :raw-text "vanish")
 (:var sparser::mv64248 :isa sparser::bio-amount :measured-item sparser::mv64244 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64244 :isa sparser::protein :predication sparser::mv64250 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv64250 :isa sparser::phosphorylate :substrate sparser::mv64244 :raw-text
  "phosphorylated"))

___________________
561: "Show me the evidence that kras regulates fzd8."

                    source-start
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    period
                    end-of-source
("Show me the evidence that kras regulates fzd8."
 (:var sparser::mv64275 :isa sparser::show :|statement-OR-theme| sparser::mv64282 :beneficiary
  sparser::mv64276 :present "PRESENT")
 (:var sparser::mv64282 :isa sparser::evidence :statement sparser::mv64281 :has-determiner "THE")
 (:var sparser::mv64281 :isa sparser::regulate :agent sparser::mv64280 :object sparser::mv64274
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv64280 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv64274 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
 (:var sparser::mv64276 :isa sparser::interlocutor :name "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    source-start
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    question-mark
                    end-of-source
("What increases the amount of fzd8?"
 (:var sparser::mv64287 :isa sparser::increase :|agent-OR-cause| sparser::mv64284
  :|affected-process-OR-object| sparser::mv64289 :present "PRESENT" :raw-text "increases")
 (:var sparser::mv64284 :isa sparser::what)
 (:var sparser::mv64289 :isa sparser::bio-amount :measured-item sparser::mv64283 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64283 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    question-mark
                    end-of-source
("Which kinases are in the MAPK signaling pathway?"
 (:var sparser::mv64305 :isa sparser::copular-predication-of-pp :item sparser::mv64300 :value
  sparser::mv64304 :prep "IN" :predicate sparser::mv64296)
 (:var sparser::mv64300 :isa sparser::kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv64304 :isa sparser::kinase :plural t :in-pathway sparser::mv64292 :has-determiner
  "WHICH" :raw-text "kinases")
 (:var sparser::mv64292 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv64299 :raw-text "signaling pathway")
 (:var sparser::mv64299 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv64296 :isa sparser::be :present "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    source-start
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    question-mark
                    end-of-source
("Does STAT3 regulate the c-fos gene in the liver?"
 (:var sparser::mv64318 :isa sparser::polar-question :statement sparser::mv64316)
 (:var sparser::mv64316 :isa sparser::regulate :agent sparser::mv64307 :object sparser::mv64312
  :raw-text "regulate")
 (:var sparser::mv64307 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv64312 :isa sparser::gene :organ sparser::mv64315 :has-determiner "THE" :expresses
  sparser::mv64308 :raw-text "gene")
 (:var sparser::mv64315 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv64308 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    source-start
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    question-mark
                    end-of-source
("what genes are regulated by smad2?"
 (:var sparser::mv64327 :isa sparser::regulate :object sparser::mv64326 :agent sparser::mv64319
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv64326 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv64319 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    source-start
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    question-mark
                    end-of-source
("Which of these are regulated by smad2?"
 (:var sparser::mv64336 :isa sparser::regulate :|affected-process-OR-object| sparser::mv64332
  :agent sparser::mv64329 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv64332 :isa sparser::these :quantifier sparser::mv64330 :word "these")
 (:var sparser::mv64330 :isa sparser::which)
 (:var sparser::mv64329 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    source-start
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    question-mark
                    end-of-source
("Which of these also regulate cfos?"
 (:var sparser::mv64344 :isa sparser::regulate :|agent-OR-cause| sparser::mv64341 :object
  sparser::mv64345 :present "PRESENT" :adverb sparser::mv64342 :raw-text "regulate")
 (:var sparser::mv64341 :isa sparser::these :quantifier sparser::mv64339 :word "these")
 (:var sparser::mv64339 :isa sparser::which)
 (:var sparser::mv64345 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv64342 :isa sparser::also :name "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    source-start
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    question-mark
                    end-of-source
("what transcription factors transcribe SMURF2?"
 (:var sparser::mv64351 :isa sparser::transcribe :agent sparser::mv64352 :object sparser::mv64349
  :present "PRESENT" :raw-text "transcribe")
 (:var sparser::mv64352 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv64349 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    source-start
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    question-mark
                    end-of-source
("what transcription factor transcribes SMURF2?"
 (:var sparser::mv64356 :isa sparser::transcribe :agent sparser::mv64353 :object sparser::mv64354
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv64353 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factor")
 (:var sparser::mv64354 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    source-start
e8    BIO-UTILIZE   1 "Which KEGG pathways utilize SRF" 6
                    question-mark
                    end-of-source
("Which KEGG pathways utilize SRF?"
 (:var sparser::mv64361 :isa sparser::bio-utilize :agent sparser::mv64364 :object sparser::mv64362
  :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv64364 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv64358 :raw-text "pathways")
 (:var sparser::mv64358 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv64362 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
571: "What transcription factors are in the calcium regulated pathways?"

                    source-start
e20   COPULAR-PREDICATE 1 "What transcription factors are in the calcium regulated pathways" 10
                    question-mark
                    end-of-source
("What transcription factors are in the calcium regulated pathways?"
 (:var sparser::mv64382 :isa sparser::copular-predication-of-pp :item sparser::mv64375 :value
  sparser::mv64381 :prep "IN" :predicate sparser::mv64368)
 (:var sparser::mv64375 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv64381 :isa sparser::transcription-factor :plural t :in-pathway sparser::mv64377
  :has-determiner "WHAT" :raw-text "transcription factors")
 (:var sparser::mv64377 :isa sparser::pathway :plural t :has-determiner "THE" :predication
  sparser::mv64372 :raw-text "pathways")
 (:var sparser::mv64372 :isa sparser::regulate :affected-process sparser::mv64377 :agent
  sparser::mv64371 :raw-text "regulated")
 (:var sparser::mv64371 :isa sparser::calcium :raw-text "calcium")
 (:var sparser::mv64368 :isa sparser::be :present "PRESENT"))

___________________
572: "What pathways involve the immune system?"

                    source-start
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    question-mark
                    end-of-source
("What pathways involve the immune system?"
 (:var sparser::mv64388 :isa sparser::involve :theme sparser::mv64390 :object sparser::mv64384
  :present "PRESENT")
 (:var sparser::mv64390 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv64384 :isa sparser::bio-organ :has-determiner "THE" :name "immune system" :uid
  "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    source-start
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    question-mark
                    end-of-source
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:var sparser::mv64397 :isa sparser::involve :theme sparser::mv64402 :object sparser::mv64400
  :present "PRESENT")
 (:var sparser::mv64402 :isa sparser::pathway :plural t :has-determiner "WHAT" :modifier
  sparser::mv64394 :raw-text "pathways")
 (:var sparser::mv64394 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv64400 :isa sparser::collection :raw-text "ERBB2, JUN, and MAPK8" :type
  sparser::protein :number 3 :items (sparser::mv64391 sparser::mv64398 sparser::mv64392))
 (:var sparser::mv64391 :isa sparser::protein :raw-text "ERBB2" :uid "UP:P04626" :name
  "ERBB2_HUMAN")
 (:var sparser::mv64398 :isa sparser::protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
 (:var sparser::mv64392 :isa sparser::protein :raw-text "MAPK8" :uid "UP:P45983" :name
  "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    source-start
e13   SHARE         1 "What pathways are shared by these genes" 8
                    question-mark
                    end-of-source
("What pathways are shared by these genes?"
 (:var sparser::mv64413 :isa sparser::share :object sparser::mv64412 :participant sparser::mv64414
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv64412 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv64414 :isa sparser::gene :plural t :has-determiner "THESE" :raw-text "genes"))

___________________
575: "what genes are regulated by srf?"

                    source-start
e11   REGULATE      1 "what genes are regulated by srf" 7
                    question-mark
                    end-of-source
("what genes are regulated by srf?"
 (:var sparser::mv64424 :isa sparser::regulate :object sparser::mv64423 :agent sparser::mv64422
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv64423 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv64422 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    source-start
e13   BE            1 "What are common pathways for these genes" 8
                    question-mark
                    end-of-source
("What are common pathways for these genes?"
 (:var sparser::mv64427 :isa sparser::be :subject sparser::mv64426 :predicate sparser::mv64438
  :present "PRESENT")
 (:var sparser::mv64426 :isa sparser::what)
 (:var sparser::mv64438 :isa sparser::pathway :plural t :pathwaycomponent sparser::mv64436
  :predication sparser::mv64428 :raw-text "pathways")
 (:var sparser::mv64436 :isa sparser::gene :plural t :has-determiner "THESE" :raw-text "genes")
 (:var sparser::mv64428 :isa sparser::common))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    source-start
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    question-mark
                    end-of-source
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:var sparser::mv64455 :isa sparser::share :object sparser::mv64454 :participant sparser::mv64456
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv64454 :isa sparser::pathway :plural t :has-determiner "WHICH" :modifier
  sparser::mv64443 :raw-text "pathways")
 (:var sparser::mv64443 :isa sparser::immune :name "immune")
 (:var sparser::mv64456 :isa sparser::gene :plural t :expresses sparser::mv64452 :raw-text "genes")
 (:var sparser::mv64452 :isa sparser::collection :raw-text "STAT3, SOCS3, and CREB5" :type
  sparser::protein :number 3 :items (sparser::mv64439 sparser::mv64440 sparser::mv64441))
 (:var sparser::mv64439 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv64440 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv64441 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    source-start
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    question-mark
                    end-of-source
("What MAP kinase phosphatase are regulated by ELK1?"
 (:var sparser::mv64465 :isa sparser::regulate :object sparser::mv64461 :agent sparser::mv64459
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv64461 :isa sparser::phosphatase :has-determiner "WHAT" :enzyme sparser::mv64458
  :raw-text "phosphatase")
 (:var sparser::mv64458 :isa sparser::protein-family :raw-text "MAP kinase" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv64459 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    source-start
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    question-mark
                    end-of-source
("What reactome pathways involve immune system?"
 (:var sparser::mv64472 :isa sparser::involve :theme sparser::mv64474 :object sparser::mv64467
  :present "PRESENT")
 (:var sparser::mv64474 :isa sparser::pathway :plural t :has-determiner "WHAT" :modifier
  sparser::mv64469 :raw-text "pathways")
 (:var sparser::mv64469 :isa sparser::database :name "Reactome" :uid "Reactome")
 (:var sparser::mv64467 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    source-start
e9    BE            1 "Is stat3 a kinase" 6
                    question-mark
                    end-of-source
("Is stat3 a kinase?"
 (:var sparser::mv64479 :isa sparser::polar-question :statement sparser::mv64476)
 (:var sparser::mv64476 :isa sparser::be :subject sparser::mv64475 :predicate sparser::mv64478)
 (:var sparser::mv64475 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv64478 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
581: "Is STAT3 a transcription factor?"

                    source-start
e10   BE            1 "Is STAT3 a transcription factor" 7
                    question-mark
                    end-of-source
("Is STAT3 a transcription factor?"
 (:var sparser::mv64484 :isa sparser::polar-question :statement sparser::mv64482)
 (:var sparser::mv64482 :isa sparser::be :subject sparser::mv64480 :predicate sparser::mv64481)
 (:var sparser::mv64480 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv64481 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor"))

___________________
582: "Which of these are protein kinases?"

                    source-start
e11   BE            1 "Which of these are protein kinases" 7
                    question-mark
                    end-of-source
("Which of these are protein kinases?"
 (:var sparser::mv64488 :isa sparser::be :subject sparser::mv64487 :predicate sparser::mv64492
  :present "PRESENT")
 (:var sparser::mv64487 :isa sparser::these :quantifier sparser::mv64485 :word "these")
 (:var sparser::mv64485 :isa sparser::which)
 (:var sparser::mv64492 :isa sparser::kinase :plural t :enzyme sparser::mv64489 :raw-text
  "kinases")
 (:var sparser::mv64489 :isa sparser::protein :raw-text "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    source-start
e10   BE            1 "Which of these are tyrosine kinases" 7
                    question-mark
                    end-of-source
("Which of these are tyrosine kinases?"
 (:var sparser::mv64499 :isa sparser::be :subject sparser::mv64498 :predicate sparser::mv64495
  :present "PRESENT")
 (:var sparser::mv64498 :isa sparser::these :quantifier sparser::mv64496 :word "these")
 (:var sparser::mv64496 :isa sparser::which)
 (:var sparser::mv64495 :isa sparser::protein-family :plural t :raw-text "tyrosine kinases" :uid
  "NCIT:C17020" :name "protein tyrosine kinase"))

___________________
584: "Which of these are serine/threonine kinases?"

                    source-start
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    question-mark
                    end-of-source
("Which of these are serine/threonine kinases?"
 (:var sparser::mv64504 :isa sparser::be :subject sparser::mv64503 :predicate sparser::mv64510
  :present "PRESENT")
 (:var sparser::mv64503 :isa sparser::these :quantifier sparser::mv64501 :word "these")
 (:var sparser::mv64501 :isa sparser::which)
 (:var sparser::mv64510 :isa sparser::kinase :plural t :amino-acid sparser::mv64509 :raw-text
  "kinases")
 (:var sparser::mv64509 :isa sparser::collection :raw-text "serine/threonine" :type
  sparser::amino-acid :items (sparser::mv64505 sparser::mv64506))
 (:var sparser::mv64505 :isa sparser::amino-acid :raw-text "serine" :name "serine")
 (:var sparser::mv64506 :isa sparser::amino-acid :raw-text "threonine" :name "threonine"))

___________________
585: "Which of these are phosphatases?"

                    source-start
e9    BE            1 "Which of these are phosphatases" 6
                    question-mark
                    end-of-source
("Which of these are phosphatases?"
 (:var sparser::mv64515 :isa sparser::be :subject sparser::mv64514 :predicate sparser::mv64517
  :present "PRESENT")
 (:var sparser::mv64514 :isa sparser::these :quantifier sparser::mv64512 :word "these")
 (:var sparser::mv64512 :isa sparser::which)
 (:var sparser::mv64517 :isa sparser::phosphatase :plural t :raw-text "phosphatases"))

___________________
586: "Which of these are proteases?"

                    source-start
e9    BE            1 "Which of these are proteases" 6
                    question-mark
                    end-of-source
("Which of these are proteases?"
 (:var sparser::mv64522 :isa sparser::be :subject sparser::mv64521 :predicate sparser::mv64523
  :present "PRESENT")
 (:var sparser::mv64521 :isa sparser::these :quantifier sparser::mv64519 :word "these")
 (:var sparser::mv64519 :isa sparser::which)
 (:var sparser::mv64523 :isa sparser::protein :raw-text "proteases" :uid "UP:P63127" :name
  "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    source-start
e9    BE            1 "Which of these are receptors" 6
                    question-mark
                    end-of-source
("Which of these are receptors?"
 (:var sparser::mv64528 :isa sparser::be :subject sparser::mv64527 :predicate sparser::mv64530
  :present "PRESENT")
 (:var sparser::mv64527 :isa sparser::these :quantifier sparser::mv64525 :word "these")
 (:var sparser::mv64525 :isa sparser::which)
 (:var sparser::mv64530 :isa sparser::receptor :plural t :raw-text "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    source-start
e12   BE            1 "Which of these are tyrosine kinase receptors" 8
                    question-mark
                    end-of-source
("Which of these are tyrosine kinase receptors?"
 (:var sparser::mv64536 :isa sparser::be :subject sparser::mv64535 :predicate sparser::mv64539
  :present "PRESENT")
 (:var sparser::mv64535 :isa sparser::these :quantifier sparser::mv64533 :word "these")
 (:var sparser::mv64533 :isa sparser::which)
 (:var sparser::mv64539 :isa sparser::receptor :plural t :modifier sparser::mv64532 :raw-text
  "receptors")
 (:var sparser::mv64532 :isa sparser::protein-family :raw-text "tyrosine kinase" :name
  "protein tyrosine kinase" :uid "NCIT:C17020"))

___________________
589: "Which of these are histone demethylases?"

                    source-start
e10   BE            1 "Which of these are histone demethylases" 7
                    question-mark
                    end-of-source
("Which of these are histone demethylases?"
 (:var sparser::mv64546 :isa sparser::be :subject sparser::mv64545 :predicate sparser::mv64542
  :present "PRESENT")
 (:var sparser::mv64545 :isa sparser::these :quantifier sparser::mv64543 :word "these")
 (:var sparser::mv64543 :isa sparser::which)
 (:var sparser::mv64542 :isa sparser::protein-family :plural t :raw-text "histone demethylases"
  :uid "GO:0032452" :name "histone demethylase"))

___________________
590: "Which of these are histone methylases?"

                    source-start
e10   BE            1 "Which of these are histone methylases" 7
                    question-mark
                    end-of-source
("Which of these are histone methylases?"
 (:var sparser::mv64553 :isa sparser::be :subject sparser::mv64552 :predicate sparser::mv64549
  :present "PRESENT")
 (:var sparser::mv64552 :isa sparser::these :quantifier sparser::mv64550 :word "these")
 (:var sparser::mv64550 :isa sparser::which)
 (:var sparser::mv64549 :isa sparser::protein-family :plural t :raw-text "histone methylases" :uid
  "GO:0042054" :name "histone methyltransferase"))

___________________
591: "Which of these are histone methyltransferases?"

                    source-start
e10   BE            1 "Which of these are histone methyltransferases" 7
                    question-mark
                    end-of-source
("Which of these are histone methyltransferases?"
 (:var sparser::mv64560 :isa sparser::be :subject sparser::mv64559 :predicate sparser::mv64556
  :present "PRESENT")
 (:var sparser::mv64559 :isa sparser::these :quantifier sparser::mv64557 :word "these")
 (:var sparser::mv64557 :isa sparser::which)
 (:var sparser::mv64556 :isa sparser::protein-family :plural t :raw-text
  "histone methyltransferases" :uid "GO:0042054" :name "histone methyltransferase"))

___________________
592: "Which of these are demethylases?"

                    source-start
e9    BE            1 "Which of these are demethylases" 6
                    question-mark
                    end-of-source
("Which of these are demethylases?"
 (:var sparser::mv64565 :isa sparser::be :subject sparser::mv64564 :predicate sparser::mv64567
  :present "PRESENT")
 (:var sparser::mv64564 :isa sparser::these :quantifier sparser::mv64562 :word "these")
 (:var sparser::mv64562 :isa sparser::which)
 (:var sparser::mv64567 :isa sparser::protein-family :plural t :raw-text "demethylases" :uid
  "GO:0032451" :name "demethylase"))

___________________
593: "Which of these are methylases?"

                    source-start
e9    BE            1 "Which of these are methylases" 6
                    question-mark
                    end-of-source
("Which of these are methylases?"
 (:var sparser::mv64572 :isa sparser::be :subject sparser::mv64571 :predicate sparser::mv64574
  :present "PRESENT")
 (:var sparser::mv64571 :isa sparser::these :quantifier sparser::mv64569 :word "these")
 (:var sparser::mv64569 :isa sparser::which)
 (:var sparser::mv64574 :isa sparser::protein-family :plural t :raw-text "methylases" :uid
  "GO:0008168" :name "methyltransferase"))

___________________
594: "Which of these are methyltransferases?"

                    source-start
e9    BE            1 "Which of these are methyltransferases" 6
                    question-mark
                    end-of-source
("Which of these are methyltransferases?"
 (:var sparser::mv64579 :isa sparser::be :subject sparser::mv64578 :predicate sparser::mv64581
  :present "PRESENT")
 (:var sparser::mv64578 :isa sparser::these :quantifier sparser::mv64576 :word "these")
 (:var sparser::mv64576 :isa sparser::which)
 (:var sparser::mv64581 :isa sparser::protein-family :plural t :raw-text "methyltransferases" :uid
  "GO:0008168" :name "methyltransferase"))

___________________
595: "Which of these are steroid receptors?"

                    source-start
e11   BE            1 "Which of these are steroid receptors" 7
                    question-mark
                    end-of-source
("Which of these are steroid receptors?"
 (:var sparser::mv64586 :isa sparser::be :subject sparser::mv64585 :predicate sparser::mv64590
  :present "PRESENT")
 (:var sparser::mv64585 :isa sparser::these :quantifier sparser::mv64583 :word "these")
 (:var sparser::mv64583 :isa sparser::which)
 (:var sparser::mv64590 :isa sparser::receptor :plural t :modifier sparser::mv64587 :raw-text
  "receptors")
 (:var sparser::mv64587 :isa sparser::molecule :raw-text "steroid" :name "steroid" :uid
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    source-start
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    question-mark
                    end-of-source
("Which of these are receptor tyrosine kinases?"
 (:var sparser::mv64597 :isa sparser::be :subject sparser::mv64596 :predicate sparser::mv64593
  :present "PRESENT")
 (:var sparser::mv64596 :isa sparser::these :quantifier sparser::mv64594 :word "these")
 (:var sparser::mv64594 :isa sparser::which)
 (:var sparser::mv64593 :isa sparser::protein-family :plural t :raw-text
  "receptor tyrosine kinases" :uid "NCIT:C17660" :family-members
  ((sparser::protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
   (sparser::protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
  :count 2 :name "receptor tyrosine kinase"))

___________________
597: "Which of these are transcription factors?"

                    source-start
e10   BE            1 "Which of these are transcription factors" 7
                    question-mark
                    end-of-source
("Which of these are transcription factors?"
 (:var sparser::mv64604 :isa sparser::be :subject sparser::mv64603 :predicate sparser::mv64600
  :present "PRESENT")
 (:var sparser::mv64603 :isa sparser::these :quantifier sparser::mv64601 :word "these")
 (:var sparser::mv64601 :isa sparser::which)
 (:var sparser::mv64600 :isa sparser::transcription-factor :plural t :raw-text
  "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    source-start
e12   BE            1 "Which of these are DNA binding proteins" 8
                    question-mark
                    end-of-source
("Which of these are DNA binding proteins?"
 (:var sparser::mv64610 :isa sparser::be :subject sparser::mv64609 :predicate sparser::mv64613
  :present "PRESENT")
 (:var sparser::mv64609 :isa sparser::these :quantifier sparser::mv64607 :word "these")
 (:var sparser::mv64607 :isa sparser::which)
 (:var sparser::mv64613 :isa sparser::protein :plural t :modifier sparser::mv64606 :raw-text
  "proteins")
 (:var sparser::mv64606 :isa sparser::dna-binding :raw-text "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    source-start
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    question-mark
                    end-of-source
("Which of these are serine/threonine phosphatases?"
 (:var sparser::mv64618 :isa sparser::be :subject sparser::mv64617 :predicate sparser::mv64624
  :present "PRESENT")
 (:var sparser::mv64617 :isa sparser::these :quantifier sparser::mv64615 :word "these")
 (:var sparser::mv64615 :isa sparser::which)
 (:var sparser::mv64624 :isa sparser::phosphatase :plural t :modifier sparser::mv64623 :raw-text
  "phosphatases")
 (:var sparser::mv64623 :isa sparser::collection :raw-text "serine/threonine" :type
  sparser::amino-acid :items (sparser::mv64619 sparser::mv64620))
 (:var sparser::mv64619 :isa sparser::amino-acid :raw-text "serine" :name "serine")
 (:var sparser::mv64620 :isa sparser::amino-acid :raw-text "threonine" :name "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    source-start
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    question-mark
                    end-of-source
("Which of these are tyrosine phosphatases?"
 (:var sparser::mv64629 :isa sparser::be :subject sparser::mv64628 :predicate sparser::mv64633
  :present "PRESENT")
 (:var sparser::mv64628 :isa sparser::these :quantifier sparser::mv64626 :word "these")
 (:var sparser::mv64626 :isa sparser::which)
 (:var sparser::mv64633 :isa sparser::phosphatase :plural t :modifier sparser::mv64630 :raw-text
  "phosphatases")
 (:var sparser::mv64630 :isa sparser::amino-acid :raw-text "tyrosine" :name "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    source-start
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    question-mark
                    end-of-source
("What does MEK phosphorylate?"
 (:var sparser::mv64638 :isa sparser::phosphorylate :|substrate-OR-site-OR-amino-acid|
  sparser::mv64635 :agent sparser::mv64637 :present "PRESENT" :raw-text "phosphorylate")
 (:var sparser::mv64635 :isa sparser::what)
 (:var sparser::mv64637 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK"))

___________________
602: "which of these are exclusively expressed in liver?"

                    source-start
e16   GENE-TRANSCRIPT-EXPRESS 1 "which of these are exclusively expressed in liver" 9
                    question-mark
                    end-of-source
("which of these are exclusively expressed in liver?"
 (:var sparser::mv64647 :isa sparser::gene-transcript-express :object sparser::mv64641 :organ
  sparser::mv64646 :present "PRESENT" :adverb sparser::mv64643 :raw-text "expressed")
 (:var sparser::mv64641 :isa sparser::these :quantifier sparser::mv64639 :word "these")
 (:var sparser::mv64639 :isa sparser::which) (:var sparser::mv64646 :isa sparser::liver)
 (:var sparser::mv64643 :isa sparser::exclusively :name "exclusively"))

___________________
603: "What regulates frizzled8?"

                    source-start
e5    REGULATE      1 "What regulates frizzled8" 5
                    question-mark
                    end-of-source
("What regulates frizzled8?"
 (:var sparser::mv64652 :isa sparser::regulate :|agent-OR-cause| sparser::mv64651 :object
  sparser::mv64650 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv64651 :isa sparser::what)
 (:var sparser::mv64650 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    source-start
e13   INCREASE      1 "What increases the amount of myc" 7
                    question-mark
                    end-of-source
("What increases the amount of myc?"
 (:var sparser::mv64656 :isa sparser::increase :|agent-OR-cause| sparser::mv64653
  :|affected-process-OR-object| sparser::mv64658 :present "PRESENT" :raw-text "increases")
 (:var sparser::mv64653 :isa sparser::what)
 (:var sparser::mv64658 :isa sparser::bio-amount :measured-item sparser::mv64660 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64660 :isa sparser::protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    source-start
e4    UPREGULATE    1 "What upregulates myc" 4
                    question-mark
                    end-of-source
("What upregulates myc?"
 (:var sparser::mv64663 :isa sparser::upregulate :|agent-OR-cause| sparser::mv64662 :object
  sparser::mv64664 :present "PRESENT" :raw-text "upregulates")
 (:var sparser::mv64662 :isa sparser::what)
 (:var sparser::mv64664 :isa sparser::protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    source-start
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    question-mark
                    end-of-source
("What downregulates myc?"
 (:var sparser::mv64666 :isa sparser::downregulate :|agent-OR-cause| sparser::mv64665 :object
  sparser::mv64667 :present "PRESENT" :raw-text "downregulates")
 (:var sparser::mv64665 :isa sparser::what)
 (:var sparser::mv64667 :isa sparser::protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    source-start
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    question-mark
                    end-of-source
("What decreases the amount of GFAP?"
 (:var sparser::mv64669 :isa sparser::decrease :|agent-OR-cause| sparser::mv64668
  :|affected-process-OR-object| sparser::mv64671 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv64668 :isa sparser::what)
 (:var sparser::mv64671 :isa sparser::bio-amount :measured-item sparser::mv64673 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64673 :isa sparser::protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    source-start
e4    REGULATE      1 "What regulates GLUL" 4
                    question-mark
                    end-of-source
("What regulates GLUL?"
 (:var sparser::mv64676 :isa sparser::regulate :|agent-OR-cause| sparser::mv64675 :object
  sparser::mv64677 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv64675 :isa sparser::what)
 (:var sparser::mv64677 :isa sparser::protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))

___________________
609: "What regulates GLUL from the literature?"

                    source-start
e10   REGULATE      1 "What regulates GLUL " 4
e8    FROM          4 "from the literature" 7
                    question-mark
                    end-of-source
                    source-start
e10   S             1 "What regulates GLUL " 4
e8    PP            4 "from the literature" 7
                    question-mark
                    end-of-source


___________________
610: "What regulates GLUL from the GEO RNAi database?"

                    source-start
e11   REGULATE      1 "What regulates GLUL " 4
e9    FROM          4 "from the GEO RNAi database" 9
                    question-mark
                    end-of-source
                    source-start
e11   S             1 "What regulates GLUL " 4
e9    PP            4 "from the GEO RNAi database" 9
                    question-mark
                    end-of-source


___________________
611: "Which kinases regulate the cfos gene?"

                    source-start
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    question-mark
                    end-of-source
("Which kinases regulate the cfos gene?"
 (:var sparser::mv64695 :isa sparser::regulate :agent sparser::mv64699 :object sparser::mv64698
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv64699 :isa sparser::kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv64698 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv64697
  :raw-text "gene")
 (:var sparser::mv64697 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    source-start
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    question-mark
                    end-of-source
("Which kinases negatively regulate the cfos gene?"
 (:var sparser::mv64700 :isa sparser::downregulate :agent sparser::mv64707 :object sparser::mv64706
  :present "PRESENT" :raw-text "negatively regulate")
 (:var sparser::mv64707 :isa sparser::kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv64706 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv64705
  :raw-text "gene")
 (:var sparser::mv64705 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    source-start
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    question-mark
                    end-of-source
("What are positive regulators of the cfos gene?"
 (:var sparser::mv64711 :isa sparser::be :subject sparser::mv64710 :predicate sparser::mv64717
  :present "PRESENT")
 (:var sparser::mv64710 :isa sparser::what)
 (:var sparser::mv64717 :isa sparser::positive-regulator :plural t :theme sparser::mv64715
  :raw-text "positive regulators")
 (:var sparser::mv64715 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv64714
  :raw-text "gene")
 (:var sparser::mv64714 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    source-start
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    question-mark
                    end-of-source
("What transcribes ZEB1?"
 (:var sparser::mv64720 :isa sparser::transcribe :|agent-OR-cause| sparser::mv64719 :object
  sparser::mv64718 :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv64719 :isa sparser::what)
 (:var sparser::mv64718 :isa sparser::protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    source-start
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    period
                    end-of-source
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:var sparser::mv64723 :isa sparser::show :|statement-OR-theme| sparser::mv64735 :beneficiary
  sparser::mv64724 :present "PRESENT")
 (:var sparser::mv64735 :isa sparser::evidence :statement sparser::mv64730 :has-determiner "THE")
 (:var sparser::mv64730 :isa sparser::increase :agent sparser::mv64721
  :|affected-process-OR-object| sparser::mv64732 :present "PRESENT" :raw-text "increases")
 (:var sparser::mv64721 :isa sparser::protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
 (:var sparser::mv64732 :isa sparser::bio-amount :measured-item sparser::mv64722 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64722 :isa sparser::protein :raw-text "SOCS1" :uid "UP:O15524" :name
  "SOCS1_HUMAN")
 (:var sparser::mv64724 :isa sparser::interlocutor :name "speaker"))

___________________
616: "Show me the evidence that KRAS decreasse the amount of FZD8."

                    source-start
e22   SHOW          1 "Show me the evidence " 5
e8    THAT          5 "that " 6
e17   BIO-ENTITY    6 "KRAS decreasse " 8
e20   BIO-AMOUNT    8 "the amount of FZD8" 13
                    period
                    end-of-source
                    source-start
e22   VP            1 "Show me the evidence " 5
e8    DET           5 "that " 6
e17   NP            6 "KRAS decreasse " 8
e20   NP            8 "the amount of FZD8" 13
                    period
                    end-of-source


___________________
617: "What is the evidence that kras regulates frizzled8?"

                    source-start
e17   BE            1 "What is the evidence that kras regulates frizzled8" 10
                    question-mark
                    end-of-source
("What is the evidence that kras regulates frizzled8?"
 (:var sparser::mv64750 :isa sparser::be :subject sparser::mv64749 :predicate sparser::mv64756
  :present "PRESENT")
 (:var sparser::mv64749 :isa sparser::what)
 (:var sparser::mv64756 :isa sparser::evidence :statement sparser::mv64755 :has-determiner "THE")
 (:var sparser::mv64755 :isa sparser::regulate :agent sparser::mv64754 :object sparser::mv64748
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv64754 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv64748 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    source-start
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    question-mark
                    end-of-source
("What is the evidence that SRF binds the cfos gene?"
 (:var sparser::mv64758 :isa sparser::be :subject sparser::mv64757 :predicate sparser::mv64767
  :present "PRESENT")
 (:var sparser::mv64757 :isa sparser::what)
 (:var sparser::mv64767 :isa sparser::evidence :statement sparser::mv64763 :has-determiner "THE")
 (:var sparser::mv64763 :isa sparser::binding :binder sparser::mv64762 :direct-bindee
  sparser::mv64766 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv64762 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv64766 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv64765
  :raw-text "gene")
 (:var sparser::mv64765 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    source-start
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    question-mark
                    end-of-source
("what genes are exclusively expressed in liver?"
 (:var sparser::mv64777 :isa sparser::gene-transcript-express :object sparser::mv64776 :organ
  sparser::mv64775 :present "PRESENT" :adverb sparser::mv64772 :raw-text "expressed")
 (:var sparser::mv64776 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv64775 :isa sparser::liver)
 (:var sparser::mv64772 :isa sparser::exclusively :name "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    source-start
e10   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    question-mark
                    end-of-source
("Is stat3 expressed in liver?"
 (:var sparser::mv64785 :isa sparser::polar-question :statement sparser::mv64781)
 (:var sparser::mv64781 :isa sparser::gene-transcript-express :object sparser::mv64779 :organ
  sparser::mv64783 :past "PAST" :raw-text "expressed")
 (:var sparser::mv64779 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv64783 :isa sparser::liver))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    source-start
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    question-mark
                    end-of-source
("Is stat3 exclusively expressed in liver?"
 (:var sparser::mv64794 :isa sparser::polar-question :statement sparser::mv64792)
 (:var sparser::mv64792 :isa sparser::gene-transcript-express :object sparser::mv64786 :organ
  sparser::mv64791 :adverb sparser::mv64788 :raw-text "expressed")
 (:var sparser::mv64786 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv64791 :isa sparser::liver)
 (:var sparser::mv64788 :isa sparser::exclusively :name "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    source-start
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    question-mark
                    end-of-source
("How does MAP4K2 affect CXCL8?"
 (:var sparser::mv64799 :isa sparser::affect :manner sparser::mv64797 :agent sparser::mv64795
  :object sparser::mv64796 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv64797 :isa sparser::how)
 (:var sparser::mv64795 :isa sparser::protein :raw-text "MAP4K2" :uid "UP:Q12851" :name
  "M4K2_HUMAN")
 (:var sparser::mv64796 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    source-start
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    question-mark
                    end-of-source
("How does ERK affect CXCL8?"
 (:var sparser::mv64804 :isa sparser::affect :manner sparser::mv64801 :agent sparser::mv64803
  :object sparser::mv64800 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv64801 :isa sparser::how)
 (:var sparser::mv64803 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv64800 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    source-start
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    question-mark
                    end-of-source
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:var sparser::mv64808 :isa sparser::be :subject sparser::mv64807 :predicate sparser::mv64822
  :present "PRESENT")
 (:var sparser::mv64807 :isa sparser::what)
 (:var sparser::mv64822 :isa sparser::regulator :plural t :theme sparser::mv64817 :has-determiner
  "THE" :predication sparser::mv64810 :context sparser::mv64811 :raw-text "regulators")
 (:var sparser::mv64817 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv64805 sparser::mv64806))
 (:var sparser::mv64805 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv64806 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN")
 (:var sparser::mv64810 :isa sparser::common)
 (:var sparser::mv64811 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    source-start
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    question-mark
                    end-of-source
("What are the paths between MAP3K7 and CXCL8?"
 (:var sparser::mv64826 :isa sparser::be :subject sparser::mv64825 :predicate sparser::mv64835
  :present "PRESENT")
 (:var sparser::mv64825 :isa sparser::what)
 (:var sparser::mv64835 :isa sparser::path :plural t :endpoints sparser::mv64832 :has-determiner
  "THE")
 (:var sparser::mv64832 :isa sparser::collection :raw-text "MAP3K7 and CXCL8" :type
  sparser::protein :number 2 :items (sparser::mv64823 sparser::mv64824))
 (:var sparser::mv64823 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv64824 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    source-start
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    question-mark
                    end-of-source
("Does MAP3K7 affect IKK?"
 (:var sparser::mv64841 :isa sparser::polar-question :statement sparser::mv64840)
 (:var sparser::mv64840 :isa sparser::affect :agent sparser::mv64836 :object sparser::mv64839
  :raw-text "affect")
 (:var sparser::mv64836 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv64839 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
  :family-members
  ((sparser::protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
   (sparser::protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
   (sparser::protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
  :uid "NCIT:C104199"))

___________________
627: "MAP3K7 regulates IKK"

                    source-start
e5    REGULATE      1 "MAP3K7 regulates IKK" 7
                    end-of-source
("MAP3K7 regulates IKK"
 (:var sparser::mv64843 :isa sparser::regulate :agent sparser::mv64842 :object sparser::mv64844
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv64842 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv64844 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
  :family-members
  ((sparser::protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
   (sparser::protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
   (sparser::protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
  :uid "NCIT:C104199"))

___________________
628: "MAP3K7 positively regulates IKK"

                    source-start
e6    UPREGULATE    1 "MAP3K7 positively regulates IKK" 8
                    end-of-source
("MAP3K7 positively regulates IKK"
 (:var sparser::mv64846 :isa sparser::upregulate :agent sparser::mv64845 :object sparser::mv64847
  :present "PRESENT" :raw-text "positively regulates")
 (:var sparser::mv64845 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv64847 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
  :family-members
  ((sparser::protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
   (sparser::protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
   (sparser::protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
  :uid "NCIT:C104199"))

___________________
629: "NFkappaB positively regulates CXCL8."

                    source-start
e7    UPREGULATE    1 "NFkappaB positively regulates CXCL8" 6
                    period
                    end-of-source
("NFkappaB positively regulates CXCL8."
 (:var sparser::mv64848 :isa sparser::upregulate :agent sparser::mv64850 :object sparser::mv64849
  :present "PRESENT" :raw-text "positively regulates")
 (:var sparser::mv64850 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv64849 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    source-start
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    question-mark
                    end-of-source
("Does NFkappaB regulate the CXCL8 gene?"
 (:var sparser::mv64860 :isa sparser::polar-question :statement sparser::mv64859)
 (:var sparser::mv64859 :isa sparser::regulate :agent sparser::mv64854 :object sparser::mv64858
  :raw-text "regulate")
 (:var sparser::mv64854 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv64858 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv64852
  :raw-text "gene")
 (:var sparser::mv64852 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    source-start
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    end-of-source
("Show me the evidence that NFkappaB regulates CXCL8"
 (:var sparser::mv64862 :isa sparser::show :|statement-OR-theme| sparser::mv64870 :beneficiary
  sparser::mv64863 :present "PRESENT")
 (:var sparser::mv64870 :isa sparser::evidence :statement sparser::mv64869 :has-determiner "THE")
 (:var sparser::mv64869 :isa sparser::regulate :agent sparser::mv64867 :object sparser::mv64861
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv64867 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv64861 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv64863 :isa sparser::interlocutor :name "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    source-start
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    question-mark
                    end-of-source
("Does ERK regulate the CXCL8 gene?"
 (:var sparser::mv64878 :isa sparser::polar-question :statement sparser::mv64877)
 (:var sparser::mv64877 :isa sparser::regulate :agent sparser::mv64873 :object sparser::mv64876
  :raw-text "regulate")
 (:var sparser::mv64873 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv64876 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv64871
  :raw-text "gene")
 (:var sparser::mv64871 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    source-start
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    end-of-source
("ERK decreases the amount of CXCL8"
 (:var sparser::mv64881 :isa sparser::decrease :agent sparser::mv64880
  :|affected-process-OR-object| sparser::mv64883 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv64880 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv64883 :isa sparser::bio-amount :measured-item sparser::mv64879 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64879 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    source-start
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    question-mark
                    end-of-source
("Does TNG regulate ERK?"
 (:var sparser::mv64891 :isa sparser::polar-question :statement sparser::mv64890)
 (:var sparser::mv64890 :isa sparser::regulate :agent sparser::mv64887 :object sparser::mv64889
  :raw-text "regulate")
 (:var sparser::mv64887 :isa sparser::bio-entity :name "TNG")
 (:var sparser::mv64889 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
635: "Does TNF regulate the ERK gene?"

                    source-start
e13   REGULATE      1 "Does TNF regulate the ERK gene" 7
                    question-mark
                    end-of-source
("Does TNF regulate the ERK gene?"
 (:var sparser::mv64899 :isa sparser::polar-question :statement sparser::mv64898)
 (:var sparser::mv64898 :isa sparser::regulate :agent sparser::mv64893 :object sparser::mv64897
  :raw-text "regulate")
 (:var sparser::mv64893 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv64897 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv64896
  :raw-text "gene")
 (:var sparser::mv64896 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
636: "What are the pathways between TNG and ERK?"

                    source-start
e14   BE            1 "What are the pathways between TNG and ERK" 9
                    question-mark
                    end-of-source
("What are the pathways between TNG and ERK?"
 (:var sparser::mv64901 :isa sparser::be :subject sparser::mv64900 :predicate sparser::mv64912
  :present "PRESENT")
 (:var sparser::mv64900 :isa sparser::what)
 (:var sparser::mv64912 :isa sparser::pathway :plural t :pathwaycomponent sparser::mv64909
  :has-determiner "THE" :raw-text "pathways")
 (:var sparser::mv64909 :isa sparser::collection :raw-text "TNG and ERK" :type
  sparser::protein-family :number 2 :items (sparser::mv64906 sparser::mv64908))
 (:var sparser::mv64906 :isa sparser::bio-entity :name "TNG")
 (:var sparser::mv64908 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
637: "What are the pathways between TNF and ERK?"

                    source-start
e14   BE            1 "What are the pathways between TNF and ERK" 9
                    question-mark
                    end-of-source
("What are the pathways between TNF and ERK?"
 (:var sparser::mv64914 :isa sparser::be :subject sparser::mv64913 :predicate sparser::mv64925
  :present "PRESENT")
 (:var sparser::mv64913 :isa sparser::what)
 (:var sparser::mv64925 :isa sparser::pathway :plural t :pathwaycomponent sparser::mv64922
  :has-determiner "THE" :raw-text "pathways")
 (:var sparser::mv64922 :isa sparser::collection :raw-text "TNF and ERK" :type sparser::protein
  :number 2 :items (sparser::mv64919 sparser::mv64921))
 (:var sparser::mv64919 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv64921 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
638: "Does NFkappaB regulate ERK?"

                    source-start
e9    REGULATE      1 "Does NFkappaB regulate ERK" 5
                    question-mark
                    end-of-source
("Does NFkappaB regulate ERK?"
 (:var sparser::mv64932 :isa sparser::polar-question :statement sparser::mv64931)
 (:var sparser::mv64931 :isa sparser::regulate :agent sparser::mv64927 :object sparser::mv64930
  :raw-text "regulate")
 (:var sparser::mv64927 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv64930 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
639: "Does NFkappaB regulate the ERK gene?"

                    source-start
e14   REGULATE      1 "Does NFkappaB regulate the ERK gene" 7
                    question-mark
                    end-of-source
("Does NFkappaB regulate the ERK gene?"
 (:var sparser::mv64941 :isa sparser::polar-question :statement sparser::mv64940)
 (:var sparser::mv64940 :isa sparser::regulate :agent sparser::mv64934 :object sparser::mv64939
  :raw-text "regulate")
 (:var sparser::mv64934 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv64939 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv64938
  :raw-text "gene")
 (:var sparser::mv64938 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
640: "What pathways exist between NFkappaB and ERK?"

                    source-start
e14   COPULAR-PREDICATE 1 "What pathways exist between NFkappaB and ERK" 8
                    question-mark
                    end-of-source
("What pathways exist between NFkappaB and ERK?"
 (:var sparser::mv64957 :isa sparser::copular-predication-of-pp :item sparser::mv64952 :value
  sparser::mv64956 :prep "BETWEEN" :predicate sparser::mv64945)
 (:var sparser::mv64952 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv64956 :isa sparser::pathway :plural t :pathwaycomponent sparser::mv64951
  :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv64951 :isa sparser::collection :raw-text "NFkappaB and ERK" :type
  sparser::protein-family :number 2 :items (sparser::mv64948 sparser::mv64950))
 (:var sparser::mv64948 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv64950 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv64945 :isa sparser::exist :present "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    source-start
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    question-mark
                    end-of-source
("How does NFkappaB affect ERK?"
 (:var sparser::mv64963 :isa sparser::affect :manner sparser::mv64959 :agent sparser::mv64961
  :object sparser::mv64964 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv64959 :isa sparser::how)
 (:var sparser::mv64961 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv64964 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
642: "MAP3K7 activates IKK"

                    source-start
e5    BIO-ACTIVATE  1 "MAP3K7 activates IKK" 7
                    end-of-source
("MAP3K7 activates IKK"
 (:var sparser::mv64966 :isa sparser::bio-activate :agent sparser::mv64965 :object sparser::mv64967
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv64965 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv64967 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
  :family-members
  ((sparser::protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
   (sparser::protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
   (sparser::protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
  :uid "NCIT:C104199"))

___________________
643: "IKK activates TNF"

                    source-start
e4    BIO-ACTIVATE  1 "IKK activates TNF" 4
                    end-of-source
("IKK activates TNF"
 (:var sparser::mv64969 :isa sparser::bio-activate :agent sparser::mv64968 :object sparser::mv64970
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv64968 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
  :family-members
  ((sparser::protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
   (sparser::protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
   (sparser::protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
  :uid "NCIT:C104199")
 (:var sparser::mv64970 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    source-start
e14   BE            1 "What are the paths between TNF and ERK" 9
                    question-mark
                    end-of-source
("What are the paths between TNF and ERK?"
 (:var sparser::mv64972 :isa sparser::be :subject sparser::mv64971 :predicate sparser::mv64983
  :present "PRESENT")
 (:var sparser::mv64971 :isa sparser::what)
 (:var sparser::mv64983 :isa sparser::path :plural t :endpoints sparser::mv64980 :has-determiner
  "THE")
 (:var sparser::mv64980 :isa sparser::collection :raw-text "TNF and ERK" :type sparser::protein
  :number 2 :items (sparser::mv64977 sparser::mv64979))
 (:var sparser::mv64977 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv64979 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
645: "Does TNF regulate ERK?"

                    source-start
e8    REGULATE      1 "Does TNF regulate ERK" 5
                    question-mark
                    end-of-source
("Does TNF regulate ERK?"
 (:var sparser::mv64989 :isa sparser::polar-question :statement sparser::mv64988)
 (:var sparser::mv64988 :isa sparser::regulate :agent sparser::mv64985 :object sparser::mv64987
  :raw-text "regulate")
 (:var sparser::mv64985 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv64987 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
646: "How does MAP3K7 affect CXCL8?"

                    source-start
e9    AFFECT        1 "How does MAP3K7 affect CXCL8" 10
                    question-mark
                    end-of-source
("How does MAP3K7 affect CXCL8?"
 (:var sparser::mv64994 :isa sparser::affect :manner sparser::mv64992 :agent sparser::mv64990
  :object sparser::mv64991 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv64992 :isa sparser::how)
 (:var sparser::mv64990 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv64991 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    source-start
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    end-of-source
("TNF activates ERK"
 (:var sparser::mv64996 :isa sparser::bio-activate :agent sparser::mv64995 :object sparser::mv64997
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv64995 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv64997 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
648: " Active ERK decreases the amount of CXCL8"

                    source-start
e15   DECREASE      1 "Active ERK decreases the amount of CXCL8" 9
                    end-of-source
("Active ERK decreases the amount of CXCL8"
 (:var sparser::mv65001 :isa sparser::decrease :agent sparser::mv65000
  :|affected-process-OR-object| sparser::mv65003 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv65000 :isa sparser::protein-family :predication sparser::mv64999 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv64999 :isa sparser::active)
 (:var sparser::mv65003 :isa sparser::bio-amount :measured-item sparser::mv64998 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv64998 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    source-start
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    question-mark
                    end-of-source
("What are the common upstreams of CXCL8 and CXCL10?"
 (:var sparser::mv65009 :isa sparser::be :subject sparser::mv65008 :predicate sparser::mv65020
  :present "PRESENT")
 (:var sparser::mv65008 :isa sparser::what)
 (:var sparser::mv65020 :isa sparser::upstream-segment :plural t :pathwaycomponent sparser::mv65016
  :has-determiner "THE" :predication sparser::mv65011 :raw-text "upstreams")
 (:var sparser::mv65016 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv65006 sparser::mv65007))
 (:var sparser::mv65006 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv65007 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN")
 (:var sparser::mv65011 :isa sparser::common))

___________________
650: "How does CXCL8 affect CXCL8?"

                    source-start
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    question-mark
                    end-of-source
("How does CXCL8 affect CXCL8?"
 (:var sparser::mv65025 :isa sparser::affect :manner sparser::mv65023 :agent sparser::mv65021
  :object sparser::mv65022 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv65023 :isa sparser::how)
 (:var sparser::mv65021 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv65022 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    source-start
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    question-mark
                    end-of-source
("Does CXCL8 regulate CXCL10?"
 (:var sparser::mv65031 :isa sparser::polar-question :statement sparser::mv65030)
 (:var sparser::mv65030 :isa sparser::regulate :agent sparser::mv65026 :object sparser::mv65027
  :raw-text "regulate")
 (:var sparser::mv65026 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv65027 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    source-start
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    question-mark
                    end-of-source
("Does CXCL8 regulate the CXCL10 gene?"
 (:var sparser::mv65039 :isa sparser::polar-question :statement sparser::mv65038)
 (:var sparser::mv65038 :isa sparser::regulate :agent sparser::mv65032 :object sparser::mv65037
  :raw-text "regulate")
 (:var sparser::mv65032 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv65037 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv65033
  :raw-text "gene")
 (:var sparser::mv65033 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    source-start
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    question-mark
                    end-of-source
("How does MAP3k7 affect CXCL10?"
 (:var sparser::mv65044 :isa sparser::affect :manner sparser::mv65042 :agent sparser::mv65040
  :object sparser::mv65041 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv65042 :isa sparser::how)
 (:var sparser::mv65040 :isa sparser::protein :raw-text "MAP3k7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv65041 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    source-start
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    question-mark
                    end-of-source
("What are the paths between TNF and CXCL10?"
 (:var sparser::mv65047 :isa sparser::be :subject sparser::mv65046 :predicate sparser::mv65057
  :present "PRESENT")
 (:var sparser::mv65046 :isa sparser::what)
 (:var sparser::mv65057 :isa sparser::path :plural t :endpoints sparser::mv65054 :has-determiner
  "THE")
 (:var sparser::mv65054 :isa sparser::collection :raw-text "TNF and CXCL10" :type sparser::protein
  :number 2 :items (sparser::mv65052 sparser::mv65045))
 (:var sparser::mv65052 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv65045 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    source-start
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    question-mark
                    end-of-source
("Does ERK regulate the expression of CXCL10?"
 (:var sparser::mv65067 :isa sparser::polar-question :statement sparser::mv65065)
 (:var sparser::mv65065 :isa sparser::regulate :agent sparser::mv65060 :affected-process
  sparser::mv65063 :raw-text "regulate")
 (:var sparser::mv65060 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv65063 :isa sparser::gene-transcript-express :object sparser::mv65058
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv65058 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    source-start
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    end-of-source
("active ERK decreases the expression of CXCL10"
 (:var sparser::mv65071 :isa sparser::decrease :agent sparser::mv65070 :affected-process
  sparser::mv65073 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv65070 :isa sparser::protein-family :predication sparser::mv65069 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv65069 :isa sparser::active)
 (:var sparser::mv65073 :isa sparser::gene-transcript-express :object sparser::mv65068
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv65068 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    source-start
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    end-of-source
("active ERK decreases the amount of CXCL8"
 (:var sparser::mv65079 :isa sparser::decrease :agent sparser::mv65078
  :|affected-process-OR-object| sparser::mv65081 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv65078 :isa sparser::protein-family :predication sparser::mv65077 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv65077 :isa sparser::active)
 (:var sparser::mv65081 :isa sparser::bio-amount :measured-item sparser::mv65076 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv65076 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    source-start
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    end-of-source
("Active ERK decreases the amount of CXCL10"
 (:var sparser::mv65087 :isa sparser::decrease :agent sparser::mv65086
  :|affected-process-OR-object| sparser::mv65089 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv65086 :isa sparser::protein-family :predication sparser::mv65085 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv65085 :isa sparser::active)
 (:var sparser::mv65089 :isa sparser::bio-amount :measured-item sparser::mv65084 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv65084 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    source-start
e14   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    end-of-source
("NG25 inhibits the activity of MAP3K7"
 (:var sparser::mv65094 :isa sparser::inhibit :agent sparser::mv65092 :affected-process
  sparser::mv65096 :present "PRESENT" :raw-text "inhibits")
 (:var sparser::mv65092 :isa sparser::drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
 (:var sparser::mv65096 :isa sparser::bio-activity :participant sparser::mv65093 :has-determiner
  "THE" :raw-text "activity")
 (:var sparser::mv65093 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    source-start
e21   DECREASE      1 "Does NG25 decrease the CXCL8 " 8
e18   IN            8 "in the model" 11
                    question-mark
                    end-of-source
                    source-start
e21   S             1 "Does NG25 decrease the CXCL8 " 8
e18   PP            8 "in the model" 11
                    question-mark
                    end-of-source


___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    source-start
e18   DECREASE      1 "Does NG25 decrease CXCL10 " 7
e15   IN            7 "in the model" 10
                    question-mark
                    end-of-source
                    source-start
e18   S             1 "Does NG25 decrease CXCL10 " 7
e15   PP            7 "in the model" 10
                    question-mark
                    end-of-source


___________________
662: "TNF activates NFkappaB"

                    source-start
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    end-of-source
("TNF activates NFkappaB"
 (:var sparser::mv65123 :isa sparser::bio-activate :agent sparser::mv65122 :object sparser::mv65124
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv65122 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv65124 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB"))

___________________
663: "I want to find out how tofacitinib decreases IL2"

                    source-start
e22   WANT          1 "I want to find out how tofacitinib decreases IL2" 11
                    end-of-source
("I want to find out how tofacitinib decreases IL2"
 (:var sparser::mv65130 :isa sparser::want :agent sparser::mv65127 :theme sparser::mv65141 :present
  "PRESENT")
 (:var sparser::mv65127 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv65141 :isa sparser::find-out :agent sparser::mv65127 :statement sparser::mv65138)
 (:var sparser::mv65138 :isa sparser::wh-question :statement sparser::mv65137 :var nil :wh
  sparser::how)
 (:var sparser::mv65137 :isa sparser::decrease :agent sparser::mv65136 :object sparser::mv65126
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv65136 :isa sparser::drug :raw-text "tofacitinib" :name "tasocitinib" :uid
  "NCIT:C95800")
 (:var sparser::mv65126 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    source-start
e29   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    end-of-source
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:var sparser::mv65146 :isa sparser::want :agent sparser::mv65143 :theme sparser::mv65163 :present
  "PRESENT")
 (:var sparser::mv65143 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv65163 :isa sparser::find-out :agent sparser::mv65143 :statement sparser::mv65160)
 (:var sparser::mv65160 :isa sparser::wh-question :statement sparser::mv65153 :var nil :wh
  sparser::how)
 (:var sparser::mv65153 :isa sparser::decrease :agent sparser::mv65152 :object sparser::mv65154
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv65152 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv65154 :isa sparser::protein :cell-type sparser::mv65158 :raw-text "FOS" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv65158 :isa sparser::cell-type :plural t :cell-line sparser::mv65142)
 (:var sparser::mv65142 :isa sparser::cell-line :name "BT-20" :uid "CVCL:0178"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    source-start
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    end-of-source
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:var sparser::mv65169 :isa sparser::want :agent sparser::mv65166 :theme sparser::mv65185 :present
  "PRESENT")
 (:var sparser::mv65166 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv65185 :isa sparser::find-out :agent sparser::mv65166 :statement sparser::mv65182)
 (:var sparser::mv65182 :isa sparser::wh-question :statement sparser::mv65175 :var nil :wh
  sparser::how)
 (:var sparser::mv65175 :isa sparser::bio-activate :agent sparser::mv65164 :object sparser::mv65176
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv65164 :isa sparser::protein :raw-text "ERBB3" :uid "UP:P21860" :name
  "ERBB3_HUMAN")
 (:var sparser::mv65176 :isa sparser::protein :cell-type sparser::mv65180 :raw-text "JUN" :uid
  "UP:P05412" :name "JUN_HUMAN")
 (:var sparser::mv65180 :isa sparser::cell-type :plural t :cell-line sparser::mv65165)
 (:var sparser::mv65165 :isa sparser::cell-line :name "SKBR3" :uid "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    source-start
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    question-mark
                    end-of-source
("Does MEK phosphorylate ERK?"
 (:var sparser::mv65191 :isa sparser::polar-question :statement sparser::mv65190)
 (:var sparser::mv65190 :isa sparser::phosphorylate :agent sparser::mv65187 :substrate
  sparser::mv65189 :raw-text "phosphorylate")
 (:var sparser::mv65187 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv65189 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
667: "Does STAT3 inhibit the c-fos gene?"

                    source-start
e15   INHIBIT       1 "Does STAT3 inhibit the c-fos gene" 10
                    question-mark
                    end-of-source
("Does STAT3 inhibit the c-fos gene?"
 (:var sparser::mv65199 :isa sparser::polar-question :statement sparser::mv65198)
 (:var sparser::mv65198 :isa sparser::inhibit :agent sparser::mv65192 :object sparser::mv65197
  :raw-text "inhibit")
 (:var sparser::mv65192 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv65197 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv65193
  :raw-text "gene")
 (:var sparser::mv65193 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    source-start
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    question-mark
                    end-of-source
("Does STAT3 stimulate the c-fos gene?"
 (:var sparser::mv65207 :isa sparser::polar-question :statement sparser::mv65206)
 (:var sparser::mv65206 :isa sparser::stimulate :agent sparser::mv65200 :object sparser::mv65205
  :raw-text "stimulate")
 (:var sparser::mv65200 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv65205 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv65201
  :raw-text "gene")
 (:var sparser::mv65201 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    source-start
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    period
                    end-of-source
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:var sparser::mv65212 :isa sparser::want :agent sparser::mv65209 :theme sparser::mv65231 :present
  "PRESENT")
 (:var sparser::mv65209 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv65231 :isa sparser::find-out :agent sparser::mv65209 :statement sparser::mv65228)
 (:var sparser::mv65228 :isa sparser::wh-question :statement sparser::mv65219 :var nil :wh
  sparser::how)
 (:var sparser::mv65219 :isa sparser::decrease :agent sparser::mv65218 :object sparser::mv65220
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv65218 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv65220 :isa sparser::protein :cell-type sparser::mv65226 :raw-text "FOS" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv65226 :isa sparser::cell-type :plural t :cell-line sparser::mv65208
  :associated-disease sparser::mv65222)
 (:var sparser::mv65208 :isa sparser::cell-line :name "SK-MEL-133" :uid "CVCL:6082")
 (:var sparser::mv65222 :isa sparser::melanoma))

___________________
670: "Is ERK a transcription factor?"

                    source-start
e9    BE            1 "Is ERK a transcription factor" 6
                    question-mark
                    end-of-source
("Is ERK a transcription factor?"
 (:var sparser::mv65236 :isa sparser::polar-question :statement sparser::mv65233)
 (:var sparser::mv65233 :isa sparser::be :subject sparser::mv65234 :predicate sparser::mv65232)
 (:var sparser::mv65234 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv65232 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor"))

___________________
671: "List all the genes regulated by elk1 and srf."

                    source-start
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    period
                    end-of-source
("List all the genes regulated by elk1 and srf."
 (:var sparser::mv65238 :isa list :theme sparser::mv65249 :present "PRESENT")
 (:var sparser::mv65249 :isa sparser::gene :plural t :predication sparser::mv65243 :quantifier
  sparser::mv65239 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv65243 :isa sparser::regulate :object sparser::mv65249 :agent sparser::mv65247
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv65247 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv65237 sparser::mv65246))
 (:var sparser::mv65237 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv65246 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv65239 :isa sparser::all :word "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    source-start
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    period
                    end-of-source
("List some of the genes regulated by elk1 and srf."
 (:var sparser::mv65253 :isa list :theme sparser::mv65267 :present "PRESENT")
 (:var sparser::mv65267 :isa sparser::gene :plural t :predication sparser::mv65259 :quantifier
  sparser::mv65254 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv65259 :isa sparser::regulate :object sparser::mv65267 :agent sparser::mv65263
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv65263 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv65252 sparser::mv65262))
 (:var sparser::mv65252 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv65262 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv65254 :isa some :word "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    source-start
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    period
                    end-of-source
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:var sparser::mv65272 :isa sparser::show :|statement-OR-theme| sparser::mv65286 :beneficiary
  sparser::mv65273 :present "PRESENT")
 (:var sparser::mv65286 :isa sparser::mutation :plural t :context sparser::mv65271 :object
  sparser::mv65281 :has-determiner "THE" :raw-text "mutations")
 (:var sparser::mv65271 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv65281 :isa sparser::collection :raw-text "TP53 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv65270 sparser::mv65279))
 (:var sparser::mv65270 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv65279 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv65273 :isa sparser::interlocutor :name "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    source-start
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    question-mark
                    end-of-source
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:var sparser::mv65290 :isa sparser::be :subject sparser::mv65289 :predicate sparser::mv65303
  :present "PRESENT")
 (:var sparser::mv65289 :isa sparser::what)
 (:var sparser::mv65303 :isa sparser::mutation :plural t :context sparser::mv65288 :object
  sparser::mv65298 :has-determiner "THE" :raw-text "mutations")
 (:var sparser::mv65288 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv65298 :isa sparser::collection :raw-text "TP53 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv65287 sparser::mv65296))
 (:var sparser::mv65287 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv65296 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    source-start
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    question-mark
                    end-of-source
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:var sparser::mv65308 :isa sparser::be :subject sparser::mv65307 :predicate sparser::mv65318
  :present "PRESENT")
 (:var sparser::mv65307 :isa sparser::what)
 (:var sparser::mv65318 :isa sparser::gene :disease sparser::mv65306 :has-determiner "THE"
  :predication sparser::mv65304 :raw-text "genes")
 (:var sparser::mv65306 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv65304 :isa sparser::mutual-exclusivity :alternative sparser::mv65305)
 (:var sparser::mv65305 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    source-start
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    question-mark
                    end-of-source
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:var sparser::mv65323 :isa sparser::be :subject sparser::mv65322 :predicate sparser::mv65333
  :present "PRESENT")
 (:var sparser::mv65322 :isa sparser::what)
 (:var sparser::mv65333 :isa sparser::gene :disease sparser::mv65321 :has-determiner "THE"
  :predication sparser::mv65319 :raw-text "genes")
 (:var sparser::mv65321 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv65319 :isa sparser::mutual-exclusivity :alternative sparser::mv65320)
 (:var sparser::mv65320 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name
  "CADH1_HUMAN"))

___________________
677: "What downregulates it?"

                    source-start
e5    DOWNREGULATE  1 "What downregulates it" 4
                    question-mark
                    end-of-source
("What downregulates it?"
 (:var sparser::mv65335 :isa sparser::downregulate :|agent-OR-cause| sparser::mv65334
  :|affected-process-OR-object| sparser::mv65336 :present "PRESENT" :raw-text "downregulates")
 (:var sparser::mv65334 :isa sparser::what)
 (:var sparser::mv65336 :isa sparser::pronoun/inanimate :word "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    source-start
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    question-mark
                    end-of-source
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:var sparser::mv65341 :isa sparser::have :possessor sparser::mv65348 :thing-possessed
  sparser::mv65343 :present "PRESENT")
 (:var sparser::mv65348 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv65343 :isa sparser::evidence :fact sparser::mv65346 :predication
  sparser::mv65342)
 (:var sparser::mv65346 :isa sparser::regulate :agent sparser::mv65337 :progressive
  sparser::mv65345 :raw-text "regulated")
 (:var sparser::mv65337 :isa sparser::micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid
  "MIMAT0000421")
 (:var sparser::mv65345 :isa sparser::be) (:var sparser::mv65342 :isa sparser::strong))

___________________
679: "What increases the amount of myc"

                    source-start
e13   INCREASE      1 "What increases the amount of myc" 7
                    end-of-source
("What increases the amount of myc"
 (:var sparser::mv65354 :isa sparser::increase :|agent-OR-cause| sparser::mv65351
  :|affected-process-OR-object| sparser::mv65356 :present "PRESENT" :raw-text "increases")
 (:var sparser::mv65351 :isa sparser::what)
 (:var sparser::mv65356 :isa sparser::bio-amount :measured-item sparser::mv65358 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv65358 :isa sparser::protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    source-start
e5    INHIBIT       1 "What inhibits fzd8" 5
                    question-mark
                    end-of-source
("What inhibits fzd8?"
 (:var sparser::mv65362 :isa sparser::inhibit :|agent-OR-cause| sparser::mv65361 :object
  sparser::mv65360 :present "PRESENT" :raw-text "inhibits")
 (:var sparser::mv65361 :isa sparser::what)
 (:var sparser::mv65360 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    source-start
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    question-mark
                    end-of-source
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:var sparser::mv65366 :isa sparser::be :subject sparser::mv65365 :predicate sparser::mv65378
  :present "PRESENT")
 (:var sparser::mv65365 :isa sparser::what)
 (:var sparser::mv65378 :isa sparser::quality-predicate :item sparser::mv65376 :attribute
  sparser::mv65372)
 (:var sparser::mv65376 :isa sparser::collection :raw-text "AKT1, BRAF and MAPK1" :type
  sparser::protein :number 3 :items (sparser::mv65363 sparser::mv65374 sparser::mv65364))
 (:var sparser::mv65363 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv65374 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv65364 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv65372 :isa sparser::location-of :has-determiner "THE" :predication
  sparser::mv65370 :modifier sparser::mv65371)
 (:var sparser::mv65370 :isa sparser::likely :comparative sparser::mv65368)
 (:var sparser::mv65368 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv65371 :isa sparser::cellular :name "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    source-start
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    question-mark
                    end-of-source
("What is the most likely cellular location of AKT1?"
 (:var sparser::mv65381 :isa sparser::be :subject sparser::mv65380 :predicate sparser::mv65390
  :present "PRESENT")
 (:var sparser::mv65380 :isa sparser::what)
 (:var sparser::mv65390 :isa sparser::quality-predicate :item sparser::mv65379 :attribute
  sparser::mv65387)
 (:var sparser::mv65379 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv65387 :isa sparser::location-of :has-determiner "THE" :predication
  sparser::mv65385 :modifier sparser::mv65386)
 (:var sparser::mv65385 :isa sparser::likely :comparative sparser::mv65383)
 (:var sparser::mv65383 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv65386 :isa sparser::cellular :name "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 in lung cancer?"
 (:var sparser::mv65394 :isa sparser::be :subject sparser::mv65393 :predicate sparser::mv65397
  :present "PRESENT")
 (:var sparser::mv65393 :isa sparser::what)
 (:var sparser::mv65397 :isa sparser::significance :context sparser::mv65392 :agent
  sparser::mv65391 :has-determiner "THE" :modifier sparser::mv65396)
 (:var sparser::mv65392 :isa sparser::cancer :name "lung cancer" :uid "TS-0571")
 (:var sparser::mv65391 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv65396 :isa sparser::mutation :raw-text "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    source-start
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    question-mark
                    end-of-source
("Which of those are regulated by tp53?"
 (:var sparser::mv65409 :isa sparser::regulate :|affected-process-OR-object| sparser::mv65405
  :agent sparser::mv65402 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv65405 :isa sparser::those :quantifier sparser::mv65403 :word "those")
 (:var sparser::mv65403 :isa sparser::which)
 (:var sparser::mv65402 :isa sparser::protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    source-start
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    question-mark
                    end-of-source
("Which of those genes are in the MAPK signaling pathway?"
 (:var sparser::mv65429 :isa sparser::copular-predication-of-pp :item sparser::mv65426 :value
  sparser::mv65428 :prep "IN" :predicate sparser::mv65418)
 (:var sparser::mv65426 :isa sparser::gene :plural t :quantifier sparser::mv65413 :has-determiner
  "THOSE" :raw-text "genes")
 (:var sparser::mv65413 :isa sparser::which)
 (:var sparser::mv65428 :isa sparser::gene :plural t :context sparser::mv65412 :quantifier
  sparser::mv65413 :has-determiner "THOSE" :raw-text "genes")
 (:var sparser::mv65412 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv65421 :raw-text "signaling pathway")
 (:var sparser::mv65421 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv65418 :isa sparser::be :present "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    source-start
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    question-mark
                    end-of-source
("Which of these are in the il-12 pathway?"
 (:var sparser::mv65440 :isa sparser::copular-predication-of-pp :item sparser::mv65434 :value
  sparser::mv65438 :prep sparser::mv65436 :predicate sparser::mv65435)
 (:var sparser::mv65434 :isa sparser::these :quantifier sparser::mv65432 :word "these")
 (:var sparser::mv65432 :isa sparser::which)
 (:var sparser::mv65438 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv65431
  :raw-text "pathway")
 (:var sparser::mv65431 :isa sparser::protein-family :raw-text "il-12" :name "IL-12" :count 2
  :family-members
  ((sparser::protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
   (sparser::protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
  :uid "FPLX:IL12")
 (:var sparser::mv65436 :isa sparser::in :word "in")
 (:var sparser::mv65435 :isa sparser::be :present "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    source-start
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    question-mark
                    end-of-source
("Which of them are expressed in liver?"
 (:var sparser::mv65449 :isa sparser::gene-transcript-express :object sparser::mv65444 :organ
  sparser::mv65448 :present "PRESENT" :raw-text "expressed")
 (:var sparser::mv65444 :isa sparser::pronoun/plural :quantifier sparser::mv65442 :word "them")
 (:var sparser::mv65442 :isa sparser::which) (:var sparser::mv65448 :isa sparser::liver))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    source-start
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    question-mark
                    end-of-source
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:var sparser::mv65464 :isa sparser::regulate :|affected-process-OR-object| sparser::mv65456
  :agent sparser::mv65463 :present "PRESENT" :superlative sparser::mv65458 :adverb sparser::mv65459
  :raw-text "regulated")
 (:var sparser::mv65456 :isa sparser::pronoun/plural :quantifier sparser::mv65454 :word "them")
 (:var sparser::mv65454 :isa sparser::which)
 (:var sparser::mv65463 :isa sparser::collection :raw-text "miR-335-5p and miR-155-5p" :type
  sparser::micro-rna :number 2 :items (sparser::mv65452 sparser::mv65453))
 (:var sparser::mv65452 :isa sparser::micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid
  "MIMAT0000765")
 (:var sparser::mv65453 :isa sparser::micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid
  "MIMAT0000646")
 (:var sparser::mv65458 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv65459 :isa sparser::frequently :name "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    source-start
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    question-mark
                    end-of-source
("What transcription factors target SMURF2?"
 (:var sparser::mv65472 :isa sparser::target :agent sparser::mv65473 :object sparser::mv65469
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv65473 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv65469 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    source-start
e11   TARGET        1 "Which of those target frizzled8" 7
                    question-mark
                    end-of-source
("Which of those target frizzled8?"
 (:var sparser::mv65479 :isa sparser::target :|agent-OR-cause| sparser::mv65477 :object
  sparser::mv65474 :present "PRESENT" :raw-text "target")
 (:var sparser::mv65477 :isa sparser::those :quantifier sparser::mv65475 :word "those")
 (:var sparser::mv65475 :isa sparser::which)
 (:var sparser::mv65474 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
691: "What is Selumetinib?"

                    source-start
e4    BE            1 "What is Selumetinib" 4
                    question-mark
                    end-of-source
("What is Selumetinib?"
 (:var sparser::mv65482 :isa sparser::be :subject sparser::mv65481 :predicate sparser::mv65483
  :present "PRESENT")
 (:var sparser::mv65481 :isa sparser::what)
 (:var sparser::mv65483 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
692: "What is MAPK3?"

                    source-start
e5    BE            1 "What is MAPK3" 5
                    question-mark
                    end-of-source
("What is MAPK3?"
 (:var sparser::mv65486 :isa sparser::be :subject sparser::mv65485 :predicate sparser::mv65484
  :present "PRESENT")
 (:var sparser::mv65485 :isa sparser::what)
 (:var sparser::mv65484 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
693: "What does it do?"

                    source-start
e6    DO            1 "What does it do" 5
                    question-mark
                    end-of-source
("What does it do?" (:var sparser::mv65492 :isa do :patient sparser::mv65487 :present "PRESENT")
 (:var sparser::mv65487 :isa sparser::what))

___________________
694: "Is there an inhibitor of ERK1?"

                    source-start
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    question-mark
                    end-of-source
("Is there an inhibitor of ERK1?"
 (:var sparser::mv65502 :isa sparser::polar-question :statement sparser::mv65500)
 (:var sparser::mv65500 :isa sparser::there-exists :value sparser::mv65498 :predicate
  sparser::mv65495)
 (:var sparser::mv65498 :isa sparser::inhibitor :protein sparser::mv65493 :has-determiner "AN"
  :raw-text "inhibitor")
 (:var sparser::mv65493 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
 (:var sparser::mv65495 :isa sparser::syntactic-there))

___________________
695: "Name some drugs that inhibit AKT1."

                    source-start
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    period
                    end-of-source
("Name some drugs that inhibit AKT1."
 (:var sparser::mv65504 :isa sparser::name-something :patient sparser::mv65513 :present "PRESENT")
 (:var sparser::mv65513 :isa sparser::drug :plural t :predication sparser::mv65511 :quantifier
  sparser::mv65507 :raw-text "drugs")
 (:var sparser::mv65511 :isa sparser::inhibit :agent sparser::mv65513 :that-rel t :object
  sparser::mv65503 :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv65503 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv65507 :isa some :word "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    source-start
e12   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    question-mark
                    end-of-source
("Are there any Map2K1 inhibitors?"
 (:var sparser::mv65524 :isa sparser::polar-question :statement sparser::mv65521)
 (:var sparser::mv65521 :isa sparser::there-exists :value sparser::mv65523 :predicate
  sparser::mv65516)
 (:var sparser::mv65523 :isa sparser::inhibitor :plural t :quantifier sparser::mv65518 :protein
  sparser::mv65514 :raw-text "inhibitors")
 (:var sparser::mv65518 :isa sparser::any :word "any")
 (:var sparser::mv65514 :isa sparser::protein :raw-text "Map2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv65516 :isa sparser::syntactic-there))

___________________
697: "Are there targets of Selumetinib?"

                    source-start
e13   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    question-mark
                    end-of-source
("Are there targets of Selumetinib?"
 (:var sparser::mv65536 :isa sparser::polar-question :statement sparser::mv65533)
 (:var sparser::mv65533 :isa sparser::there-exists :value sparser::mv65535 :predicate
  sparser::mv65526)
 (:var sparser::mv65535 :isa sparser::target-protein :plural t :treatment sparser::mv65532
  :raw-text "targets")
 (:var sparser::mv65532 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv65526 :isa sparser::syntactic-there))

___________________
698: "What does Selumetinib inhibit?"

                    source-start
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    question-mark
                    end-of-source
("What does Selumetinib inhibit?"
 (:var sparser::mv65540 :isa sparser::inhibit :|affected-process-OR-object| sparser::mv65537 :agent
  sparser::mv65539 :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv65537 :isa sparser::what)
 (:var sparser::mv65539 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
699: "What does Selumetinib target?"

                    source-start
e6    TARGET        1 "What does Selumetinib target" 5
                    question-mark
                    end-of-source
("What does Selumetinib target?"
 (:var sparser::mv65545 :isa sparser::target :|affected-process-OR-object| sparser::mv65541 :agent
  sparser::mv65543 :present "PRESENT" :raw-text "target")
 (:var sparser::mv65541 :isa sparser::what)
 (:var sparser::mv65543 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
700: "Does Vemurafenib target BRAF?"

                    source-start
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    question-mark
                    end-of-source
("Does Vemurafenib target BRAF?"
 (:var sparser::mv65552 :isa sparser::polar-question :statement sparser::mv65551)
 (:var sparser::mv65551 :isa sparser::target :agent sparser::mv65547 :object sparser::mv65550
  :raw-text "target")
 (:var sparser::mv65547 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv65550 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    source-start
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    question-mark
                    end-of-source
("What are some targets for treating pancreatic cancer?"
 (:var sparser::mv65555 :isa sparser::be :subject sparser::mv65554 :predicate sparser::mv65564
  :present "PRESENT")
 (:var sparser::mv65554 :isa sparser::what)
 (:var sparser::mv65564 :isa sparser::target-protein :plural t :quantifier sparser::mv65556
  :treatment sparser::mv65561 :raw-text "targets")
 (:var sparser::mv65556 :isa some :word "some")
 (:var sparser::mv65561 :isa sparser::treatment :disease sparser::mv65553 :progressive
  "PROGRESSIVE" :raw-text "treating")
 (:var sparser::mv65553 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    source-start
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    question-mark
                    end-of-source
("What are some targets for pancreatic cancer?"
 (:var sparser::mv65567 :isa sparser::be :subject sparser::mv65566 :predicate sparser::mv65575
  :present "PRESENT")
 (:var sparser::mv65566 :isa sparser::what)
 (:var sparser::mv65575 :isa sparser::target-protein :plural t :quantifier sparser::mv65568
  :disease sparser::mv65565 :raw-text "targets")
 (:var sparser::mv65568 :isa some :word "some")
 (:var sparser::mv65565 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    source-start
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    question-mark
                    end-of-source
("What targets could lead to the development of pancreatic cancer?"
 (:var sparser::mv65582 :isa sparser::lead :agent sparser::mv65587 :theme sparser::mv65585 :modal
  sparser::mv65581 :raw-text "lead")
 (:var sparser::mv65587 :isa sparser::target-protein :plural t :has-determiner "WHAT" :raw-text
  "targets")
 (:var sparser::mv65585 :isa sparser::development :disease sparser::mv65576 :has-determiner "THE"
  :raw-text "development")
 (:var sparser::mv65576 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv65581 :isa sparser::could))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    source-start
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    question-mark
                    end-of-source
("What proteins could lead to the development of pancreatic cancer?"
 (:var sparser::mv65595 :isa sparser::lead :agent sparser::mv65600 :theme sparser::mv65598 :modal
  sparser::mv65594 :raw-text "lead")
 (:var sparser::mv65600 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv65598 :isa sparser::development :disease sparser::mv65590 :has-determiner "THE"
  :raw-text "development")
 (:var sparser::mv65590 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv65594 :isa sparser::could))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    source-start
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    question-mark
                    end-of-source
("What mutated genes could lead to pancreatic cancer?"
 (:var sparser::mv65609 :isa sparser::lead :agent sparser::mv65612 :theme sparser::mv65603 :modal
  sparser::mv65608 :raw-text "lead")
 (:var sparser::mv65612 :isa sparser::gene :plural t :has-determiner "WHAT" :predication
  sparser::mv65605 :raw-text "genes")
 (:var sparser::mv65605 :isa sparser::mutation :object sparser::mv65612 :raw-text "mutated")
 (:var sparser::mv65603 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv65608 :isa sparser::could))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    source-start
e23   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    question-mark
                    end-of-source
("What is the top gene mutation that leads to pancreatic cancer?"
 (:var sparser::mv65616 :isa sparser::be :subject sparser::mv65615 :predicate sparser::mv65620
  :present "PRESENT")
 (:var sparser::mv65615 :isa sparser::what)
 (:var sparser::mv65620 :isa sparser::mutation :predication sparser::mv65622 :has-determiner "THE"
  :modifier sparser::mv65618 :object sparser::mv65619 :raw-text "mutation")
 (:var sparser::mv65622 :isa sparser::lead :agent sparser::mv65620 :that-rel t :theme
  sparser::mv65614 :present "PRESENT" :raw-text "leads")
 (:var sparser::mv65614 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv65618 :isa sparser::top-qua-location)
 (:var sparser::mv65619 :isa sparser::gene :raw-text "gene"))

___________________
707: "I would like to find a treatement for pancreatic cancer."

                    source-start
e22   LIKE          1 "I would like " 4
e21   FIND-OUT      4 "to find " 6
e19   TREATEMENT    6 "a treatement " 8
e20   FOR           8 "for pancreatic cancer" 11
                    period
                    end-of-source
                    source-start
e22   S             1 "I would like " 4
e21   INFINITIVE    4 "to find " 6
e19   NP            6 "a treatement " 8
e20   PP            8 "for pancreatic cancer" 11
                    period
                    end-of-source


___________________
708: "What drug could I use to treat pancreatic cancer?"

                    source-start
e19   BIO-USE       1 "What drug could I use to treat pancreatic cancer" 10
                    question-mark
                    end-of-source
("What drug could I use to treat pancreatic cancer?"
 (:var sparser::mv65652 :isa sparser::bio-use :patient sparser::mv65642 :modal sparser::mv65643
  :agent sparser::mv65644 :theme sparser::mv65651 :present "PRESENT" :raw-text "use")
 (:var sparser::mv65642 :isa sparser::drug :has-determiner "WHAT" :raw-text "drug")
 (:var sparser::mv65643 :isa sparser::could)
 (:var sparser::mv65644 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv65651 :isa sparser::treatment :disease sparser::mv65640 :raw-text "treat")
 (:var sparser::mv65640 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    source-start
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    question-mark
                    end-of-source
("What are some drugs for treating pancreatic cancer?"
 (:var sparser::mv65655 :isa sparser::be :subject sparser::mv65654 :predicate sparser::mv65663
  :present "PRESENT")
 (:var sparser::mv65654 :isa sparser::what)
 (:var sparser::mv65663 :isa sparser::drug :plural t :treatment sparser::mv65660 :quantifier
  sparser::mv65656 :raw-text "drugs")
 (:var sparser::mv65660 :isa sparser::treatment :disease sparser::mv65653 :progressive
  "PROGRESSIVE" :raw-text "treating")
 (:var sparser::mv65653 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv65656 :isa some :word "some"))

___________________
710: "I'd like to find a treatement for pancreatic cancer."

                    source-start
e24   LIKE          1 "I'd like " 5
e23   FIND-OUT      5 "to find " 7
e21   TREATEMENT    7 "a treatement " 9
e22   FOR           9 "for pancreatic cancer" 12
                    period
                    end-of-source
                    source-start
e24   S             1 "I'd like " 5
e23   INFINITIVE    5 "to find " 7
e21   NP            7 "a treatement " 9
e22   PP            9 "for pancreatic cancer" 12
                    period
                    end-of-source


___________________
711: "How can i treat pancreatic cancer?"

                    source-start
e2    HOW           1 "How " 2
e3    MODAL         2 "can " 3
                    "i"
e5    TREATMENT     4 "treat pancreatic cancer" 7
                    question-mark
                    end-of-source
                    source-start
e2    WH-PRONOUN    1 "How " 2
e3    MODAL         2 "can " 3
                    "i"
e5    VP            4 "treat pancreatic cancer" 7
                    question-mark
                    end-of-source


___________________
712: "Does MEK act on ERK?"

                    source-start
e11   BIO-ACT       1 "Does MEK act on ERK" 6
                    question-mark
                    end-of-source
("Does MEK act on ERK?"
 (:var sparser::mv65691 :isa sparser::polar-question :statement sparser::mv65689)
 (:var sparser::mv65689 :isa sparser::bio-act :agent sparser::mv65685 :acted-on sparser::mv65688
  :raw-text "act")
 (:var sparser::mv65685 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv65688 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
713: "Let's build a model"

                    source-start
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    end-of-source
("Let's build a model"
 (:var sparser::mv65696 :isa sparser::explicit-suggestion :suggestion sparser::mv65693 :marker
  sparser::let-as-directive)
 (:var sparser::mv65693 :isa sparser::build :artifact sparser::mv65695 :present "PRESENT")
 (:var sparser::mv65695 :isa sparser::model :has-determiner "A"))

___________________
714: "Mek activates MAPK3"

                    source-start
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    end-of-source
("Mek activates MAPK3"
 (:var sparser::mv65699 :isa sparser::bio-activate :agent sparser::mv65698 :object sparser::mv65697
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv65698 :isa sparser::protein-family :raw-text "Mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv65697 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    source-start
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    period
                    end-of-source
("HRAS activates RAF."
 (:var sparser::mv65701 :isa sparser::bio-activate :agent sparser::mv65700 :object sparser::mv65702
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv65700 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv65702 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114"))

___________________
716: "Remove the fact that hras activates ras"

                    source-start
e14   REMOVE        1 "Remove the fact that hras activates ras" 8
                    end-of-source
("Remove the fact that hras activates ras"
 (:var sparser::mv65703 :isa remove :object sparser::mv65710 :present "PRESENT" :raw-text "Remove")
 (:var sparser::mv65710 :isa sparser::fact :statement sparser::mv65708 :has-determiner "THE")
 (:var sparser::mv65708 :isa sparser::bio-activate :agent sparser::mv65707 :object sparser::mv65709
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv65707 :isa sparser::protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv65709 :isa sparser::protein-family :raw-text "ras" :name "Ras" :count 3
  :family-members
  ((sparser::protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
   (sparser::protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
   (sparser::protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
  :uid "FA:03663"))

___________________
717: "Can you tell me what is in the model?"

                    source-start
e22   TELL          1 "Can you tell me what is in the model" 10
                    question-mark
                    end-of-source
("Can you tell me what is in the model?"
 (:var sparser::mv65722 :isa sparser::polar-question :statement sparser::mv65713)
 (:var sparser::mv65713 :isa sparser::tell :agent sparser::mv65712 :theme sparser::mv65721 :theme
  sparser::mv65714 :modal "CAN")
 (:var sparser::mv65712 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv65721 :isa sparser::copular-predication-of-pp :item sparser::mv65715 :value
  sparser::mv65719 :prep sparser::mv65717 :predicate sparser::mv65716)
 (:var sparser::mv65715 :isa sparser::what)
 (:var sparser::mv65719 :isa sparser::model :has-determiner "THE")
 (:var sparser::mv65717 :isa sparser::in :word "in")
 (:var sparser::mv65716 :isa sparser::be :modal "CAN")
 (:var sparser::mv65714 :isa sparser::interlocutor :name "speaker"))

___________________
718: "Summarize the model."

                    source-start
e5    SUMMARIZE     1 "Summarize the model" 4
                    period
                    end-of-source
("Summarize the model."
 (:var sparser::mv65726 :isa sparser::summarize :statement sparser::mv65725 :present "PRESENT")
 (:var sparser::mv65725 :isa sparser::model :has-determiner "THE"))

___________________
719: "Summarize the current model."

                    source-start
e7    SUMMARIZE     1 "Summarize the current model" 5
                    period
                    end-of-source
("Summarize the current model."
 (:var sparser::mv65731 :isa sparser::summarize :statement sparser::mv65730 :present "PRESENT")
 (:var sparser::mv65730 :isa sparser::model :has-determiner "THE" :predication sparser::mv65729)
 (:var sparser::mv65729 :isa sparser::current))

___________________
720: "What phosphorylates BRAF?"

                    source-start
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    question-mark
                    end-of-source
("What phosphorylates BRAF?"
 (:var sparser::mv65733 :isa sparser::phosphorylate :|agent-OR-cause| sparser::mv65732 :substrate
  sparser::mv65734 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv65732 :isa sparser::what)
 (:var sparser::mv65734 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
721: "Vemurafenib binds BRAF."

                    source-start
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    period
                    end-of-source
("Vemurafenib binds BRAF."
 (:var sparser::mv65736 :isa sparser::binding :binder sparser::mv65735 :direct-bindee
  sparser::mv65737 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv65735 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv65737 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
722: "Phosphorylated MAP2K1 is activated."

                    source-start
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    period
                    end-of-source
("Phosphorylated MAP2K1 is activated."
 (:var sparser::mv65742 :isa sparser::bio-activate :object sparser::mv65738 :present "PRESENT"
  :raw-text "activated")
 (:var sparser::mv65738 :isa sparser::protein :predication sparser::mv65739 :raw-text "MAP2K1" :uid
  "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv65739 :isa sparser::phosphorylate :substrate sparser::mv65738 :raw-text
  "Phosphorylated"))

___________________
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    source-start
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    period
                    end-of-source
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:var sparser::mv65746 :isa sparser::dephosphorylate :agent sparser::mv65743 :substrate
  sparser::mv65744 :present "PRESENT" :raw-text "dephosphorylates")
 (:var sparser::mv65743 :isa sparser::protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name
  "PP2AA_HUMAN")
 (:var sparser::mv65744 :isa sparser::protein :predication sparser::mv65752 :raw-text "MAP2K1" :uid
  "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv65752 :isa sparser::binding :direct-bindee sparser::mv65744 :that-rel t :bindee
  sparser::mv65745 :present "PRESENT" :negation sparser::mv65749 :raw-text "bound")
 (:var sparser::mv65745 :isa sparser::protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv65749 :isa not :word "not"))

___________________
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    source-start
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    period
                    end-of-source
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:var sparser::mv65763 :isa sparser::phosphorylate :agent sparser::mv65754 :substrate
  sparser::mv65756 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv65754 :isa sparser::protein :predication sparser::mv65764 :predication
  sparser::mv65757 :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv65764 :isa sparser::binding :direct-bindee sparser::mv65754 :that-rel t :bindee
  sparser::mv65755 :present "PRESENT" :negation sparser::mv65760 :raw-text "bound")
 (:var sparser::mv65755 :isa sparser::protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name
  "PP2AA_HUMAN")
 (:var sparser::mv65760 :isa not :word "not") (:var sparser::mv65757 :isa sparser::active)
 (:var sparser::mv65756 :isa sparser::protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
725: "Phosphorylated ERK2 is activated."

                    source-start
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    period
                    end-of-source
("Phosphorylated ERK2 is activated."
 (:var sparser::mv65770 :isa sparser::bio-activate :object sparser::mv65766 :present "PRESENT"
  :raw-text "activated")
 (:var sparser::mv65766 :isa sparser::protein :predication sparser::mv65767 :raw-text "ERK2" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv65767 :isa sparser::phosphorylate :substrate sparser::mv65766 :raw-text
  "Phosphorylated"))

___________________
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    source-start
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    period
                    end-of-source
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:var sparser::mv65774 :isa sparser::dephosphorylate :agent sparser::mv65771 :substrate
  sparser::mv65772 :present "PRESENT" :raw-text "dephosphorylates")
 (:var sparser::mv65771 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN")
 (:var sparser::mv65772 :isa sparser::protein :predication sparser::mv65780 :raw-text "ERK2" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv65780 :isa sparser::binding :direct-bindee sparser::mv65772 :that-rel t :bindee
  sparser::mv65773 :present "PRESENT" :negation sparser::mv65777 :raw-text "bound")
 (:var sparser::mv65773 :isa sparser::protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
 (:var sparser::mv65777 :isa not :word "not"))

___________________
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    source-start
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    period
                    end-of-source
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:var sparser::mv65795 :isa sparser::phosphorylate :agent sparser::mv65783 :substrate
  sparser::mv65782 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv65783 :isa sparser::protein :predication sparser::mv65798 :mutation
  sparser::mv65797 :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv65798 :isa sparser::binding :direct-bindee sparser::mv65783 :that-rel t :bindee
  sparser::mv65794 :present "PRESENT" :negation sparser::mv65791 :raw-text "bound")
 (:var sparser::mv65794 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv65791 :isa not :word "not")
 (:var sparser::mv65797 :isa sparser::point-mutated-protein :position sparser::mv65786
  :new-amino-acid sparser::mv65788 :original-amino-acid sparser::mv65784)
 (:var sparser::mv65786 :isa number :value 600)
 (:var sparser::mv65788 :isa sparser::amino-acid :name "glutamic acid" :letter "E")
 (:var sparser::mv65784 :isa sparser::amino-acid :name "valine" :letter "V")
 (:var sparser::mv65782 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
728: "Phosphorylated MAPK1 is active."

                    source-start
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    period
                    end-of-source
("Phosphorylated MAPK1 is active."
 (:var sparser::mv65804 :isa sparser::copular-predication :item sparser::mv65800 :value
  sparser::mv65803 :predicate sparser::mv65802)
 (:var sparser::mv65800 :isa sparser::protein :predication sparser::mv65801 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv65801 :isa sparser::phosphorylate :substrate sparser::mv65800 :raw-text
  "Phosphorylated")
 (:var sparser::mv65803 :isa sparser::active)
 (:var sparser::mv65802 :isa sparser::be :present "PRESENT"))

___________________
729: "PDK1 phosphorylates AKT1."

                    source-start
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    period
                    end-of-source
("PDK1 phosphorylates AKT1."
 (:var sparser::mv65807 :isa sparser::phosphorylate :agent sparser::mv65805 :substrate
  sparser::mv65806 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv65805 :isa sparser::protein :raw-text "PDK1" :uid "UP:O15530" :name
  "PDPK1_HUMAN")
 (:var sparser::mv65806 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
730: "Let's move phosphorylated AKT1 to the top"

                    source-start
e18   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    end-of-source
("Let's move phosphorylated AKT1 to the top"
 (:var sparser::mv65817 :isa sparser::explicit-suggestion :suggestion sparser::mv65811 :marker
  sparser::let-as-directive)
 (:var sparser::mv65811 :isa sparser::move-to :goal sparser::mv65815 :theme sparser::mv65809
  :present "PRESENT")
 (:var sparser::mv65815 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv65809 :isa sparser::protein :predication sparser::mv65812 :raw-text "AKT1" :uid
  "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv65812 :isa sparser::phosphorylate :substrate sparser::mv65809 :raw-text
  "phosphorylated"))

___________________
731: "Let's move phosphorylated AKT1 on top"

                    source-start
e15   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    end-of-source
("Let's move phosphorylated AKT1 on top"
 (:var sparser::mv65826 :isa sparser::explicit-suggestion :suggestion sparser::mv65821 :marker
  sparser::let-as-directive)
 (:var sparser::mv65821 :isa sparser::move-to :|at-relative-location-OR-goal| sparser::mv65824
  :theme sparser::mv65819 :present "PRESENT")
 (:var sparser::mv65824 :isa sparser::top-qua-location)
 (:var sparser::mv65819 :isa sparser::protein :predication sparser::mv65822 :raw-text "AKT1" :uid
  "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv65822 :isa sparser::phosphorylate :substrate sparser::mv65819 :raw-text
  "phosphorylated"))

___________________
732: "show AKT1 on top"

                    source-start
e8    SHOW          1 "show AKT1 on top" 6
                    end-of-source
("show AKT1 on top"
 (:var sparser::mv65828 :isa sparser::show :at-relative-location sparser::mv65830
  :|statement-OR-theme| sparser::mv65827 :present "PRESENT")
 (:var sparser::mv65830 :isa sparser::top-qua-location)
 (:var sparser::mv65827 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    source-start
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    end-of-source
("Let's highlight upstream of AKT1"
 (:var sparser::mv65839 :isa sparser::explicit-suggestion :suggestion sparser::mv65834 :marker
  sparser::let-as-directive)
 (:var sparser::mv65834 :isa sparser::highlight :theme sparser::mv65835 :present "PRESENT")
 (:var sparser::mv65835 :isa sparser::upstream-segment :pathwaycomponent sparser::mv65833 :raw-text
  "upstream")
 (:var sparser::mv65833 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    source-start
e16   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    end-of-source
("Let's move nucleus elements to the top"
 (:var sparser::mv65851 :isa sparser::explicit-suggestion :suggestion sparser::mv65842 :marker
  sparser::let-as-directive)
 (:var sparser::mv65842 :isa sparser::move-to :goal sparser::mv65848 :theme sparser::mv65849
  :present "PRESENT")
 (:var sparser::mv65848 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv65849 :isa sparser::element :plural t :modifier sparser::mv65843)
 (:var sparser::mv65843 :isa sparser::nucleus :raw-text "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

                    source-start
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    question-mark
                    end-of-source
("What are the common downstreams of AKT1 and  BRAF?"
 (:var sparser::mv65854 :isa sparser::be :subject sparser::mv65853 :predicate sparser::mv65866
  :present "PRESENT")
 (:var sparser::mv65853 :isa sparser::what)
 (:var sparser::mv65866 :isa sparser::downstream-segment :plural t :pathwaycomponent
  sparser::mv65862 :has-determiner "THE" :predication sparser::mv65856 :raw-text "downstreams")
 (:var sparser::mv65862 :isa sparser::collection :raw-text "AKT1 and  BRAF" :type sparser::protein
  :number 2 :items (sparser::mv65852 sparser::mv65861))
 (:var sparser::mv65852 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv65861 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv65856 :isa sparser::common))

___________________
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    source-start
e21   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    question-mark
                    end-of-source
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:var sparser::mv65883 :isa sparser::polar-question :statement sparser::mv65878)
 (:var sparser::mv65878 :isa sparser::there-exists :value sparser::mv65882 :predicate
  sparser::mv65870)
 (:var sparser::mv65882 :isa sparser::upstream-segment :plural t :pathwaycomponent sparser::mv65879
  :predication sparser::mv65872 :raw-text "upstreams")
 (:var sparser::mv65879 :isa sparser::collection :raw-text "AKT1, BRAF and MAPK1" :type
  sparser::protein :number 3 :items (sparser::mv65867 sparser::mv65876 sparser::mv65868))
 (:var sparser::mv65867 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv65876 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv65868 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv65872 :isa sparser::common) (:var sparser::mv65870 :isa sparser::syntactic-there))

___________________
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    source-start
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    question-mark
                    end-of-source
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:var sparser::mv65888 :isa sparser::be :subject sparser::mv65887 :predicate sparser::mv65902
  :present "PRESENT")
 (:var sparser::mv65887 :isa sparser::what)
 (:var sparser::mv65902 :isa sparser::regulator :plural t :theme sparser::mv65897 :has-determiner
  "THE" :predication sparser::mv65890 :context sparser::mv65891 :raw-text "regulators")
 (:var sparser::mv65897 :isa sparser::collection :raw-text "FN1, MMP3, and SERPINE1" :type
  sparser::protein :number 3 :items (sparser::mv65884 sparser::mv65885 sparser::mv65886))
 (:var sparser::mv65884 :isa sparser::protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
 (:var sparser::mv65885 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv65886 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN")
 (:var sparser::mv65890 :isa sparser::common)
 (:var sparser::mv65891 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    source-start
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    question-mark
                    end-of-source
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:var sparser::mv65906 :isa sparser::be :subject sparser::mv65905 :predicate sparser::mv65918
  :present "PRESENT")
 (:var sparser::mv65905 :isa sparser::what)
 (:var sparser::mv65918 :isa sparser::regulator :plural t :theme sparser::mv65914 :predication
  sparser::mv65907 :context sparser::mv65908 :raw-text "regulators")
 (:var sparser::mv65914 :isa sparser::collection :raw-text "MMP3 and SERPINE1" :type
  sparser::protein :number 2 :items (sparser::mv65903 sparser::mv65904))
 (:var sparser::mv65903 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv65904 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN")
 (:var sparser::mv65907 :isa sparser::common)
 (:var sparser::mv65908 :isa sparser::downstream-segment :raw-text "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    source-start
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    question-mark
                    end-of-source
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:var sparser::mv65925 :isa sparser::be :subject sparser::mv65924 :predicate sparser::mv65935
  :present "PRESENT")
 (:var sparser::mv65924 :isa sparser::what)
 (:var sparser::mv65935 :isa sparser::protein-family :plural t :molecule-type sparser::mv65931
  :predication sparser::mv65926 :context sparser::mv65927 :raw-text "transcriptional regulators"
  :uid "XFAM:PF02082" :name "transcriptional regulator")
 (:var sparser::mv65931 :isa sparser::collection :raw-text "FN1, MMP3, and SERPINE1" :type
  sparser::protein :number 3 :items (sparser::mv65921 sparser::mv65922 sparser::mv65923))
 (:var sparser::mv65921 :isa sparser::protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
 (:var sparser::mv65922 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv65923 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN")
 (:var sparser::mv65926 :isa sparser::common)
 (:var sparser::mv65927 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    source-start
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    question-mark
                    end-of-source
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:var sparser::mv65939 :isa sparser::be :subject sparser::mv65938 :predicate sparser::mv65953
  :present "PRESENT")
 (:var sparser::mv65938 :isa sparser::what)
 (:var sparser::mv65953 :isa sparser::mutation :plural t :context sparser::mv65937 :object
  sparser::mv65948 :has-determiner "THE" :raw-text "mutations")
 (:var sparser::mv65937 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv65948 :isa sparser::collection :raw-text "PTEN, TP53 and BRAF" :type
  sparser::protein :number 3 :items (sparser::mv65944 sparser::mv65936 sparser::mv65946))
 (:var sparser::mv65944 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv65936 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv65946 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    source-start
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    question-mark
                    end-of-source
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:var sparser::mv65957 :isa sparser::be :subject sparser::mv65956 :predicate sparser::mv65960
  :present "PRESENT")
 (:var sparser::mv65956 :isa sparser::what)
 (:var sparser::mv65960 :isa sparser::frequency :context sparser::mv65955 :measured-item
  sparser::mv65954 :has-determiner "THE" :measured-item sparser::mv65959 :raw-text "frequency")
 (:var sparser::mv65955 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv65954 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv65959 :isa sparser::mutation :raw-text "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    source-start
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    question-mark
                    end-of-source
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:var sparser::mv65977 :isa sparser::copular-predication :item sparser::mv65974 :value
  sparser::mv65965 :predicate sparser::mv65971)
 (:var sparser::mv65974 :isa sparser::gene :plural t :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv65965 :isa sparser::mutual-exclusivity :disease sparser::mv65967 :alternative
  sparser::mv65966)
 (:var sparser::mv65967 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv65966 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name
  "CADH1_HUMAN")
 (:var sparser::mv65971 :isa sparser::be :present "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    source-start
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    question-mark
                    end-of-source
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:var sparser::mv65990 :isa sparser::copular-predication :item sparser::mv65987 :value
  sparser::mv65978 :predicate sparser::mv65984)
 (:var sparser::mv65987 :isa sparser::gene :plural t :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv65978 :isa sparser::mutual-exclusivity :disease sparser::mv65980 :alternative
  sparser::mv65979)
 (:var sparser::mv65980 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv65979 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name
  "CADH1_HUMAN")
 (:var sparser::mv65984 :isa sparser::be :present "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    source-start
e15   BE            1 "What is the cellular location of akt1" 9
                    question-mark
                    end-of-source
("What is the cellular location of akt1?"
 (:var sparser::mv65993 :isa sparser::be :subject sparser::mv65992 :predicate sparser::mv65999
  :present "PRESENT")
 (:var sparser::mv65992 :isa sparser::what)
 (:var sparser::mv65999 :isa sparser::quality-predicate :item sparser::mv65991 :attribute
  sparser::mv65996)
 (:var sparser::mv65991 :isa sparser::protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv65996 :isa sparser::location-of :has-determiner "THE" :modifier sparser::mv65995)
 (:var sparser::mv65995 :isa sparser::cellular :name "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    source-start
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    question-mark
                    end-of-source
("How does MAPK regulate BRAF?"
 (:var sparser::mv66003 :isa sparser::regulate :manner sparser::mv66000 :agent sparser::mv66002
  :object sparser::mv66004 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv66000 :isa sparser::how)
 (:var sparser::mv66002 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv66004 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    source-start
e4    BE            1 "What is BRAF" 4
                    question-mark
                    end-of-source
("What is BRAF?"
 (:var sparser::mv66006 :isa sparser::be :subject sparser::mv66005 :predicate sparser::mv66007
  :present "PRESENT")
 (:var sparser::mv66005 :isa sparser::what)
 (:var sparser::mv66007 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    source-start
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    question-mark
                    end-of-source
("Is BRAF a member of the RAF family?"
 (:var sparser::mv66019 :isa sparser::polar-question :statement sparser::mv66008)
 (:var sparser::mv66008 :isa sparser::be :subject sparser::mv66009 :predicate sparser::mv66011)
 (:var sparser::mv66009 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66011 :isa member :set sparser::mv66017 :has-determiner "A")
 (:var sparser::mv66017 :isa sparser::protein-family :has-determiner "THE" :raw-text "RAF" :name
  "Raf" :count 3 :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114"))

___________________
748: "What genes are in RAS?"

                    source-start
e11   COPULAR-PREDICATE 1 "What genes are in RAS" 6
                    question-mark
                    end-of-source
("What genes are in RAS?"
 (:var sparser::mv66031 :isa sparser::copular-predication-of-pp :item sparser::mv66026 :value
  sparser::mv66030 :prep "IN" :predicate sparser::mv66023)
 (:var sparser::mv66026 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv66030 :isa sparser::gene :plural t :in-family sparser::mv66025 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv66025 :isa sparser::protein-family :raw-text "RAS" :name "Ras" :count 3
  :family-members
  ((sparser::protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
   (sparser::protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
   (sparser::protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
  :uid "FA:03663")
 (:var sparser::mv66023 :isa sparser::be :present "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    source-start
e17   COPULAR-PREDICATE 1 "What genes are in the RAF family" 8
                    question-mark
                    end-of-source
("What genes are in the RAF family?"
 (:var sparser::mv66048 :isa sparser::copular-predication-of-pp :item sparser::mv66042 :value
  sparser::mv66047 :prep "IN" :predicate sparser::mv66036)
 (:var sparser::mv66042 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv66047 :isa sparser::gene :plural t :in-family sparser::mv66043 :has-determiner
  "WHAT" :raw-text "genes")
 (:var sparser::mv66043 :isa sparser::protein-family :has-determiner "THE" :raw-text "RAF" :name
  "Raf" :count 3 :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114")
 (:var sparser::mv66036 :isa sparser::be :present "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    source-start
e15   BE            1 "What are some other names for BRAF" 8
                    question-mark
                    end-of-source
("What are some other names for BRAF?"
 (:var sparser::mv66051 :isa sparser::be :subject sparser::mv66050 :predicate sparser::mv66064
  :present "PRESENT")
 (:var sparser::mv66050 :isa sparser::what)
 (:var sparser::mv66064 :isa sparser::has-name :plural t :item sparser::mv66060 :quantifier
  sparser::mv66052 :modifier sparser::mv66053)
 (:var sparser::mv66060 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66052 :isa some :word "some")
 (:var sparser::mv66053 :isa sparser::other :name "other"))

___________________
751: "What are synonyms for ERK?"

                    source-start
e9    BE            1 "What are synonyms for ERK" 6
                    question-mark
                    end-of-source
("What are synonyms for ERK?"
 (:var sparser::mv66066 :isa sparser::be :subject sparser::mv66065 :predicate sparser::mv66072
  :present "PRESENT")
 (:var sparser::mv66065 :isa sparser::what)
 (:var sparser::mv66072 :isa sparser::has-synonym :plural t :item sparser::mv66070)
 (:var sparser::mv66070 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
752: "What transcription factors are shared by CXCL8, CXCL10, and IL2?"

                    source-start
e21   SHARE         1 "What transcription factors are shared by CXCL8, CXCL10, and IL2" 16
                    question-mark
                    end-of-source
("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
 (:var sparser::mv66085 :isa sparser::share :object sparser::mv66084 :participant sparser::mv66083
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv66084 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv66083 :isa sparser::collection :raw-text "CXCL8, CXCL10, and IL2" :type
  sparser::protein :number 3 :items (sparser::mv66075 sparser::mv66076 sparser::mv66077))
 (:var sparser::mv66075 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv66076 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN")
 (:var sparser::mv66077 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
753: "What are the paths between BRAF and AKT1?"

                    source-start
e15   BE            1 "What are the paths between BRAF and AKT1" 10
                    question-mark
                    end-of-source
("What are the paths between BRAF and AKT1?"
 (:var sparser::mv66089 :isa sparser::be :subject sparser::mv66088 :predicate sparser::mv66099
  :present "PRESENT")
 (:var sparser::mv66088 :isa sparser::what)
 (:var sparser::mv66099 :isa sparser::path :plural t :endpoints sparser::mv66096 :has-determiner
  "THE")
 (:var sparser::mv66096 :isa sparser::collection :raw-text "BRAF and AKT1" :type sparser::protein
  :number 2 :items (sparser::mv66094 sparser::mv66087))
 (:var sparser::mv66094 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66087 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
754: "Is SMAD2 a transcription factor?"

                    source-start
e10   BE            1 "Is SMAD2 a transcription factor" 7
                    question-mark
                    end-of-source
("Is SMAD2 a transcription factor?"
 (:var sparser::mv66104 :isa sparser::polar-question :statement sparser::mv66102)
 (:var sparser::mv66102 :isa sparser::be :subject sparser::mv66100 :predicate sparser::mv66101)
 (:var sparser::mv66100 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN")
 (:var sparser::mv66101 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor"))

___________________
755: "Remove the fact that active MEK activates ERK from the model."

                    source-start
e22   REMOVE        1 "Remove the fact that active MEK activates ERK " 9
e17   FROM          9 "from the model" 12
                    period
                    end-of-source
                    source-start
e22   VP            1 "Remove the fact that active MEK activates ERK " 9
e17   PP            9 "from the model" 12
                    period
                    end-of-source


___________________
756: "Active MEK activates ERK"

                    source-start
e6    BIO-ACTIVATE  1 "Active MEK activates ERK" 5
                    end-of-source
("Active MEK activates ERK"
 (:var sparser::mv66120 :isa sparser::bio-activate :agent sparser::mv66119 :object sparser::mv66121
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv66119 :isa sparser::protein-family :predication sparser::mv66118 :raw-text "MEK"
  :name "MEK" :count 2 :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv66118 :isa sparser::active)
 (:var sparser::mv66121 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
757: "What is in the model?"

                    source-start
e10   COPULAR-PREDICATION 1 "What is in the model" 6
                    question-mark
                    end-of-source
("What is in the model?"
 (:var sparser::mv66128 :isa sparser::copular-predication-of-pp :item sparser::mv66122 :value
  sparser::mv66126 :prep sparser::mv66124 :predicate sparser::mv66123)
 (:var sparser::mv66122 :isa sparser::what)
 (:var sparser::mv66126 :isa sparser::model :has-determiner "THE")
 (:var sparser::mv66124 :isa sparser::in :word "in")
 (:var sparser::mv66123 :isa sparser::be :present "PRESENT"))

___________________
758: "Is the amount of phosphorylated ERK ever high?"

                    source-start
e18   COPULAR-PREDICATION 1 "Is the amount of phosphorylated ERK ever high" 9
                    question-mark
                    end-of-source
("Is the amount of phosphorylated ERK ever high?"
 (:var sparser::mv66139 :isa sparser::polar-question :statement sparser::mv66138)
 (:var sparser::mv66138 :isa sparser::copular-predication :item sparser::mv66131 :value
  sparser::mv66136 :predicate sparser::mv66129)
 (:var sparser::mv66131 :isa sparser::bio-amount :measured-item sparser::mv66134 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv66134 :isa sparser::protein-family :predication sparser::mv66133 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv66133 :isa sparser::phosphorylate :substrate sparser::mv66134 :raw-text
  "phosphorylated")
 (:var sparser::mv66136 :isa sparser::high :adverb sparser::mv66135)
 (:var sparser::mv66135 :isa sparser::ever :name "ever") (:var sparser::mv66129 :isa sparser::be))

___________________
759: "What genes are mutually exclusive with PTEN for prostate cancer?"

                    source-start
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with PTEN for prostate cancer" 11
                    question-mark
                    end-of-source
("What genes are mutually exclusive with PTEN for prostate cancer?"
 (:var sparser::mv66152 :isa sparser::copular-predication :item sparser::mv66149 :value
  sparser::mv66140 :predicate sparser::mv66145)
 (:var sparser::mv66149 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv66140 :isa sparser::mutual-exclusivity :disease sparser::mv66141 :alternative
  sparser::mv66147)
 (:var sparser::mv66141 :isa sparser::cancer :name "prostate cancer" :uid "TS-1224")
 (:var sparser::mv66147 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv66145 :isa sparser::be :present "PRESENT"))

___________________
760: "What signaling pathways are shared by SMAD2 and CXCL8?"

                    source-start
e17   SHARE         1 "What signaling pathways are shared by SMAD2 and CXCL8" 12
                    question-mark
                    end-of-source
("What signaling pathways are shared by SMAD2 and CXCL8?"
 (:var sparser::mv66164 :isa sparser::share :object sparser::mv66163 :participant sparser::mv66162
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv66163 :isa sparser::signaling-pathway :plural t :has-determiner "WHAT" :raw-text
  "signaling pathways")
 (:var sparser::mv66162 :isa sparser::collection :raw-text "SMAD2 and CXCL8" :type sparser::protein
  :number 2 :items (sparser::mv66155 sparser::mv66156))
 (:var sparser::mv66155 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN")
 (:var sparser::mv66156 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
761: "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"

                    source-start
e19   REGULATE      1 "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1" 15
                    question-mark
                    end-of-source
("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
 (:var sparser::mv66174 :isa sparser::regulate :agent sparser::mv66177 :object sparser::mv66176
  :present "PRESENT" :adverb sparser::mv66172 :adverb sparser::mv66173 :raw-text "regulate")
 (:var sparser::mv66177 :isa sparser::micro-rna :plural t :has-determiner "WHAT" :raw-text
  "miRNAs")
 (:var sparser::mv66176 :isa sparser::collection :raw-text "FN1, MMP3, and SERPINE1" :type
  sparser::protein :number 3 :items (sparser::mv66166 sparser::mv66167 sparser::mv66168))
 (:var sparser::mv66166 :isa sparser::protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
 (:var sparser::mv66167 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv66168 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN")
 (:var sparser::mv66172 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv66173 :isa sparser::frequently :name "frequently"))

___________________
762: "What is the most likely cellular location of PTEN?"

                    source-start
e19   BE            1 "What is the most likely cellular location of PTEN" 10
                    question-mark
                    end-of-source
("What is the most likely cellular location of PTEN?"
 (:var sparser::mv66179 :isa sparser::be :subject sparser::mv66178 :predicate sparser::mv66189
  :present "PRESENT")
 (:var sparser::mv66178 :isa sparser::what)
 (:var sparser::mv66189 :isa sparser::quality-predicate :item sparser::mv66187 :attribute
  sparser::mv66185)
 (:var sparser::mv66187 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv66185 :isa sparser::location-of :has-determiner "THE" :predication
  sparser::mv66183 :modifier sparser::mv66184)
 (:var sparser::mv66183 :isa sparser::likely :comparative sparser::mv66181)
 (:var sparser::mv66181 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv66184 :isa sparser::cellular :name "cellular"))

___________________
763: "Is BRAF a kinase?"

                    source-start
e8    BE            1 "Is BRAF a kinase" 5
                    question-mark
                    end-of-source
("Is BRAF a kinase?"
 (:var sparser::mv66194 :isa sparser::polar-question :statement sparser::mv66190)
 (:var sparser::mv66190 :isa sparser::be :subject sparser::mv66191 :predicate sparser::mv66193)
 (:var sparser::mv66191 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66193 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
764: "Can you tell me whether BRAF is a kinase?"

                    source-start
e22   TELL          1 "Can you tell me whether BRAF is a kinase" 10
                    question-mark
                    end-of-source
("Can you tell me whether BRAF is a kinase?"
 (:var sparser::mv66206 :isa sparser::polar-question :statement sparser::mv66197)
 (:var sparser::mv66197 :isa sparser::tell :agent sparser::mv66196 :theme sparser::mv66205 :theme
  sparser::mv66198 :modal "CAN")
 (:var sparser::mv66196 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv66205 :isa sparser::wh-question :statement sparser::mv66202 :wh sparser::whether)
 (:var sparser::mv66202 :isa sparser::be :subject sparser::mv66201 :predicate sparser::mv66204
  :modal "CAN")
 (:var sparser::mv66201 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66204 :isa sparser::kinase :has-determiner "A" :raw-text "kinase")
 (:var sparser::mv66198 :isa sparser::interlocutor :name "speaker"))

___________________
765: "I want to know if BRAF is a kinase."

                    source-start
e21   WANT          1 "I want to know if BRAF is a kinase" 10
                    period
                    end-of-source
("I want to know if BRAF is a kinase."
 (:var sparser::mv66210 :isa sparser::want :agent sparser::mv66207 :theme sparser::mv66220 :present
  "PRESENT")
 (:var sparser::mv66207 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv66220 :isa sparser::know :agent sparser::mv66207 :statement sparser::mv66219)
 (:var sparser::mv66219 :isa sparser::wh-question :statement sparser::mv66215 :wh if)
 (:var sparser::mv66215 :isa sparser::be :subject sparser::mv66214 :predicate sparser::mv66217
  :present "PRESENT")
 (:var sparser::mv66214 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66217 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
766: "What does BRAF do?"

                    source-start
e0    WHAT          1 "What " 2
e1    DO            2 "does " 3
e2    PROTEIN       3 "BRAF " 4
e3    DO            4 "do" 5
                    question-mark
                    end-of-source
                    source-start
e0    WH-PRONOUN    1 "What " 2
e1    VG            2 "does " 3
e2    PROPER-NOUN   3 "BRAF " 4
e3    VG            4 "do" 5
                    question-mark
                    end-of-source


___________________
767: "What type of protein is BRAF?"

                    source-start
e11   BE            1 "What type of protein is BRAF" 7
                    question-mark
                    end-of-source
("What type of protein is BRAF?"
 (:var sparser::mv66229 :isa sparser::be :subject sparser::mv66226 :predicate sparser::mv66230
  :present "PRESENT")
 (:var sparser::mv66226 :isa type :molecule-type sparser::mv66228 :has-determiner "WHAT" :raw-text
  "type")
 (:var sparser::mv66228 :isa sparser::protein :raw-text "protein")
 (:var sparser::mv66230 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
768: "What is the activity of the BRAF protein?"

                    source-start
e17   BE            1 "What is the activity of the BRAF protein" 9
                    question-mark
                    end-of-source
("What is the activity of the BRAF protein?"
 (:var sparser::mv66233 :isa sparser::be :subject sparser::mv66232 :predicate sparser::mv66235
  :present "PRESENT")
 (:var sparser::mv66232 :isa sparser::what)
 (:var sparser::mv66235 :isa sparser::bio-activity :participant sparser::mv66240 :has-determiner
  "THE" :raw-text "activity")
 (:var sparser::mv66240 :isa sparser::protein :has-determiner "THE" :raw-text "BRAF" :uid
  "UP:P15056" :name "BRAF_HUMAN"))

___________________
769: "Is BRAF a kinase or a transcription factor?"

                    source-start
e15   BE            1 "Is BRAF a kinase or a transcription factor" 9
                    question-mark
                    end-of-source
("Is BRAF a kinase or a transcription factor?"
 (:var sparser::mv66250 :isa sparser::polar-question :statement sparser::mv66243)
 (:var sparser::mv66243 :isa sparser::be :subject sparser::mv66244 :predicate sparser::mv66249)
 (:var sparser::mv66244 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66249 :isa sparser::collection :raw-text "a kinase or a transcription factor"
  :type sparser::kinase :number 2 :items (sparser::mv66246 sparser::mv66242))
 (:var sparser::mv66246 :isa sparser::kinase :has-determiner "A" :raw-text "kinase")
 (:var sparser::mv66242 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor"))

___________________
770: "What proteins are targeted by NG25?"

                    source-start
e12   TARGET        1 "What proteins are targeted by NG25" 8
                    question-mark
                    end-of-source
("What proteins are targeted by NG25?"
 (:var sparser::mv66259 :isa sparser::target :object sparser::mv66258 :agent sparser::mv66251
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv66258 :isa sparser::protein :plural t :has-determiner "WHAT" :raw-text
  "proteins")
 (:var sparser::mv66251 :isa sparser::drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))

___________________
771: "Name transcription factors shared by FN1, MMP3, and SERPINE1."

                    source-start
e20   NAME-SOMETHING  1 "Name transcription factors shared by FN1, MMP3, and SERPINE1" 15
                    period
                    end-of-source
("Name transcription factors shared by FN1, MMP3, and SERPINE1."
 (:var sparser::mv66266 :isa sparser::name-something :patient sparser::mv66262 :present "PRESENT")
 (:var sparser::mv66262 :isa sparser::transcription-factor :plural t :predication sparser::mv66269
  :raw-text "transcription factors")
 (:var sparser::mv66269 :isa sparser::share :object sparser::mv66262 :participant sparser::mv66272
  :past "PAST" :raw-text "shared")
 (:var sparser::mv66272 :isa sparser::collection :raw-text "FN1, MMP3, and SERPINE1" :type
  sparser::protein :number 3 :items (sparser::mv66263 sparser::mv66264 sparser::mv66265))
 (:var sparser::mv66263 :isa sparser::protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
 (:var sparser::mv66264 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv66265 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN"))

___________________
772: "Tell me if STAT3 is a transcription factor"

                    source-start
e15   TELL          1 "Tell me if STAT3 is a transcription factor" 10
                    end-of-source
("Tell me if STAT3 is a transcription factor"
 (:var sparser::mv66277 :isa sparser::tell :theme sparser::mv66282 :beneficiary sparser::mv66278
  :present "PRESENT")
 (:var sparser::mv66282 :isa sparser::wh-question :statement sparser::mv66280 :wh if)
 (:var sparser::mv66280 :isa sparser::be :subject sparser::mv66275 :predicate sparser::mv66276
  :present "PRESENT")
 (:var sparser::mv66275 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv66276 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor")
 (:var sparser::mv66278 :isa sparser::interlocutor :name "speaker"))

___________________
773: "Show me signaling pathways shared by MAP3K7 and CXCL8."

                    source-start
e18   SHOW          1 "Show me signaling pathways shared by MAP3K7 and CXCL8" 14
                    period
                    end-of-source
("Show me signaling pathways shared by MAP3K7 and CXCL8."
 (:var sparser::mv66287 :isa sparser::show :|statement-OR-theme| sparser::mv66294 :beneficiary
  sparser::mv66288 :present "PRESENT")
 (:var sparser::mv66294 :isa sparser::signaling-pathway :plural t :predication sparser::mv66289
  :raw-text "signaling pathways")
 (:var sparser::mv66289 :isa sparser::share :object sparser::mv66294 :participant sparser::mv66292
  :past "PAST" :raw-text "shared")
 (:var sparser::mv66292 :isa sparser::collection :raw-text "MAP3K7 and CXCL8" :type
  sparser::protein :number 2 :items (sparser::mv66285 sparser::mv66286))
 (:var sparser::mv66285 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv66286 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv66288 :isa sparser::interlocutor :name "speaker"))

___________________
774: "Give me signaling pathways shared by MAP3K7 and CXCL8"

                    source-start
e18   GIVE          1 "Give me signaling pathways shared by MAP3K7 and CXCL8" 14
                    end-of-source
("Give me signaling pathways shared by MAP3K7 and CXCL8"
 (:var sparser::mv66299 :isa sparser::give :theme sparser::mv66306 :beneficiary sparser::mv66300
  :present "PRESENT")
 (:var sparser::mv66306 :isa sparser::signaling-pathway :plural t :predication sparser::mv66301
  :raw-text "signaling pathways")
 (:var sparser::mv66301 :isa sparser::share :object sparser::mv66306 :participant sparser::mv66304
  :past "PAST" :raw-text "shared")
 (:var sparser::mv66304 :isa sparser::collection :raw-text "MAP3K7 and CXCL8" :type
  sparser::protein :number 2 :items (sparser::mv66297 sparser::mv66298))
 (:var sparser::mv66297 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv66298 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv66300 :isa sparser::interlocutor :name "speaker"))

___________________
775: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"

                    source-start
e47   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold" 19
                    question-mark
                    end-of-source
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
 (:var sparser::mv66336 :isa sparser::polar-question :statement sparser::mv66335)
 (:var sparser::mv66335 :isa sparser::event-relation :subordinated-event sparser::mv66331 :event
  sparser::mv66333)
 (:var sparser::mv66331 :isa sparser::wh-question :statement sparser::mv66318 :wh if)
 (:var sparser::mv66318 :isa sparser::increase :|agent-OR-cause| sparser::mv66316
  :|multiplier-OR-cause| sparser::mv66328 :|affected-process-OR-object| sparser::mv66320 :present
  "PRESENT" :raw-text "increase")
 (:var sparser::mv66316 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv66328 :isa sparser::measurement :number sparser::mv66325)
 (:var sparser::mv66325 :isa number :value 10)
 (:var sparser::mv66320 :isa sparser::bio-amount :measured-item sparser::mv66322 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv66322 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv66333 :isa sparser::copular-predication :item sparser::mv66309 :value
  sparser::mv66314 :predicate sparser::mv66307)
 (:var sparser::mv66309 :isa sparser::bio-amount :measured-item sparser::mv66312 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv66312 :isa sparser::protein-family :predication sparser::mv66311 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv66311 :isa sparser::phosphorylate :substrate sparser::mv66312 :raw-text
  "phosphorylated")
 (:var sparser::mv66314 :isa sparser::high :adverb sparser::mv66313)
 (:var sparser::mv66313 :isa sparser::ever :name "ever") (:var sparser::mv66307 :isa sparser::be))

___________________
776: "Active MEK phosphorylates ERK"

                    source-start
e6    PHOSPHORYLATE 1 "Active MEK phosphorylates ERK" 5
                    end-of-source
("Active MEK phosphorylates ERK"
 (:var sparser::mv66339 :isa sparser::phosphorylate :agent sparser::mv66338 :substrate
  sparser::mv66340 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv66338 :isa sparser::protein-family :predication sparser::mv66337 :raw-text "MEK"
  :name "MEK" :count 2 :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv66337 :isa sparser::active)
 (:var sparser::mv66340 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
777: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"

                    source-start
e44   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold" 18
                    question-mark
                    end-of-source
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
 (:var sparser::mv66368 :isa sparser::polar-question :statement sparser::mv66367)
 (:var sparser::mv66367 :isa sparser::event-relation :subordinated-event sparser::mv66363 :event
  sparser::mv66365)
 (:var sparser::mv66363 :isa sparser::wh-question :statement sparser::mv66352 :wh if)
 (:var sparser::mv66352 :isa sparser::increase :|agent-OR-cause| sparser::mv66350 :level
  sparser::mv66361 :|affected-process-OR-object| sparser::mv66354 :present "PRESENT" :raw-text
  "increase")
 (:var sparser::mv66350 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv66361 :isa sparser::measurement :number sparser::mv66358)
 (:var sparser::mv66358 :isa number :value 10)
 (:var sparser::mv66354 :isa sparser::bio-amount :measured-item sparser::mv66356 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv66356 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv66365 :isa sparser::copular-predication :item sparser::mv66343 :value
  sparser::mv66348 :predicate sparser::mv66341)
 (:var sparser::mv66343 :isa sparser::bio-amount :measured-item sparser::mv66346 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv66346 :isa sparser::protein-family :predication sparser::mv66345 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv66345 :isa sparser::phosphorylate :substrate sparser::mv66346 :raw-text
  "phosphorylated")
 (:var sparser::mv66348 :isa sparser::high :adverb sparser::mv66347)
 (:var sparser::mv66347 :isa sparser::ever :name "ever") (:var sparser::mv66341 :isa sparser::be))

___________________
778: "What are some pathways that affect BRAF?"

                    source-start
e14   BE            1 "What are some pathways that affect BRAF" 8
                    question-mark
                    end-of-source
("What are some pathways that affect BRAF?"
 (:var sparser::mv66370 :isa sparser::be :subject sparser::mv66369 :predicate sparser::mv66378
  :present "PRESENT")
 (:var sparser::mv66369 :isa sparser::what)
 (:var sparser::mv66378 :isa sparser::pathway :plural t :predication sparser::mv66375 :quantifier
  sparser::mv66371 :raw-text "pathways")
 (:var sparser::mv66375 :isa sparser::affect :agent sparser::mv66378 :that-rel t :object
  sparser::mv66376 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv66376 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66371 :isa some :word "some"))

___________________
779: "What are the pathways that affect BRAF"

                    source-start
e15   BE            1 "What are the pathways that affect BRAF" 8
                    end-of-source
("What are the pathways that affect BRAF"
 (:var sparser::mv66380 :isa sparser::be :subject sparser::mv66379 :predicate sparser::mv66388
  :present "PRESENT")
 (:var sparser::mv66379 :isa sparser::what)
 (:var sparser::mv66388 :isa sparser::pathway :plural t :predication sparser::mv66385
  :has-determiner "THE" :raw-text "pathways")
 (:var sparser::mv66385 :isa sparser::affect :agent sparser::mv66388 :that-rel t :object
  sparser::mv66386 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv66386 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    source-start
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    question-mark
                    end-of-source
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:var sparser::mv66400 :isa sparser::regulate :object sparser::mv66399 :agent sparser::mv66398
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv66399 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv66398 :isa sparser::collection :raw-text "miR-20b-5p, and miR-145-5p" :type
  sparser::micro-rna :number 2 :items (sparser::mv66389 sparser::mv66390))
 (:var sparser::mv66389 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413")
 (:var sparser::mv66390 :isa sparser::micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
  "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    source-start
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    question-mark
                    end-of-source
("What are some genes that are regulated by ELK1?"
 (:var sparser::mv66404 :isa sparser::be :subject sparser::mv66403 :predicate sparser::mv66415
  :present "PRESENT")
 (:var sparser::mv66403 :isa sparser::what)
 (:var sparser::mv66415 :isa sparser::gene :plural t :predication sparser::mv66413 :quantifier
  sparser::mv66405 :raw-text "genes")
 (:var sparser::mv66413 :isa sparser::regulate :object sparser::mv66415 :that-rel t :agent
  sparser::mv66402 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv66402 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv66405 :isa some :word "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    source-start
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    question-mark
                    end-of-source
("What pathways contain CXCL8 and CXCL10?"
 (:var sparser::mv66421 :isa sparser::contain :theme sparser::mv66424 :patient sparser::mv66423
  :present "PRESENT")
 (:var sparser::mv66424 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv66423 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv66416 sparser::mv66417))
 (:var sparser::mv66416 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv66417 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    source-start
e23   REMOVE        1 "Remove the fact that IL10 activates STAT3 " 10
e18   IN            10 "in the model" 13
                    end-of-source
                    source-start
e23   VP            1 "Remove the fact that IL10 activates STAT3 " 10
e18   PP            10 "in the model" 13
                    end-of-source


___________________
784: "Remove active IL10 activates STAT3 from the model"

                    source-start
e15   REMOVE        1 "Remove active IL10 " 5
e14   BIO-ACTIVATE  5 "activates STAT3 " 8
e13   FROM          8 "from the model" 11
                    end-of-source
                    source-start
e15   VP            1 "Remove active IL10 " 5
e14   VP            5 "activates STAT3 " 8
e13   PP            8 "from the model" 11
                    end-of-source


___________________
785: "What are some paths between BRAF and AKT1?"

                    source-start
e14   BE            1 "What are some paths between BRAF and AKT1" 10
                    question-mark
                    end-of-source
("What are some paths between BRAF and AKT1?"
 (:var sparser::mv66448 :isa sparser::be :subject sparser::mv66447 :predicate sparser::mv66458
  :present "PRESENT")
 (:var sparser::mv66447 :isa sparser::what)
 (:var sparser::mv66458 :isa sparser::path :plural t :endpoints sparser::mv66455 :quantifier
  sparser::mv66449)
 (:var sparser::mv66455 :isa sparser::collection :raw-text "BRAF and AKT1" :type sparser::protein
  :number 2 :items (sparser::mv66453 sparser::mv66446))
 (:var sparser::mv66453 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66446 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv66449 :isa some :word "some"))

___________________
786: "Does MEK1 activate ERK2"

                    source-start
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    end-of-source
("Does MEK1 activate ERK2"
 (:var sparser::mv66464 :isa sparser::polar-question :statement sparser::mv66463)
 (:var sparser::mv66463 :isa sparser::bio-activate :agent sparser::mv66459 :object sparser::mv66460
  :raw-text "activate")
 (:var sparser::mv66459 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv66460 :isa sparser::protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    source-start
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    question-mark
                    end-of-source
("What drugs tagret BRAF?"
 (:var sparser::mv66469 :isa sparser::protein :has-determiner "WHAT" :modifier sparser::mv66467
  :modifier sparser::mv66468 :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv66467 :isa sparser::drug :plural t :raw-text "drugs")
 (:var sparser::mv66468 :isa sparser::bio-entity :name "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signalling pathway" 9
                    question-mark
                    end-of-source
("Which kinases are in the MAPK signalling pathway?"
 (:var sparser::mv66483 :isa sparser::copular-predication-of-pp :item sparser::mv66478 :value
  sparser::mv66482 :prep "IN" :predicate sparser::mv66474)
 (:var sparser::mv66478 :isa sparser::kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv66482 :isa sparser::kinase :plural t :in-pathway sparser::mv66470 :has-determiner
  "WHICH" :raw-text "kinases")
 (:var sparser::mv66470 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv66477 :raw-text "signalling pathway")
 (:var sparser::mv66477 :isa sparser::protein-family :raw-text "MAPK" :name
  "mitogen activated protein kinase" :count 13 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
   (sparser::protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
   (sparser::protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
   (sparser::protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
  :uid "PR:000000019")
 (:var sparser::mv66474 :isa sparser::be :present "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    source-start
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    question-mark
                    end-of-source
("What drugs drugs target BRAF?"
 (:var sparser::mv66491 :isa sparser::target :agent sparser::mv66495 :object sparser::mv66492
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv66495 :isa sparser::drug :plural t :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv66492 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    source-start
e5    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    question-mark
                    end-of-source
("What rgulates ELLK1?"
 (:var sparser::mv66496 :isa sparser::bio-entity :has-determiner "WHAT" :modifier sparser::mv66498
  :name "ELLK1")
 (:var sparser::mv66498 :isa sparser::bio-entity :name "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    source-start
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    question-mark
                    end-of-source
("Does STAT3 increase expression of c-fos in liver?"
 (:var sparser::mv66511 :isa sparser::polar-question :statement sparser::mv66508)
 (:var sparser::mv66508 :isa sparser::increase :agent sparser::mv66499 :affected-process
  sparser::mv66504 :raw-text "increase")
 (:var sparser::mv66499 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv66504 :isa sparser::gene-transcript-express :object sparser::mv66500 :raw-text
  "expression")
 (:var sparser::mv66500 :isa sparser::protein :organ sparser::mv66507 :raw-text "c-fos" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv66507 :isa sparser::liver))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    source-start
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    question-mark
                    end-of-source
("Does STAT3 affect c-fos expression in liver?"
 (:var sparser::mv66521 :isa sparser::polar-question :statement sparser::mv66519)
 (:var sparser::mv66519 :isa sparser::affect :agent sparser::mv66512 :affected-process
  sparser::mv66516 :raw-text "affect")
 (:var sparser::mv66512 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv66516 :isa sparser::gene-transcript-express :organ sparser::mv66518 :object
  sparser::mv66513 :raw-text "expression")
 (:var sparser::mv66518 :isa sparser::liver)
 (:var sparser::mv66513 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    source-start
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    question-mark
                    end-of-source
("Does STAT3 alter c-fos expression?"
 (:var sparser::mv66528 :isa sparser::polar-question :statement sparser::mv66527)
 (:var sparser::mv66527 :isa sparser::alter :agent sparser::mv66522 :affected-process
  sparser::mv66526 :raw-text "alter")
 (:var sparser::mv66522 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv66526 :isa sparser::gene-transcript-express :object sparser::mv66523 :raw-text
  "expression")
 (:var sparser::mv66523 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    source-start
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    question-mark
                    end-of-source
("Is STAT3 a transcriptional regulator of c-fos?"
 (:var sparser::mv66536 :isa sparser::polar-question :statement sparser::mv66532)
 (:var sparser::mv66532 :isa sparser::be :subject sparser::mv66529 :predicate sparser::mv66530)
 (:var sparser::mv66529 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv66530 :isa sparser::protein-family :molecule-type sparser::mv66531
  :has-determiner "A" :raw-text "transcriptional regulator" :name "transcriptional regulator" :uid
  "XFAM:PF02082")
 (:var sparser::mv66531 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
795: "Which drugs inhibit BRAF?"

                    source-start
e6    INHIBIT       1 "Which drugs inhibit BRAF" 5
                    question-mark
                    end-of-source
("Which drugs inhibit BRAF?"
 (:var sparser::mv66540 :isa sparser::inhibit :agent sparser::mv66542 :object sparser::mv66541
  :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv66542 :isa sparser::drug :plural t :has-determiner "WHICH" :raw-text "drugs")
 (:var sparser::mv66541 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    source-start
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    period
                    end-of-source
("STAT3 upregulates ELK1."
 (:var sparser::mv66545 :isa sparser::upregulate :agent sparser::mv66543 :object sparser::mv66544
  :present "PRESENT" :raw-text "upregulates")
 (:var sparser::mv66543 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv66544 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    source-start
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    question-mark
                    end-of-source
("What does STAT3 transcribe?"
 (:var sparser::mv66549 :isa sparser::transcribe :object sparser::mv66547 :agent sparser::mv66546
  :present "PRESENT" :raw-text "transcribe")
 (:var sparser::mv66547 :isa sparser::what)
 (:var sparser::mv66546 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    source-start
e5    BE            1 "What is PI3K" 6
                    question-mark
                    end-of-source
("What is PI3K?"
 (:var sparser::mv66552 :isa sparser::be :subject sparser::mv66551 :predicate sparser::mv66550
  :present "PRESENT")
 (:var sparser::mv66551 :isa sparser::what)
 (:var sparser::mv66550 :isa sparser::protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4
  :family-members
  ((sparser::protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
   (sparser::protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
   (sparser::protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
   (sparser::protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
  :uid "XFAM:PF00454"))

___________________
799: "What is MEK?"

                    source-start
e4    BE            1 "What is MEK" 4
                    question-mark
                    end-of-source
("What is MEK?"
 (:var sparser::mv66554 :isa sparser::be :subject sparser::mv66553 :predicate sparser::mv66555
  :present "PRESENT")
 (:var sparser::mv66553 :isa sparser::what)
 (:var sparser::mv66555 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK"))

___________________
800: "What phosphorylates ERK?"

                    source-start
e4    PHOSPHORYLATE 1 "What phosphorylates ERK" 4
                    question-mark
                    end-of-source
("What phosphorylates ERK?"
 (:var sparser::mv66557 :isa sparser::phosphorylate :|agent-OR-cause| sparser::mv66556 :substrate
  sparser::mv66558 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv66556 :isa sparser::what)
 (:var sparser::mv66558 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360"))

___________________
801: "What drugs target AKT?"

                    source-start
e7    TARGET        1 "What drugs target AKT" 5
                    question-mark
                    end-of-source
("What drugs target AKT?"
 (:var sparser::mv66563 :isa sparser::target :agent sparser::mv66565 :object sparser::mv66564
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv66565 :isa sparser::drug :plural t :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv66564 :isa sparser::protein-family :raw-text "AKT" :name "Rac" :count 3
  :family-members
  ((sparser::protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
   (sparser::protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
   (sparser::protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
  :uid "FA:03066"))

___________________
802: "What regulates ELLK1?"

                    source-start
e5    REGULATE      1 "What regulates ELLK1" 5
                    question-mark
                    end-of-source
("What regulates ELLK1?"
 (:var sparser::mv66568 :isa sparser::regulate :|agent-OR-cause| sparser::mv66567 :object
  sparser::mv66566 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv66567 :isa sparser::what)
 (:var sparser::mv66566 :isa sparser::bio-entity :name "ELLK1"))

___________________
803: "What regulates ELK1?"

                    source-start
e5    REGULATE      1 "What regulates ELK1" 5
                    question-mark
                    end-of-source
("What regulates ELK1?"
 (:var sparser::mv66571 :isa sparser::regulate :|agent-OR-cause| sparser::mv66570 :object
  sparser::mv66569 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv66570 :isa sparser::what)
 (:var sparser::mv66569 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    source-start
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    question-mark
                    end-of-source
("Does miR-20b-5pp target STAT3?"
 (:var sparser::mv66582 :isa sparser::polar-question :statement sparser::mv66581)
 (:var sparser::mv66581 :isa sparser::target :agent sparser::mv66580 :object sparser::mv66573
  :raw-text "target")
 (:var sparser::mv66580 :isa sparser::bio-entity :name "miR-20b-5pp")
 (:var sparser::mv66573 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
805: "What are the mutations of PTEEN in prostate cancer?"

                    source-start
e17   BE            1 "What are the mutations " 5
e15   OF            5 "of PTEEN in prostate cancer" 10
                    question-mark
                    end-of-source
                    source-start
e17   S             1 "What are the mutations " 5
e15   PP            5 "of PTEEN in prostate cancer" 10
                    question-mark
                    end-of-source


___________________
806: "What does selumitinibib target?"

                    source-start
e6    TARGET        1 "What does selumitinibib target" 5
                    question-mark
                    end-of-source
("What does selumitinibib target?"
 (:var sparser::mv66599 :isa sparser::target :|affected-process-OR-object| sparser::mv66595 :agent
  sparser::mv66597 :present "PRESENT" :raw-text "target")
 (:var sparser::mv66595 :isa sparser::what)
 (:var sparser::mv66597 :isa sparser::bio-entity :name "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    source-start
e9    BE            1 "Is ELLK1 a kinase" 6
                    question-mark
                    end-of-source
("Is ELLK1 a kinase?"
 (:var sparser::mv66604 :isa sparser::polar-question :statement sparser::mv66601)
 (:var sparser::mv66601 :isa sparser::be :subject sparser::mv66600 :predicate sparser::mv66603)
 (:var sparser::mv66600 :isa sparser::bio-entity :name "ELLK1")
 (:var sparser::mv66603 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
808: "What regulates ELK12?"

                    source-start
e7    REGULATE      1 "What regulates ELK12" 5
                    question-mark
                    end-of-source
("What regulates ELK12?"
 (:var sparser::mv66606 :isa sparser::regulate :|agent-OR-cause| sparser::mv66605 :object
  sparser::mv66607 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv66605 :isa sparser::what)
 (:var sparser::mv66607 :isa sparser::protein :variant-number sparser::mv66609 :raw-text "ELK" :uid
  "UP:P54762" :name "EPHB1_HUMAN")
 (:var sparser::mv66609 :isa number :value 12))

___________________
809: "What does sleumiitibbb target?"

                    source-start
e6    TARGET        1 "What does sleumiitibbb target" 5
                    question-mark
                    end-of-source
("What does sleumiitibbb target?"
 (:var sparser::mv66614 :isa sparser::target :|affected-process-OR-object| sparser::mv66610 :agent
  sparser::mv66612 :present "PRESENT" :raw-text "target")
 (:var sparser::mv66610 :isa sparser::what)
 (:var sparser::mv66612 :isa sparser::bio-entity :name "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    source-start
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    question-mark
                    end-of-source
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:var sparser::mv66618 :isa sparser::be :subject sparser::mv66617 :predicate sparser::mv66623
  :present "PRESENT")
 (:var sparser::mv66617 :isa sparser::what)
 (:var sparser::mv66623 :isa sparser::evidence :statement sparser::mv66622 :has-determiner "THE")
 (:var sparser::mv66622 :isa sparser::phosphorylate :agent sparser::mv66615 :substrate
  sparser::mv66616 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv66615 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv66616 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))

___________________
811: "Remove STAT3 from the model."

                    source-start
e9    REMOVE        1 "Remove STAT3 " 4
e8    FROM          4 "from the model" 7
                    period
                    end-of-source
                    source-start
e9    VP            1 "Remove STAT3 " 4
e8    PP            4 "from the model" 7
                    period
                    end-of-source


___________________
812: "Remove the last interaction from the model."

                    source-start
e13   REMOVE        1 "Remove the last interaction " 5
e12   FROM          5 "from the model" 8
                    period
                    end-of-source
                    source-start
e13   VP            1 "Remove the last interaction " 5
e12   PP            5 "from the model" 8
                    period
                    end-of-source


___________________
813: "IL10 activates STAT3"

                    source-start
e6    BIO-ACTIVATE  1 "IL10 activates STAT3" 6
                    end-of-source
("IL10 activates STAT3"
 (:var sparser::mv66640 :isa sparser::bio-activate :agent sparser::mv66638 :object sparser::mv66639
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv66638 :isa sparser::protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
 (:var sparser::mv66639 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    source-start
e13   COPULAR-PREDICATION 1 "How many interactions are in the model" 8
                    question-mark
                    end-of-source
("How many interactions are in the model?"
 (:var sparser::mv66650 :isa sparser::copular-predication-of-pp :item sparser::mv66648 :value
  sparser::mv66647 :prep sparser::mv66645 :predicate sparser::mv66644)
 (:var sparser::mv66648 :isa sparser::interact :plural t :quantifier sparser::how-many :raw-text
  "interactions")
 (:var sparser::mv66647 :isa sparser::model :has-determiner "THE")
 (:var sparser::mv66645 :isa sparser::in :word "in")
 (:var sparser::mv66644 :isa sparser::be :present "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    source-start
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    question-mark
                    end-of-source
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:var sparser::mv66662 :isa sparser::polar-question :statement sparser::mv66660)
 (:var sparser::mv66660 :isa sparser::decrease :agent sparser::mv66653
  :|affected-process-OR-object| sparser::mv66657 :raw-text "decrease")
 (:var sparser::mv66653 :isa sparser::drug :raw-text "tofacitinib" :name "tasocitinib" :uid
  "NCIT:C95800")
 (:var sparser::mv66657 :isa sparser::bio-amount :measured-item sparser::mv66651 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv66651 :isa sparser::protein :predication sparser::mv66659 :raw-text "MAP2K2" :uid
  "UP:P36507" :name "MP2K2_HUMAN")
 (:var sparser::mv66659 :isa sparser::phosphorylate :substrate sparser::mv66651 :raw-text
  "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    source-start
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    question-mark
                    end-of-source
("What kinases does ERK1 activate?"
 (:var sparser::mv66668 :isa sparser::bio-activate :object sparser::mv66669 :agent sparser::mv66663
  :present "PRESENT" :raw-text "activate")
 (:var sparser::mv66669 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv66663 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    source-start
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    question-mark
                    end-of-source
("What kinases does MEK1 activate?"
 (:var sparser::mv66675 :isa sparser::bio-activate :object sparser::mv66676 :agent sparser::mv66670
  :present "PRESENT" :raw-text "activate")
 (:var sparser::mv66676 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv66670 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    source-start
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    question-mark
                    end-of-source
("What does ERK1 activate?"
 (:var sparser::mv66680 :isa sparser::bio-activate :|affected-process-OR-object| sparser::mv66678
  :agent sparser::mv66677 :present "PRESENT" :raw-text "activate")
 (:var sparser::mv66678 :isa sparser::what)
 (:var sparser::mv66677 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    source-start
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    question-mark
                    end-of-source
("What does JAK1 phosphorylate?"
 (:var sparser::mv66684 :isa sparser::phosphorylate :|substrate-OR-site-OR-amino-acid|
  sparser::mv66682 :agent sparser::mv66681 :present "PRESENT" :raw-text "phosphorylate")
 (:var sparser::mv66682 :isa sparser::what)
 (:var sparser::mv66681 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    source-start
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    question-mark
                    end-of-source
("What kinases does STAT3 regulate?"
 (:var sparser::mv66690 :isa sparser::regulate :object sparser::mv66691 :agent sparser::mv66685
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv66691 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv66685 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    source-start
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    question-mark
                    end-of-source
("What pathways involve SRF and what does SRF bind?"
 (:var sparser::mv66703 :isa sparser::collection :type sparser::involve :number 2 :items
  (sparser::mv66695 sparser::mv66701))
 (:var sparser::mv66695 :isa sparser::involve :theme sparser::mv66702 :object sparser::mv66696
  :present "PRESENT")
 (:var sparser::mv66702 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv66696 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv66701 :isa sparser::binding :direct-bindee sparser::mv66698 :binder
  sparser::mv66700 :present "PRESENT" :raw-text "bind")
 (:var sparser::mv66698 :isa sparser::what)
 (:var sparser::mv66700 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    source-start
e6    INVOLVE       1 "What pathways involve SRF" 5
                    question-mark
                    end-of-source
("What pathways involve SRF?"
 (:var sparser::mv66707 :isa sparser::involve :theme sparser::mv66709 :object sparser::mv66708
  :present "PRESENT")
 (:var sparser::mv66709 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv66708 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    source-start
e5    BINDING       1 "What does SRF bind" 5
                    question-mark
                    end-of-source
("What does SRF bind?"
 (:var sparser::mv66713 :isa sparser::binding :direct-bindee sparser::mv66710 :binder
  sparser::mv66712 :present "PRESENT" :raw-text "bind")
 (:var sparser::mv66710 :isa sparser::what)
 (:var sparser::mv66712 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
824: "What pathways involve SRF and is SRF a kinase?"

                    source-start
e15   INVOLVE       1 "What pathways involve SRF and is SRF " 8
e11   KINASE        8 "a kinase" 10
                    question-mark
                    end-of-source
                    source-start
e15   S             1 "What pathways involve SRF and is SRF " 8
e11   NP            8 "a kinase" 10
                    question-mark
                    end-of-source


___________________
825: "Does MAP2K1 phosphorylate and activate MAPK1?"

                    source-start
e13   COLLECTION    1 "Does MAP2K1 phosphorylate and activate MAPK1" 11
                    question-mark
                    end-of-source
("Does MAP2K1 phosphorylate and activate MAPK1?"
 (:var sparser::mv66736 :isa sparser::polar-question :statement sparser::mv66735)
 (:var sparser::mv66735 :isa sparser::collection :type sparser::phosphorylate :items
  (((:agent (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    (:substrate (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482")))
    (:raw-text "phosphorylate"))
   ((:agent (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    (:object (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
  :number 2))

___________________
826: "Does MAP2K1 phosphorylate MAPK3?"

                    source-start
e10   PHOSPHORYLATE 1 "Does MAP2K1 phosphorylate MAPK3" 9
                    question-mark
                    end-of-source
("Does MAP2K1 phosphorylate MAPK3?"
 (:var sparser::mv66742 :isa sparser::polar-question :statement sparser::mv66741)
 (:var sparser::mv66741 :isa sparser::phosphorylate :agent sparser::mv66737 :substrate
  sparser::mv66738 :raw-text "phosphorylate")
 (:var sparser::mv66737 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv66738 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    source-start
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    question-mark
                    end-of-source
("Which kinases activate MEK2?"
 (:var sparser::mv66747 :isa sparser::bio-activate :agent sparser::mv66748 :object sparser::mv66743
  :present "PRESENT" :raw-text "activate")
 (:var sparser::mv66748 :isa sparser::kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv66743 :isa sparser::protein :raw-text "MEK2" :uid "UP:P36507" :name
  "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    source-start
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    question-mark
                    end-of-source
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:var sparser::mv66755 :isa sparser::target :agent sparser::mv66761 :affected-process
  sparser::mv66763 :present "PRESENT" :raw-text "target")
 (:var sparser::mv66761 :isa sparser::drug :plural t :has-determiner "WHICH" :raw-text "drugs")
 (:var sparser::mv66763 :isa sparser::upstream-segment :plural t :pathwaycomponent sparser::mv66760
  :raw-text "upstreams")
 (:var sparser::mv66760 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv66749 sparser::mv66750))
 (:var sparser::mv66749 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv66750 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    source-start
e8    TARGET        1 "Which drugs target CXCL8" 6
                    question-mark
                    end-of-source
("Which drugs target CXCL8?"
 (:var sparser::mv66769 :isa sparser::target :agent sparser::mv66770 :object sparser::mv66764
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv66770 :isa sparser::drug :plural t :has-determiner "WHICH" :raw-text "drugs")
 (:var sparser::mv66764 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    source-start
e8    TARGET        1 "Which drugs target Jak3" 6
                    question-mark
                    end-of-source
("Which drugs target Jak3?"
 (:var sparser::mv66776 :isa sparser::target :agent sparser::mv66777 :object sparser::mv66771
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv66777 :isa sparser::drug :plural t :has-determiner "WHICH" :raw-text "drugs")
 (:var sparser::mv66771 :isa sparser::protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    source-start
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    question-mark
                    end-of-source
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:var sparser::mv66786 :isa sparser::target :agent sparser::mv66791 :object sparser::mv66779
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv66791 :isa sparser::drug :plural t :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv66779 :isa sparser::transcription-factor :plural t :predication sparser::mv66787
  :raw-text "transcription factors")
 (:var sparser::mv66787 :isa sparser::share :object sparser::mv66779 :participant sparser::mv66790
  :past "PAST" :raw-text "shared")
 (:var sparser::mv66790 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv66780 sparser::mv66781))
 (:var sparser::mv66780 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv66781 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    source-start
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    question-mark
                    end-of-source
("What kinases does miR-20a-5p target?"
 (:var sparser::mv66800 :isa sparser::target :object sparser::mv66801 :agent sparser::mv66794
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv66801 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv66794 :isa sparser::micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm"
  :uid "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    source-start
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    question-mark
                    end-of-source
("What transcription factors does miR-20a-5p target?"
 (:var sparser::mv66808 :isa sparser::target :object sparser::mv66809 :agent sparser::mv66804
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv66809 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv66804 :isa sparser::micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm"
  :uid "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    source-start
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    question-mark
                    end-of-source
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:var sparser::mv66822 :isa sparser::copular-predication :item sparser::mv66819 :value
  sparser::mv66810 :predicate sparser::mv66816)
 (:var sparser::mv66819 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv66810 :isa sparser::mutual-exclusivity :disease sparser::mv66812 :alternative
  sparser::mv66811)
 (:var sparser::mv66812 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv66811 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name
  "CADH1_HUMAN")
 (:var sparser::mv66816 :isa sparser::be :present "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    source-start
e7    TARGET        1 "What drugs target fakeprotein" 5
                    question-mark
                    end-of-source
("What drugs target fakeprotein?"
 (:var sparser::mv66827 :isa sparser::target :agent sparser::mv66829 :object sparser::mv66828
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv66829 :isa sparser::drug :plural t :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv66828 :isa sparser::bio-entity :name "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    question-mark
                    end-of-source
("Which kinases are in the FAKE signaling pathway?"
 (:var sparser::mv66843 :isa sparser::copular-predication-of-pp :item sparser::mv66838 :value
  sparser::mv66842 :prep "IN" :predicate sparser::mv66834)
 (:var sparser::mv66838 :isa sparser::kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv66842 :isa sparser::kinase :plural t :in-pathway sparser::mv66830 :has-determiner
  "WHICH" :raw-text "kinases")
 (:var sparser::mv66830 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv66837 :raw-text "signaling pathway")
 (:var sparser::mv66837 :isa sparser::bio-entity :name "FAKE")
 (:var sparser::mv66834 :isa sparser::be :present "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    source-start
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    question-mark
                    end-of-source
("What are the mutations of PTEN in fictional cancer?"
 (:var sparser::mv66846 :isa sparser::be :subject sparser::mv66845 :predicate sparser::mv66859
  :present "PRESENT")
 (:var sparser::mv66845 :isa sparser::what)
 (:var sparser::mv66859 :isa sparser::mutation :plural t :context sparser::mv66854 :object
  sparser::mv66851 :has-determiner "THE" :raw-text "mutations")
 (:var sparser::mv66854 :isa sparser::cancer :predication sparser::mv66853)
 (:var sparser::mv66853 :isa sparser::fictional)
 (:var sparser::mv66851 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    source-start
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    question-mark
                    end-of-source
("What are the mutations of PTEN in liver cancer?"
 (:var sparser::mv66861 :isa sparser::be :subject sparser::mv66860 :predicate sparser::mv66874
  :present "PRESENT")
 (:var sparser::mv66860 :isa sparser::what)
 (:var sparser::mv66874 :isa sparser::mutation :plural t :context sparser::mv66869 :object
  sparser::mv66866 :has-determiner "THE" :raw-text "mutations")
 (:var sparser::mv66869 :isa sparser::cancer :organ sparser::mv66868)
 (:var sparser::mv66868 :isa sparser::liver)
 (:var sparser::mv66866 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    source-start
e22   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE " 9
e17   IN            9 "in the model" 12
                    period
                    end-of-source
                    source-start
e22   VP            1 "Remove the fact that ELk1 transcribes FAKE " 9
e17   PP            9 "in the model" 12
                    period
                    end-of-source


___________________
840: "ELK1 transcribes FOS"

                    source-start
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    end-of-source
("ELK1 transcribes FOS"
 (:var sparser::mv66888 :isa sparser::transcribe :agent sparser::mv66887 :object sparser::mv66889
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv66887 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv66889 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    source-start
e22   REMOVE        1 "Remove the fact that ELK1 transcribes FOS " 9
e17   IN            9 "in the model" 12
                    period
                    end-of-source
                    source-start
e22   VP            1 "Remove the fact that ELK1 transcribes FOS " 9
e17   PP            9 "in the model" 12
                    period
                    end-of-source


___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    source-start
e17   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    question-mark
                    end-of-source
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:var sparser::mv66913 :isa sparser::share :object sparser::mv66912 :participant sparser::mv66911
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv66912 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv66911 :isa sparser::collection :raw-text "CXCL8 and FAKE10" :type
  sparser::protein :number 2 :items (sparser::mv66904 sparser::mv66905))
 (:var sparser::mv66904 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv66905 :isa sparser::bio-entity :name "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    source-start
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    question-mark
                    end-of-source
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:var sparser::mv66926 :isa sparser::share :object sparser::mv66925 :participant sparser::mv66924
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv66925 :isa sparser::transcription-factor :plural t :has-determiner "WHAT"
  :raw-text "transcription factors")
 (:var sparser::mv66924 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv66917 sparser::mv66918))
 (:var sparser::mv66917 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv66918 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    source-start
e6    DATABASE      1 "What databases " 3
e2    DO            3 "do " 4
e7    BIO-USE       4 "you use" 6
                    question-mark
                    end-of-source
                    source-start
e6    NP            1 "What databases " 3
e2    VG            3 "do " 4
e7    TRANSITIVE-CLAUSE-WITHOUT-OBJECT  4 "you use" 6
                    question-mark
                    end-of-source


___________________
845: "What is the MSA?"

                    source-start
e7    BE            1 "What is the MSA" 5
                    question-mark
                    end-of-source
("What is the MSA?"
 (:var sparser::mv66937 :isa sparser::be :subject sparser::mv66936 :predicate sparser::mv66939
  :present "PRESENT")
 (:var sparser::mv66936 :isa sparser::what)
 (:var sparser::mv66939 :isa sparser::protein :has-determiner "THE" :raw-text "MSA" :uid
  "UP:Q9FIB6" :name "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    source-start
e11   ASK           1 "What tissues can I ask about" 7
                    question-mark
                    end-of-source
("What tissues can I ask about?"
 (:var sparser::mv66950 :isa sparser::ask :patient sparser::mv66949 :modal sparser::mv66943 :agent
  sparser::mv66944 :present "PRESENT")
 (:var sparser::mv66949 :isa sparser::tissue :plural t :has-determiner "WHAT")
 (:var sparser::mv66943 :isa sparser::can)
 (:var sparser::mv66944 :isa sparser::interlocutor :name "speaker"))

___________________
847: "What cancers can I ask about?"

                    source-start
e11   ASK           1 "What cancers can I ask about" 7
                    question-mark
                    end-of-source
("What cancers can I ask about?"
 (:var sparser::mv66961 :isa sparser::ask :patient sparser::mv66960 :modal sparser::mv66954 :agent
  sparser::mv66955 :present "PRESENT")
 (:var sparser::mv66960 :isa sparser::cancer :plural t :has-determiner "WHAT")
 (:var sparser::mv66954 :isa sparser::can)
 (:var sparser::mv66955 :isa sparser::interlocutor :name "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    source-start
e11   ASK           1 "What mechanisms can I ask about" 7
                    question-mark
                    end-of-source
("What mechanisms can I ask about?"
 (:var sparser::mv66972 :isa sparser::ask :patient sparser::mv66971 :modal sparser::mv66965 :agent
  sparser::mv66966 :present "PRESENT")
 (:var sparser::mv66971 :isa sparser::bio-mechanism :plural t :has-determiner "WHAT")
 (:var sparser::mv66965 :isa sparser::can)
 (:var sparser::mv66966 :isa sparser::interlocutor :name "speaker"))

___________________
849: "What does STAT3 regulate?"

                    source-start
e6    REGULATE      1 "What does STAT3 regulate" 6
                    question-mark
                    end-of-source
("What does STAT3 regulate?"
 (:var sparser::mv66976 :isa sparser::regulate :|affected-process-OR-object| sparser::mv66974
  :agent sparser::mv66973 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv66974 :isa sparser::what)
 (:var sparser::mv66973 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    source-start
e9    BE            1 "Which of these are kinases" 6
                    question-mark
                    end-of-source
("Which of these are kinases?"
 (:var sparser::mv66980 :isa sparser::be :subject sparser::mv66979 :predicate sparser::mv66982
  :present "PRESENT")
 (:var sparser::mv66979 :isa sparser::these :quantifier sparser::mv66977 :word "these")
 (:var sparser::mv66977 :isa sparser::which)
 (:var sparser::mv66982 :isa sparser::kinase :plural t :raw-text "kinases"))

___________________
851: "What pathways is ERK1 in?"

                    source-start
e9    BE            1 "What pathways is ERK1 " 6
e6    IN            6 "in" 7
                    question-mark
                    end-of-source
                    source-start
e9    S             1 "What pathways is ERK1 " 6
e6    PREPOSITION   6 "in" 7
                    question-mark
                    end-of-source


___________________
852: "Which of these is AKT1 in?"

                    source-start
e12   BE            1 "Which of these is AKT1 " 7
e8    IN            7 "in" 8
                    question-mark
                    end-of-source
                    source-start
e12   S             1 "Which of these is AKT1 " 7
e8    PREPOSITION   7 "in" 8
                    question-mark
                    end-of-source


___________________
853: "What pathways are ERK1 and AKT1 in?"

                    source-start
e13   BE            1 "What pathways are ERK1 and AKT1 " 9
e9    IN            9 "in" 10
                    question-mark
                    end-of-source
                    source-start
e13   S             1 "What pathways are ERK1 and AKT1 " 9
e9    PREPOSITION   9 "in" 10
                    question-mark
                    end-of-source


___________________
854: "What microRNAs target STAT3?"

                    source-start
e8    TARGET        1 "What microRNAs target STAT3" 6
                    question-mark
                    end-of-source
("What microRNAs target STAT3?"
 (:var sparser::mv67013 :isa sparser::target :agent sparser::mv67014 :object sparser::mv67008
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv67014 :isa sparser::micro-rna :plural t :has-determiner "WHAT" :raw-text
  "microRNAs")
 (:var sparser::mv67008 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    source-start
e11   TARGET        1 "Which of these target SMAD2" 7
                    question-mark
                    end-of-source
("Which of these target SMAD2?"
 (:var sparser::mv67020 :isa sparser::target :|agent-OR-cause| sparser::mv67018 :object
  sparser::mv67015 :present "PRESENT" :raw-text "target")
 (:var sparser::mv67018 :isa sparser::these :quantifier sparser::mv67016 :word "these")
 (:var sparser::mv67016 :isa sparser::which)
 (:var sparser::mv67015 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
856: "Do any of these regulate IL2?"

                    source-start
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    question-mark
                    end-of-source
("Do any of these regulate IL2?"
 (:var sparser::mv67030 :isa sparser::polar-question :statement sparser::mv67028)
 (:var sparser::mv67028 :isa sparser::regulate :|agent-OR-cause| sparser::mv67026 :object
  sparser::mv67022 :raw-text "regulate")
 (:var sparser::mv67026 :isa sparser::these :quantifier sparser::mv67024 :word "these")
 (:var sparser::mv67024 :isa sparser::any :word "any")
 (:var sparser::mv67022 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    source-start
e5    REGULATE      1 "What regulates STAT3" 5
                    question-mark
                    end-of-source
("What regulates STAT3?"
 (:var sparser::mv67033 :isa sparser::regulate :|agent-OR-cause| sparser::mv67032 :object
  sparser::mv67031 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv67032 :isa sparser::what)
 (:var sparser::mv67031 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    source-start
e6    INVOLVE       1 "What pathways involve these" 5
                    question-mark
                    end-of-source
("What pathways involve these?"
 (:var sparser::mv67037 :isa sparser::involve :theme sparser::mv67039 :object sparser::mv67038
  :present "PRESENT")
 (:var sparser::mv67039 :isa sparser::pathway :plural t :has-determiner "WHAT" :raw-text
  "pathways")
 (:var sparser::mv67038 :isa sparser::these :word "these"))

___________________
859: "What are the targets of NG25?"

                    source-start
e14   BE            1 "What are the targets of NG25" 8
                    question-mark
                    end-of-source
("What are the targets of NG25?"
 (:var sparser::mv67042 :isa sparser::be :subject sparser::mv67041 :predicate sparser::mv67050
  :present "PRESENT")
 (:var sparser::mv67041 :isa sparser::what)
 (:var sparser::mv67050 :isa sparser::target-protein :plural t :treatment sparser::mv67040
  :has-determiner "THE" :raw-text "targets")
 (:var sparser::mv67040 :isa sparser::drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))

___________________
860: "What is their most likely cellular location?"

                    source-start
e13   BE            1 "What is their most likely cellular location" 8
                    question-mark
                    end-of-source
("What is their most likely cellular location?"
 (:var sparser::mv67052 :isa sparser::be :subject sparser::mv67051 :predicate sparser::mv67058
  :present "PRESENT")
 (:var sparser::mv67051 :isa sparser::what)
 (:var sparser::mv67058 :isa sparser::location-of :theme sparser::mv67053 :predication
  sparser::mv67056 :modifier sparser::mv67057)
 (:var sparser::mv67053 :isa sparser::pronoun/plural :word "their")
 (:var sparser::mv67056 :isa sparser::likely :comparative sparser::mv67054)
 (:var sparser::mv67054 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv67057 :isa sparser::cellular :name "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    source-start
e10   BE            1 "Is ERK1 a transcription factor" 7
                    question-mark
                    end-of-source
("Is ERK1 a transcription factor?"
 (:var sparser::mv67063 :isa sparser::polar-question :statement sparser::mv67061)
 (:var sparser::mv67061 :isa sparser::be :subject sparser::mv67059 :predicate sparser::mv67060)
 (:var sparser::mv67059 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
 (:var sparser::mv67060 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor"))

___________________
862: "Is it a kinase?"

                    source-start
e9    BE            1 "Is it a kinase" 5
                    question-mark
                    end-of-source
("Is it a kinase?" (:var sparser::mv67068 :isa sparser::polar-question :statement sparser::mv67064)
 (:var sparser::mv67064 :isa sparser::be :subject sparser::mv67065 :predicate sparser::mv67067)
 (:var sparser::mv67065 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv67067 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
863: "What is PLX-4720?"

                    source-start
e5    BE            1 "What is PLX-4720" 6
                    question-mark
                    end-of-source
("What is PLX-4720?"
 (:var sparser::mv67071 :isa sparser::be :subject sparser::mv67070 :predicate sparser::mv67069
  :present "PRESENT")
 (:var sparser::mv67070 :isa sparser::what)
 (:var sparser::mv67069 :isa sparser::drug :raw-text "PLX-4720" :name "PLX 4720" :uid
  "PCID:24180719"))

___________________
864: "What does it target?"

                    source-start
e7    TARGET        1 "What does it target" 5
                    question-mark
                    end-of-source
("What does it target?"
 (:var sparser::mv67076 :isa sparser::target :|affected-process-OR-object| sparser::mv67072
  :|agent-OR-cause| sparser::mv67074 :present "PRESENT" :raw-text "target")
 (:var sparser::mv67072 :isa sparser::what)
 (:var sparser::mv67074 :isa sparser::pronoun/inanimate :word "it"))

___________________
865: "What genes does STAT3 regulate?"

                    source-start
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    question-mark
                    end-of-source
("What genes does STAT3 regulate?"
 (:var sparser::mv67082 :isa sparser::regulate :object sparser::mv67083 :agent sparser::mv67077
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv67083 :isa sparser::gene :plural t :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv67077 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
866: "What pathways is it in?"

                    source-start
e9    BE            1 "What pathways is it " 5
e6    IN            5 "in" 6
                    question-mark
                    end-of-source
                    source-start
e9    S             1 "What pathways is it " 5
e6    PREPOSITION   5 "in" 6
                    question-mark
                    end-of-source


___________________
867: "What are the targets of PLX-4720?"

                    source-start
e14   BE            1 "What are the targets of PLX-4720" 9
                    question-mark
                    end-of-source
("What are the targets of PLX-4720?"
 (:var sparser::mv67093 :isa sparser::be :subject sparser::mv67092 :predicate sparser::mv67101
  :present "PRESENT")
 (:var sparser::mv67092 :isa sparser::what)
 (:var sparser::mv67101 :isa sparser::target-protein :plural t :treatment sparser::mv67091
  :has-determiner "THE" :raw-text "targets")
 (:var sparser::mv67091 :isa sparser::drug :raw-text "PLX-4720" :name "PLX 4720" :uid
  "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    source-start
e10   TARGET        1 "Does it target BRAF" 5
                    question-mark
                    end-of-source
("Does it target BRAF?"
 (:var sparser::mv67108 :isa sparser::polar-question :statement sparser::mv67107)
 (:var sparser::mv67107 :isa sparser::target :|agent-OR-cause| sparser::mv67103 :object
  sparser::mv67106 :raw-text "target")
 (:var sparser::mv67103 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv67106 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
869: "Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."

                    source-start
e15   INHIBIT       1 "Tofacitinib inhibits JAK1 and active STAT3 " 9
e13   TRANSCRIBE    9 "transcribes IL2" 12
                    period
                    end-of-source
                    source-start
e15   S             1 "Tofacitinib inhibits JAK1 and active STAT3 " 9
e13   VP            9 "transcribes IL2" 12
                    period
                    end-of-source


___________________
870: "JAK1 activates STAT3"

                    source-start
e6    BIO-ACTIVATE  1 "JAK1 activates STAT3" 6
                    end-of-source
("JAK1 activates STAT3"
 (:var sparser::mv67120 :isa sparser::bio-activate :agent sparser::mv67118 :object sparser::mv67119
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv67118 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
 (:var sparser::mv67119 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    source-start
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    end-of-source
("I want to find out how Jak1 activates IL2"
 (:var sparser::mv67126 :isa sparser::want :agent sparser::mv67123 :theme sparser::mv67136 :present
  "PRESENT")
 (:var sparser::mv67123 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv67136 :isa sparser::find-out :agent sparser::mv67123 :statement sparser::mv67133)
 (:var sparser::mv67133 :isa sparser::wh-question :statement sparser::mv67132 :var nil :wh
  sparser::how)
 (:var sparser::mv67132 :isa sparser::bio-activate :agent sparser::mv67121 :object sparser::mv67122
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv67121 :isa sparser::protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
 (:var sparser::mv67122 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    source-start
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    period
                    end-of-source
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:var sparser::mv67142 :isa sparser::want :agent sparser::mv67139 :theme sparser::mv67158 :present
  "PRESENT")
 (:var sparser::mv67139 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv67158 :isa sparser::find-out :agent sparser::mv67139 :statement sparser::mv67155)
 (:var sparser::mv67155 :isa sparser::wh-question :statement sparser::mv67148 :var nil :wh
  sparser::how)
 (:var sparser::mv67148 :isa sparser::bio-activate :agent sparser::mv67137 :object sparser::mv67149
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv67137 :isa sparser::protein :raw-text "ERBB3" :uid "UP:P21860" :name
  "ERBB3_HUMAN")
 (:var sparser::mv67149 :isa sparser::protein :cell-type sparser::mv67153 :raw-text "JUN" :uid
  "UP:P05412" :name "JUN_HUMAN")
 (:var sparser::mv67153 :isa sparser::cell-type :plural t :cell-line sparser::mv67138)
 (:var sparser::mv67138 :isa sparser::cell-line :name "SKBR3" :uid "EFO:0001236"))

___________________
873: "Let's build a model."

                    source-start
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    period
                    end-of-source
("Let's build a model."
 (:var sparser::mv67163 :isa sparser::explicit-suggestion :suggestion sparser::mv67160 :marker
  sparser::let-as-directive)
 (:var sparser::mv67160 :isa sparser::build :artifact sparser::mv67162 :present "PRESENT")
 (:var sparser::mv67162 :isa sparser::model :has-determiner "A"))

___________________
874: "Mek phosphorylates MAPK; MapK phosphorylates RSK"

                    source-start
e10   PHOSPHORYLATE 1 "Mek phosphorylates MAPK" 4
e3    SEMICOLON     4 "; " 5
e8    PHOSPHORYLATE 5 "MapK phosphorylates RSK" 8
                    end-of-source
                    source-start
e10   S             1 "Mek phosphorylates MAPK" 4
e3    PUNCTUATION   4 "; " 5
e8    S             5 "MapK phosphorylates RSK" 8
                    end-of-source


___________________
875: "What kinases regulate IL2?"

                    source-start
e7    REGULATE      1 "What kinases regulate IL2" 6
                    question-mark
                    end-of-source
("What kinases regulate IL2?"
 (:var sparser::mv67174 :isa sparser::regulate :agent sparser::mv67175 :object sparser::mv67170
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv67175 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv67170 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    source-start
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    question-mark
                    end-of-source
("What positively regulates IL2?"
 (:var sparser::mv67176 :isa sparser::upregulate :|agent-OR-cause| sparser::mv67178 :object
  sparser::mv67177 :present "PRESENT" :raw-text "positively regulates")
 (:var sparser::mv67178 :isa sparser::what)
 (:var sparser::mv67177 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    source-start
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    question-mark
                    end-of-source
("What can have the effect of activation on STAT3?"
 (:var sparser::mv67182 :isa sparser::have :possessor sparser::mv67180 :thing-possessed
  sparser::mv67184 :modal sparser::mv67181)
 (:var sparser::mv67180 :isa sparser::what)
 (:var sparser::mv67184 :isa sparser::effect :object sparser::mv67179 :affected-process
  sparser::mv67187 :has-determiner "THE" :raw-text "effect")
 (:var sparser::mv67179 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv67187 :isa sparser::bio-activate :raw-text "activation")
 (:var sparser::mv67181 :isa sparser::can))

___________________
878: "Are there any drugs for IL10?"

                    source-start
e15   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    question-mark
                    end-of-source
("Are there any drugs for IL10?"
 (:var sparser::mv67203 :isa sparser::polar-question :statement sparser::mv67199)
 (:var sparser::mv67199 :isa sparser::there-exists :value sparser::mv67202 :predicate
  sparser::mv67193)
 (:var sparser::mv67202 :isa sparser::drug :plural t :target sparser::mv67191 :quantifier
  sparser::mv67195 :raw-text "drugs")
 (:var sparser::mv67191 :isa sparser::protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
 (:var sparser::mv67195 :isa sparser::any :word "any")
 (:var sparser::mv67193 :isa sparser::syntactic-there))

___________________
879: "Which tissues express STAT3?"

                    source-start
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    question-mark
                    end-of-source
("Which tissues express STAT3?"
 (:var sparser::mv67208 :isa sparser::gene-transcript-express :agent sparser::mv67209 :object
  sparser::mv67204 :present "PRESENT" :raw-text "express")
 (:var sparser::mv67209 :isa sparser::tissue :plural t :has-determiner "WHICH")
 (:var sparser::mv67204 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    source-start
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    question-mark
                    end-of-source
("How does MEK1 regulate ERK1?"
 (:var sparser::mv67214 :isa sparser::regulate :manner sparser::mv67212 :agent sparser::mv67210
  :object sparser::mv67211 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv67212 :isa sparser::how)
 (:var sparser::mv67210 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv67211 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    source-start
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    question-mark
                    end-of-source
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:var sparser::mv67220 :isa sparser::be :subject sparser::mv67219 :predicate sparser::mv67230
  :present "PRESENT")
 (:var sparser::mv67219 :isa sparser::what)
 (:var sparser::mv67230 :isa sparser::transcription-factor :plural t :predication sparser::mv67222
  :raw-text "transcription factors")
 (:var sparser::mv67222 :isa sparser::binding :binder sparser::mv67230 :that-rel t :direct-bindee
  sparser::mv67229 :present "PRESENT" :raw-text "bind")
 (:var sparser::mv67229 :isa sparser::gene :plural t :has-determiner "THE" :expresses
  sparser::mv67227 :raw-text "genes")
 (:var sparser::mv67227 :isa sparser::collection :raw-text "IL15 and IL2" :type sparser::protein
  :number 2 :items (sparser::mv67217 sparser::mv67218))
 (:var sparser::mv67217 :isa sparser::protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
 (:var sparser::mv67218 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    source-start
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    question-mark
                    end-of-source
("What kinases regulate the IL15 and IL2?"
 (:var sparser::mv67236 :isa sparser::regulate :agent sparser::mv67240 :object sparser::mv67239
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv67240 :isa sparser::kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv67239 :isa sparser::collection :has-determiner "THE" :raw-text "IL15 and IL2"
  :type sparser::protein :number 2 :items (sparser::mv67231 sparser::mv67232))
 (:var sparser::mv67231 :isa sparser::protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
 (:var sparser::mv67232 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
883: "What factors from the literature regulate IL15 and IL2?"

                    source-start
e13   FACTOR        1 "What factors " 3
e16   FROM          3 "from the literature " 6
e15   REGULATE      6 "regulate IL15 and IL2" 12
                    question-mark
                    end-of-source
                    source-start
e13   NP            1 "What factors " 3
e16   PP            3 "from the literature " 6
e15   VP            6 "regulate IL15 and IL2" 12
                    question-mark
                    end-of-source


___________________
884: "What relations in the literature match tofacitinib inhibits IL15?"

                    source-start
e13   RELATION      1 "What relations " 3
e18   IN            3 "in the literature match tofacitinib " 8
e17   INHIBIT       8 "inhibits IL15" 11
                    question-mark
                    end-of-source
                    source-start
e13   NP            1 "What relations " 3
e18   PP            3 "in the literature match tofacitinib " 8
e17   VP            8 "inhibits IL15" 11
                    question-mark
                    end-of-source


___________________
885: "What is MAP3K7?"

                    source-start
e5    BE            1 "What is MAP3K7" 7
                    question-mark
                    end-of-source
("What is MAP3K7?"
 (:var sparser::mv67269 :isa sparser::be :subject sparser::mv67268 :predicate sparser::mv67267
  :present "PRESENT")
 (:var sparser::mv67268 :isa sparser::what)
 (:var sparser::mv67267 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    source-start
e9    BE            1 "Is MAP3K7 a protein" 8
                    question-mark
                    end-of-source
("Is MAP3K7 a protein?"
 (:var sparser::mv67274 :isa sparser::polar-question :statement sparser::mv67271)
 (:var sparser::mv67271 :isa sparser::be :subject sparser::mv67270 :predicate sparser::mv67273)
 (:var sparser::mv67270 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv67273 :isa sparser::protein :has-determiner "A" :raw-text "protein"))

___________________
887: "What does SMAD2 transcribe?"

                    source-start
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    question-mark
                    end-of-source
("What does SMAD2 transcribe?"
 (:var sparser::mv67278 :isa sparser::transcribe :object sparser::mv67276 :agent sparser::mv67275
  :present "PRESENT" :raw-text "transcribe")
 (:var sparser::mv67276 :isa sparser::what)
 (:var sparser::mv67275 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    source-start
e13   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    question-mark
                    end-of-source
("Are there drugs for IL10?"
 (:var sparser::mv67289 :isa sparser::polar-question :statement sparser::mv67286)
 (:var sparser::mv67286 :isa sparser::there-exists :value sparser::mv67288 :predicate
  sparser::mv67281)
 (:var sparser::mv67288 :isa sparser::drug :plural t :target sparser::mv67279 :raw-text "drugs")
 (:var sparser::mv67279 :isa sparser::protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
 (:var sparser::mv67281 :isa sparser::syntactic-there))

___________________
889: "What relations in the literature match tofacitinib?"

                    source-start
e10   RELATION      1 "What relations " 3
e14   IN            3 "in the literature match tofacitinib" 8
                    question-mark
                    end-of-source
                    source-start
e10   NP            1 "What relations " 3
e14   PP            3 "in the literature match tofacitinib" 8
                    question-mark
                    end-of-source


___________________
890: "What relations in the literature match STAT3 regulates IL15 ?"

                    source-start
e14   RELATION      1 "What relations " 3
e19   IN            3 "in the literature match " 7
e18   REGULATE      7 "STAT3 regulates IL15 " 12
                    question-mark
                    end-of-source
                    source-start
e14   NP            1 "What relations " 3
e19   PP            3 "in the literature match " 7
e18   S             7 "STAT3 regulates IL15 " 12
                    question-mark
                    end-of-source
891 sentences in *list-of-bio-utterances*
