

___________________
0: "What genes does mir-128 regulate?"

                    source-start
e8    REGULATE      1 "What genes does mir-128 regulate" 8
                    question-mark
                    end-of-source
("What genes does mir-128 regulate?"
 (:var sparser::mv7981 :isa sparser::regulate :object sparser::mv7979 :agent sparser::mv7977
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv7979 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv7977 :isa sparser::bio-entity :name "mir-128"))

___________________
1: "what transcription factors does miR-200c regulate?"

                    source-start
e9    REGULATE      1 "what transcription factors does miR-200c regulate" 10
                    question-mark
                    end-of-source
("what transcription factors does miR-200c regulate?"
 (:var sparser::mv7986 :isa sparser::regulate :object sparser::mv7982 :agent sparser::mv7983
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv7982 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv7983 :isa sparser::micro-rna :raw-text "miR-200c" :name "MIR200C" :uid
  "NCIT:C82157"))

___________________
2: "Tell me about stat3's involvement in apoptosis"

                    source-start
e16   TELL          1 "Tell me about stat3's involvement in apoptosis" 11
                    end-of-source
("Tell me about stat3's involvement in apoptosis"
 (:var sparser::mv7988 :isa sparser::tell :theme sparser::mv7992 :theme sparser::mv7989 :present
  "PRESENT")
 (:var sparser::mv7992 :isa sparser::involve :theme sparser::mv7994 :participant sparser::mv7991)
 (:var sparser::mv7994 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv7991 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv7989 :isa sparser::interlocutor :name "speaker"))

___________________
3: "What are the genes that have strong evidence of being regulated by mir-122-5p?"

                    source-start
e30   BE            1 "What are the genes that have strong evidence of being regulated by mir-122-5p" 19
                    question-mark
                    end-of-source
("What are the genes that have strong evidence of being regulated by mir-122-5p?"
 (:var sparser::mv7999 :isa sparser::be :subject sparser::mv7998 :predicate sparser::mv8001
  :present "PRESENT")
 (:var sparser::mv7998 :isa sparser::what)
 (:var sparser::mv8001 :isa sparser::gene :predication sparser::mv8003 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv8003 :isa sparser::have :possessor sparser::mv8001 :that-rel t :thing-possessed
  sparser::mv8005 :present "PRESENT")
 (:var sparser::mv8005 :isa sparser::evidence :fact sparser::mv8008 :predication sparser::mv8004)
 (:var sparser::mv8008 :isa sparser::regulate :agent sparser::mv7997 :progressive sparser::mv8007
  :raw-text "regulated")
 (:var sparser::mv7997 :isa sparser::micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid
  "MIMAT0000421")
 (:var sparser::mv8007 :isa sparser::be) (:var sparser::mv8004 :isa sparser::strong))

___________________
4: "What is stat3's involvement in apoptosis?"

                    source-start
e14   BE            1 "What is stat3's involvement in apoptosis" 10
                    question-mark
                    end-of-source
("What is stat3's involvement in apoptosis?"
 (:var sparser::mv8014 :isa sparser::be :subject sparser::mv8013 :predicate sparser::mv8016
  :present "PRESENT")
 (:var sparser::mv8013 :isa sparser::what)
 (:var sparser::mv8016 :isa sparser::involve :theme sparser::mv8018 :participant sparser::mv8015)
 (:var sparser::mv8018 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv8015 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
5: "What is stat3's role in apoptosis?"

                    source-start
e14   BE            1 "What is stat3's role in apoptosis" 10
                    question-mark
                    end-of-source
("What is stat3's role in apoptosis?"
 (:var sparser::mv8022 :isa sparser::be :subject sparser::mv8021 :predicate sparser::mv8024
  :present "PRESENT")
 (:var sparser::mv8021 :isa sparser::what)
 (:var sparser::mv8024 :isa sparser::role :process sparser::mv8026 :participant sparser::mv8023)
 (:var sparser::mv8026 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv8023 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
6: "What is stat3's role in apoptotic regulation?"

                    source-start
e17   BE            1 "What is stat3's role in apoptotic regulation" 11
                    question-mark
                    end-of-source
("What is stat3's role in apoptotic regulation?"
 (:var sparser::mv8030 :isa sparser::be :subject sparser::mv8029 :predicate sparser::mv8032
  :present "PRESENT")
 (:var sparser::mv8029 :isa sparser::what)
 (:var sparser::mv8032 :isa sparser::role :process sparser::mv8036 :participant sparser::mv8031)
 (:var sparser::mv8036 :isa sparser::regulate :|cellular-process-OR-agent| sparser::mv8034
  :raw-text "regulation")
 (:var sparser::mv8034 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv8031 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
7: "What is the evidence that miR-148a-3p targets DNMT1?"

                    source-start
e19   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    question-mark
                    end-of-source
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:var sparser::mv8041 :isa sparser::be :subject sparser::mv8040 :predicate sparser::mv8047
  :present "PRESENT")
 (:var sparser::mv8040 :isa sparser::what)
 (:var sparser::mv8047 :isa sparser::evidence :statement sparser::mv8046 :has-determiner "THE")
 (:var sparser::mv8046 :isa sparser::target :agent sparser::mv8038 :object sparser::mv8039 :present
  "PRESENT" :raw-text "targets")
 (:var sparser::mv8038 :isa sparser::micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p"
  :uid "MIMAT0000243")
 (:var sparser::mv8039 :isa sparser::protein :raw-text "DNMT1" :uid "UP:P26358" :name
  "DNMT1_HUMAN"))

___________________
8: "what transcription factors does miR-124-3p regulate?"

                    source-start
e9    REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    question-mark
                    end-of-source
("what transcription factors does miR-124-3p regulate?"
 (:var sparser::mv8052 :isa sparser::regulate :object sparser::mv8048 :agent sparser::mv8049
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv8048 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv8049 :isa sparser::micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid
  "MIMAT0000422"))

___________________
9: "what transcription factors does miR-200c-3p regulate?"

                    source-start
e9    REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    question-mark
                    end-of-source
("what transcription factors does miR-200c-3p regulate?"
 (:var sparser::mv8057 :isa sparser::regulate :object sparser::mv8053 :agent sparser::mv8054
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv8053 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv8054 :isa sparser::micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p"
  :uid "MIMAT0000617"))

___________________
10: "What is the mutation significance of TP53 in ovarian cancer?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 in ovarian cancer" 12
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 in ovarian cancer?"
 (:var sparser::mv8061 :isa sparser::be :subject sparser::mv8060 :predicate sparser::mv8064
  :present "PRESENT")
 (:var sparser::mv8060 :isa sparser::what)
 (:var sparser::mv8064 :isa sparser::significance :agent sparser::mv8058 :has-determiner "THE"
  :modifier sparser::mv8063)
 (:var sparser::mv8058 :isa sparser::protein :context sparser::mv8059 :raw-text "TP53" :uid
  "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv8059 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv8063 :isa sparser::mutation :raw-text "mutation"))

___________________
11: "What is the mutation significance of TP53 for ovarian cancer?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 for ovarian cancer" 12
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 for ovarian cancer?"
 (:var sparser::mv8072 :isa sparser::be :subject sparser::mv8071 :predicate sparser::mv8075
  :present "PRESENT")
 (:var sparser::mv8071 :isa sparser::what)
 (:var sparser::mv8075 :isa sparser::significance :result sparser::mv8070 :agent sparser::mv8069
  :has-determiner "THE" :modifier sparser::mv8074)
 (:var sparser::mv8070 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv8069 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv8074 :isa sparser::mutation :raw-text "mutation"))

___________________
12: "What are synonyms for BRAF?"

                    source-start
e9    BE            1 "What are synonyms for BRAF" 6
                    question-mark
                    end-of-source
("What are synonyms for BRAF?"
 (:var sparser::mv8081 :isa sparser::be :subject sparser::mv8080 :predicate sparser::mv8082
  :present "PRESENT")
 (:var sparser::mv8080 :isa sparser::what)
 (:var sparser::mv8082 :isa sparser::has-synonym :item sparser::mv8084)
 (:var sparser::mv8084 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
13: "What are some genes that are mutated in breast cancer?"

                    source-start
e20   BE            1 "What are some genes that are mutated in breast cancer" 11
                    question-mark
                    end-of-source
("What are some genes that are mutated in breast cancer?"
 (:var sparser::mv8088 :isa sparser::be :subject sparser::mv8087 :predicate sparser::mv8090
  :present "PRESENT")
 (:var sparser::mv8087 :isa sparser::what)
 (:var sparser::mv8090 :isa sparser::gene :predication sparser::mv8095 :quantifier sparser::mv8089
  :raw-text "genes")
 (:var sparser::mv8095 :isa sparser::mutation :object sparser::mv8090 :that-rel t :context
  sparser::mv8086 :present "PRESENT" :raw-text "mutated")
 (:var sparser::mv8086 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv8089 :isa some :word "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    source-start
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    question-mark
                    end-of-source
("what genes are mutated in breast cancer?"
 (:var sparser::mv8103 :isa sparser::mutation :object sparser::mv8099 :context sparser::mv8097
  :present "PRESENT" :raw-text "mutated")
 (:var sparser::mv8099 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv8097 :isa sparser::cancer :name "breast cancer" :uid "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    source-start
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    question-mark
                    end-of-source
("Does phosphorylation at S221 activate MAP2K2?"
 (:var sparser::mv8117 :isa sparser::polar-question :statement sparser::mv8115)
 (:var sparser::mv8115 :isa sparser::bio-activate :agent sparser::mv8107 :object sparser::mv8105
  :raw-text "activate")
 (:var sparser::mv8107 :isa sparser::phosphorylate :site sparser::mv8114 :raw-text
  "phosphorylation")
 (:var sparser::mv8114 :isa sparser::residue-on-protein :raw-text "S221" :position sparser::mv8112
  :amino-acid sparser::mv8110)
 (:var sparser::mv8112 :isa number :value 221)
 (:var sparser::mv8110 :isa sparser::amino-acid :name "serine" :letter "S")
 (:var sparser::mv8105 :isa sparser::protein :raw-text "MAP2K2" :uid "UP:P36507" :name
  "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    source-start
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    question-mark
                    end-of-source
("Does phosphorylation at S222 activate MAP2K1?"
 (:var sparser::mv8130 :isa sparser::polar-question :statement sparser::mv8128)
 (:var sparser::mv8128 :isa sparser::bio-activate :agent sparser::mv8120 :object sparser::mv8118
  :raw-text "activate")
 (:var sparser::mv8120 :isa sparser::phosphorylate :site sparser::mv8127 :raw-text
  "phosphorylation")
 (:var sparser::mv8127 :isa sparser::residue-on-protein :raw-text "S222" :position sparser::mv8125
  :amino-acid sparser::mv8123)
 (:var sparser::mv8125 :isa number :value 222)
 (:var sparser::mv8123 :isa sparser::amino-acid :name "serine" :letter "S")
 (:var sparser::mv8118 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    source-start
e12   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    end-of-source
("Simulate the MAP2K1-MAPK1 complex"
 (:var sparser::mv8133 :isa sparser::simulate :object sparser::mv8137 :present "PRESENT" :raw-text
  "Simulate")
 (:var sparser::mv8137 :isa sparser::bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1"
  :component sparser::mv8132 :component sparser::mv8131)
 (:var sparser::mv8132 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv8131 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
18: "What are the members of ERK?"

                    source-start
e12   BE            1 "What are the members of ERK" 7
                    question-mark
                    end-of-source
("What are the members of ERK?"
 (:var sparser::mv8139 :isa sparser::be :subject sparser::mv8138 :predicate sparser::mv8141
  :present "PRESENT")
 (:var sparser::mv8138 :isa sparser::what)
 (:var sparser::mv8141 :isa member :set sparser::mv8143 :has-determiner "THE")
 (:var sparser::mv8143 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv8146 :isa sparser::be :subject sparser::mv8145 :predicate sparser::mv8148
  :present "PRESENT")
 (:var sparser::mv8145 :isa sparser::what)
 (:var sparser::mv8148 :isa member :set sparser::mv8150 :has-determiner "THE")
 (:var sparser::mv8150 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
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
 (:var sparser::mv8153 :isa sparser::be :subject sparser::mv8152 :predicate sparser::mv8155
  :present "PRESENT")
 (:var sparser::mv8152 :isa sparser::what)
 (:var sparser::mv8155 :isa member :set sparser::mv8157 :has-determiner "THE")
 (:var sparser::mv8157 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
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
 (:var sparser::mv8160 :isa sparser::be :subject sparser::mv8159 :predicate sparser::mv8162
  :present "PRESENT")
 (:var sparser::mv8159 :isa sparser::what)
 (:var sparser::mv8162 :isa member :set sparser::mv8168 :has-determiner "THE")
 (:var sparser::mv8168 :isa sparser::protein-family :has-determiner "THE" :raw-text "RAF" :name
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
 (:var sparser::mv8172 :isa sparser::be :subject sparser::mv8171 :predicate sparser::mv8174
  :present "PRESENT")
 (:var sparser::mv8171 :isa sparser::what)
 (:var sparser::mv8174 :isa member :set sparser::mv8170 :has-determiner "THE")
 (:var sparser::mv8170 :isa sparser::protein-family :has-determiner "THE" :raw-text "RAS family"
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
 (:var sparser::mv8179 :isa sparser::be :subject sparser::mv8178 :predicate sparser::mv8182
  :present "PRESENT")
 (:var sparser::mv8178 :isa sparser::what)
 (:var sparser::mv8182 :isa sparser::has-name :item sparser::mv8185 :quantifier sparser::mv8180)
 (:var sparser::mv8185 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv8180 :isa sparser::another :word "another"))

___________________
24: "What is another name for MAP2K1?"

                    source-start
e14   BE            1 "What is another name for MAP2K1" 10
                    question-mark
                    end-of-source
("What is another name for MAP2K1?"
 (:var sparser::mv8189 :isa sparser::be :subject sparser::mv8188 :predicate sparser::mv8192
  :present "PRESENT")
 (:var sparser::mv8188 :isa sparser::what)
 (:var sparser::mv8192 :isa sparser::has-name :item sparser::mv8187 :quantifier sparser::mv8190)
 (:var sparser::mv8187 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv8190 :isa sparser::another :word "another"))

___________________
25: "How does STAT3 affect c-fos"

                    source-start
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    end-of-source
("How does STAT3 affect c-fos"
 (:var sparser::mv8200 :isa sparser::affect :manner sparser::mv8198 :agent sparser::mv8196 :object
  sparser::mv8197 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv8198 :isa sparser::how)
 (:var sparser::mv8196 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8197 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    source-start
e11   LIST          1 "List some genes regulated by elk1" 8
                    end-of-source
("List some genes regulated by elk1"
 (:var sparser::mv8202 :isa list :theme sparser::mv8204 :present "PRESENT")
 (:var sparser::mv8204 :isa sparser::gene :predication sparser::mv8205 :quantifier sparser::mv8203
  :raw-text "genes")
 (:var sparser::mv8205 :isa sparser::regulate :object sparser::mv8204 :agent sparser::mv8201 :past
  "PAST" :raw-text "regulated")
 (:var sparser::mv8201 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv8203 :isa some :word "some"))

___________________
27: "List some of the genes regulated by elk1"

                    source-start
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    end-of-source
("List some of the genes regulated by elk1"
 (:var sparser::mv8209 :isa list :theme sparser::mv8213 :present "PRESENT")
 (:var sparser::mv8213 :isa sparser::gene :predication sparser::mv8214 :quantifier sparser::mv8210
  :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv8214 :isa sparser::regulate :object sparser::mv8213 :agent sparser::mv8208 :past
  "PAST" :raw-text "regulated")
 (:var sparser::mv8208 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv8210 :isa some :word "some"))

___________________
28: "List the genes regulated by elk1"

                    source-start
e12   LIST          1 "List the genes regulated by elk1" 8
                    end-of-source
("List the genes regulated by elk1"
 (:var sparser::mv8220 :isa list :theme sparser::mv8222 :present "PRESENT")
 (:var sparser::mv8222 :isa sparser::gene :predication sparser::mv8223 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv8223 :isa sparser::regulate :object sparser::mv8222 :agent sparser::mv8219 :past
  "PAST" :raw-text "regulated")
 (:var sparser::mv8219 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    source-start
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    question-mark
                    end-of-source
("What are the common upstream regulators of AKT1 and BRAF?"
 (:var sparser::mv8228 :isa sparser::be :subject sparser::mv8227 :predicate sparser::mv8233
  :present "PRESENT")
 (:var sparser::mv8227 :isa sparser::what)
 (:var sparser::mv8233 :isa sparser::regulator :theme sparser::mv8237 :has-determiner "THE"
  :predication sparser::mv8230 :context sparser::mv8231 :raw-text "regulators")
 (:var sparser::mv8237 :isa sparser::collection :raw-text "AKT1 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv8226 sparser::mv8236))
 (:var sparser::mv8226 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv8236 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv8230 :isa sparser::common)
 (:var sparser::mv8231 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    source-start
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    question-mark
                    end-of-source
("What are the common upstreams of AKT and BRAF?"
 (:var sparser::mv8240 :isa sparser::be :subject sparser::mv8239 :predicate sparser::mv8243
  :present "PRESENT")
 (:var sparser::mv8239 :isa sparser::what)
 (:var sparser::mv8243 :isa sparser::upstream-segment :pathwaycomponent sparser::mv8248
  :has-determiner "THE" :predication sparser::mv8242 :raw-text "upstreams")
 (:var sparser::mv8248 :isa sparser::collection :raw-text "AKT and BRAF" :type
  sparser::protein-family :number 2 :items (sparser::mv8245 sparser::mv8247))
 (:var sparser::mv8245 :isa sparser::protein-family :raw-text "AKT" :name "Rac" :count 3
  :family-members
  ((sparser::protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
   (sparser::protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
   (sparser::protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
  :uid "FA:03066")
 (:var sparser::mv8247 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv8242 :isa sparser::common))

___________________
31: "What are the common upstreams of AKT1 and BRAF?"

                    source-start
e18   BE            1 "What are the common upstreams of AKT1 and BRAF" 11
                    question-mark
                    end-of-source
("What are the common upstreams of AKT1 and BRAF?"
 (:var sparser::mv8252 :isa sparser::be :subject sparser::mv8251 :predicate sparser::mv8255
  :present "PRESENT")
 (:var sparser::mv8251 :isa sparser::what)
 (:var sparser::mv8255 :isa sparser::upstream-segment :pathwaycomponent sparser::mv8259
  :has-determiner "THE" :predication sparser::mv8254 :raw-text "upstreams")
 (:var sparser::mv8259 :isa sparser::collection :raw-text "AKT1 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv8250 sparser::mv8258))
 (:var sparser::mv8250 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv8258 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv8254 :isa sparser::common))

___________________
32: "What are the genes that smad2 regulates?"

                    source-start
e16   BE            1 "What are the genes that smad2 regulates" 9
                    question-mark
                    end-of-source
("What are the genes that smad2 regulates?"
 (:var sparser::mv8263 :isa sparser::be :subject sparser::mv8262 :predicate sparser::mv8265
  :present "PRESENT")
 (:var sparser::mv8262 :isa sparser::what)
 (:var sparser::mv8265 :isa sparser::gene :predication sparser::mv8267 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv8267 :isa sparser::regulate :object sparser::mv8265 :that-rel t :agent
  sparser::mv8261 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv8261 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    source-start
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    question-mark
                    end-of-source
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:var sparser::mv8272 :isa sparser::be :subject sparser::mv8271 :predicate sparser::mv8274
  :present "PRESENT")
 (:var sparser::mv8271 :isa sparser::what)
 (:var sparser::mv8274 :isa sparser::micro-rna :predication sparser::mv8276 :has-determiner "THE"
  :raw-text "miRNAs")
 (:var sparser::mv8276 :isa sparser::regulate :agent sparser::mv8274 :that-rel t :object
  sparser::mv8280 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv8280 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type
  sparser::protein :number 5 :items
  (sparser::mv8277 sparser::mv8278 sparser::mv8268 sparser::mv8269 sparser::mv8270))
 (:var sparser::mv8277 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv8278 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv8268 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8269 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv8270 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    source-start
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    end-of-source
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:var sparser::mv8283 :isa sparser::be :subject sparser::mv8282 :predicate sparser::mv8285
  :present "PRESENT")
 (:var sparser::mv8282 :isa sparser::what)
 (:var sparser::mv8285 :isa sparser::micro-rna :predication sparser::mv8287 :has-determiner "THE"
  :raw-text "miRNAs")
 (:var sparser::mv8287 :isa sparser::regulate :agent sparser::mv8285 :that-rel t :object
  sparser::mv8291 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv8291 :isa sparser::collection :raw-text "EGFR, SRF, and STAT3" :type
  sparser::protein :number 3 :items (sparser::mv8288 sparser::mv8289 sparser::mv8281))
 (:var sparser::mv8288 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv8289 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv8281 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    source-start
e12   BE            1 "What are the regulators of SRF" 7
                    question-mark
                    end-of-source
("What are the regulators of SRF?"
 (:var sparser::mv8293 :isa sparser::be :subject sparser::mv8292 :predicate sparser::mv8295
  :present "PRESENT")
 (:var sparser::mv8292 :isa sparser::what)
 (:var sparser::mv8295 :isa sparser::regulator :theme sparser::mv8297 :has-determiner "THE"
  :raw-text "regulators")
 (:var sparser::mv8297 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    source-start
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    question-mark
                    end-of-source
("What does STAT3 regulate in the liver?"
 (:var sparser::mv8302 :isa sparser::regulate :object sparser::mv8300 :agent sparser::mv8299 :organ
  sparser::mv8305 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv8300 :isa sparser::what)
 (:var sparser::mv8299 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8305 :isa sparser::liver :has-determiner "THE"))

___________________
37: "What does it regulate in the liver?"

                    source-start
e14   REGULATE      1 "What does it regulate in the liver" 8
                    question-mark
                    end-of-source
("What does it regulate in the liver?"
 (:var sparser::mv8310 :isa sparser::regulate :object sparser::mv8307 :|agent-OR-cause|
  sparser::mv8309 :organ sparser::mv8313 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv8307 :isa sparser::what)
 (:var sparser::mv8309 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv8313 :isa sparser::liver :has-determiner "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    source-start
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    question-mark
                    end-of-source
("What genes are regulated by SMAD2?"
 (:var sparser::mv8321 :isa sparser::regulate :object sparser::mv8317 :agent sparser::mv8315
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv8317 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv8315 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    source-start
e12   REGULATE      1 "What genes are regulated by SMDA2" 8
                    question-mark
                    end-of-source
("What genes are regulated by SMDA2?"
 (:var sparser::mv8329 :isa sparser::regulate :object sparser::mv8325 :agent sparser::mv8323
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv8325 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv8323 :isa sparser::bio-entity :name "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    source-start
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    question-mark
                    end-of-source
("What genes are regulated by SRF?"
 (:var sparser::mv8337 :isa sparser::regulate :object sparser::mv8332 :agent sparser::mv8336
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv8332 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv8336 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
41: "Which of these are regulated by SMAD2?"

                    source-start
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    question-mark
                    end-of-source
("Which of these are regulated by SMAD2?"
 (:var sparser::mv8346 :isa sparser::regulate :|affected-process-OR-object| sparser::mv8342 :agent
  sparser::mv8339 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv8342 :isa sparser::these :quantifier sparser::mv8340 :word "these")
 (:var sparser::mv8340 :isa sparser::which)
 (:var sparser::mv8339 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
42: "Which of these are regulated by SMDA2?"

                    source-start
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    question-mark
                    end-of-source
("Which of these are regulated by SMDA2?"
 (:var sparser::mv8356 :isa sparser::regulate :|affected-process-OR-object| sparser::mv8352 :agent
  sparser::mv8349 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv8352 :isa sparser::these :quantifier sparser::mv8350 :word "these")
 (:var sparser::mv8350 :isa sparser::which)
 (:var sparser::mv8349 :isa sparser::bio-entity :name "SMDA2"))

___________________
43: "Which pathways use these?"

                    source-start
e7    BIO-USE       1 "Which pathways use these" 5
                    question-mark
                    end-of-source
("Which pathways use these?"
 (:var sparser::mv8362 :isa sparser::bio-use :agent sparser::mv8360 :object sparser::mv8363
  :present "PRESENT" :raw-text "use")
 (:var sparser::mv8360 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv8363 :isa sparser::these :word "these"))

___________________
44: "Where does STAT3 regulate the expression of c-fos?"

                    source-start
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    question-mark
                    end-of-source
("Where does STAT3 regulate the expression of c-fos?"
 (:var sparser::mv8368 :isa sparser::regulate :location sparser::mv8366 :agent sparser::mv8364
  :affected-process sparser::mv8370 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv8366 :isa sparser::where)
 (:var sparser::mv8364 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8370 :isa sparser::gene-transcript-express :object sparser::mv8365
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv8365 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
45: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    source-start
e35   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    end-of-source
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:var sparser::mv8390 :isa sparser::polar-question :statement sparser::mv8377)
 (:var sparser::mv8377 :isa sparser::tell :agent sparser::mv8376 :theme sparser::mv8373
  :beneficiary sparser::mv8378 :modal "CAN")
 (:var sparser::mv8376 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv8373 :isa sparser::transcription-factor :predication sparser::mv8388 :quantifier
  sparser::mv8379 :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv8388 :isa sparser::share :object sparser::mv8373 :that-rel t :participant
  sparser::mv8387 :modal "CAN" :raw-text "shared")
 (:var sparser::mv8387 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv8374 sparser::mv8386))
 (:var sparser::mv8374 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv8386 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv8379 :isa sparser::all :word "all")
 (:var sparser::mv8378 :isa sparser::interlocutor :name "speaker"))

___________________
46: "can you tell me which transcription factors are shared by elk1 and srf"

                    source-start
e28   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    end-of-source
("can you tell me which transcription factors are shared by elk1 and srf"
 (:var sparser::mv8406 :isa sparser::polar-question :statement sparser::mv8395)
 (:var sparser::mv8395 :isa sparser::tell :agent sparser::mv8394 :theme sparser::mv8404 :theme
  sparser::mv8396 :modal "CAN")
 (:var sparser::mv8394 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv8404 :isa sparser::share :object sparser::mv8391 :participant sparser::mv8403
  :modal "CAN" :raw-text "shared")
 (:var sparser::mv8391 :isa sparser::transcription-factor :has-determiner "WHICH" :raw-text
  "transcription factors")
 (:var sparser::mv8403 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv8392 sparser::mv8402))
 (:var sparser::mv8392 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv8402 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv8396 :isa sparser::interlocutor :name "speaker"))

___________________
47: "what are the regulators of SRF?"

                    source-start
e12   BE            1 "what are the regulators of SRF" 7
                    question-mark
                    end-of-source
("what are the regulators of SRF?"
 (:var sparser::mv8408 :isa sparser::be :subject sparser::mv8407 :predicate sparser::mv8410
  :present "PRESENT")
 (:var sparser::mv8407 :isa sparser::what)
 (:var sparser::mv8410 :isa sparser::regulator :theme sparser::mv8412 :has-determiner "THE"
  :raw-text "regulators")
 (:var sparser::mv8412 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
48: "what does stat regulate"

                    source-start
e5    REGULATE      1 "what does stat regulate" 5
                    end-of-source
("what does stat regulate"
 (:var sparser::mv8417 :isa sparser::regulate :object sparser::mv8414 :agent sparser::mv8416
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv8414 :isa sparser::what)
 (:var sparser::mv8416 :isa sparser::protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))

___________________
49: "what is erbb?"

                    source-start
e4    BE            1 "what is erbb" 4
                    question-mark
                    end-of-source
("what is erbb?"
 (:var sparser::mv8419 :isa sparser::be :subject sparser::mv8418 :predicate sparser::mv8420
  :present "PRESENT")
 (:var sparser::mv8418 :isa sparser::what)
 (:var sparser::mv8420 :isa sparser::protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
50: "Is STAT3 involved in apoptosis?"

                    source-start
e10   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    question-mark
                    end-of-source
("Is STAT3 involved in apoptosis?"
 (:var sparser::mv8427 :isa sparser::polar-question :statement sparser::mv8423)
 (:var sparser::mv8423 :isa sparser::involve :theme sparser::mv8421 :theme sparser::mv8425 :past
  "PAST")
 (:var sparser::mv8421 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8425 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
51: "Is STAT3 involved in apoptotic regulation?"

                    source-start
e13   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    question-mark
                    end-of-source
("Is STAT3 involved in apoptotic regulation?"
 (:var sparser::mv8436 :isa sparser::polar-question :statement sparser::mv8430)
 (:var sparser::mv8430 :isa sparser::involve :theme sparser::mv8428 :theme sparser::mv8434 :past
  "PAST")
 (:var sparser::mv8428 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8434 :isa sparser::regulate :|cellular-process-OR-agent| sparser::mv8432
  :raw-text "regulation")
 (:var sparser::mv8432 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
52: "Is STAT3 involved in regulating apoptosis?"

                    source-start
e12   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    question-mark
                    end-of-source
("Is STAT3 involved in regulating apoptosis?"
 (:var sparser::mv8444 :isa sparser::polar-question :statement sparser::mv8439)
 (:var sparser::mv8439 :isa sparser::involve :theme sparser::mv8437 :theme sparser::mv8441 :past
  "PAST")
 (:var sparser::mv8437 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8441 :isa sparser::regulate :affected-process sparser::mv8442 :progressive
  "PROGRESSIVE" :raw-text "regulating")
 (:var sparser::mv8442 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
53: "What apoptotic genes are regulated by STAT3"

                    source-start
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    end-of-source
("What apoptotic genes are regulated by STAT3"
 (:var sparser::mv8453 :isa sparser::regulate :object sparser::mv8449 :agent sparser::mv8445
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv8449 :isa sparser::gene :has-determiner "WHAT" :cellular-process sparser::mv8447
  :raw-text "genes")
 (:var sparser::mv8447 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv8445 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
54: "List the apoptotic genes"

                    source-start
e8    LIST          1 "List the apoptotic genes" 5
                    end-of-source
("List the apoptotic genes"
 (:var sparser::mv8455 :isa list :theme sparser::mv8459 :present "PRESENT")
 (:var sparser::mv8459 :isa sparser::gene :has-determiner "THE" :cellular-process sparser::mv8457
  :raw-text "genes")
 (:var sparser::mv8457 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
55: "What genes regulated by STAT3 are involved in apoptosis?"

                    source-start
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    question-mark
                    end-of-source
("What genes regulated by STAT3 are involved in apoptosis?"
 (:var sparser::mv8469 :isa sparser::involve :theme sparser::mv8462 :theme sparser::mv8468 :present
  "PRESENT")
 (:var sparser::mv8462 :isa sparser::gene :predication sparser::mv8463 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv8463 :isa sparser::regulate :object sparser::mv8462 :agent sparser::mv8460 :past
  "PAST" :raw-text "regulated")
 (:var sparser::mv8460 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8468 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
56: "List genes regulated by STAT3"

                    source-start
e9    LIST          1 "List genes regulated by STAT3" 7
                    end-of-source
("List genes regulated by STAT3"
 (:var sparser::mv8473 :isa list :theme sparser::mv8474 :present "PRESENT")
 (:var sparser::mv8474 :isa sparser::gene :predication sparser::mv8475 :raw-text "genes")
 (:var sparser::mv8475 :isa sparser::regulate :object sparser::mv8474 :agent sparser::mv8472 :past
  "PAST" :raw-text "regulated")
 (:var sparser::mv8472 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
57: "What genes are involved in apoptosis?"

                    source-start
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    question-mark
                    end-of-source
("What genes are involved in apoptosis?"
 (:var sparser::mv8484 :isa sparser::involve :theme sparser::mv8479 :theme sparser::mv8483 :present
  "PRESENT")
 (:var sparser::mv8479 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv8483 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
58: "What genes that STAT3 regulates are involved in apoptosis?"

                    source-start
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    question-mark
                    end-of-source
("What genes that STAT3 regulates are involved in apoptosis?"
 (:var sparser::mv8495 :isa sparser::involve :theme sparser::mv8488 :theme sparser::mv8494 :present
  "PRESENT")
 (:var sparser::mv8488 :isa sparser::gene :predication sparser::mv8490 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv8490 :isa sparser::regulate :object sparser::mv8488 :that-rel t :agent
  sparser::mv8486 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv8486 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8494 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
59: "List the genes regulated by STAT3"

                    source-start
e12   LIST          1 "List the genes regulated by STAT3" 8
                    end-of-source
("List the genes regulated by STAT3"
 (:var sparser::mv8498 :isa list :theme sparser::mv8500 :present "PRESENT")
 (:var sparser::mv8500 :isa sparser::gene :predication sparser::mv8501 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv8501 :isa sparser::regulate :object sparser::mv8500 :agent sparser::mv8497 :past
  "PAST" :raw-text "regulated")
 (:var sparser::mv8497 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
60: "List the STAT3 regulated genes"

                    source-start
e11   LIST          1 "List the STAT3 regulated genes" 7
                    end-of-source
("List the STAT3 regulated genes"
 (:var sparser::mv8505 :isa list :theme sparser::mv8508 :present "PRESENT")
 (:var sparser::mv8508 :isa sparser::gene :has-determiner "THE" :predication sparser::mv8507
  :raw-text "genes")
 (:var sparser::mv8507 :isa sparser::regulate :object sparser::mv8508 :agent sparser::mv8504
  :raw-text "regulated")
 (:var sparser::mv8504 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
61: "What kinases are regulated by STAT3?"

                    source-start
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    question-mark
                    end-of-source
("What kinases are regulated by STAT3?"
 (:var sparser::mv8515 :isa sparser::regulate :object sparser::mv8511 :agent sparser::mv8509
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv8511 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv8509 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
62: "What kinases are involved in apoptosis?"

                    source-start
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    question-mark
                    end-of-source
("What kinases are involved in apoptosis?"
 (:var sparser::mv8523 :isa sparser::involve :theme sparser::mv8518 :theme sparser::mv8522 :present
  "PRESENT")
 (:var sparser::mv8518 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv8522 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
63: "What STAT3 regulated genes are involved in aptosis"

                    source-start
e17   IN            1 "What STAT3 regulated genes are involved in aptosis" 10
                    end-of-source
("What STAT3 regulated genes are involved in aptosis"
 (:var sparser::mv8535 :isa sparser::wh-question :statement sparser::mv8534 :var nil :wh
  sparser::what)
 (:var sparser::mv8534 :isa sparser::prepositional-phrase :pobj sparser::mv8532 :prep "IN")
 (:var sparser::mv8532 :isa sparser::aptosis))

___________________
64: "Let me know if any of the genes stat3 regulates are involved in apoptosis"

                    source-start
e31   LET           1 "Let me know if any of the genes stat3 regulates are involved in apoptosis" 16
                    end-of-source
("Let me know if any of the genes stat3 regulates are involved in apoptosis"
 (:var sparser::mv8537 :isa let :complement sparser::mv8554 :present "PRESENT")
 (:var sparser::mv8554 :isa sparser::know :agent sparser::mv8538 :statement sparser::mv8553
  :present "PRESENT")
 (:var sparser::mv8538 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv8553 :isa sparser::wh-question :statement sparser::mv8550 :wh if)
 (:var sparser::mv8550 :isa sparser::involve :theme sparser::mv8544 :theme sparser::mv8549 :present
  "PRESENT")
 (:var sparser::mv8544 :isa sparser::gene :quantifier sparser::mv8541 :predication sparser::mv8545
  :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv8541 :isa sparser::any :word "any")
 (:var sparser::mv8545 :isa sparser::regulate :object sparser::mv8544 :agent sparser::mv8536
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv8536 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8549 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
65: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    source-start
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    end-of-source
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:var sparser::mv8556 :isa let :complement sparser::mv8574 :present "PRESENT")
 (:var sparser::mv8574 :isa sparser::know :agent sparser::mv8557 :statement sparser::mv8573
  :present "PRESENT")
 (:var sparser::mv8557 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv8573 :isa sparser::wh-question :statement sparser::mv8570 :wh sparser::whether)
 (:var sparser::mv8570 :isa sparser::involve :theme sparser::mv8564 :theme sparser::mv8569 :present
  "PRESENT")
 (:var sparser::mv8564 :isa sparser::gene :quantifier sparser::mv8561 :predication sparser::mv8565
  :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv8561 :isa sparser::any :word "any")
 (:var sparser::mv8565 :isa sparser::regulate :object sparser::mv8564 :agent sparser::mv8555
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv8555 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8569 :isa sparser::apoptosis :raw-text "apoptosis"))

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
 (:var sparser::mv8604 :isa sparser::tell :theme sparser::mv8613 :beneficiary sparser::mv8605
  :present "PRESENT")
 (:var sparser::mv8613 :isa sparser::wh-question :statement sparser::mv8611 :wh if)
 (:var sparser::mv8611 :isa sparser::involve :theme sparser::mv8603 :theme sparser::mv8610 :present
  "PRESENT")
 (:var sparser::mv8603 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8610 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv8605 :isa sparser::interlocutor :name "speaker"))

___________________
69: "Tell me whether stat3 is involved in apoptosis"

                    source-start
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    end-of-source
("Tell me whether stat3 is involved in apoptosis"
 (:var sparser::mv8615 :isa sparser::tell :theme sparser::mv8625 :theme sparser::mv8616 :present
  "PRESENT")
 (:var sparser::mv8625 :isa sparser::wh-question :statement sparser::mv8623 :wh sparser::whether)
 (:var sparser::mv8623 :isa sparser::involve :theme sparser::mv8614 :theme sparser::mv8622 :present
  "PRESENT")
 (:var sparser::mv8614 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8622 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv8616 :isa sparser::interlocutor :name "speaker"))

___________________
70: "What are STAT3 regulated genes that are involved in apoptosis. "

                    source-start
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    period
                    end-of-source
("What are STAT3 regulated genes that are involved in apoptosis."
 (:var sparser::mv8628 :isa sparser::be :subject sparser::mv8627 :predicate sparser::mv8630
  :present "PRESENT")
 (:var sparser::mv8627 :isa sparser::what)
 (:var sparser::mv8630 :isa sparser::gene :predication sparser::mv8636 :predication sparser::mv8629
  :raw-text "genes")
 (:var sparser::mv8636 :isa sparser::involve :theme sparser::mv8630 :that-rel t :theme
  sparser::mv8635 :present "PRESENT")
 (:var sparser::mv8635 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv8629 :isa sparser::regulate :object sparser::mv8630 :agent sparser::mv8626
  :raw-text "regulated")
 (:var sparser::mv8626 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis?"

                    source-start
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    question-mark
                    end-of-source
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:var sparser::mv8640 :isa sparser::be :subject sparser::mv8639 :predicate sparser::mv8642
  :present "PRESENT")
 (:var sparser::mv8639 :isa sparser::what)
 (:var sparser::mv8642 :isa sparser::gene :predication sparser::mv8648 :predication sparser::mv8641
  :raw-text "genes")
 (:var sparser::mv8648 :isa sparser::involve :theme sparser::mv8642 :that-rel t :theme
  sparser::mv8647 :present "PRESENT")
 (:var sparser::mv8647 :isa sparser::apoptosis :raw-text "apoptosis")
 (:var sparser::mv8641 :isa sparser::regulate :object sparser::mv8642 :agent sparser::mv8638
  :raw-text "regulated")
 (:var sparser::mv8638 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
72: "What genes downstream of stat3 are involved in apoptosis?"

                    source-start
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    question-mark
                    end-of-source
("What genes downstream of stat3 are involved in apoptosis?"
 (:var sparser::mv8660 :isa sparser::involve :theme sparser::mv8653 :theme sparser::mv8659 :present
  "PRESENT")
 (:var sparser::mv8653 :isa sparser::downstream-segment :pathwaycomponent sparser::mv8650
  :has-determiner "WHAT" :modifier sparser::mv8652 :raw-text "downstream")
 (:var sparser::mv8650 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8652 :isa sparser::gene :raw-text "genes")
 (:var sparser::mv8659 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
73: "What is the involvement of stat3 in apoptotic regulation?"

                    source-start
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    question-mark
                    end-of-source
("What is the involvement of stat3 in apoptotic regulation?"
 (:var sparser::mv8665 :isa sparser::be :subject sparser::mv8664 :predicate sparser::mv8667
  :present "PRESENT")
 (:var sparser::mv8664 :isa sparser::what)
 (:var sparser::mv8667 :isa sparser::involve :theme sparser::mv8672 :participant sparser::mv8663
  :has-determiner "THE")
 (:var sparser::mv8672 :isa sparser::regulate :|cellular-process-OR-agent| sparser::mv8670
  :raw-text "regulation")
 (:var sparser::mv8670 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv8663 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
74: "What pathways involve calcium?"

                    source-start
e6    INVOLVE       1 "What pathways involve calcium" 5
                    question-mark
                    end-of-source
("What pathways involve calcium?"
 (:var sparser::mv8677 :isa sparser::involve :theme sparser::mv8676 :theme sparser::mv8678 :present
  "PRESENT")
 (:var sparser::mv8676 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv8678 :isa sparser::calcium :raw-text "calcium"))

___________________
75: "What processes involve srf"

                    source-start
e7    INVOLVE       1 "What processes involve srf" 5
                    end-of-source
("What processes involve srf"
 (:var sparser::mv8682 :isa sparser::involve :theme sparser::mv8680 :theme sparser::mv8683 :present
  "PRESENT")
 (:var sparser::mv8680 :isa sparser::bio-process :has-determiner "WHAT" :raw-text "processes")
 (:var sparser::mv8683 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
76: "Which stat3 regulated genes are involved in apoptosis?"

                    source-start
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    question-mark
                    end-of-source
("Which stat3 regulated genes are involved in apoptosis?"
 (:var sparser::mv8692 :isa sparser::involve :theme sparser::mv8687 :theme sparser::mv8691 :present
  "PRESENT")
 (:var sparser::mv8687 :isa sparser::gene :has-determiner "WHICH" :predication sparser::mv8686
  :raw-text "genes")
 (:var sparser::mv8686 :isa sparser::regulate :object sparser::mv8687 :agent sparser::mv8684
  :raw-text "regulated")
 (:var sparser::mv8684 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8691 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
77: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    source-start
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    question-mark
                    end-of-source
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:var sparser::mv8705 :isa sparser::involve :theme sparser::mv8697 :theme sparser::mv8704 :present
  "PRESENT")
 (:var sparser::mv8697 :isa sparser::gene :organ sparser::mv8700 :has-determiner "WHICH"
  :predication sparser::mv8696 :raw-text "genes")
 (:var sparser::mv8700 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv8696 :isa sparser::regulate :object sparser::mv8697 :agent sparser::mv8694
  :raw-text "regulated")
 (:var sparser::mv8694 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8704 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
78: "Which stat3-regulated genes are involved in apoptosis?"

                    source-start
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    question-mark
                    end-of-source
("Which stat3-regulated genes are involved in apoptosis?"
 (:var sparser::mv8716 :isa sparser::involve :theme sparser::mv8711 :theme sparser::mv8715 :present
  "PRESENT")
 (:var sparser::mv8711 :isa sparser::gene :has-determiner "WHICH" :predication sparser::mv8710
  :raw-text "genes")
 (:var sparser::mv8710 :isa sparser::regulate :object sparser::mv8711 :agent sparser::mv8708
  :raw-text "regulated")
 (:var sparser::mv8708 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv8715 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
79: "Mek activates MAPK1."

                    source-start
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    period
                    end-of-source
("Mek activates MAPK1."
 (:var sparser::mv8720 :isa sparser::bio-activate :agent sparser::mv8719 :object sparser::mv8718
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv8719 :isa sparser::protein-family :raw-text "Mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv8718 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
80: "NRAS activates RAF."

                    source-start
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    period
                    end-of-source
("NRAS activates RAF."
 (:var sparser::mv8722 :isa sparser::bio-activate :agent sparser::mv8721 :object sparser::mv8723
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv8721 :isa sparser::protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
 (:var sparser::mv8723 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
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
 (:var sparser::mv8726 :isa sparser::phosphorylate :agent sparser::mv8724 :substrate
  sparser::mv8725 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv8724 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv8725 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
82: "DUSP6 dephosphorylates MAPK1"

                    source-start
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    end-of-source
("DUSP6 dephosphorylates MAPK1"
 (:var sparser::mv8729 :isa sparser::dephosphorylate :agent sparser::mv8727 :substrate
  sparser::mv8728 :present "PRESENT" :raw-text "dephosphorylates")
 (:var sparser::mv8727 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
 (:var sparser::mv8728 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
83: "ELK1 positively regulates FOS."

                    source-start
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    period
                    end-of-source
("ELK1 positively regulates FOS."
 (:var sparser::mv8731 :isa sparser::upregulate :agent sparser::mv8730 :object sparser::mv8732
  :present "PRESENT" :raw-text "positively regulates")
 (:var sparser::mv8730 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv8732 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
84: "EGFR binds the growth factor ligand EGF."

                    source-start
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    period
                    end-of-source
("EGFR binds the growth factor ligand EGF."
 (:var sparser::mv8736 :isa sparser::binding :binder sparser::mv8735 :direct-bindee sparser::mv8739
  :present "PRESENT" :raw-text "binds")
 (:var sparser::mv8735 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv8739 :isa sparser::protein :has-determiner "THE" :modifier sparser::mv8734
  :modifier sparser::mv8738 :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv8734 :isa sparser::growth-factor :raw-text "growth factor")
 (:var sparser::mv8738 :isa sparser::ligand :raw-text "ligand"))

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
 (:var sparser::mv8746 :isa sparser::binding :binder sparser::mv8753 :direct-bindee sparser::mv8754
  :present "PRESENT" :raw-text "binds")
 (:var sparser::mv8753 :isa sparser::bio-complex :has-determiner "THE" :raw-text "EGFR-EGF"
  :component sparser::mv8744 :component sparser::mv8743)
 (:var sparser::mv8744 :isa sparser::protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv8743 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv8754 :isa sparser::bio-complex :quantifier sparser::mv8747 :raw-text "EGFR-EGF"
  :component sparser::mv8749 :component sparser::mv8748)
 (:var sparser::mv8747 :isa sparser::another :word "another")
 (:var sparser::mv8749 :isa sparser::protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv8748 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
87: "The EGFR-EGFR complex binds GRB2."

                    source-start
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    period
                    end-of-source
("The EGFR-EGFR complex binds GRB2."
 (:var sparser::mv8760 :isa sparser::binding :binder sparser::mv8762 :direct-bindee sparser::mv8755
  :present "PRESENT" :raw-text "binds")
 (:var sparser::mv8762 :isa sparser::bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR"
  :component sparser::mv8757 :component sparser::mv8757)
 (:var sparser::mv8757 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv8755 :isa sparser::protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))

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
 (:var sparser::mv8769 :isa sparser::binding :binder sparser::mv8765 :direct-bindee sparser::mv8766
  :present "PRESENT" :raw-text "binds")
 (:var sparser::mv8765 :isa sparser::protein :predication sparser::mv8768 :raw-text "GRB2" :uid
  "UP:P62993" :name "GRB2_HUMAN")
 (:var sparser::mv8768 :isa sparser::binding :direct-bindee sparser::mv8765 :binder sparser::mv8767
  :raw-text "bound")
 (:var sparser::mv8767 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv8766 :isa sparser::protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))

___________________
90: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    source-start
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    period
                    end-of-source
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:var sparser::mv8773 :isa sparser::binding :binder sparser::mv8771 :direct-bindee sparser::mv8774
  :present "PRESENT" :raw-text "binds")
 (:var sparser::mv8771 :isa sparser::protein :predication sparser::mv8772 :raw-text "SOS1" :uid
  "UP:Q07889" :name "SOS1_HUMAN")
 (:var sparser::mv8772 :isa sparser::binding :direct-bindee sparser::mv8771 :binder sparser::mv8770
  :raw-text "bound")
 (:var sparser::mv8770 :isa sparser::protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
 (:var sparser::mv8774 :isa sparser::protein :predication sparser::mv8781 :raw-text "NRAS" :uid
  "UP:P01111" :name "RASN_HUMAN")
 (:var sparser::mv8781 :isa sparser::binding :direct-bindee sparser::mv8774 :that-rel t :bindee
  sparser::mv8780 :present "PRESENT" :negation sparser::mv8777 :raw-text "bound")
 (:var sparser::mv8780 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv8777 :isa not :word "not"))

___________________
91: "SOS1-bound NRAS binds GTP."

                    source-start
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    period
                    end-of-source
("SOS1-bound NRAS binds GTP."
 (:var sparser::mv8786 :isa sparser::binding :binder sparser::mv8785 :direct-bindee sparser::mv8787
  :present "PRESENT" :raw-text "binds")
 (:var sparser::mv8785 :isa sparser::protein :predication sparser::mv8784 :raw-text "NRAS" :uid
  "UP:P01111" :name "RASN_HUMAN")
 (:var sparser::mv8784 :isa sparser::binding :direct-bindee sparser::mv8785 :binder sparser::mv8783
  :raw-text "bound")
 (:var sparser::mv8783 :isa sparser::protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
 (:var sparser::mv8787 :isa sparser::nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))

___________________
92: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    source-start
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    period
                    end-of-source
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:var sparser::mv8797 :isa sparser::binding :binder sparser::mv8791 :direct-bindee sparser::mv8798
  :present "PRESENT" :raw-text "binds")
 (:var sparser::mv8791 :isa sparser::protein :predication sparser::mv8799 :predication
  sparser::mv8790 :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
 (:var sparser::mv8799 :isa sparser::binding :direct-bindee sparser::mv8791 :that-rel t :bindee
  sparser::mv8788 :present "PRESENT" :negation sparser::mv8794 :raw-text "bound")
 (:var sparser::mv8788 :isa sparser::protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
 (:var sparser::mv8794 :isa not :word "not")
 (:var sparser::mv8790 :isa sparser::binding :direct-bindee sparser::mv8791 :binder sparser::mv8789
  :raw-text "bound")
 (:var sparser::mv8789 :isa sparser::nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
 (:var sparser::mv8798 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
93: "Undo"

                    source-start
e0    UNDO          1 "Undo" 2
                    end-of-source
("Undo" (:var sparser::mv8801 :isa sparser::undo :present "PRESENT" :raw-text "Undo"))

___________________
94: "How does BRAF affect MAP2K1?"

                    source-start
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    question-mark
                    end-of-source
("How does BRAF affect MAP2K1?"
 (:var sparser::mv8806 :isa sparser::affect :manner sparser::mv8803 :agent sparser::mv8805 :object
  sparser::mv8802 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv8803 :isa sparser::how)
 (:var sparser::mv8805 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv8802 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
95: "Let's highlight the downstream of AKT1."

                    source-start
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    period
                    end-of-source
("Let's highlight the downstream of AKT1."
 (:var sparser::mv8815 :isa sparser::explicit-suggestion :suggestion sparser::mv8809 :marker
  sparser::let-as-directive)
 (:var sparser::mv8809 :isa sparser::highlight :theme sparser::mv8811 :present "PRESENT")
 (:var sparser::mv8811 :isa sparser::downstream-segment :pathwaycomponent sparser::mv8808
  :has-determiner "THE" :raw-text "downstream")
 (:var sparser::mv8808 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
96: "Let's move phosphorylated MAPK1 to the bottom."

                    source-start
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    period
                    end-of-source
("Let's move phosphorylated MAPK1 to the bottom."
 (:var sparser::mv8824 :isa sparser::explicit-suggestion :suggestion sparser::mv8818 :marker
  sparser::let-as-directive)
 (:var sparser::mv8818 :isa sparser::move-something-somewhere :goal sparser::mv8822 :theme
  sparser::mv8817 :present "PRESENT")
 (:var sparser::mv8822 :isa sparser::bottom :has-determiner "THE")
 (:var sparser::mv8817 :isa sparser::protein :predication sparser::mv8819 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv8819 :isa sparser::phosphorylate :substrate sparser::mv8817 :raw-text
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
 (:var sparser::mv8841 :isa sparser::explicit-suggestion :suggestion sparser::mv8836 :marker
  sparser::let-as-directive)
 (:var sparser::mv8836 :isa sparser::show :at-relative-location sparser::mv8839
  :|statement-OR-theme| sparser::mv8835 :present "PRESENT")
 (:var sparser::mv8839 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv8835 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
99: "Does ELK1 decrease FOS in the model?"

                    source-start
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    question-mark
                    end-of-source
("Does ELK1 decrease FOS in the model?"
 (:var sparser::mv8852 :isa sparser::polar-question :statement sparser::mv8850)
 (:var sparser::mv8850 :isa sparser::decrease :agent sparser::mv8842 :object sparser::mv8846
  :raw-text "decrease")
 (:var sparser::mv8842 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv8846 :isa sparser::protein :info-context sparser::mv8849 :raw-text "FOS" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv8849 :isa sparser::model :has-determiner "THE"))

___________________
100: "Does ELK1 decrease the amount of FOS in the model?"

                    source-start
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    question-mark
                    end-of-source
("Does ELK1 decrease the amount of FOS in the model?"
 (:var sparser::mv8867 :isa sparser::polar-question :statement sparser::mv8864)
 (:var sparser::mv8864 :isa sparser::decrease :agent sparser::mv8853 :|affected-process-OR-object|
  sparser::mv8858 :raw-text "decrease")
 (:var sparser::mv8853 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv8858 :isa sparser::bio-amount :measured-item sparser::mv8860 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv8860 :isa sparser::protein :info-context sparser::mv8863 :raw-text "FOS" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv8863 :isa sparser::model :has-determiner "THE"))

___________________
101: "Does FOS decrease ELK1 in the model?"

                    source-start
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    question-mark
                    end-of-source
("Does FOS decrease ELK1 in the model?"
 (:var sparser::mv8878 :isa sparser::polar-question :statement sparser::mv8876)
 (:var sparser::mv8876 :isa sparser::decrease :agent sparser::mv8870 :object sparser::mv8868
  :raw-text "decrease")
 (:var sparser::mv8870 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv8868 :isa sparser::protein :info-context sparser::mv8875 :raw-text "ELK1" :uid
  "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv8875 :isa sparser::model :has-determiner "THE"))

___________________
102: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    source-start
e34   EVENT-RELATION  1 "Does FOS vanish if we increase the amount " 9
e27   OF            9 "of ELK1 10 fold" 14
                    question-mark
                    end-of-source
                    source-start
e34   S             1 "Does FOS vanish if we increase the amount " 9
e27   PP            9 "of ELK1 10 fold" 14
                    question-mark
                    end-of-source


___________________
103: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    source-start
e38   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    question-mark
                    end-of-source
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:var sparser::mv8927 :isa sparser::polar-question :statement sparser::mv8926)
 (:var sparser::mv8926 :isa sparser::event-relation :subordinated-event sparser::mv8924 :event
  sparser::mv8920)
 (:var sparser::mv8924 :isa sparser::wh-question :statement sparser::mv8921 :wh if)
 (:var sparser::mv8921 :isa sparser::increase :|agent-OR-cause| sparser::mv8908 :cause
  sparser::mv8919 :|affected-process-OR-object| sparser::mv8912 :raw-text "increase")
 (:var sparser::mv8908 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv8919 :isa sparser::measurement :number sparser::mv8916)
 (:var sparser::mv8916 :isa number :value 10)
 (:var sparser::mv8912 :isa sparser::bio-amount :measured-item sparser::mv8903 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv8903 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv8920 :isa sparser::vanish :agent sparser::mv8905 :raw-text "vanish")
 (:var sparser::mv8905 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    source-start
e34   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    question-mark
                    end-of-source
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:var sparser::mv8949 :isa sparser::polar-question :statement sparser::mv8948)
 (:var sparser::mv8948 :isa sparser::event-relation :subordinated-event sparser::mv8946 :event
  sparser::mv8943)
 (:var sparser::mv8946 :isa sparser::wh-question :statement sparser::mv8944 :wh if)
 (:var sparser::mv8944 :isa sparser::increase :|agent-OR-cause| sparser::mv8934 :cause
  sparser::mv8942 :object sparser::mv8929 :raw-text "increase")
 (:var sparser::mv8934 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv8942 :isa sparser::measurement :number sparser::mv8939)
 (:var sparser::mv8939 :isa number :value 10)
 (:var sparser::mv8929 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
 (:var sparser::mv8943 :isa sparser::vanish :agent sparser::mv8928 :raw-text "vanish")
 (:var sparser::mv8928 :isa sparser::protein :predication sparser::mv8931 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv8931 :isa sparser::phosphorylate :substrate sparser::mv8928 :raw-text
  "phosphorylated"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    source-start
e42   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    question-mark
                    end-of-source
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:var sparser::mv8975 :isa sparser::polar-question :statement sparser::mv8974)
 (:var sparser::mv8974 :isa sparser::event-relation :subordinated-event sparser::mv8972 :event
  sparser::mv8968)
 (:var sparser::mv8972 :isa sparser::wh-question :statement sparser::mv8969 :wh if)
 (:var sparser::mv8969 :isa sparser::increase :|agent-OR-cause| sparser::mv8956 :cause
  sparser::mv8967 :|affected-process-OR-object| sparser::mv8960 :raw-text "increase")
 (:var sparser::mv8956 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv8967 :isa sparser::measurement :number sparser::mv8964)
 (:var sparser::mv8964 :isa number :value 10)
 (:var sparser::mv8960 :isa sparser::bio-amount :measured-item sparser::mv8951 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv8951 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
 (:var sparser::mv8968 :isa sparser::vanish :agent sparser::mv8950 :raw-text "vanish")
 (:var sparser::mv8950 :isa sparser::protein :predication sparser::mv8953 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv8953 :isa sparser::phosphorylate :substrate sparser::mv8950 :raw-text
  "phosphorylated"))

___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    source-start
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    question-mark
                    end-of-source
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:var sparser::mv8987 :isa sparser::polar-question :statement sparser::mv8985)
 (:var sparser::mv8985 :isa sparser::increase :cause sparser::mv8979 :adverb sparser::mv8982
  :raw-text "increase")
 (:var sparser::mv8979 :isa sparser::bio-amount :measured-item sparser::mv8976 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv8976 :isa sparser::protein :predication sparser::mv8981 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv8981 :isa sparser::phosphorylate :substrate sparser::mv8976 :raw-text
  "phosphorylated")
 (:var sparser::mv8982 :isa sparser::ever :name "ever"))

___________________
107: "Is MAP2K1 bound to MAPK1 eventually high?"

                    source-start
e4    BE            1 "Is " 2
e1    PROTEIN       2 "MAP2K1 " 6
e12   BINDING       6 "bound to MAPK1 " 10
e10   HIGH          10 "eventually high" 12
                    question-mark
                    end-of-source
                    source-start
e4    PREPOSED-AUXILIARY  1 "Is " 2
e1    PROPER-NOUN   2 "MAP2K1 " 6
e12   VP+ED         6 "bound to MAPK1 " 10
e10   ADJECTIVE     10 "eventually high" 12
                    question-mark
                    end-of-source


___________________
108: "Is MAPK1 bound to MAP2K1 transient?"

                    source-start
e4    BE            1 "Is " 2
e1    PROTEIN       2 "MAPK1 " 4
e10   BINDING       4 "bound to MAP2K1 " 10
e8    TRANSIENT     10 "transient" 11
                    question-mark
                    end-of-source
                    source-start
e4    PREPOSED-AUXILIARY  1 "Is " 2
e1    PROPER-NOUN   2 "MAPK1 " 4
e10   VP+ED         4 "bound to MAP2K1 " 10
e8    ADJECTIVE     10 "transient" 11
                    question-mark
                    end-of-source


___________________
109: "Is MAPK1-bound MAP2K1 sustained?"

                    source-start
e13   SUSTAINED     1 "Is MAPK1-bound MAP2K1 sustained" 11
                    question-mark
                    end-of-source
("Is MAPK1-bound MAP2K1 sustained?"
 (:var sparser::mv9009 :isa sparser::polar-question :statement sparser::mv9008)
 (:var sparser::mv9008 :isa sparser::sustained :participant sparser::mv9004 :past "PAST")
 (:var sparser::mv9004 :isa sparser::protein :predication sparser::mv9006 :raw-text "MAP2K1" :uid
  "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv9006 :isa sparser::binding :direct-bindee sparser::mv9004 :binder sparser::mv9003
  :raw-text "bound")
 (:var sparser::mv9003 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    source-start
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 always high?"
 (:var sparser::mv9016 :isa sparser::polar-question :statement sparser::mv9015)
 (:var sparser::mv9015 :isa sparser::copular-predication :item sparser::mv9010 :value
  sparser::mv9014 :predicate sparser::mv9011)
 (:var sparser::mv9010 :isa sparser::protein :predication sparser::mv9012 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9012 :isa sparser::phosphorylate :substrate sparser::mv9010 :raw-text
  "phosphorylated")
 (:var sparser::mv9014 :isa sparser::high :adverb sparser::mv9013)
 (:var sparser::mv9013 :isa sparser::always :name "always") (:var sparser::mv9011 :isa sparser::be))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    source-start
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 eventually high?"
 (:var sparser::mv9023 :isa sparser::polar-question :statement sparser::mv9022)
 (:var sparser::mv9022 :isa sparser::copular-predication :item sparser::mv9017 :value
  sparser::mv9021 :predicate sparser::mv9018)
 (:var sparser::mv9017 :isa sparser::protein :predication sparser::mv9019 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9019 :isa sparser::phosphorylate :substrate sparser::mv9017 :raw-text
  "phosphorylated")
 (:var sparser::mv9021 :isa sparser::high :adverb sparser::mv9020)
 (:var sparser::mv9020 :isa sparser::eventually :name "eventually")
 (:var sparser::mv9018 :isa sparser::be))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    source-start
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 ever high?"
 (:var sparser::mv9030 :isa sparser::polar-question :statement sparser::mv9029)
 (:var sparser::mv9029 :isa sparser::copular-predication :item sparser::mv9024 :value
  sparser::mv9028 :predicate sparser::mv9025)
 (:var sparser::mv9024 :isa sparser::protein :predication sparser::mv9026 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9026 :isa sparser::phosphorylate :substrate sparser::mv9024 :raw-text
  "phosphorylated")
 (:var sparser::mv9028 :isa sparser::high :adverb sparser::mv9027)
 (:var sparser::mv9027 :isa sparser::ever :name "ever") (:var sparser::mv9025 :isa sparser::be))

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
 (:var sparser::mv9046 :isa sparser::polar-question :statement sparser::mv9045)
 (:var sparser::mv9045 :isa sparser::copular-predication :item sparser::mv9041 :value
  sparser::mv9044 :predicate sparser::mv9042)
 (:var sparser::mv9041 :isa sparser::protein :predication sparser::mv9043 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9043 :isa sparser::phosphorylate :substrate sparser::mv9041 :raw-text
  "phosphorylated")
 (:var sparser::mv9044 :isa sparser::high) (:var sparser::mv9042 :isa sparser::be))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    source-start
e19   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 sustained at a high level?"
 (:var sparser::mv9058 :isa sparser::polar-question :statement sparser::mv9057)
 (:var sparser::mv9057 :isa sparser::sustained :level sparser::mv9055 :past "PAST")
 (:var sparser::mv9055 :isa sparser::level :has-determiner "A" :predication sparser::mv9054
  :raw-text "level")
 (:var sparser::mv9054 :isa sparser::high))

___________________
116: "Is phosphorylated MAPK1 sustained?"

                    source-start
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 sustained?"
 (:var sparser::mv9064 :isa sparser::polar-question :statement sparser::mv9063)
 (:var sparser::mv9063 :isa sparser::sustained :participant sparser::mv9059 :past "PAST")
 (:var sparser::mv9059 :isa sparser::protein :predication sparser::mv9061 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9061 :isa sparser::phosphorylate :substrate sparser::mv9059 :raw-text
  "phosphorylated"))

___________________
117: "Is phosphorylated MAPK1 transient?"

                    source-start
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    question-mark
                    end-of-source
("Is phosphorylated MAPK1 transient?"
 (:var sparser::mv9070 :isa sparser::polar-question :statement sparser::mv9069)
 (:var sparser::mv9069 :isa sparser::copular-predication :item sparser::mv9065 :value
  sparser::mv9068 :predicate sparser::mv9066)
 (:var sparser::mv9065 :isa sparser::protein :predication sparser::mv9067 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9067 :isa sparser::phosphorylate :substrate sparser::mv9065 :raw-text
  "phosphorylated")
 (:var sparser::mv9068 :isa sparser::transient) (:var sparser::mv9066 :isa sparser::be))

___________________
118: "Is the MAP2K1-MAPK1 complex ever high?"

                    source-start
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    question-mark
                    end-of-source
("Is the MAP2K1-MAPK1 complex ever high?"
 (:var sparser::mv9081 :isa sparser::polar-question :statement sparser::mv9080)
 (:var sparser::mv9080 :isa sparser::copular-predication :item sparser::mv9079 :value
  sparser::mv9077 :predicate sparser::mv9073)
 (:var sparser::mv9079 :isa sparser::bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1"
  :component sparser::mv9072 :component sparser::mv9071)
 (:var sparser::mv9072 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9071 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv9077 :isa sparser::high :adverb sparser::mv9076)
 (:var sparser::mv9076 :isa sparser::ever :name "ever") (:var sparser::mv9073 :isa sparser::be))

___________________
119: "Is the MAP2K1-MAPK1 complex formed?"

                    source-start
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    question-mark
                    end-of-source
("Is the MAP2K1-MAPK1 complex formed?"
 (:var sparser::mv9090 :isa sparser::polar-question :statement sparser::mv9087)
 (:var sparser::mv9087 :isa sparser::bio-form :agent sparser::mv9089 :past "PAST" :raw-text
  "formed")
 (:var sparser::mv9089 :isa sparser::bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1"
  :component sparser::mv9083 :component sparser::mv9082)
 (:var sparser::mv9083 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9082 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
120: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    source-start
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase " 11
e24   MEASUREMENT   11 "ELK1 10 fold" 15
                    question-mark
                    end-of-source
                    source-start
e33   S             1 "Is the amount of FOS always low if we increase " 11
e24   NP            11 "ELK1 10 fold" 15
                    question-mark
                    end-of-source


___________________
121: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    source-start
e37   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    question-mark
                    end-of-source
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:var sparser::mv9139 :isa sparser::polar-question :statement sparser::mv9138)
 (:var sparser::mv9138 :isa sparser::event-relation :subordinated-event sparser::mv9134 :event
  sparser::mv9136)
 (:var sparser::mv9134 :isa sparser::wh-question :statement sparser::mv9126 :wh if)
 (:var sparser::mv9126 :isa sparser::increase :|agent-OR-cause| sparser::mv9124 :cause
  sparser::mv9132 :object sparser::mv9115 :present "PRESENT" :raw-text "increase")
 (:var sparser::mv9124 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv9132 :isa sparser::measurement :number sparser::mv9129)
 (:var sparser::mv9129 :isa number :value 100)
 (:var sparser::mv9115 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv9136 :isa sparser::copular-predication :item sparser::mv9118 :value
  sparser::mv9122 :predicate sparser::mv9116)
 (:var sparser::mv9118 :isa sparser::bio-amount :measured-item sparser::mv9120 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9120 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv9122 :isa sparser::low :adverb sparser::mv9121)
 (:var sparser::mv9121 :isa sparser::always :name "always") (:var sparser::mv9116 :isa sparser::be))

___________________
122: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    source-start
e41   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount " 13
e31   OF            13 "of ELK1 100 fold" 18
                    question-mark
                    end-of-source
                    source-start
e41   S             1 "Is the amount of FOS ever high if we increase the amount " 13
e31   PP            13 "of ELK1 100 fold" 18
                    question-mark
                    end-of-source


___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    source-start
e45   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    question-mark
                    end-of-source
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:var sparser::mv9196 :isa sparser::polar-question :statement sparser::mv9195)
 (:var sparser::mv9195 :isa sparser::event-relation :subordinated-event sparser::mv9191 :event
  sparser::mv9193)
 (:var sparser::mv9191 :isa sparser::wh-question :statement sparser::mv9179 :wh if)
 (:var sparser::mv9179 :isa sparser::increase :|agent-OR-cause| sparser::mv9177 :cause
  sparser::mv9188 :|affected-process-OR-object| sparser::mv9181 :present "PRESENT" :raw-text
  "increase")
 (:var sparser::mv9177 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv9188 :isa sparser::measurement :number sparser::mv9185)
 (:var sparser::mv9185 :isa number :value 100)
 (:var sparser::mv9181 :isa sparser::bio-amount :measured-item sparser::mv9168 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9168 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv9193 :isa sparser::copular-predication :item sparser::mv9171 :value
  sparser::mv9175 :predicate sparser::mv9169)
 (:var sparser::mv9171 :isa sparser::bio-amount :measured-item sparser::mv9173 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9173 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv9175 :isa sparser::high :adverb sparser::mv9174)
 (:var sparser::mv9174 :isa sparser::ever :name "ever") (:var sparser::mv9169 :isa sparser::be))

___________________
124: "Is the amount of MAPK1 phosphorylated eventually high?"

                    source-start
e16   PHOSPHORYLATE 1 "Is the amount of MAPK1 phosphorylated " 8
e12   HIGH          8 "eventually high" 10
                    question-mark
                    end-of-source
                    source-start
e16   S             1 "Is the amount of MAPK1 phosphorylated " 8
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
 (:var sparser::mv9217 :isa sparser::polar-question :statement sparser::mv9216)
 (:var sparser::mv9216 :isa sparser::copular-predication :item sparser::mv9210 :value
  sparser::mv9214 :predicate sparser::mv9208)
 (:var sparser::mv9210 :isa sparser::bio-amount :measured-item sparser::mv9207 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9207 :isa sparser::protein :predication sparser::mv9212 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9212 :isa sparser::phosphorylate :substrate sparser::mv9207 :raw-text
  "phosphorylated")
 (:var sparser::mv9214 :isa sparser::high :adverb sparser::mv9213)
 (:var sparser::mv9213 :isa sparser::eventually :name "eventually")
 (:var sparser::mv9208 :isa sparser::be))

___________________
126: "Is the amount of phosphorylated MAPK1 ever high?"

                    source-start
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 ever high?"
 (:var sparser::mv9228 :isa sparser::polar-question :statement sparser::mv9227)
 (:var sparser::mv9227 :isa sparser::copular-predication :item sparser::mv9221 :value
  sparser::mv9225 :predicate sparser::mv9219)
 (:var sparser::mv9221 :isa sparser::bio-amount :measured-item sparser::mv9218 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9218 :isa sparser::protein :predication sparser::mv9223 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9223 :isa sparser::phosphorylate :substrate sparser::mv9218 :raw-text
  "phosphorylated")
 (:var sparser::mv9225 :isa sparser::high :adverb sparser::mv9224)
 (:var sparser::mv9224 :isa sparser::ever :name "ever") (:var sparser::mv9219 :isa sparser::be))

___________________
127: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    source-start
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:var sparser::mv9239 :isa sparser::polar-question :statement sparser::mv9237)
 (:var sparser::mv9237 :isa sparser::increase :cause sparser::mv9232 :adverb sparser::mv9235
  :raw-text "increasing")
 (:var sparser::mv9232 :isa sparser::bio-amount :measured-item sparser::mv9229 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9229 :isa sparser::protein :predication sparser::mv9234 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9234 :isa sparser::phosphorylate :substrate sparser::mv9229 :raw-text
  "phosphorylated")
 (:var sparser::mv9235 :isa sparser::ever :name "ever"))

___________________
128: "Is the amount of phosphorylated MAPK1 high?"

                    source-start
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 high?"
 (:var sparser::mv9249 :isa sparser::polar-question :statement sparser::mv9248)
 (:var sparser::mv9248 :isa sparser::copular-predication :item sparser::mv9243 :value
  sparser::mv9246 :predicate sparser::mv9241)
 (:var sparser::mv9243 :isa sparser::bio-amount :measured-item sparser::mv9240 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9240 :isa sparser::protein :predication sparser::mv9245 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9245 :isa sparser::phosphorylate :substrate sparser::mv9240 :raw-text
  "phosphorylated")
 (:var sparser::mv9246 :isa sparser::high) (:var sparser::mv9241 :isa sparser::be))

___________________
129: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    source-start
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:var sparser::mv9260 :isa sparser::polar-question :statement sparser::mv9259)
 (:var sparser::mv9259 :isa sparser::copular-predication :item sparser::mv9253 :value
  sparser::mv9257 :predicate sparser::mv9251)
 (:var sparser::mv9253 :isa sparser::bio-amount :measured-item sparser::mv9250 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9250 :isa sparser::protein :predication sparser::mv9255 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9255 :isa sparser::phosphorylate :substrate sparser::mv9250 :raw-text
  "phosphorylated")
 (:var sparser::mv9257 :isa sparser::high :adverb sparser::mv9256)
 (:var sparser::mv9256 :isa sparser::sometimes) (:var sparser::mv9251 :isa sparser::be))

___________________
130: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    source-start
e27   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:var sparser::mv9275 :isa sparser::polar-question :statement sparser::mv9268)
 (:var sparser::mv9268 :isa sparser::sustained :theme sparser::mv9264 :level sparser::mv9272 :past
  "PAST")
 (:var sparser::mv9264 :isa sparser::bio-amount :measured-item sparser::mv9261 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9261 :isa sparser::protein :predication sparser::mv9266 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9266 :isa sparser::phosphorylate :substrate sparser::mv9261 :raw-text
  "phosphorylated")
 (:var sparser::mv9272 :isa sparser::level :has-determiner "A" :predication sparser::mv9271
  :raw-text "level")
 (:var sparser::mv9271 :isa sparser::high))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained?"

                    source-start
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 sustained?"
 (:var sparser::mv9285 :isa sparser::polar-question :statement sparser::mv9283)
 (:var sparser::mv9283 :isa sparser::sustained :participant sparser::mv9279 :past "PAST")
 (:var sparser::mv9279 :isa sparser::bio-amount :measured-item sparser::mv9276 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9276 :isa sparser::protein :predication sparser::mv9281 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9281 :isa sparser::phosphorylate :substrate sparser::mv9276 :raw-text
  "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    source-start
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 transient?"
 (:var sparser::mv9295 :isa sparser::polar-question :statement sparser::mv9294)
 (:var sparser::mv9294 :isa sparser::copular-predication :item sparser::mv9289 :value
  sparser::mv9292 :predicate sparser::mv9287)
 (:var sparser::mv9289 :isa sparser::bio-amount :measured-item sparser::mv9286 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9286 :isa sparser::protein :predication sparser::mv9291 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9291 :isa sparser::phosphorylate :substrate sparser::mv9286 :raw-text
  "phosphorylated")
 (:var sparser::mv9292 :isa sparser::transient) (:var sparser::mv9287 :isa sparser::be))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    source-start
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    question-mark
                    end-of-source
("Will the amount of phosphorylated MAPK1 be high?"
 (:var sparser::mv9306 :isa sparser::polar-question :statement sparser::mv9304)
 (:var sparser::mv9304 :isa sparser::copular-predication :item sparser::mv9299 :value
  sparser::mv9303 :predicate sparser::mv9302)
 (:var sparser::mv9299 :isa sparser::bio-amount :measured-item sparser::mv9296 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9296 :isa sparser::protein :predication sparser::mv9301 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9301 :isa sparser::phosphorylate :substrate sparser::mv9296 :raw-text
  "phosphorylated")
 (:var sparser::mv9303 :isa sparser::high) (:var sparser::mv9302 :isa sparser::be :modal "WILL"))

___________________
134: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    source-start
e34   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount " 11
e26   OF            11 "of SB525334 100 fold" 16
                    question-mark
                    end-of-source
                    source-start
e34   S             1 "is TGFBR1 eventually low if we increase the amount " 11
e26   PP            11 "of SB525334 100 fold" 16
                    question-mark
                    end-of-source


___________________
135: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    source-start
e40   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    question-mark
                    end-of-source
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:var sparser::mv9357 :isa sparser::polar-question :statement sparser::mv9356)
 (:var sparser::mv9356 :isa sparser::event-relation :subordinated-event sparser::mv9353 :event
  sparser::mv9354)
 (:var sparser::mv9353 :isa sparser::wh-question :statement sparser::mv9350 :wh if)
 (:var sparser::mv9350 :isa sparser::increase :|affected-process-OR-object| sparser::mv9339 :cause
  sparser::mv9348 :raw-text "increased")
 (:var sparser::mv9339 :isa sparser::bio-amount :measured-item sparser::mv9332 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9332 :isa sparser::molecule :raw-text "SB525334" :name "sb525334" :uid
  "PCID:9967941")
 (:var sparser::mv9348 :isa sparser::measurement :number sparser::mv9345)
 (:var sparser::mv9345 :isa number :value 100)
 (:var sparser::mv9354 :isa sparser::copular-predication :item sparser::mv9331 :value
  sparser::mv9336 :predicate sparser::mv9333)
 (:var sparser::mv9331 :isa sparser::protein :predication sparser::mv9334 :raw-text "TGFBR1" :uid
  "UP:P36897" :name "TGFR1_HUMAN")
 (:var sparser::mv9334 :isa sparser::active)
 (:var sparser::mv9336 :isa sparser::low :adverb sparser::mv9335)
 (:var sparser::mv9335 :isa sparser::eventually :name "eventually")
 (:var sparser::mv9333 :isa sparser::be))

___________________
136: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    source-start
e42   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount " 14
e32   OF            14 "of SB525334 100 fold" 19
                    question-mark
                    end-of-source
                    source-start
e42   S             1 "is the amount of TGFBR1 eventually low if we increase the amount " 14
e32   PP            14 "of SB525334 100 fold" 19
                    question-mark
                    end-of-source


___________________
137: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    source-start
e44   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount " 15
e34   OF            15 "of SB-525334 100 fold" 21
                    end-of-source
                    source-start
e44   S             1 "is the amount of active TGFBR1 always low if we increase the amount " 15
e34   PP            15 "of SB-525334 100 fold" 21
                    end-of-source


___________________
138: "Let's move AKT1 and MAPK1 into mitochondrion."

                    source-start
e14   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    period
                    end-of-source
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:var sparser::mv9424 :isa sparser::explicit-suggestion :suggestion sparser::mv9418 :marker
  sparser::let-as-directive)
 (:var sparser::mv9418 :isa sparser::move-something-somewhere :at-relative-location sparser::mv9421
  :theme sparser::mv9422 :present "PRESENT")
 (:var sparser::mv9421 :isa sparser::cellular-location :raw-text "mitochondrion" :name
  "Mitochondrion" :uid "UP:SL-0173")
 (:var sparser::mv9422 :isa sparser::collection :raw-text "AKT1 and MAPK1" :type sparser::protein
  :number 2 :items (sparser::mv9416 sparser::mv9417))
 (:var sparser::mv9416 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv9417 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
139: "FEN1 phosphorylates AKT1."

                    source-start
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    period
                    end-of-source
("FEN1 phosphorylates AKT1."
 (:var sparser::mv9427 :isa sparser::phosphorylate :agent sparser::mv9425 :substrate
  sparser::mv9426 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv9425 :isa sparser::protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
 (:var sparser::mv9426 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
140: "Move all into mitochondrion."

                    source-start
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    period
                    end-of-source
("Move all into mitochondrion."
 (:var sparser::mv9428 :isa sparser::move-something-somewhere :at-relative-location sparser::mv9431
  :theme sparser::mv9433 :present "PRESENT")
 (:var sparser::mv9431 :isa sparser::cellular-location :raw-text "mitochondrion" :name
  "Mitochondrion" :uid "UP:SL-0173")
 (:var sparser::mv9433 :isa sparser::all :word "all"))

___________________
141: "AKT1 phosphorylates MAPK1."

                    source-start
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    period
                    end-of-source
("AKT1 phosphorylates MAPK1."
 (:var sparser::mv9436 :isa sparser::phosphorylate :agent sparser::mv9434 :substrate
  sparser::mv9435 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv9434 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv9435 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
142: "Let's highlight the upstream of phosphorylated MAPK1."

                    source-start
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    period
                    end-of-source
("Let's highlight the upstream of phosphorylated MAPK1."
 (:var sparser::mv9446 :isa sparser::explicit-suggestion :suggestion sparser::mv9439 :marker
  sparser::let-as-directive)
 (:var sparser::mv9439 :isa sparser::highlight :theme sparser::mv9441 :present "PRESENT")
 (:var sparser::mv9441 :isa sparser::upstream-segment :pathwaycomponent sparser::mv9438
  :has-determiner "THE" :raw-text "upstream")
 (:var sparser::mv9438 :isa sparser::protein :predication sparser::mv9444 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9444 :isa sparser::phosphorylate :substrate sparser::mv9438 :raw-text
  "phosphorylated"))

___________________
143: "Let's show phosphorylated MAPK1 on the top."

                    source-start
e17   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    period
                    end-of-source
("Let's show phosphorylated MAPK1 on the top."
 (:var sparser::mv9455 :isa sparser::explicit-suggestion :suggestion sparser::mv9449 :marker
  sparser::let-as-directive)
 (:var sparser::mv9449 :isa sparser::show :at-relative-location sparser::mv9453
  :|statement-OR-theme| sparser::mv9448 :present "PRESENT")
 (:var sparser::mv9453 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv9448 :isa sparser::protein :predication sparser::mv9450 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9450 :isa sparser::phosphorylate :substrate sparser::mv9448 :raw-text
  "phosphorylated"))

___________________
144: "Let's show the downstream of AKT1 on the top."

                    source-start
e23   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    period
                    end-of-source
("Let's show the downstream of AKT1 on the top."
 (:var sparser::mv9468 :isa sparser::explicit-suggestion :suggestion sparser::mv9458 :marker
  sparser::let-as-directive)
 (:var sparser::mv9458 :isa sparser::show :at-relative-location sparser::mv9465
  :|statement-OR-theme| sparser::mv9460 :present "PRESENT")
 (:var sparser::mv9465 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv9460 :isa sparser::downstream-segment :pathwaycomponent sparser::mv9457
  :has-determiner "THE" :raw-text "downstream")
 (:var sparser::mv9457 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
145: "Let's move mitochondrion elements to the top."

                    source-start
e15   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    period
                    end-of-source
("Let's move mitochondrion elements to the top."
 (:var sparser::mv9477 :isa sparser::explicit-suggestion :suggestion sparser::mv9470 :marker
  sparser::let-as-directive)
 (:var sparser::mv9470 :isa sparser::move-something-somewhere :goal sparser::mv9475 :theme
  sparser::mv9472 :present "PRESENT")
 (:var sparser::mv9475 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv9472 :isa sparser::element :modifier sparser::mv9471)
 (:var sparser::mv9471 :isa sparser::cellular-location :raw-text "mitochondrion" :name
  "Mitochondrion" :uid "UP:SL-0173"))

___________________
146: "How does BRAF affect MAPK1?"

                    source-start
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    question-mark
                    end-of-source
("How does BRAF affect MAPK1?"
 (:var sparser::mv9482 :isa sparser::affect :manner sparser::mv9479 :agent sparser::mv9481 :object
  sparser::mv9478 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv9479 :isa sparser::how)
 (:var sparser::mv9481 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9478 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
147: "How does MAPK1 affect BRAF?"

                    source-start
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    question-mark
                    end-of-source
("How does MAPK1 affect BRAF?"
 (:var sparser::mv9486 :isa sparser::affect :manner sparser::mv9484 :agent sparser::mv9483 :object
  sparser::mv9487 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv9484 :isa sparser::how)
 (:var sparser::mv9483 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9487 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
148: "What is the path between BRAF and MAPK1?"

                    source-start
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    question-mark
                    end-of-source
("What is the path between BRAF and MAPK1?"
 (:var sparser::mv9490 :isa sparser::be :subject sparser::mv9489 :predicate sparser::mv9492
  :present "PRESENT")
 (:var sparser::mv9489 :isa sparser::what)
 (:var sparser::mv9492 :isa sparser::path :endpoints sparser::mv9496 :has-determiner "THE")
 (:var sparser::mv9496 :isa sparser::collection :raw-text "BRAF and MAPK1" :type sparser::protein
  :number 2 :items (sparser::mv9494 sparser::mv9488))
 (:var sparser::mv9494 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9488 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
149: "How does MAPK1 affect JUND?"

                    source-start
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    question-mark
                    end-of-source
("How does MAPK1 affect JUND?"
 (:var sparser::mv9501 :isa sparser::affect :manner sparser::mv9499 :agent sparser::mv9498 :object
  sparser::mv9502 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv9499 :isa sparser::how)
 (:var sparser::mv9498 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9502 :isa sparser::protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))

___________________
150: "How does SETDB1 affect ADAM17?"

                    source-start
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    question-mark
                    end-of-source
("How does SETDB1 affect ADAM17?"
 (:var sparser::mv9507 :isa sparser::affect :manner sparser::mv9505 :agent sparser::mv9503 :object
  sparser::mv9504 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv9505 :isa sparser::how)
 (:var sparser::mv9503 :isa sparser::protein :raw-text "SETDB1" :uid "UP:Q15047" :name
  "SETB1_HUMAN")
 (:var sparser::mv9504 :isa sparser::protein :raw-text "ADAM17" :uid "UP:P78536" :name
  "ADA17_HUMAN"))

___________________
151: "How does KRAS affect MAPK3?"

                    source-start
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    question-mark
                    end-of-source
("How does KRAS affect MAPK3?"
 (:var sparser::mv9512 :isa sparser::affect :manner sparser::mv9509 :agent sparser::mv9511 :object
  sparser::mv9508 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv9509 :isa sparser::how)
 (:var sparser::mv9511 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv9508 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))

___________________
152: "How does  ITGAV affect ILK?"

                    source-start
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    question-mark
                    end-of-source
("How does  ITGAV affect ILK?"
 (:var sparser::mv9516 :isa sparser::affect :manner sparser::mv9513 :agent sparser::mv9515 :object
  sparser::mv9517 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv9513 :isa sparser::how)
 (:var sparser::mv9515 :isa sparser::protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
 (:var sparser::mv9517 :isa sparser::protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))

___________________
153: "What genes does MAPK1 phosphorylate?"

                    source-start
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    question-mark
                    end-of-source
("What genes does MAPK1 phosphorylate?"
 (:var sparser::mv9522 :isa sparser::phosphorylate :amino-acid sparser::mv9520 :agent
  sparser::mv9518 :present "PRESENT" :raw-text "phosphorylate")
 (:var sparser::mv9520 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv9518 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
154: "What pathways affect BRAF?"

                    source-start
e6    AFFECT        1 "What pathways affect BRAF" 5
                    question-mark
                    end-of-source
("What pathways affect BRAF?"
 (:var sparser::mv9525 :isa sparser::affect :agent sparser::mv9524 :object sparser::mv9526 :present
  "PRESENT" :raw-text "affect")
 (:var sparser::mv9524 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv9526 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
155: "What genes activate ILK?"

                    source-start
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    question-mark
                    end-of-source
("What genes activate ILK?"
 (:var sparser::mv9529 :isa sparser::bio-activate :agent sparser::mv9528 :object sparser::mv9530
  :present "PRESENT" :raw-text "activate")
 (:var sparser::mv9528 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv9530 :isa sparser::protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))

___________________
156: "Let's learn about AKT1 in ovarian cancer."

                    source-start
e14   EXPLICIT-SUGGESTION 1 "Let's learn about AKT1 in ovarian cancer" 11
                    period
                    end-of-source
("Let's learn about AKT1 in ovarian cancer."
 (:var sparser::mv9539 :isa sparser::explicit-suggestion :suggestion sparser::mv9534 :marker
  sparser::let-as-directive)
 (:var sparser::mv9534 :isa sparser::learning :statement sparser::mv9532 :present "PRESENT")
 (:var sparser::mv9532 :isa sparser::protein :context sparser::mv9533 :raw-text "AKT1" :uid
  "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv9533 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223"))

___________________
157: "What is its relationship with BRAF?"

                    source-start
e10   BE            1 "What is its relationship with BRAF" 7
                    question-mark
                    end-of-source
("What is its relationship with BRAF?"
 (:var sparser::mv9541 :isa sparser::be :subject sparser::mv9540 :predicate sparser::mv9543
  :present "PRESENT")
 (:var sparser::mv9540 :isa sparser::what)
 (:var sparser::mv9543 :isa sparser::relationship :patient sparser::mv9545 :modifier
  sparser::mv9542)
 (:var sparser::mv9545 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9542 :isa sparser::pronoun/inanimate :word "its"))

___________________
158: "What is its relationship with PTPN1?"

                    source-start
e11   BE            1 "What is its relationship with PTPN1" 8
                    question-mark
                    end-of-source
("What is its relationship with PTPN1?"
 (:var sparser::mv9549 :isa sparser::be :subject sparser::mv9548 :predicate sparser::mv9551
  :present "PRESENT")
 (:var sparser::mv9548 :isa sparser::what)
 (:var sparser::mv9551 :isa sparser::relationship :patient sparser::mv9547 :modifier
  sparser::mv9550)
 (:var sparser::mv9547 :isa sparser::protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
 (:var sparser::mv9550 :isa sparser::pronoun/inanimate :word "its"))

___________________
159: "AKT1 phosphorylates IFT140. "

                    source-start
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    period
                    end-of-source
("AKT1 phosphorylates IFT140."
 (:var sparser::mv9556 :isa sparser::phosphorylate :agent sparser::mv9554 :substrate
  sparser::mv9555 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv9554 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv9555 :isa sparser::protein :raw-text "IFT140" :uid "UP:Q96RY7" :name
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
 (:var sparser::mv9575 :isa sparser::be :subject sparser::mv9574 :predicate sparser::mv9578
  :present "PRESENT")
 (:var sparser::mv9574 :isa sparser::what)
 (:var sparser::mv9578 :isa sparser::response :beneficiary sparser::mv9580 :has-determiner "THE"
  :modifier sparser::mv9577 :raw-text "response")
 (:var sparser::mv9580 :isa sparser::cell-type :mutation sparser::mv9582)
 (:var sparser::mv9582 :isa sparser::alter :|agent-OR-object| sparser::mv9573 :raw-text
  "alterations")
 (:var sparser::mv9573 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv9577 :isa sparser::drug :raw-text "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    source-start
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    question-mark
                    end-of-source
("What is the drug response for cells with TP53 alterations?"
 (:var sparser::mv9587 :isa sparser::be :subject sparser::mv9586 :predicate sparser::mv9590
  :present "PRESENT")
 (:var sparser::mv9586 :isa sparser::what)
 (:var sparser::mv9590 :isa sparser::response :cell-type sparser::mv9592 :has-determiner "THE"
  :modifier sparser::mv9589 :raw-text "response")
 (:var sparser::mv9592 :isa sparser::cell-type :mutation sparser::mv9594)
 (:var sparser::mv9594 :isa sparser::alter :|agent-OR-object| sparser::mv9585 :raw-text
  "alterations")
 (:var sparser::mv9585 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv9589 :isa sparser::drug :raw-text "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

                    source-start
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    question-mark
                    end-of-source
("What is the mutation frequency of EGFR in glioblastoma?"
 (:var sparser::mv9598 :isa sparser::be :subject sparser::mv9597 :predicate sparser::mv9601
  :present "PRESENT")
 (:var sparser::mv9597 :isa sparser::what)
 (:var sparser::mv9601 :isa sparser::frequency :measured-item sparser::mv9603 :has-determiner "THE"
  :measured-item sparser::mv9600 :raw-text "frequency")
 (:var sparser::mv9603 :isa sparser::protein :context sparser::mv9605 :raw-text "EGFR" :uid
  "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv9605 :isa sparser::glioblastoma)
 (:var sparser::mv9600 :isa sparser::mutation :raw-text "mutation"))

___________________
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    source-start
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    question-mark
                    end-of-source
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:var sparser::mv9611 :isa sparser::be :subject sparser::mv9610 :predicate sparser::mv9614
  :present "PRESENT")
 (:var sparser::mv9610 :isa sparser::what)
 (:var sparser::mv9614 :isa sparser::frequency :measured-item sparser::mv9608 :has-determiner "THE"
  :measured-item sparser::mv9613 :raw-text "frequency")
 (:var sparser::mv9608 :isa sparser::protein :context sparser::mv9609 :raw-text "TP53" :uid
  "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv9609 :isa sparser::cancer :name "ovarian serous cystadenocarcinoma" :uid
  "NCIT:C7978")
 (:var sparser::mv9613 :isa sparser::mutation :raw-text "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    source-start
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    period
                    end-of-source
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:var sparser::mv9620 :isa sparser::show :|statement-OR-theme| sparser::mv9623 :beneficiary
  sparser::mv9621 :present "PRESENT")
 (:var sparser::mv9623 :isa sparser::mutation :object sparser::mv9629 :has-determiner "THE"
  :raw-text "mutations")
 (:var sparser::mv9629 :isa sparser::collection :context sparser::mv9619 :raw-text "PTEN and BRAF"
  :type sparser::protein :number 2 :items (sparser::mv9625 sparser::mv9627))
 (:var sparser::mv9619 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv9625 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv9627 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9621 :isa sparser::interlocutor :name "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    source-start
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    period
                    end-of-source
("Show me the mutations of PTEN in ovarian cancer."
 (:var sparser::mv9633 :isa sparser::show :|statement-OR-theme| sparser::mv9636 :beneficiary
  sparser::mv9634 :present "PRESENT")
 (:var sparser::mv9636 :isa sparser::mutation :object sparser::mv9638 :has-determiner "THE"
  :raw-text "mutations")
 (:var sparser::mv9638 :isa sparser::protein :context sparser::mv9632 :raw-text "PTEN" :uid
  "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv9632 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv9634 :isa sparser::interlocutor :name "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    source-start
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    question-mark
                    end-of-source
("What are the mutations of PTEN in ovarian cancer?"
 (:var sparser::mv9644 :isa sparser::be :subject sparser::mv9643 :predicate sparser::mv9646
  :present "PRESENT")
 (:var sparser::mv9643 :isa sparser::what)
 (:var sparser::mv9646 :isa sparser::mutation :object sparser::mv9648 :has-determiner "THE"
  :raw-text "mutations")
 (:var sparser::mv9648 :isa sparser::protein :context sparser::mv9642 :raw-text "PTEN" :uid
  "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv9642 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    source-start
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    question-mark
                    end-of-source
("What is the most likely cellular location of AKT1 and BRAF?"
 (:var sparser::mv9654 :isa sparser::be :subject sparser::mv9653 :predicate sparser::mv9666
  :present "PRESENT")
 (:var sparser::mv9653 :isa sparser::what)
 (:var sparser::mv9666 :isa sparser::quality-predicate :item sparser::mv9664 :attribute
  sparser::mv9660)
 (:var sparser::mv9664 :isa sparser::collection :raw-text "AKT1 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv9652 sparser::mv9663))
 (:var sparser::mv9652 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv9663 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9660 :isa sparser::location-of :has-determiner "THE" :predication sparser::mv9658
  :modifier sparser::mv9659)
 (:var sparser::mv9658 :isa sparser::likely :comparative sparser::mv9656)
 (:var sparser::mv9656 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv9659 :isa sparser::cellular :name "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    source-start
e18   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    question-mark
                    end-of-source
("Are there common upstreams of AKT1 and BRAF?"
 (:var sparser::mv9679 :isa sparser::polar-question :statement sparser::mv9676)
 (:var sparser::mv9676 :isa sparser::there-exists :value sparser::mv9672 :predicate
  sparser::mv9669)
 (:var sparser::mv9672 :isa sparser::upstream-segment :pathwaycomponent sparser::mv9677
  :predication sparser::mv9671 :raw-text "upstreams")
 (:var sparser::mv9677 :isa sparser::collection :raw-text "AKT1 and BRAF" :type sparser::protein
  :number 2 :items (sparser::mv9667 sparser::mv9675))
 (:var sparser::mv9667 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv9675 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9671 :isa sparser::common) (:var sparser::mv9669 :isa sparser::syntactic-there))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    source-start
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    question-mark
                    end-of-source
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:var sparser::mv9683 :isa sparser::be :subject sparser::mv9682 :predicate sparser::mv9686
  :present "PRESENT")
 (:var sparser::mv9682 :isa sparser::what)
 (:var sparser::mv9686 :isa sparser::upstream-segment :pathwaycomponent sparser::mv9690
  :has-determiner "THE" :predication sparser::mv9685 :raw-text "upstreams")
 (:var sparser::mv9690 :isa sparser::collection :raw-text "AKT1, BRAF and MAPK1" :type
  sparser::protein :number 3 :items (sparser::mv9680 sparser::mv9688 sparser::mv9681))
 (:var sparser::mv9680 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv9688 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9681 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9685 :isa sparser::common))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    source-start
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    question-mark
                    end-of-source
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:var sparser::mv9702 :isa sparser::copular-predication :item sparser::mv9696 :value
  sparser::mv9692 :predicate sparser::mv9697)
 (:var sparser::mv9696 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv9692 :isa sparser::mutual-exclusivity :disease sparser::mv9694 :alternative
  sparser::mv9693)
 (:var sparser::mv9694 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv9693 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
 (:var sparser::mv9697 :isa sparser::be :present "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    source-start
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    question-mark
                    end-of-source
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:var sparser::mv9707 :isa sparser::be :subject sparser::mv9706 :predicate sparser::mv9714
  :present "PRESENT")
 (:var sparser::mv9706 :isa sparser::what)
 (:var sparser::mv9714 :isa sparser::gene :disease sparser::mv9705 :has-determiner "THE"
  :predication sparser::mv9703 :raw-text "genes")
 (:var sparser::mv9705 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv9703 :isa sparser::mutual-exclusivity :alternative sparser::mv9704)
 (:var sparser::mv9704 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 for lung cancer?"
 (:var sparser::mv9718 :isa sparser::be :subject sparser::mv9717 :predicate sparser::mv9721
  :present "PRESENT")
 (:var sparser::mv9717 :isa sparser::what)
 (:var sparser::mv9721 :isa sparser::significance :result sparser::mv9716 :agent sparser::mv9715
  :has-determiner "THE" :modifier sparser::mv9720)
 (:var sparser::mv9716 :isa sparser::cancer :name "lung cancer" :uid "TS-0571")
 (:var sparser::mv9715 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv9720 :isa sparser::mutation :raw-text "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:var sparser::mv9729 :isa sparser::be :subject sparser::mv9728 :predicate sparser::mv9732
  :present "PRESENT")
 (:var sparser::mv9728 :isa sparser::what)
 (:var sparser::mv9732 :isa sparser::significance :agent sparser::mv9726 :has-determiner "THE"
  :modifier sparser::mv9731)
 (:var sparser::mv9726 :isa sparser::protein :context sparser::mv9727 :raw-text "TP53" :uid
  "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv9727 :isa sparser::cancer :name "ovarian serous cystadenocarcinoma" :uid
  "NCIT:C7978")
 (:var sparser::mv9731 :isa sparser::mutation :raw-text "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    source-start
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    question-mark
                    end-of-source
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:var sparser::mv9738 :isa sparser::be :subject sparser::mv9737 :predicate sparser::mv9741
  :present "PRESENT")
 (:var sparser::mv9737 :isa sparser::what)
 (:var sparser::mv9741 :isa sparser::significance :agent sparser::mv9743 :has-determiner "THE"
  :modifier sparser::mv9740)
 (:var sparser::mv9743 :isa sparser::protein :context sparser::mv9746 :raw-text "PTEN" :uid
  "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv9746 :isa sparser::cancer :organ sparser::mv9745 :name "adenocarcinoma" :uid
  "EFO:0000228")
 (:var sparser::mv9745 :isa sparser::pancreas)
 (:var sparser::mv9740 :isa sparser::mutation :raw-text "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    source-start
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    question-mark
                    end-of-source
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:var sparser::mv9750 :isa sparser::be :subject sparser::mv9749 :predicate sparser::mv9753
  :present "PRESENT")
 (:var sparser::mv9749 :isa sparser::what)
 (:var sparser::mv9753 :isa sparser::significance :agent sparser::mv9755 :has-determiner "THE"
  :modifier sparser::mv9752)
 (:var sparser::mv9755 :isa sparser::protein :context sparser::mv9758 :raw-text "BRAF" :uid
  "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9758 :isa sparser::cancer :modifier sparser::mv9757 :name "adenocarcinoma" :uid
  "EFO:0000228")
 (:var sparser::mv9757 :isa sparser::protein :raw-text "prostatic" :uid "UP:P20151" :name
  "KLK2_HUMAN")
 (:var sparser::mv9752 :isa sparser::mutation :raw-text "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    source-start
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    period
                    end-of-source
("MEK phosphorylates ERK."
 (:var sparser::mv9762 :isa sparser::phosphorylate :agent sparser::mv9761 :substrate
  sparser::mv9763 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv9761 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv9763 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv9765 :isa sparser::binding :binder sparser::mv9764 :direct-bindee sparser::mv9766
  :present "PRESENT" :raw-text "binds")
 (:var sparser::mv9764 :isa sparser::protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv9766 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    source-start
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    period
                    end-of-source
("EGFR bound to EGF binds GRB2."
 (:var sparser::mv9772 :isa sparser::binding :binder sparser::mv9768 :direct-bindee sparser::mv9767
  :present "PRESENT" :raw-text "binds")
 (:var sparser::mv9768 :isa sparser::protein :predication sparser::mv9769 :raw-text "EGFR" :uid
  "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv9769 :isa sparser::binding :direct-bindee sparser::mv9768 :bindee sparser::mv9771
  :past "PAST" :raw-text "bound")
 (:var sparser::mv9771 :isa sparser::protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
 (:var sparser::mv9767 :isa sparser::protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    source-start
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    period
                    end-of-source
("Phosphorylated ERK is active."
 (:var sparser::mv9778 :isa sparser::copular-predication :item sparser::mv9775 :value
  sparser::mv9777 :predicate sparser::mv9776)
 (:var sparser::mv9775 :isa sparser::protein-family :predication sparser::mv9774 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv9774 :isa sparser::phosphorylate :substrate sparser::mv9775 :raw-text
  "Phosphorylated")
 (:var sparser::mv9777 :isa sparser::active)
 (:var sparser::mv9776 :isa sparser::be :present "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    source-start
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    period
                    end-of-source
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:var sparser::mv9779 :isa sparser::protein :predication sparser::mv9781 :raw-text "MAP2K1" :uid
  "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv9781 :isa sparser::phosphorylate :substrate sparser::mv9779 :target
  sparser::mv9780 :past "PAST" :raw-text "phosphorylated")
 (:var sparser::mv9780 :isa sparser::protein :site sparser::mv9788 :modifier sparser::mv9787
  :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv9788 :isa sparser::residue-on-protein :raw-text "S220" :position sparser::mv9786
  :amino-acid sparser::mv9784)
 (:var sparser::mv9786 :isa number :value 220)
 (:var sparser::mv9784 :isa sparser::amino-acid :name "serine" :letter "S")
 (:var sparser::mv9787 :isa sparser::bio-entity :name "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    source-start
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    period
                    end-of-source
("Active TP53 transcribes MDM2."
 (:var sparser::mv9793 :isa sparser::transcribe :agent sparser::mv9790 :object sparser::mv9791
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv9790 :isa sparser::protein :predication sparser::mv9792 :raw-text "TP53" :uid
  "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv9792 :isa sparser::active)
 (:var sparser::mv9791 :isa sparser::protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    source-start
e45   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    question-mark
                    end-of-source
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:var sparser::mv9822 :isa sparser::polar-question :statement sparser::mv9821)
 (:var sparser::mv9821 :isa sparser::event-relation :subordinated-event sparser::mv9817 :event
  sparser::mv9819)
 (:var sparser::mv9817 :isa sparser::wh-question :statement sparser::mv9805 :wh if)
 (:var sparser::mv9805 :isa sparser::increase :|agent-OR-cause| sparser::mv9803 :cause
  sparser::mv9814 :|affected-process-OR-object| sparser::mv9807 :present "PRESENT" :raw-text
  "increase")
 (:var sparser::mv9803 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv9814 :isa sparser::measurement :number sparser::mv9811)
 (:var sparser::mv9811 :isa number :value 10)
 (:var sparser::mv9807 :isa sparser::bio-amount :measured-item sparser::mv9794 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9794 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv9819 :isa sparser::copular-predication :item sparser::mv9797 :value
  sparser::mv9801 :predicate sparser::mv9795)
 (:var sparser::mv9797 :isa sparser::bio-amount :measured-item sparser::mv9799 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv9799 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv9801 :isa sparser::high :adverb sparser::mv9800)
 (:var sparser::mv9800 :isa sparser::ever :name "ever") (:var sparser::mv9795 :isa sparser::be))

___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    source-start
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    question-mark
                    end-of-source
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:var sparser::mv9834 :isa sparser::polar-question :statement sparser::mv9832)
 (:var sparser::mv9832 :isa sparser::decrease :agent sparser::mv9824 :object sparser::mv9828
  :raw-text "decrease")
 (:var sparser::mv9824 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv9828 :isa sparser::protein-family :info-context sparser::mv9831 :predication
  sparser::mv9827 :raw-text "ERK" :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv9831 :isa sparser::model :has-determiner "THE")
 (:var sparser::mv9827 :isa sparser::phosphorylate :substrate sparser::mv9828 :raw-text
  "phosphorylated"))

___________________
186: "Does Selumetinib decrease JUN in the model?"

                    source-start
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    question-mark
                    end-of-source
("Does Selumetinib decrease JUN in the model?"
 (:var sparser::mv9845 :isa sparser::polar-question :statement sparser::mv9843)
 (:var sparser::mv9843 :isa sparser::decrease :agent sparser::mv9836 :object sparser::mv9839
  :raw-text "decrease")
 (:var sparser::mv9836 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv9839 :isa sparser::protein :info-context sparser::mv9842 :raw-text "JUN" :uid
  "UP:P05412" :name "JUN_HUMAN")
 (:var sparser::mv9842 :isa sparser::model :has-determiner "THE"))

___________________
187: "How does KRAS regulate MAP2K1?"

                    source-start
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    question-mark
                    end-of-source
("How does KRAS regulate MAP2K1?"
 (:var sparser::mv9850 :isa sparser::regulate :manner sparser::mv9847 :agent sparser::mv9849
  :object sparser::mv9846 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv9847 :isa sparser::how)
 (:var sparser::mv9849 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv9846 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    source-start
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    question-mark
                    end-of-source
("How does HRAS activate MAPK3?"
 (:var sparser::mv9855 :isa sparser::bio-activate :manner sparser::mv9852 :agent sparser::mv9854
  :object sparser::mv9851 :present "PRESENT" :raw-text "activate")
 (:var sparser::mv9852 :isa sparser::how)
 (:var sparser::mv9854 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv9851 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    source-start
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    question-mark
                    end-of-source
("Does Vemurafenib inhibit BRAF?"
 (:var sparser::mv9861 :isa sparser::polar-question :statement sparser::mv9860)
 (:var sparser::mv9860 :isa sparser::inhibit :agent sparser::mv9857 :object sparser::mv9859
  :raw-text "inhibit")
 (:var sparser::mv9857 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv9859 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    source-start
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    question-mark
                    end-of-source
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:var sparser::mv9872 :isa sparser::share :object sparser::mv9862 :participant sparser::mv9871
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv9862 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv9871 :isa sparser::collection :raw-text "SRF, HRAS, and ELK1" :type
  sparser::protein :number 3 :items (sparser::mv9868 sparser::mv9869 sparser::mv9863))
 (:var sparser::mv9868 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv9869 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv9863 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

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
 (:var sparser::mv9884 :isa sparser::be :subject sparser::mv9883 :predicate sparser::mv9885
  :present "PRESENT")
 (:var sparser::mv9883 :isa sparser::what)
 (:var sparser::mv9885 :isa sparser::upstream-segment :pathwaycomponent sparser::mv9882 :raw-text
  "upstream")
 (:var sparser::mv9882 :isa sparser::protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    source-start
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    period
                    end-of-source
("I want to find a treatment for pancreatic cancer."
 (:var sparser::mv9893 :isa sparser::want :agent sparser::mv9890 :theme sparser::mv9901 :present
  "PRESENT")
 (:var sparser::mv9890 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv9901 :isa sparser::bio-find :agent sparser::mv9890 :object sparser::mv9898
  :present "PRESENT" :raw-text "find")
 (:var sparser::mv9898 :isa sparser::treatment :disease sparser::mv9889 :has-determiner "A"
  :raw-text "treatment")
 (:var sparser::mv9889 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
194: "What drug could I use?"

                    source-start
e11   BIO-USE       1 "What drug could I use" 6
                    question-mark
                    end-of-source
("What drug could I use?"
 (:var sparser::mv9910 :isa sparser::bio-use :object sparser::mv9903 :modal sparser::mv9904 :agent
  sparser::mv9905 :present "PRESENT" :raw-text "use")
 (:var sparser::mv9903 :isa sparser::drug :has-determiner "WHAT" :raw-text "drug")
 (:var sparser::mv9904 :isa sparser::could)
 (:var sparser::mv9905 :isa sparser::interlocutor :name "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    source-start
e14   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    question-mark
                    end-of-source
("Are there any drugs for BRAF?"
 (:var sparser::mv9920 :isa sparser::polar-question :statement sparser::mv9918)
 (:var sparser::mv9918 :isa sparser::there-exists :value sparser::mv9915 :predicate
  sparser::mv9912)
 (:var sparser::mv9915 :isa sparser::drug :target sparser::mv9917 :quantifier sparser::mv9914
  :raw-text "drugs")
 (:var sparser::mv9917 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9914 :isa sparser::any :word "any")
 (:var sparser::mv9912 :isa sparser::syntactic-there))

___________________
196: "Are they kinases?"

                    source-start
e5    BE            1 "Are they kinases" 4
                    question-mark
                    end-of-source
("Are they kinases?" (:var sparser::mv9924 :isa sparser::polar-question :statement sparser::mv9921)
 (:var sparser::mv9921 :isa sparser::be :subject sparser::mv9922 :predicate sparser::mv9923)
 (:var sparser::mv9922 :isa sparser::pronoun/plural :word "they")
 (:var sparser::mv9923 :isa sparser::kinase :raw-text "kinases"))

___________________
197: "Can you find a drug for BRAF?"

                    source-start
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    question-mark
                    end-of-source
("Can you find a drug for BRAF?"
 (:var sparser::mv9934 :isa sparser::polar-question :statement sparser::mv9928)
 (:var sparser::mv9928 :isa sparser::bio-find :agent sparser::mv9926 :object sparser::mv9930 :modal
  "CAN" :raw-text "find")
 (:var sparser::mv9926 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv9930 :isa sparser::drug :target sparser::mv9932 :has-determiner "A" :raw-text
  "drug")
 (:var sparser::mv9932 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    source-start
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    question-mark
                    end-of-source
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:var sparser::mv9952 :isa sparser::polar-question :statement sparser::mv9939)
 (:var sparser::mv9939 :isa sparser::tell :agent sparser::mv9938 :theme sparser::mv9935
  :beneficiary sparser::mv9940 :modal "CAN")
 (:var sparser::mv9938 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv9935 :isa sparser::transcription-factor :predication sparser::mv9950 :quantifier
  sparser::mv9941 :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv9950 :isa sparser::share :object sparser::mv9935 :that-rel t :participant
  sparser::mv9949 :modal "CAN" :raw-text "shared")
 (:var sparser::mv9949 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv9936 sparser::mv9948))
 (:var sparser::mv9936 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv9948 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv9941 :isa sparser::all :word "all")
 (:var sparser::mv9940 :isa sparser::interlocutor :name "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    source-start
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    question-mark
                    end-of-source
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:var sparser::mv9968 :isa sparser::polar-question :statement sparser::mv9957)
 (:var sparser::mv9957 :isa sparser::tell :agent sparser::mv9956 :theme sparser::mv9966 :theme
  sparser::mv9958 :modal "CAN")
 (:var sparser::mv9956 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv9966 :isa sparser::share :object sparser::mv9953 :participant sparser::mv9965
  :modal "CAN" :raw-text "shared")
 (:var sparser::mv9953 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv9965 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv9954 sparser::mv9964))
 (:var sparser::mv9954 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv9964 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv9958 :isa sparser::interlocutor :name "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    source-start
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    question-mark
                    end-of-source
("Do you know any drugs for BRAF?"
 (:var sparser::mv9979 :isa sparser::polar-question :statement sparser::mv9978)
 (:var sparser::mv9978 :isa sparser::know :agent sparser::mv9970 :statement sparser::mv9973)
 (:var sparser::mv9970 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv9973 :isa sparser::drug :target sparser::mv9975 :quantifier sparser::mv9972
  :raw-text "drugs")
 (:var sparser::mv9975 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv9972 :isa sparser::any :word "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    source-start
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    question-mark
                    end-of-source
("Does STAT3 regulate the JUN gene in the lung?"
 (:var sparser::mv9991 :isa sparser::polar-question :statement sparser::mv9989)
 (:var sparser::mv9989 :isa sparser::regulate :agent sparser::mv9980 :object sparser::mv9985
  :raw-text "regulate")
 (:var sparser::mv9980 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv9985 :isa sparser::gene :organ sparser::mv9988 :has-determiner "THE" :expresses
  sparser::mv9984 :raw-text "gene")
 (:var sparser::mv9988 :isa sparser::lung :has-determiner "THE")
 (:var sparser::mv9984 :isa sparser::protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    source-start
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    question-mark
                    end-of-source
("Does STAT3 regulate the c-fos gene in liver?"
 (:var sparser::mv10002 :isa sparser::polar-question :statement sparser::mv10000)
 (:var sparser::mv10000 :isa sparser::regulate :agent sparser::mv9992 :object sparser::mv9997
  :raw-text "regulate")
 (:var sparser::mv9992 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv9997 :isa sparser::gene :organ sparser::mv9999 :has-determiner "THE" :expresses
  sparser::mv9993 :raw-text "gene")
 (:var sparser::mv9999 :isa sparser::liver)
 (:var sparser::mv9993 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    source-start
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    question-mark
                    end-of-source
("Does STAT3 regulate the c-fos gene?"
 (:var sparser::mv10010 :isa sparser::polar-question :statement sparser::mv10009)
 (:var sparser::mv10009 :isa sparser::regulate :agent sparser::mv10003 :object sparser::mv10008
  :raw-text "regulate")
 (:var sparser::mv10003 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10008 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv10004
  :raw-text "gene")
 (:var sparser::mv10004 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    source-start
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    question-mark
                    end-of-source
("Does STAT3 regulate the cfos gene in the lung?"
 (:var sparser::mv10022 :isa sparser::polar-question :statement sparser::mv10020)
 (:var sparser::mv10020 :isa sparser::regulate :agent sparser::mv10011 :object sparser::mv10016
  :raw-text "regulate")
 (:var sparser::mv10011 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10016 :isa sparser::gene :organ sparser::mv10019 :has-determiner "THE" :expresses
  sparser::mv10015 :raw-text "gene")
 (:var sparser::mv10019 :isa sparser::lung :has-determiner "THE")
 (:var sparser::mv10015 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    source-start
e11   TARGET        1 "Does TP53 target MDM2" 7
                    question-mark
                    end-of-source
("Does TP53 target MDM2?"
 (:var sparser::mv10029 :isa sparser::polar-question :statement sparser::mv10028)
 (:var sparser::mv10028 :isa sparser::target :agent sparser::mv10023 :object sparser::mv10024
  :raw-text "target")
 (:var sparser::mv10023 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv10024 :isa sparser::protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    source-start
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    end-of-source
("Does miR-2000-5p target stat3"
 (:var sparser::mv10036 :isa sparser::polar-question :statement sparser::mv10035)
 (:var sparser::mv10035 :isa sparser::target :agent sparser::mv10030 :object sparser::mv10031
  :raw-text "target")
 (:var sparser::mv10030 :isa sparser::micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p"
  :uid "MIMAmiR-2000-5p")
 (:var sparser::mv10031 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    source-start
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    question-mark
                    end-of-source
("Does miR-20b-5p target STAT3?"
 (:var sparser::mv10043 :isa sparser::polar-question :statement sparser::mv10042)
 (:var sparser::mv10042 :isa sparser::target :agent sparser::mv10037 :object sparser::mv10038
  :raw-text "target")
 (:var sparser::mv10037 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413")
 (:var sparser::mv10038 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    source-start
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    question-mark
                    end-of-source
("Does miR-222-3p target STAT3?"
 (:var sparser::mv10050 :isa sparser::polar-question :statement sparser::mv10049)
 (:var sparser::mv10049 :isa sparser::target :agent sparser::mv10044 :object sparser::mv10045
  :raw-text "target")
 (:var sparser::mv10044 :isa sparser::micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid
  "MIMAT0000279")
 (:var sparser::mv10045 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    source-start
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    end-of-source
("Does stat3 regulate cfors in liver"
 (:var sparser::mv10059 :isa sparser::polar-question :statement sparser::mv10057)
 (:var sparser::mv10057 :isa sparser::regulate :agent sparser::mv10051 :object sparser::mv10054
  :raw-text "regulate")
 (:var sparser::mv10051 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10054 :isa sparser::bio-entity :organ sparser::mv10056 :name "cfors")
 (:var sparser::mv10056 :isa sparser::liver))

___________________
210: "Does stat3 regulate cfos in liver"

                    source-start
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    end-of-source
("Does stat3 regulate cfos in liver"
 (:var sparser::mv10068 :isa sparser::polar-question :statement sparser::mv10066)
 (:var sparser::mv10066 :isa sparser::regulate :agent sparser::mv10060 :object sparser::mv10063
  :raw-text "regulate")
 (:var sparser::mv10060 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10063 :isa sparser::protein :organ sparser::mv10065 :raw-text "cfos" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv10065 :isa sparser::liver))

___________________
211: "Does it regulate cfos in brain"

                    source-start
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    end-of-source
("Does it regulate cfos in brain"
 (:var sparser::mv10077 :isa sparser::polar-question :statement sparser::mv10075)
 (:var sparser::mv10075 :isa sparser::regulate :|agent-OR-cause| sparser::mv10070 :object
  sparser::mv10072 :raw-text "regulate")
 (:var sparser::mv10070 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv10072 :isa sparser::protein :organ sparser::mv10074 :raw-text "cfos" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv10074 :isa sparser::brain))

___________________
212: "Does stat3 regulate cfos?"

                    source-start
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    question-mark
                    end-of-source
("Does stat3 regulate cfos?"
 (:var sparser::mv10083 :isa sparser::polar-question :statement sparser::mv10082)
 (:var sparser::mv10082 :isa sparser::regulate :agent sparser::mv10078 :object sparser::mv10081
  :raw-text "regulate")
 (:var sparser::mv10078 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10081 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    source-start
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    end-of-source
("Does stat3 regulate the cfos gene in blood cells"
 (:var sparser::mv10095 :isa sparser::polar-question :statement sparser::mv10093)
 (:var sparser::mv10093 :isa sparser::regulate :agent sparser::mv10084 :object sparser::mv10089
  :raw-text "regulate")
 (:var sparser::mv10084 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10089 :isa sparser::gene :cell-type sparser::mv10092 :has-determiner "THE"
  :expresses sparser::mv10088 :raw-text "gene")
 (:var sparser::mv10092 :isa sparser::cell-type :non-cellular-location sparser::mv10091)
 (:var sparser::mv10091 :isa sparser::bio-organ :name "blood" :uid "BTO:0000089")
 (:var sparser::mv10088 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    source-start
e15   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    question-mark
                    end-of-source
("Does the il-12 pathway utilize SGK1?"
 (:var sparser::mv10103 :isa sparser::polar-question :statement sparser::mv10102)
 (:var sparser::mv10102 :isa sparser::utilize :participant sparser::mv10100 :object
  sparser::mv10097 :raw-text "utilize")
 (:var sparser::mv10100 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv10096
  :raw-text "pathway")
 (:var sparser::mv10096 :isa sparser::protein-family :raw-text "il-12" :name "IL-12" :count 2
  :family-members
  ((sparser::protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
   (sparser::protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
  :uid "FPLX:IL12")
 (:var sparser::mv10097 :isa sparser::protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    source-start
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    question-mark
                    end-of-source
("Does the mTor pathway utilize SGK1?"
 (:var sparser::mv10113 :isa sparser::polar-question :statement sparser::mv10112)
 (:var sparser::mv10112 :isa sparser::utilize :participant sparser::mv10110 :object
  sparser::mv10104 :raw-text "utilize")
 (:var sparser::mv10110 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv10107
  :raw-text "pathway")
 (:var sparser::mv10107 :isa sparser::protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
 (:var sparser::mv10104 :isa sparser::protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    source-start
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    period
                    end-of-source
("Give me the evidence that kras decreases frizzled8."
 (:var sparser::mv10115 :isa sparser::give :theme sparser::mv10122 :beneficiary sparser::mv10116
  :present "PRESENT")
 (:var sparser::mv10122 :isa sparser::evidence :statement sparser::mv10121 :has-determiner "THE")
 (:var sparser::mv10121 :isa sparser::decrease :agent sparser::mv10120 :object sparser::mv10114
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv10120 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv10114 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv10116 :isa sparser::interlocutor :name "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    source-start
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    period
                    end-of-source
("Give me the evidence that kras regulates frizzled8."
 (:var sparser::mv10124 :isa sparser::give :theme sparser::mv10131 :beneficiary sparser::mv10125
  :present "PRESENT")
 (:var sparser::mv10131 :isa sparser::evidence :statement sparser::mv10130 :has-determiner "THE")
 (:var sparser::mv10130 :isa sparser::regulate :agent sparser::mv10129 :object sparser::mv10123
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv10129 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv10123 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv10125 :isa sparser::interlocutor :name "speaker"))

___________________
218: "Is MEK a kinase?"

                    source-start
e8    BE            1 "Is MEK a kinase" 5
                    question-mark
                    end-of-source
("Is MEK a kinase?"
 (:var sparser::mv10136 :isa sparser::polar-question :statement sparser::mv10132)
 (:var sparser::mv10132 :isa sparser::be :subject sparser::mv10133 :predicate sparser::mv10135)
 (:var sparser::mv10133 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv10135 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    source-start
e10   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    question-mark
                    end-of-source
("Is MEK2 inhibited by Selumetinib?"
 (:var sparser::mv10143 :isa sparser::polar-question :statement sparser::mv10139)
 (:var sparser::mv10139 :isa sparser::inhibit :object sparser::mv10137 :agent sparser::mv10141
  :past "PAST" :raw-text "inhibited")
 (:var sparser::mv10137 :isa sparser::protein :raw-text "MEK2" :uid "UP:P36507" :name
  "MP2K2_HUMAN")
 (:var sparser::mv10141 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    source-start
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    question-mark
                    end-of-source
("Is STAT3 a transcription factor for c-fos gene?"
 (:var sparser::mv10152 :isa sparser::polar-question :statement sparser::mv10147)
 (:var sparser::mv10147 :isa sparser::be :subject sparser::mv10144 :predicate sparser::mv10145)
 (:var sparser::mv10144 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10145 :isa sparser::transcription-factor :controlled-gene sparser::mv10150
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv10150 :isa sparser::gene :expresses sparser::mv10146 :raw-text "gene")
 (:var sparser::mv10146 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
221: "Is STAT3 one of the regulators of the c-fos gene?"

                    source-start
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    question-mark
                    end-of-source
("Is STAT3 one of the regulators of the c-fos gene?"
 (:var sparser::mv10167 :isa sparser::polar-question :statement sparser::mv10155)
 (:var sparser::mv10155 :isa sparser::be :subject sparser::mv10153 :predicate sparser::mv10161)
 (:var sparser::mv10153 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10161 :isa sparser::regulator :quantifier sparser::mv10158 :theme
  sparser::mv10164 :has-determiner "THE" :raw-text "regulators")
 (:var sparser::mv10158 :isa number :value 1)
 (:var sparser::mv10164 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv10154
  :raw-text "gene")
 (:var sparser::mv10154 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
222: "Is Selumetinib an inhibitor of MEK1?"

                    source-start
e13   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    question-mark
                    end-of-source
("Is Selumetinib an inhibitor of MEK1?"
 (:var sparser::mv10175 :isa sparser::polar-question :statement sparser::mv10169)
 (:var sparser::mv10169 :isa sparser::be :subject sparser::mv10170 :predicate sparser::mv10172)
 (:var sparser::mv10170 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv10172 :isa sparser::inhibitor :protein sparser::mv10168 :has-determiner "AN"
  :raw-text "inhibitor")
 (:var sparser::mv10168 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    source-start
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    question-mark
                    end-of-source
("Is Vemurafenib an inhibitor for BRAF?"
 (:var sparser::mv10183 :isa sparser::polar-question :statement sparser::mv10176)
 (:var sparser::mv10176 :isa sparser::be :subject sparser::mv10177 :predicate sparser::mv10179)
 (:var sparser::mv10177 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv10179 :isa sparser::inhibitor :|target-OR-protein| sparser::mv10181
  :has-determiner "AN" :raw-text "inhibitor")
 (:var sparser::mv10181 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
224: "Is fakeprotein a kinase"

                    source-start
e8    BE            1 "Is fakeprotein a kinase" 5
                    end-of-source
("Is fakeprotein a kinase"
 (:var sparser::mv10188 :isa sparser::polar-question :statement sparser::mv10184)
 (:var sparser::mv10184 :isa sparser::be :subject sparser::mv10185 :predicate sparser::mv10187)
 (:var sparser::mv10185 :isa sparser::bio-entity :name "fakeprotein")
 (:var sparser::mv10187 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
225: "Is hmga2 a kinase"

                    source-start
e9    BE            1 "Is hmga2 a kinase" 6
                    end-of-source
("Is hmga2 a kinase"
 (:var sparser::mv10193 :isa sparser::polar-question :statement sparser::mv10190)
 (:var sparser::mv10190 :isa sparser::be :subject sparser::mv10189 :predicate sparser::mv10192)
 (:var sparser::mv10189 :isa sparser::protein :raw-text "hmga2" :uid "UP:P52926" :name
  "HMGA2_HUMAN")
 (:var sparser::mv10192 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
226: "Is stat3 an apoptotic regulator?"

                    source-start
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    question-mark
                    end-of-source
("Is stat3 an apoptotic regulator?"
 (:var sparser::mv10200 :isa sparser::polar-question :statement sparser::mv10195)
 (:var sparser::mv10195 :isa sparser::be :subject sparser::mv10194 :predicate sparser::mv10199)
 (:var sparser::mv10194 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10199 :isa sparser::regulator :has-determiner "AN" :cellular-process
  sparser::mv10197 :raw-text "regulator")
 (:var sparser::mv10197 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    source-start
e15   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    question-mark
                    end-of-source
("Is stat3 involved in any apoptotic pathways?"
 (:var sparser::mv10211 :isa sparser::polar-question :statement sparser::mv10210)
 (:var sparser::mv10210 :isa sparser::involve :theme sparser::mv10201 :context sparser::mv10208
  :past "PAST")
 (:var sparser::mv10201 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10208 :isa sparser::pathway :quantifier sparser::mv10205 :cellular-process
  sparser::mv10206 :raw-text "pathways")
 (:var sparser::mv10205 :isa sparser::any :word "any")
 (:var sparser::mv10206 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    source-start
e13   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    question-mark
                    end-of-source
("Is stat3 involved in apoptotic regulation?"
 (:var sparser::mv10220 :isa sparser::polar-question :statement sparser::mv10214)
 (:var sparser::mv10214 :isa sparser::involve :theme sparser::mv10212 :theme sparser::mv10218 :past
  "PAST")
 (:var sparser::mv10212 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10218 :isa sparser::regulate :|cellular-process-OR-agent| sparser::mv10216
  :raw-text "regulation")
 (:var sparser::mv10216 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    source-start
e12   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    question-mark
                    end-of-source
("Is stat3 involved in regulating apoptosis?"
 (:var sparser::mv10228 :isa sparser::polar-question :statement sparser::mv10223)
 (:var sparser::mv10223 :isa sparser::involve :theme sparser::mv10221 :theme sparser::mv10225 :past
  "PAST")
 (:var sparser::mv10221 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10225 :isa sparser::regulate :affected-process sparser::mv10226 :progressive
  "PROGRESSIVE" :raw-text "regulating")
 (:var sparser::mv10226 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    source-start
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    question-mark
                    end-of-source
("What proteins does MEK phosphorylate?"
 (:var sparser::mv10233 :isa sparser::phosphorylate :amino-acid sparser::mv10230 :agent
  sparser::mv10232 :present "PRESENT" :raw-text "phosphorylate")
 (:var sparser::mv10230 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv10232 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
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
 (:var sparser::mv10242 :isa sparser::polar-question :statement sparser::mv10234)
 (:var sparser::mv10234 :isa sparser::be :subject sparser::mv10239 :predicate sparser::mv10241)
 (:var sparser::mv10239 :isa number :quantifier sparser::mv10236 :value 1)
 (:var sparser::mv10236 :isa sparser::ordinal :has-determiner "THE" :word "first" :number 1)
 (:var sparser::mv10241 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
232: "Is there a drug that targets BRAF?"

                    source-start
e19   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    question-mark
                    end-of-source
("Is there a drug that targets BRAF?"
 (:var sparser::mv10253 :isa sparser::polar-question :statement sparser::mv10252)
 (:var sparser::mv10252 :isa sparser::there-exists :value sparser::mv10247 :predicate
  sparser::mv10244)
 (:var sparser::mv10247 :isa sparser::drug :predication sparser::mv10250 :has-determiner "A"
  :raw-text "drug")
 (:var sparser::mv10250 :isa sparser::target :agent sparser::mv10247 :that-rel t :object
  sparser::mv10251 :present "PRESENT" :raw-text "targets")
 (:var sparser::mv10251 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv10244 :isa sparser::syntactic-there))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    source-start
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    question-mark
                    end-of-source
("Is there an apoptotic pathway regulated by stat3?"
 (:var sparser::mv10266 :isa sparser::polar-question :statement sparser::mv10264)
 (:var sparser::mv10264 :isa sparser::there-exists :value sparser::mv10261 :predicate
  sparser::mv10256)
 (:var sparser::mv10261 :isa sparser::pathway :predication sparser::mv10262 :has-determiner "AN"
  :cellular-process sparser::mv10259 :raw-text "pathway")
 (:var sparser::mv10262 :isa sparser::regulate :affected-process sparser::mv10261 :agent
  sparser::mv10254 :past "PAST" :raw-text "regulated")
 (:var sparser::mv10254 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10259 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10256 :isa sparser::syntactic-there))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    source-start
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    question-mark
                    end-of-source
("Is there an apoptotic pathway that is regulated by stat3?"
 (:var sparser::mv10282 :isa sparser::polar-question :statement sparser::mv10279)
 (:var sparser::mv10279 :isa sparser::there-exists :value sparser::mv10274 :predicate
  sparser::mv10269)
 (:var sparser::mv10274 :isa sparser::pathway :predication sparser::mv10280 :has-determiner "AN"
  :cellular-process sparser::mv10272 :raw-text "pathway")
 (:var sparser::mv10280 :isa sparser::regulate :affected-process sparser::mv10274 :that-rel t
  :agent sparser::mv10267 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv10267 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10272 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10269 :isa sparser::syntactic-there))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    source-start
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    end-of-source
("Let me know if there are any apoptotic genes stat3 regulates"
 (:var sparser::mv10284 :isa let :complement sparser::mv10298 :present "PRESENT")
 (:var sparser::mv10298 :isa sparser::know :agent sparser::mv10285 :statement sparser::mv10297
  :present "PRESENT")
 (:var sparser::mv10285 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv10297 :isa sparser::wh-question :statement sparser::mv10296 :wh if)
 (:var sparser::mv10296 :isa sparser::there-exists :value sparser::mv10294 :predicate
  sparser::mv10290)
 (:var sparser::mv10294 :isa sparser::gene :predication sparser::mv10295 :quantifier
  sparser::mv10291 :cellular-process sparser::mv10292 :raw-text "genes")
 (:var sparser::mv10295 :isa sparser::regulate :object sparser::mv10294 :agent sparser::mv10283
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv10283 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10291 :isa sparser::any :word "any")
 (:var sparser::mv10292 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10290 :isa sparser::be))

___________________
236: "Let me know which genes stat3 regulates"

                    source-start
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    end-of-source
("Let me know which genes stat3 regulates"
 (:var sparser::mv10300 :isa let :complement sparser::mv10306 :present "PRESENT")
 (:var sparser::mv10306 :isa sparser::know :agent sparser::mv10301 :statement sparser::mv10304
  :present "PRESENT")
 (:var sparser::mv10301 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv10304 :isa sparser::gene :predication sparser::mv10305 :has-determiner "WHICH"
  :raw-text "genes")
 (:var sparser::mv10305 :isa sparser::regulate :object sparser::mv10304 :agent sparser::mv10299
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv10299 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    source-start
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    question-mark
                    end-of-source
("List all the genes regulated by elk1 and srf?"
 (:var sparser::mv10308 :isa list :theme sparser::mv10311 :present "PRESENT")
 (:var sparser::mv10311 :isa sparser::gene :predication sparser::mv10312 :quantifier
  sparser::mv10309 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv10312 :isa sparser::regulate :object sparser::mv10311 :agent sparser::mv10316
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv10316 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv10307 sparser::mv10315))
 (:var sparser::mv10307 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv10315 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10309 :isa sparser::all :word "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    source-start
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    end-of-source
("List genes regulated by elk1 and srf"
 (:var sparser::mv10319 :isa list :theme sparser::mv10320 :present "PRESENT")
 (:var sparser::mv10320 :isa sparser::gene :predication sparser::mv10321 :raw-text "genes")
 (:var sparser::mv10321 :isa sparser::regulate :object sparser::mv10320 :agent sparser::mv10325
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv10325 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv10318 sparser::mv10324))
 (:var sparser::mv10318 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv10324 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    source-start
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    end-of-source
("List some genes that are regulated by elk1 and srf"
 (:var sparser::mv10328 :isa list :theme sparser::mv10330 :present "PRESENT")
 (:var sparser::mv10330 :isa sparser::gene :predication sparser::mv10338 :quantifier
  sparser::mv10329 :raw-text "genes")
 (:var sparser::mv10338 :isa sparser::regulate :object sparser::mv10330 :that-rel t :agent
  sparser::mv10337 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv10337 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv10327 sparser::mv10336))
 (:var sparser::mv10327 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv10336 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10329 :isa some :word "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    source-start
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    period
                    end-of-source
("List the evidence that kras decreases frizzled8."
 (:var sparser::mv10341 :isa list :theme sparser::mv10347 :present "PRESENT")
 (:var sparser::mv10347 :isa sparser::evidence :statement sparser::mv10346 :has-determiner "THE")
 (:var sparser::mv10346 :isa sparser::decrease :agent sparser::mv10345 :object sparser::mv10340
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv10345 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv10340 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    source-start
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    end-of-source
("Name genes regulated by elk1 and srf"
 (:var sparser::mv10349 :isa sparser::name-something :patient sparser::mv10352 :present "PRESENT")
 (:var sparser::mv10352 :isa sparser::gene :predication sparser::mv10353 :raw-text "genes")
 (:var sparser::mv10353 :isa sparser::regulate :object sparser::mv10352 :agent sparser::mv10357
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv10357 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv10348 sparser::mv10356))
 (:var sparser::mv10348 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv10356 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    source-start
e34   COPULAR-PREDICATION 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    question-mark
                    end-of-source
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:var sparser::mv10374 :isa sparser::copular-predication :item sparser::mv10364 :value
  sparser::mv10369 :predicate sparser::mv10368)
 (:var sparser::mv10364 :isa sparser::gene :has-determiner "WHICH" :predication sparser::mv10365
  :has-determiner "THE" :cellular-process sparser::mv10362 :raw-text "genes")
 (:var sparser::mv10365 :isa sparser::regulate :object sparser::mv10364 :agent sparser::mv10359
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv10359 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10362 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10369 :isa sparser::active :organ sparser::mv10372)
 (:var sparser::mv10372 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv10368 :isa sparser::be :present "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    source-start
e31   COPULAR-PREDICATION 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    question-mark
                    end-of-source
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:var sparser::mv10392 :isa sparser::copular-predication :item sparser::mv10383 :value
  sparser::mv10387 :predicate sparser::mv10386)
 (:var sparser::mv10383 :isa sparser::gene :has-determiner "WHICH" :predication sparser::mv10384
  :has-determiner "THE" :cellular-process sparser::mv10381 :raw-text "genes")
 (:var sparser::mv10384 :isa sparser::regulate :object sparser::mv10383 :agent sparser::mv10378
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv10378 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10381 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10387 :isa sparser::active :organ sparser::mv10390)
 (:var sparser::mv10390 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv10386 :isa sparser::be :present "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    source-start
e29   COPULAR-PREDICATION 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    question-mark
                    end-of-source
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:var sparser::mv10407 :isa sparser::copular-predication :item sparser::mv10398 :value
  sparser::mv10405 :predicate sparser::mv10404)
 (:var sparser::mv10398 :isa sparser::gene :has-determiner "WHICH" :predication sparser::mv10399
  :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv10399 :isa sparser::regulate :object sparser::mv10398 :agent sparser::mv10395
  :organ sparser::mv10402 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv10395 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10402 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv10405 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10404 :isa sparser::be :present "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    source-start
e23   COPULAR-PREDICATION 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    question-mark
                    end-of-source
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:var sparser::mv10421 :isa sparser::copular-predication :item sparser::mv10415 :value
  sparser::mv10419 :predicate sparser::mv10418)
 (:var sparser::mv10415 :isa sparser::gene :has-determiner "WHICH" :predication sparser::mv10416
  :has-determiner "THE" :non-cellular-location sparser::mv10414 :raw-text "genes")
 (:var sparser::mv10416 :isa sparser::regulate :object sparser::mv10415 :agent sparser::mv10411
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv10411 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10414 :isa sparser::liver)
 (:var sparser::mv10419 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10418 :isa sparser::be :present "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    source-start
e23   COPULAR-PREDICATION 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    question-mark
                    end-of-source
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:var sparser::mv10434 :isa sparser::copular-predication :item sparser::mv10428 :value
  sparser::mv10432 :predicate sparser::mv10431)
 (:var sparser::mv10428 :isa sparser::gene :has-determiner "WHICH" :predication sparser::mv10429
  :has-determiner "THE" :non-cellular-location sparser::mv10427 :raw-text "genes")
 (:var sparser::mv10429 :isa sparser::regulate :object sparser::mv10428 :agent sparser::mv10424
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv10424 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10427 :isa sparser::liver)
 (:var sparser::mv10432 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10431 :isa sparser::be :present "PRESENT"))

___________________
247: "Please find pathways involving SRF"

                    source-start
e8    BIO-FIND      1 "Please find pathways " 4
e7    INVOLVE       4 "involving SRF" 6
                    end-of-source
                    source-start
e8    VP            1 "Please find pathways " 4
e7    VP+ING        4 "involving SRF" 6
                    end-of-source


___________________
248: "Please show me KEGG pathways involving SRF"

                    source-start
e13   SHOW          1 "Please show me KEGG pathways involving SRF" 8
                    end-of-source
("Please show me KEGG pathways involving SRF"
 (:var sparser::mv10444 :isa sparser::show :|statement-OR-theme| sparser::mv10447 :beneficiary
  sparser::mv10445 :present "PRESENT" :adverb sparser::mv10443)
 (:var sparser::mv10447 :isa sparser::pathway :predication sparser::mv10448 :modifier
  sparser::mv10446 :raw-text "pathways")
 (:var sparser::mv10448 :isa sparser::involve :theme sparser::mv10447 :theme sparser::mv10449
  :progressive "PROGRESSIVE")
 (:var sparser::mv10449 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10446 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv10445 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv10443 :isa sparser::please :name "please"))

___________________
249: "Please show me pathways involving SRF"

                    source-start
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    end-of-source
("Please show me pathways involving SRF"
 (:var sparser::mv10451 :isa sparser::show :|statement-OR-theme| sparser::mv10453 :beneficiary
  sparser::mv10452 :present "PRESENT" :adverb sparser::mv10450)
 (:var sparser::mv10453 :isa sparser::pathway :predication sparser::mv10454 :raw-text "pathways")
 (:var sparser::mv10454 :isa sparser::involve :theme sparser::mv10453 :theme sparser::mv10455
  :progressive "PROGRESSIVE")
 (:var sparser::mv10455 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10452 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv10450 :isa sparser::please :name "please"))

___________________
250: "MEK activates ERK"

                    source-start
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    end-of-source
("MEK activates ERK"
 (:var sparser::mv10457 :isa sparser::bio-activate :agent sparser::mv10456 :object sparser::mv10458
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv10456 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv10458 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv10459 :isa remove :object sparser::mv10466 :present "PRESENT" :raw-text "Remove")
 (:var sparser::mv10466 :isa sparser::fact :statement sparser::mv10464 :has-determiner "THE")
 (:var sparser::mv10464 :isa sparser::bio-activate :agent sparser::mv10463 :object sparser::mv10465
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv10463 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv10465 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv10469 :isa sparser::bio-activate :agent sparser::mv10468 :object sparser::mv10470
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv10468 :isa sparser::protein-family :predication sparser::mv10467 :raw-text "MEK"
  :name "MEK" :count 2 :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv10467 :isa sparser::inactive)
 (:var sparser::mv10470 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv10471 :isa remove :object sparser::mv10479 :present "PRESENT" :raw-text "Remove")
 (:var sparser::mv10479 :isa sparser::fact :statement sparser::mv10477 :has-determiner "THE")
 (:var sparser::mv10477 :isa sparser::bio-activate :agent sparser::mv10476 :object sparser::mv10478
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv10476 :isa sparser::protein-family :predication sparser::mv10475 :raw-text "MEK"
  :name "MEK" :count 2 :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv10475 :isa sparser::inactive)
 (:var sparser::mv10478 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv10481 :isa sparser::show :|statement-OR-theme| sparser::mv10482 :present
  "PRESENT")
 (:var sparser::mv10482 :isa sparser::pathway :non-cellular-location sparser::mv10480 :raw-text
  "pathways")
 (:var sparser::mv10480 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    source-start
e9    SHOW          1 "Show me pathways involving SRF" 6
                    end-of-source
("Show me pathways involving SRF"
 (:var sparser::mv10483 :isa sparser::show :|statement-OR-theme| sparser::mv10485 :beneficiary
  sparser::mv10484 :present "PRESENT")
 (:var sparser::mv10485 :isa sparser::pathway :predication sparser::mv10486 :raw-text "pathways")
 (:var sparser::mv10486 :isa sparser::involve :theme sparser::mv10485 :theme sparser::mv10487
  :progressive "PROGRESSIVE")
 (:var sparser::mv10487 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10484 :isa sparser::interlocutor :name "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    source-start
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    end-of-source
("Show me pathways with SRF in them"
 (:var sparser::mv10488 :isa sparser::show :|statement-OR-theme| sparser::mv10490 :beneficiary
  sparser::mv10489 :present "PRESENT")
 (:var sparser::mv10490 :isa sparser::pathway :pathwaycomponent sparser::mv10492 :raw-text
  "pathways")
 (:var sparser::mv10492 :isa sparser::protein
  :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-info-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway|
  sparser::mv10494 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10494 :isa sparser::pronoun/plural :word "them")
 (:var sparser::mv10489 :isa sparser::interlocutor :name "speaker"))

___________________
257: "Show me pathways with SRF"

                    source-start
e8    SHOW          1 "Show me pathways with SRF" 6
                    end-of-source
("Show me pathways with SRF"
 (:var sparser::mv10497 :isa sparser::show :|statement-OR-theme| sparser::mv10499 :beneficiary
  sparser::mv10498 :present "PRESENT")
 (:var sparser::mv10499 :isa sparser::pathway :pathwaycomponent sparser::mv10501 :raw-text
  "pathways")
 (:var sparser::mv10501 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10498 :isa sparser::interlocutor :name "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    source-start
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    period
                    end-of-source
("Show me the evidence that kras decreases frizzled8."
 (:var sparser::mv10504 :isa sparser::show :|statement-OR-theme| sparser::mv10511 :beneficiary
  sparser::mv10505 :present "PRESENT")
 (:var sparser::mv10511 :isa sparser::evidence :statement sparser::mv10510 :has-determiner "THE")
 (:var sparser::mv10510 :isa sparser::decrease :agent sparser::mv10509 :object sparser::mv10503
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv10509 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv10503 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv10505 :isa sparser::interlocutor :name "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    source-start
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    question-mark
                    end-of-source
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:var sparser::mv10513 :isa sparser::show :|statement-OR-theme| sparser::mv10524 :beneficiary
  sparser::mv10514 :present "PRESENT")
 (:var sparser::mv10524 :isa sparser::evidence :statement sparser::mv10519 :has-determiner "THE")
 (:var sparser::mv10519 :isa sparser::decrease :agent sparser::mv10518
  :|affected-process-OR-object| sparser::mv10521 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv10518 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv10521 :isa sparser::bio-amount :measured-item sparser::mv10512 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv10512 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv10514 :isa sparser::interlocutor :name "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    source-start
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    question-mark
                    end-of-source
("Show me the evidence that kras regulates frizzled8?"
 (:var sparser::mv10526 :isa sparser::show :|statement-OR-theme| sparser::mv10533 :beneficiary
  sparser::mv10527 :present "PRESENT")
 (:var sparser::mv10533 :isa sparser::evidence :statement sparser::mv10532 :has-determiner "THE")
 (:var sparser::mv10532 :isa sparser::regulate :agent sparser::mv10531 :object sparser::mv10525
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv10531 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv10525 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN")
 (:var sparser::mv10527 :isa sparser::interlocutor :name "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    source-start
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    end-of-source
("Show transcription factors shared by elk1 and srf"
 (:var sparser::mv10536 :isa sparser::show :|statement-OR-theme| sparser::mv10534 :present
  "PRESENT")
 (:var sparser::mv10534 :isa sparser::transcription-factor :predication sparser::mv10537 :raw-text
  "transcription factors")
 (:var sparser::mv10537 :isa sparser::share :object sparser::mv10534 :participant sparser::mv10541
  :past "PAST" :raw-text "shared")
 (:var sparser::mv10541 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv10535 sparser::mv10540))
 (:var sparser::mv10535 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv10540 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

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
 (:var sparser::mv10551 :isa sparser::tell :theme sparser::mv10563 :theme sparser::mv10552 :present
  "PRESENT")
 (:var sparser::mv10563 :isa sparser::regulate :affected-process sparser::mv10556 :agent
  sparser::mv10550 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv10556 :isa sparser::pathway :has-determiner "WHAT" :cellular-process
  sparser::mv10554 :raw-text "pathways")
 (:var sparser::mv10554 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10550 :isa sparser::protein :organ sparser::mv10562 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv10562 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv10552 :isa sparser::interlocutor :name "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    source-start
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    end-of-source
("Tell me what genes elk1 and srf regulate"
 (:var sparser::mv10567 :isa sparser::tell :theme sparser::mv10570 :beneficiary sparser::mv10568
  :present "PRESENT")
 (:var sparser::mv10570 :isa sparser::gene :predication sparser::mv10573 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv10573 :isa sparser::regulate :object sparser::mv10570 :agent sparser::mv10574
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10574 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv10566 sparser::mv10572))
 (:var sparser::mv10566 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv10572 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10568 :isa sparser::interlocutor :name "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    source-start
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    end-of-source
("Tell me what pathways are regulated by stat3 in the liver"
 (:var sparser::mv10576 :isa sparser::tell :theme sparser::mv10586 :theme sparser::mv10577 :present
  "PRESENT")
 (:var sparser::mv10586 :isa sparser::regulate :affected-process sparser::mv10579 :agent
  sparser::mv10575 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv10579 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv10575 :isa sparser::protein :organ sparser::mv10585 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv10585 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv10577 :isa sparser::interlocutor :name "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    source-start
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    question-mark
                    end-of-source
("What KEGG pathways involve immune signaling?"
 (:var sparser::mv10592 :isa sparser::involve :theme sparser::mv10591 :theme sparser::mv10594
  :present "PRESENT")
 (:var sparser::mv10591 :isa sparser::pathway :has-determiner "WHAT" :modifier sparser::mv10590
  :raw-text "pathways")
 (:var sparser::mv10590 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv10594 :isa signal :modifier sparser::mv10593 :raw-text "signaling")
 (:var sparser::mv10593 :isa sparser::immune :name "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    source-start
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    question-mark
                    end-of-source
("What MAP kinase phosphatases are regulated by ELK1?"
 (:var sparser::mv10602 :isa sparser::regulate :object sparser::mv10598 :agent sparser::mv10596
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv10598 :isa sparser::phosphatase :has-determiner "WHAT" :enzyme sparser::mv10595
  :raw-text "phosphatases")
 (:var sparser::mv10595 :isa sparser::protein-family :raw-text "MAP kinase" :name
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
 (:var sparser::mv10596 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    source-start
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    question-mark
                    end-of-source
("What apoptotic genes are downstream of stat3?"
 (:var sparser::mv10609 :isa sparser::be :subject sparser::mv10608 :predicate sparser::mv10610
  :present "PRESENT")
 (:var sparser::mv10608 :isa sparser::gene :has-determiner "WHAT" :cellular-process
  sparser::mv10606 :raw-text "genes")
 (:var sparser::mv10606 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10610 :isa sparser::downstream-segment :pathwaycomponent sparser::mv10604
  :raw-text "downstream")
 (:var sparser::mv10604 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    source-start
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    question-mark
                    end-of-source
("What apoptotic genes does stat3 regulate in the liver?"
 (:var sparser::mv10620 :isa sparser::regulate :object sparser::mv10618 :agent sparser::mv10614
  :organ sparser::mv10623 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10618 :isa sparser::gene :has-determiner "WHAT" :cellular-process
  sparser::mv10616 :raw-text "genes")
 (:var sparser::mv10616 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10614 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10623 :isa sparser::liver :has-determiner "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    source-start
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    question-mark
                    end-of-source
("What apoptotic genes does stat3 regulate?"
 (:var sparser::mv10631 :isa sparser::regulate :object sparser::mv10629 :agent sparser::mv10625
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10629 :isa sparser::gene :has-determiner "WHAT" :cellular-process
  sparser::mv10627 :raw-text "genes")
 (:var sparser::mv10627 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10625 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    source-start
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    question-mark
                    end-of-source
("What apoptotic genes is stat3 upstream of?"
 (:var sparser::mv10637 :isa sparser::be :subject sparser::mv10636 :predicate sparser::mv10638
  :present "PRESENT")
 (:var sparser::mv10636 :isa sparser::gene :has-determiner "WHAT" :cellular-process
  sparser::mv10634 :raw-text "genes")
 (:var sparser::mv10634 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10638 :isa sparser::upstream-segment :pathwaycomponent sparser::mv10636 :modifier
  sparser::mv10632 :raw-text "upstream")
 (:var sparser::mv10632 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    source-start
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    question-mark
                    end-of-source
("What apoptotic pathways involve stat3?"
 (:var sparser::mv10646 :isa sparser::involve :theme sparser::mv10645 :theme sparser::mv10641
  :present "PRESENT")
 (:var sparser::mv10645 :isa sparser::pathway :has-determiner "WHAT" :cellular-process
  sparser::mv10643 :raw-text "pathways")
 (:var sparser::mv10643 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv10641 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    source-start
e9    BE            1 "What are Selumetinib's targets" 7
                    question-mark
                    end-of-source
("What are Selumetinib's targets?"
 (:var sparser::mv10648 :isa sparser::be :subject sparser::mv10647 :predicate sparser::mv10651
  :present "PRESENT")
 (:var sparser::mv10647 :isa sparser::what)
 (:var sparser::mv10651 :isa sparser::target-protein :agent sparser::mv10650 :raw-text "targets")
 (:var sparser::mv10650 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
274: "What are some JAK1 inhibitors?"

                    source-start
e9    BE            1 "What are some JAK1 inhibitors" 7
                    question-mark
                    end-of-source
("What are some JAK1 inhibitors?"
 (:var sparser::mv10655 :isa sparser::be :subject sparser::mv10654 :predicate sparser::mv10657
  :present "PRESENT")
 (:var sparser::mv10654 :isa sparser::what)
 (:var sparser::mv10657 :isa sparser::inhibitor :quantifier sparser::mv10656 :protein
  sparser::mv10653 :raw-text "inhibitors")
 (:var sparser::mv10656 :isa some :word "some")
 (:var sparser::mv10653 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    source-start
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    question-mark
                    end-of-source
("What are some drugs that inhibit BRAF?"
 (:var sparser::mv10659 :isa sparser::be :subject sparser::mv10658 :predicate sparser::mv10661
  :present "PRESENT")
 (:var sparser::mv10658 :isa sparser::what)
 (:var sparser::mv10661 :isa sparser::drug :predication sparser::mv10663 :quantifier
  sparser::mv10660 :raw-text "drugs")
 (:var sparser::mv10663 :isa sparser::inhibit :agent sparser::mv10661 :that-rel t :object
  sparser::mv10664 :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv10664 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv10660 :isa some :word "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    source-start
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("What are some genes in the MAPK signaling pathway?"
 (:var sparser::mv10667 :isa sparser::be :subject sparser::mv10666 :predicate sparser::mv10669
  :present "PRESENT")
 (:var sparser::mv10666 :isa sparser::what)
 (:var sparser::mv10669 :isa sparser::gene :context sparser::mv10665 :quantifier sparser::mv10668
  :raw-text "genes")
 (:var sparser::mv10665 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv10672 :raw-text "signaling pathway")
 (:var sparser::mv10672 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv10668 :isa some :word "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    source-start
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("What are some proteins in the MAPK signaling pathway?"
 (:var sparser::mv10676 :isa sparser::be :subject sparser::mv10675 :predicate sparser::mv10678
  :present "PRESENT")
 (:var sparser::mv10675 :isa sparser::what)
 (:var sparser::mv10678 :isa sparser::protein :|context-OR-in-pathway| sparser::mv10674 :quantifier
  sparser::mv10677 :raw-text "proteins")
 (:var sparser::mv10674 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv10681 :raw-text "signaling pathway")
 (:var sparser::mv10681 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv10677 :isa some :word "some"))

___________________
278: "What are the members of RAS?"

                    source-start
e12   BE            1 "What are the members of RAS" 7
                    question-mark
                    end-of-source
("What are the members of RAS?"
 (:var sparser::mv10684 :isa sparser::be :subject sparser::mv10683 :predicate sparser::mv10686
  :present "PRESENT")
 (:var sparser::mv10683 :isa sparser::what)
 (:var sparser::mv10686 :isa member :set sparser::mv10688 :has-determiner "THE")
 (:var sparser::mv10688 :isa sparser::protein-family :raw-text "RAS" :name "Ras" :count 3
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
 (:var sparser::mv10694 :isa sparser::be :subject sparser::mv10693 :predicate sparser::mv10696
  :present "PRESENT")
 (:var sparser::mv10693 :isa sparser::what)
 (:var sparser::mv10696 :isa sparser::micro-rna :predication sparser::mv10698 :has-determiner "THE"
  :raw-text "miRNAS")
 (:var sparser::mv10698 :isa sparser::regulate :agent sparser::mv10696 :that-rel t :object
  sparser::mv10702 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10702 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv10699 sparser::mv10700 sparser::mv10690 sparser::mv10691 sparser::mv10692))
 (:var sparser::mv10699 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv10700 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10690 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10691 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv10692 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    source-start
e18   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    end-of-source
("What are the regulators of MAPPK14 in bladder"
 (:var sparser::mv10705 :isa sparser::be :subject sparser::mv10704 :predicate sparser::mv10707
  :present "PRESENT")
 (:var sparser::mv10704 :isa sparser::what)
 (:var sparser::mv10707 :isa sparser::regulator :theme sparser::mv10703 :has-determiner "THE"
  :raw-text "regulators")
 (:var sparser::mv10703 :isa sparser::bio-entity :organ sparser::mv10710 :name "MAPPK14")
 (:var sparser::mv10710 :isa sparser::bio-organ :name "bladder" :uid "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    source-start
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    question-mark
                    end-of-source
("What are the regulators of SMURF2 in liver?"
 (:var sparser::mv10715 :isa sparser::be :subject sparser::mv10714 :predicate sparser::mv10717
  :present "PRESENT")
 (:var sparser::mv10714 :isa sparser::what)
 (:var sparser::mv10717 :isa sparser::regulator :theme sparser::mv10713 :has-determiner "THE"
  :raw-text "regulators")
 (:var sparser::mv10713 :isa sparser::protein :organ sparser::mv10720 :raw-text "SMURF2" :uid
  "UP:Q9HAU4" :name "SMUF2_HUMAN")
 (:var sparser::mv10720 :isa sparser::liver))

___________________
282: "What are the regulators of SMURF2?"

                    source-start
e13   BE            1 "What are the regulators of SMURF2" 8
                    question-mark
                    end-of-source
("What are the regulators of SMURF2?"
 (:var sparser::mv10725 :isa sparser::be :subject sparser::mv10724 :predicate sparser::mv10727
  :present "PRESENT")
 (:var sparser::mv10724 :isa sparser::what)
 (:var sparser::mv10727 :isa sparser::regulator :theme sparser::mv10723 :has-determiner "THE"
  :raw-text "regulators")
 (:var sparser::mv10723 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    source-start
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    question-mark
                    end-of-source
("What are the regulators of c-fos in lung?"
 (:var sparser::mv10732 :isa sparser::be :subject sparser::mv10731 :predicate sparser::mv10734
  :present "PRESENT")
 (:var sparser::mv10731 :isa sparser::what)
 (:var sparser::mv10734 :isa sparser::regulator :theme sparser::mv10730 :has-determiner "THE"
  :raw-text "regulators")
 (:var sparser::mv10730 :isa sparser::protein :organ sparser::mv10737 :raw-text "c-fos" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv10737 :isa sparser::lung))

___________________
284: "What are the regulators of mapk14 in bladeeer"

                    source-start
e18   IN            1 "What are the regulators of mapk14 in bladeeer" 10
                    end-of-source
("What are the regulators of mapk14 in bladeeer"
 (:var sparser::mv10750 :isa sparser::wh-question :statement sparser::mv10748 :wh sparser::what)
 (:var sparser::mv10748 :isa sparser::prepositional-phrase :pobj sparser::mv10747 :prep "IN")
 (:var sparser::mv10747 :isa sparser::bio-entity :name "bladeeer"))

___________________
285: "What are the regulators of mapk14"

                    source-start
e13   BE            1 "What are the regulators of mapk14" 8
                    end-of-source
("What are the regulators of mapk14"
 (:var sparser::mv10753 :isa sparser::be :subject sparser::mv10752 :predicate sparser::mv10755
  :present "PRESENT")
 (:var sparser::mv10752 :isa sparser::what)
 (:var sparser::mv10755 :isa sparser::regulator :theme sparser::mv10751 :has-determiner "THE"
  :raw-text "regulators")
 (:var sparser::mv10751 :isa sparser::protein :raw-text "mapk14" :uid "UP:Q16539" :name
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    source-start
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    question-mark
                    end-of-source
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:var sparser::mv10772 :isa sparser::copular-predication :item sparser::mv10761 :value
  sparser::mv10759 :predicate sparser::mv10762)
 (:var sparser::mv10761 :isa sparser::what)
 (:var sparser::mv10759 :isa sparser::in-common :theme sparser::mv10769)
 (:var sparser::mv10769 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv10770
  :raw-text "genes")
 (:var sparser::mv10770 :isa sparser::collection :raw-text "SRF, HRAS, and elk1" :type
  sparser::protein :number 3 :items (sparser::mv10766 sparser::mv10767 sparser::mv10760))
 (:var sparser::mv10766 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10767 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv10760 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv10762 :isa sparser::be :predicate sparser::mv10758 :present "PRESENT")
 (:var sparser::mv10758 :isa sparser::transcription-factor :has-determiner "THE" :raw-text
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    source-start
e20   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    question-mark
                    end-of-source
("What are the transcription factors that regulate EELK1 and SRF?"
 (:var sparser::mv10776 :isa sparser::be :subject sparser::mv10775 :predicate sparser::mv10773
  :present "PRESENT")
 (:var sparser::mv10775 :isa sparser::what)
 (:var sparser::mv10773 :isa sparser::transcription-factor :predication sparser::mv10779
  :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv10779 :isa sparser::regulate :agent sparser::mv10773 :that-rel t :object
  sparser::mv10782 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10782 :isa sparser::collection :raw-text "EELK1 and SRF" :type sparser::protein
  :number 2 :items (sparser::mv10774 sparser::mv10781))
 (:var sparser::mv10774 :isa sparser::bio-entity :name "EELK1")
 (:var sparser::mv10781 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    source-start
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    question-mark
                    end-of-source
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:var sparser::mv10788 :isa sparser::be :subject sparser::mv10787 :predicate sparser::mv10783
  :present "PRESENT")
 (:var sparser::mv10787 :isa sparser::what)
 (:var sparser::mv10783 :isa sparser::transcription-factor :predication sparser::mv10791
  :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv10791 :isa sparser::regulate :agent sparser::mv10783 :that-rel t :object
  sparser::mv10795 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10795 :isa sparser::collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv10792 sparser::mv10793 sparser::mv10784 sparser::mv10785 sparser::mv10786))
 (:var sparser::mv10792 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv10793 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10784 :isa sparser::bio-entity :name "STAAT3")
 (:var sparser::mv10785 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv10786 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    source-start
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    question-mark
                    end-of-source
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:var sparser::mv10801 :isa sparser::be :subject sparser::mv10800 :predicate sparser::mv10796
  :present "PRESENT")
 (:var sparser::mv10800 :isa sparser::what)
 (:var sparser::mv10796 :isa sparser::transcription-factor :predication sparser::mv10804
  :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv10804 :isa sparser::regulate :agent sparser::mv10796 :that-rel t :object
  sparser::mv10808 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10808 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv10805 sparser::mv10806 sparser::mv10797 sparser::mv10798 sparser::mv10799))
 (:var sparser::mv10805 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv10806 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv10797 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv10798 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv10799 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    source-start
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    question-mark
                    end-of-source
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:var sparser::mv10813 :isa sparser::be :subject sparser::mv10812 :predicate sparser::mv10817
  :present "PRESENT")
 (:var sparser::mv10812 :isa sparser::what)
 (:var sparser::mv10817 :isa sparser::regulator :theme sparser::mv10821 :has-determiner "THE"
  :context sparser::mv10815 :raw-text "regulators")
 (:var sparser::mv10821 :isa sparser::collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type
  sparser::protein :number 4 :items
  (sparser::mv10809 sparser::mv10810 sparser::mv10819 sparser::mv10811))
 (:var sparser::mv10809 :isa sparser::protein :raw-text "CCND1" :uid "UP:P24385" :name
  "CCND1_HUMAN")
 (:var sparser::mv10810 :isa sparser::protein :raw-text "FOXM1" :uid "UP:Q08050" :name
  "FOXM1_HUMAN")
 (:var sparser::mv10819 :isa sparser::protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
 (:var sparser::mv10811 :isa sparser::protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
 (:var sparser::mv10815 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    source-start
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    question-mark
                    end-of-source
("What cell cycle genes are regulated by FOS?"
 (:var sparser::mv10830 :isa sparser::regulate :object sparser::mv10825 :agent sparser::mv10829
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv10825 :isa sparser::gene :has-determiner "WHAT" :cellular-process
  sparser::mv10823 :raw-text "genes")
 (:var sparser::mv10823 :isa sparser::cellular-process :raw-text "cell cycle" :name "cell cycle"
  :uid "GO:0007049")
 (:var sparser::mv10829 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    source-start
e5    REGULATE      1 "What does ERBB regulate" 5
                    question-mark
                    end-of-source
("What does ERBB regulate?"
 (:var sparser::mv10835 :isa sparser::regulate :object sparser::mv10832 :agent sparser::mv10834
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10832 :isa sparser::what)
 (:var sparser::mv10834 :isa sparser::protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    source-start
e11   REGULATE      1 "What does it regulate in liver" 7
                    end-of-source
("What does it regulate in liver"
 (:var sparser::mv10839 :isa sparser::regulate :object sparser::mv10836 :|agent-OR-cause|
  sparser::mv10838 :organ sparser::mv10841 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10836 :isa sparser::what)
 (:var sparser::mv10838 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv10841 :isa sparser::liver))

___________________
294: "What does miR-20b-5p target"

                    source-start
e7    TARGET        1 "What does miR-20b-5p target" 11
                    end-of-source
("What does miR-20b-5p target"
 (:var sparser::mv10847 :isa sparser::target :object sparser::mv10844 :agent sparser::mv10843
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv10844 :isa sparser::what)
 (:var sparser::mv10843 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    source-start
e6    REGULATE      1 "What does p53 regulate" 6
                    question-mark
                    end-of-source
("What does p53 regulate?"
 (:var sparser::mv10851 :isa sparser::regulate :object sparser::mv10849 :agent sparser::mv10848
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10849 :isa sparser::what)
 (:var sparser::mv10848 :isa sparser::protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    source-start
e6    REGULATE      1 "What does rb1 regulate" 6
                    end-of-source
("What does rb1 regulate"
 (:var sparser::mv10855 :isa sparser::regulate :object sparser::mv10853 :agent sparser::mv10852
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10853 :isa sparser::what)
 (:var sparser::mv10852 :isa sparser::protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    source-start
e6    REGULATE      1 "What does smad2 regulate" 6
                    end-of-source
("What does smad2 regulate"
 (:var sparser::mv10859 :isa sparser::regulate :object sparser::mv10857 :agent sparser::mv10856
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10857 :isa sparser::what)
 (:var sparser::mv10856 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    source-start
e5    REGULATE      1 "What does stat regulate" 5
                    end-of-source
("What does stat regulate"
 (:var sparser::mv10863 :isa sparser::regulate :object sparser::mv10860 :agent sparser::mv10862
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10860 :isa sparser::what)
 (:var sparser::mv10862 :isa sparser::protein :raw-text "stat" :uid "UP:P35610" :name
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    source-start
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    question-mark
                    end-of-source
("What downregulates fzd8?"
 (:var sparser::mv10866 :isa sparser::downregulate :|agent-OR-cause| sparser::mv10865 :object
  sparser::mv10864 :present "PRESENT" :raw-text "downregulates")
 (:var sparser::mv10865 :isa sparser::what)
 (:var sparser::mv10864 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    source-start
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    question-mark
                    end-of-source
("What drug could I use to target pancreatic cancer?"
 (:var sparser::mv10880 :isa sparser::bio-use :patient sparser::mv10869 :modal sparser::mv10870
  :agent sparser::mv10871 :theme sparser::mv10879 :present "PRESENT" :raw-text "use")
 (:var sparser::mv10869 :isa sparser::drug :has-determiner "WHAT" :raw-text "drug")
 (:var sparser::mv10870 :isa sparser::could)
 (:var sparser::mv10871 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv10879 :isa sparser::target :object sparser::mv10867 :raw-text "target")
 (:var sparser::mv10867 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    source-start
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    question-mark
                    end-of-source
("What drug should I use for pancreatic cancer?"
 (:var sparser::mv10892 :isa sparser::bio-use :object sparser::mv10883 :modal sparser::mv10884
  :agent sparser::mv10885 :disease sparser::mv10881 :present "PRESENT" :raw-text "use")
 (:var sparser::mv10883 :isa sparser::drug :has-determiner "WHAT" :raw-text "drug")
 (:var sparser::mv10884 :isa sparser::should)
 (:var sparser::mv10885 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv10881 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    source-start
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    question-mark
                    end-of-source
("What drugs are inhibitors of GRB2?"
 (:var sparser::mv10896 :isa sparser::be :subject sparser::mv10895 :predicate sparser::mv10897
  :present "PRESENT")
 (:var sparser::mv10895 :isa sparser::drug :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv10897 :isa sparser::inhibitor :protein sparser::mv10893 :raw-text "inhibitors")
 (:var sparser::mv10893 :isa sparser::protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    source-start
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    question-mark
                    end-of-source
("What drugs inhibit MAP2K1?"
 (:var sparser::mv10903 :isa sparser::inhibit :agent sparser::mv10902 :object sparser::mv10900
  :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv10902 :isa sparser::drug :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv10900 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    source-start
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    question-mark
                    end-of-source
("What drugs regulate BRAF?"
 (:var sparser::mv10906 :isa sparser::regulate :agent sparser::mv10905 :object sparser::mv10907
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv10905 :isa sparser::drug :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv10907 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    source-start
e7    TARGET        1 "What drugs target BRAF" 5
                    question-mark
                    end-of-source
("What drugs target BRAF?"
 (:var sparser::mv10911 :isa sparser::target :agent sparser::mv10909 :object sparser::mv10912
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv10909 :isa sparser::drug :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv10912 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    source-start
e13   BE            1 "What genes are downstream of stat3" 8
                    question-mark
                    end-of-source
("What genes are downstream of stat3?"
 (:var sparser::mv10916 :isa sparser::be :subject sparser::mv10915 :predicate sparser::mv10917
  :present "PRESENT")
 (:var sparser::mv10915 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv10917 :isa sparser::downstream-segment :pathwaycomponent sparser::mv10913
  :raw-text "downstream")
 (:var sparser::mv10913 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    question-mark
                    end-of-source
("What genes are in the MAPK signaling pathway?"
 (:var sparser::mv10931 :isa sparser::copular-predication-of-pp :item sparser::mv10923 :value
  sparser::mv10930 :prep "IN" :predicate sparser::mv10924)
 (:var sparser::mv10923 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv10930 :isa sparser::gene :context sparser::mv10921 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv10921 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv10927 :raw-text "signaling pathway")
 (:var sparser::mv10927 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv10924 :isa sparser::be :present "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    source-start
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    question-mark
                    end-of-source
("What genes are in the MAPK signaling pathways?"
 (:var sparser::mv10943 :isa sparser::copular-predication-of-pp :item sparser::mv10935 :value
  sparser::mv10942 :prep "IN" :predicate sparser::mv10936)
 (:var sparser::mv10935 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv10942 :isa sparser::gene :context sparser::mv10933 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv10933 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv10939 :raw-text "signaling pathways")
 (:var sparser::mv10939 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv10936 :isa sparser::be :present "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    question-mark
                    end-of-source
("What genes are in the immune system pathway?"
 (:var sparser::mv10955 :isa sparser::copular-predication-of-pp :item sparser::mv10947 :value
  sparser::mv10954 :prep "IN" :predicate sparser::mv10948)
 (:var sparser::mv10947 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv10954 :isa sparser::gene :context sparser::mv10951 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv10951 :isa sparser::pathway :has-determiner "THE" :non-cellular-location
  sparser::mv10945 :raw-text "pathway")
 (:var sparser::mv10945 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405")
 (:var sparser::mv10948 :isa sparser::be :present "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    question-mark
                    end-of-source
("What genes are in the prolactin signaling pathway?"
 (:var sparser::mv10967 :isa sparser::copular-predication-of-pp :item sparser::mv10959 :value
  sparser::mv10966 :prep "IN" :predicate sparser::mv10960)
 (:var sparser::mv10959 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv10966 :isa sparser::gene :context sparser::mv10957 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv10957 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv10963 :raw-text "signaling pathway")
 (:var sparser::mv10963 :isa sparser::protein :raw-text "prolactin" :uid "UP:P01236" :name
  "PRL_HUMAN")
 (:var sparser::mv10960 :isa sparser::be :present "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    source-start
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    question-mark
                    end-of-source
("What genes are involved in the IL-12 pathway?"
 (:var sparser::mv10980 :isa sparser::involve :theme sparser::mv10972 :context sparser::mv10977
  :present "PRESENT")
 (:var sparser::mv10972 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv10977 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv10970
  :raw-text "pathway")
 (:var sparser::mv10970 :isa sparser::protein :raw-text "IL-12" :uid "NCIT:C20514" :name
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    source-start
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    question-mark
                    end-of-source
("What genes are involved in the Prolactin pathway?"
 (:var sparser::mv10991 :isa sparser::involve :theme sparser::mv10982 :context sparser::mv10988
  :present "PRESENT")
 (:var sparser::mv10982 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv10988 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv10987
  :raw-text "pathway")
 (:var sparser::mv10987 :isa sparser::protein :raw-text "Prolactin" :uid "UP:P01236" :name
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    source-start
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    question-mark
                    end-of-source
("What genes are involved in the il-12 pathway?"
 (:var sparser::mv11002 :isa sparser::involve :theme sparser::mv10994 :context sparser::mv10999
  :present "PRESENT")
 (:var sparser::mv10994 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv10999 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv10992
  :raw-text "pathway")
 (:var sparser::mv10992 :isa sparser::protein-family :raw-text "il-12" :name "IL-12" :count 2
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
 (:var sparser::mv11013 :isa sparser::involve :theme sparser::mv11005 :context sparser::mv11010
  :present "PRESENT")
 (:var sparser::mv11005 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11010 :isa sparser::pathway :has-determiner "THE" :non-cellular-location
  sparser::mv11003 :raw-text "pathway")
 (:var sparser::mv11003 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    source-start
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    question-mark
                    end-of-source
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:var sparser::mv11026 :isa sparser::regulate :object sparser::mv11018 :agent sparser::mv11025
  :present "PRESENT" :superlative sparser::mv11020 :adverb sparser::mv11021 :raw-text "regulated")
 (:var sparser::mv11018 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11025 :isa sparser::collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p"
  :type sparser::micro-rna :number 3 :items (sparser::mv11014 sparser::mv11015 sparser::mv11016))
 (:var sparser::mv11014 :isa sparser::micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid
  "MIMAT0000765")
 (:var sparser::mv11015 :isa sparser::micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid
  "MIMAT0000646")
 (:var sparser::mv11016 :isa sparser::micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
  "MIMAT0000437")
 (:var sparser::mv11020 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv11021 :isa sparser::frequently :name "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    source-start
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    question-mark
                    end-of-source
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:var sparser::mv11041 :isa sparser::regulate :object sparser::mv11033 :agent sparser::mv11040
  :present "PRESENT" :superlative sparser::mv11035 :adverb sparser::mv11036 :raw-text "regulated")
 (:var sparser::mv11033 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11040 :isa sparser::collection :raw-text
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :type sparser::micro-rna :number 4 :items
  (sparser::mv11028 sparser::mv11029 sparser::mv11030 sparser::mv11031))
 (:var sparser::mv11028 :isa sparser::micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid
  "MIMAT0000765")
 (:var sparser::mv11029 :isa sparser::micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid
  "MIMAT0000646")
 (:var sparser::mv11030 :isa sparser::micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
  "MIMAT0000437")
 (:var sparser::mv11031 :isa sparser::micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm"
  :uid "MIMAT0000075")
 (:var sparser::mv11035 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv11036 :isa sparser::frequently :name "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    source-start
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    question-mark
                    end-of-source
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:var sparser::mv11056 :isa sparser::regulate :object sparser::mv11048 :agent sparser::mv11055
  :present "PRESENT" :superlative sparser::mv11050 :adverb sparser::mv11051 :raw-text "regulated")
 (:var sparser::mv11048 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11055 :isa sparser::collection :raw-text
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :type sparser::micro-rna :number 4 :items
  (sparser::mv11043 sparser::mv11044 sparser::mv11045 sparser::mv11046))
 (:var sparser::mv11043 :isa sparser::micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid
  "MIMAT0000765")
 (:var sparser::mv11044 :isa sparser::micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid
  "MIMAT0000646")
 (:var sparser::mv11045 :isa sparser::micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
  "MIMAT0000437")
 (:var sparser::mv11046 :isa sparser::micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm"
  :uid "MIMAT0000075")
 (:var sparser::mv11050 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv11051 :isa sparser::frequently :name "frequently"))

___________________
318: "What genes are regulated by FAKEPRTN"

                    source-start
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    end-of-source
("What genes are regulated by FAKEPRTN"
 (:var sparser::mv11064 :isa sparser::regulate :object sparser::mv11059 :agent sparser::mv11063
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11059 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11063 :isa sparser::bio-entity :name "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    source-start
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    question-mark
                    end-of-source
("What genes are regulated by elk1 and srf?"
 (:var sparser::mv11075 :isa sparser::regulate :object sparser::mv11068 :agent sparser::mv11074
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11068 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11074 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv11066 sparser::mv11073))
 (:var sparser::mv11066 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv11073 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    source-start
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    question-mark
                    end-of-source
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:var sparser::mv11086 :isa sparser::regulate :object sparser::mv11080 :agent sparser::mv11085
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11080 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11085 :isa sparser::collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type
  sparser::micro-rna :number 2 :items (sparser::mv11077 sparser::mv11078))
 (:var sparser::mv11077 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413")
 (:var sparser::mv11078 :isa sparser::micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm"
  :uid "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    source-start
e12   REGULATE      1 "What genes are regulated by smda2" 8
                    end-of-source
("What genes are regulated by smda2"
 (:var sparser::mv11094 :isa sparser::regulate :object sparser::mv11090 :agent sparser::mv11088
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11090 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11088 :isa sparser::bio-entity :name "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    source-start
e11   REGULATE      1 "What genes are regulated by srf" 7
                    end-of-source
("What genes are regulated by srf"
 (:var sparser::mv11102 :isa sparser::regulate :object sparser::mv11097 :agent sparser::mv11101
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11097 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11101 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    source-start
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    end-of-source
("What genes are regulated by stat3 and srf"
 (:var sparser::mv11113 :isa sparser::regulate :object sparser::mv11106 :agent sparser::mv11112
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11106 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11112 :isa sparser::collection :raw-text "stat3 and srf" :type sparser::protein
  :number 2 :items (sparser::mv11104 sparser::mv11111))
 (:var sparser::mv11104 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11111 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    source-start
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    question-mark
                    end-of-source
("What genes are targeted by lung cancer?"
 (:var sparser::mv11121 :isa sparser::target :object sparser::mv11117 :cause sparser::mv11115
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv11117 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11115 :isa sparser::cancer :name "lung cancer" :uid "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    source-start
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("What genes are there in the MAPK signaling pathway?"
 (:var sparser::mv11135 :isa sparser::copular-predication-of-pp :item sparser::mv11125 :value
  sparser::mv11134 :prep "IN" :predicate sparser::mv11126)
 (:var sparser::mv11125 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11134 :isa sparser::gene :context sparser::mv11123 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv11123 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv11131 :raw-text "signaling pathway")
 (:var sparser::mv11131 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv11126 :isa sparser::be :present "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    source-start
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("What genes are used in the MAPK signaling pathway?"
 (:var sparser::mv11145 :isa sparser::bio-use :object sparser::mv11139 :context sparser::mv11137
  :present "PRESENT" :raw-text "used")
 (:var sparser::mv11139 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11137 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv11144 :raw-text "signaling pathway")
 (:var sparser::mv11144 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv11152 :isa sparser::target :object sparser::mv11149 :cause sparser::mv11147
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv11149 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11147 :isa sparser::cancer :name "lung cancer" :uid "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    source-start
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    question-mark
                    end-of-source
("What genes does miR-20b-5p target?"
 (:var sparser::mv11158 :isa sparser::target :object sparser::mv11155 :agent sparser::mv11153
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv11155 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11153 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    source-start
e9    TARGET        1 "What genes does miR-562 target" 8
                    question-mark
                    end-of-source
("What genes does miR-562 target?"
 (:var sparser::mv11164 :isa sparser::target :object sparser::mv11161 :agent sparser::mv11159
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv11161 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11159 :isa sparser::micro-rna :raw-text "miR-562" :name "microRNA 562" :uid
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    source-start
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    question-mark
                    end-of-source
("What genes does smad2 upregulate?"
 (:var sparser::mv11169 :isa sparser::upregulate :object sparser::mv11167 :agent sparser::mv11165
  :present "PRESENT" :raw-text "upregulate")
 (:var sparser::mv11167 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11165 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    source-start
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    question-mark
                    end-of-source
("What genes does stat3 regulate in liver cells?"
 (:var sparser::mv11174 :isa sparser::regulate :object sparser::mv11172 :agent sparser::mv11170
  :cell-type sparser::mv11177 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11172 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11170 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11177 :isa sparser::cell-type :non-cellular-location sparser::mv11176)
 (:var sparser::mv11176 :isa sparser::liver))

___________________
332: "What genes does stat3 regulate in liver?"

                    source-start
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    question-mark
                    end-of-source
("What genes does stat3 regulate in liver?"
 (:var sparser::mv11183 :isa sparser::regulate :object sparser::mv11181 :agent sparser::mv11179
  :organ sparser::mv11185 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11181 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11179 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11185 :isa sparser::liver))

___________________
333: "What genes does stat3 regulate in lung?"

                    source-start
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    question-mark
                    end-of-source
("What genes does stat3 regulate in lung?"
 (:var sparser::mv11191 :isa sparser::regulate :object sparser::mv11189 :agent sparser::mv11187
  :organ sparser::mv11193 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11189 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11187 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11193 :isa sparser::lung))

___________________
334: "What genes does stat3 regulate"

                    source-start
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    end-of-source
("What genes does stat3 regulate"
 (:var sparser::mv11199 :isa sparser::regulate :object sparser::mv11197 :agent sparser::mv11195
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11197 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11195 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    source-start
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    question-mark
                    end-of-source
("What genes in the liver does stat3 regulate?"
 (:var sparser::mv11207 :isa sparser::regulate :object sparser::mv11202 :agent sparser::mv11200
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11202 :isa sparser::gene :organ sparser::mv11205 :has-determiner "WHAT" :raw-text
  "genes")
 (:var sparser::mv11205 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv11200 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
336: "What genes is stat3 upstream from?"

                    source-start
e12   FROM          1 "What genes is stat3 upstream from" 8
                    question-mark
                    end-of-source
("What genes is stat3 upstream from?"
 (:var sparser::mv11216 :isa sparser::wh-question :statement sparser::mv11215 :var nil :wh
  sparser::what)
 (:var sparser::mv11215 :isa sparser::from :word "from"))

___________________
337: "What genes is stat3 upstream of?"

                    source-start
e12   BE            1 "What genes is stat3 upstream of" 8
                    question-mark
                    end-of-source
("What genes is stat3 upstream of?"
 (:var sparser::mv11220 :isa sparser::be :subject sparser::mv11219 :predicate sparser::mv11221
  :present "PRESENT")
 (:var sparser::mv11219 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11221 :isa sparser::upstream-segment :pathwaycomponent sparser::mv11219 :modifier
  sparser::mv11217 :raw-text "upstream")
 (:var sparser::mv11217 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    source-start
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    question-mark
                    end-of-source
("What genes regulated by FOS are kinases?"
 (:var sparser::mv11229 :isa sparser::be :subject sparser::mv11225 :predicate sparser::mv11230
  :present "PRESENT")
 (:var sparser::mv11225 :isa sparser::gene :predication sparser::mv11226 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv11226 :isa sparser::regulate :object sparser::mv11225 :agent sparser::mv11228
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv11228 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv11230 :isa sparser::kinase :raw-text "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    source-start
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    question-mark
                    end-of-source
("What genes regulated by stat3 are kinases?"
 (:var sparser::mv11237 :isa sparser::be :subject sparser::mv11234 :predicate sparser::mv11238
  :present "PRESENT")
 (:var sparser::mv11234 :isa sparser::gene :predication sparser::mv11235 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv11235 :isa sparser::regulate :object sparser::mv11234 :agent sparser::mv11232
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv11232 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11238 :isa sparser::kinase :raw-text "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    source-start
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    question-mark
                    end-of-source
("What immune pathways involve KRAS and ELK1?"
 (:var sparser::mv11244 :isa sparser::involve :theme sparser::mv11243 :theme sparser::mv11247
  :present "PRESENT")
 (:var sparser::mv11243 :isa sparser::pathway :has-determiner "WHAT" :modifier sparser::mv11242
  :raw-text "pathways")
 (:var sparser::mv11242 :isa sparser::immune :name "immune")
 (:var sparser::mv11247 :isa sparser::collection :raw-text "KRAS and ELK1" :type sparser::protein
  :number 2 :items (sparser::mv11245 sparser::mv11240))
 (:var sparser::mv11245 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv11240 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    source-start
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    question-mark
                    end-of-source
("What immune pathways involve SRF?"
 (:var sparser::mv11251 :isa sparser::involve :theme sparser::mv11250 :theme sparser::mv11252
  :present "PRESENT")
 (:var sparser::mv11250 :isa sparser::pathway :has-determiner "WHAT" :modifier sparser::mv11249
  :raw-text "pathways")
 (:var sparser::mv11249 :isa sparser::immune :name "immune")
 (:var sparser::mv11252 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    source-start
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    question-mark
                    end-of-source
("What immune pathways involve kras and elk1?"
 (:var sparser::mv11257 :isa sparser::involve :theme sparser::mv11256 :theme sparser::mv11260
  :present "PRESENT")
 (:var sparser::mv11256 :isa sparser::pathway :has-determiner "WHAT" :modifier sparser::mv11255
  :raw-text "pathways")
 (:var sparser::mv11255 :isa sparser::immune :name "immune")
 (:var sparser::mv11260 :isa sparser::collection :raw-text "kras and elk1" :type sparser::protein
  :number 2 :items (sparser::mv11258 sparser::mv11253))
 (:var sparser::mv11258 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv11253 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    source-start
e13   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    question-mark
                    end-of-source
("What immune pathways involve tap1 and jak1?"
 (:var sparser::mv11266 :isa sparser::involve :theme sparser::mv11265 :theme sparser::mv11268
  :present "PRESENT")
 (:var sparser::mv11265 :isa sparser::pathway :has-determiner "WHAT" :modifier sparser::mv11264
  :raw-text "pathways")
 (:var sparser::mv11264 :isa sparser::immune :name "immune")
 (:var sparser::mv11268 :isa sparser::collection :raw-text "tap1 and jak1" :type sparser::protein
  :number 2 :items (sparser::mv11261 sparser::mv11262))
 (:var sparser::mv11261 :isa sparser::protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
 (:var sparser::mv11262 :isa sparser::protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    source-start
e4    INHIBIT       1 "What inhibits BRAF" 4
                    question-mark
                    end-of-source
("What inhibits BRAF?"
 (:var sparser::mv11270 :isa sparser::inhibit :|agent-OR-cause| sparser::mv11269 :object
  sparser::mv11271 :present "PRESENT" :raw-text "inhibits")
 (:var sparser::mv11269 :isa sparser::what)
 (:var sparser::mv11271 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    source-start
e5    BE            1 "What is STAT3" 5
                    question-mark
                    end-of-source
("What is STAT3?"
 (:var sparser::mv11274 :isa sparser::be :subject sparser::mv11273 :predicate sparser::mv11272
  :present "PRESENT")
 (:var sparser::mv11273 :isa sparser::what)
 (:var sparser::mv11272 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    source-start
e4    BE            1 "What is STAT" 4
                    question-mark
                    end-of-source
("What is STAT?"
 (:var sparser::mv11276 :isa sparser::be :subject sparser::mv11275 :predicate sparser::mv11277
  :present "PRESENT")
 (:var sparser::mv11275 :isa sparser::what)
 (:var sparser::mv11277 :isa sparser::protein :raw-text "STAT" :uid "UP:P35610" :name
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    source-start
e11   BE            1 "What is downstream of stat3" 7
                    question-mark
                    end-of-source
("What is downstream of stat3?"
 (:var sparser::mv11280 :isa sparser::be :subject sparser::mv11279 :predicate sparser::mv11281
  :present "PRESENT")
 (:var sparser::mv11279 :isa sparser::what)
 (:var sparser::mv11281 :isa sparser::downstream-segment :pathwaycomponent sparser::mv11278
  :raw-text "downstream")
 (:var sparser::mv11278 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    source-start
e4    BE            1 "What is erbb" 4
                    question-mark
                    end-of-source
("What is erbb?"
 (:var sparser::mv11286 :isa sparser::be :subject sparser::mv11285 :predicate sparser::mv11287
  :present "PRESENT")
 (:var sparser::mv11285 :isa sparser::what)
 (:var sparser::mv11287 :isa sparser::protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    source-start
e4    BE            1 "What is errb" 4
                    question-mark
                    end-of-source
("What is errb?"
 (:var sparser::mv11289 :isa sparser::be :subject sparser::mv11288 :predicate sparser::mv11290
  :present "PRESENT")
 (:var sparser::mv11288 :isa sparser::what)
 (:var sparser::mv11290 :isa sparser::bio-entity :name "errb"))

___________________
350: "What is regulated by elk1"

                    source-start
e10   REGULATE      1 "What is regulated by elk1" 7
                    end-of-source
("What is regulated by elk1"
 (:var sparser::mv11296 :isa sparser::regulate :|affected-process-OR-object| sparser::mv11292
  :agent sparser::mv11291 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11292 :isa sparser::what)
 (:var sparser::mv11291 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    source-start
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    question-mark
                    end-of-source
("What is the evidence that kras decreases frizzled8?"
 (:var sparser::mv11300 :isa sparser::be :subject sparser::mv11299 :predicate sparser::mv11306
  :present "PRESENT")
 (:var sparser::mv11299 :isa sparser::what)
 (:var sparser::mv11306 :isa sparser::evidence :statement sparser::mv11305 :has-determiner "THE")
 (:var sparser::mv11305 :isa sparser::decrease :agent sparser::mv11304 :object sparser::mv11298
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv11304 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv11298 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    source-start
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    question-mark
                    end-of-source
("What is the evidence that kras decreases the amount of frizzled8?"
 (:var sparser::mv11309 :isa sparser::be :subject sparser::mv11308 :predicate sparser::mv11319
  :present "PRESENT")
 (:var sparser::mv11308 :isa sparser::what)
 (:var sparser::mv11319 :isa sparser::evidence :statement sparser::mv11314 :has-determiner "THE")
 (:var sparser::mv11314 :isa sparser::decrease :agent sparser::mv11313
  :|affected-process-OR-object| sparser::mv11316 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv11313 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv11316 :isa sparser::bio-amount :measured-item sparser::mv11307 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv11307 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    source-start
e13   BE            1 "What is the target of Selumetinib" 7
                    question-mark
                    end-of-source
("What is the target of Selumetinib?"
 (:var sparser::mv11321 :isa sparser::be :subject sparser::mv11320 :predicate sparser::mv11323
  :present "PRESENT")
 (:var sparser::mv11320 :isa sparser::what)
 (:var sparser::mv11323 :isa sparser::target-protein :agent sparser::mv11326 :has-determiner "THE"
  :raw-text "target")
 (:var sparser::mv11326 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
354: "What kinases does smad2 regulate"

                    source-start
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    end-of-source
("What kinases does smad2 regulate"
 (:var sparser::mv11332 :isa sparser::regulate :object sparser::mv11330 :agent sparser::mv11328
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11330 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv11328 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    source-start
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    question-mark
                    end-of-source
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:var sparser::mv11340 :isa sparser::regulate :agent sparser::mv11337 :object sparser::mv11344
  :present "PRESENT" :adverb sparser::mv11338 :adverb sparser::mv11339 :raw-text "regulate")
 (:var sparser::mv11337 :isa sparser::micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
 (:var sparser::mv11344 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv11341 sparser::mv11342 sparser::mv11333 sparser::mv11334 sparser::mv11335))
 (:var sparser::mv11341 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv11342 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv11333 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11334 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv11335 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN")
 (:var sparser::mv11338 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv11339 :isa sparser::frequently :name "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    source-start
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    question-mark
                    end-of-source
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:var sparser::mv11350 :isa sparser::regulate :agent sparser::mv11349 :object sparser::mv11354
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11349 :isa sparser::micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
 (:var sparser::mv11354 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv11351 sparser::mv11352 sparser::mv11345 sparser::mv11346 sparser::mv11347))
 (:var sparser::mv11351 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv11352 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv11345 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11346 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv11347 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    source-start
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    question-mark
                    end-of-source
("What micrornas are regulated by p53?"
 (:var sparser::mv11361 :isa sparser::regulate :object sparser::mv11357 :agent sparser::mv11355
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11357 :isa sparser::micro-rna :has-determiner "WHAT" :raw-text "micrornas")
 (:var sparser::mv11355 :isa sparser::protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    source-start
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    end-of-source
("What micrornas regulate genes in the mapk signaling pathways"
 (:var sparser::mv11366 :isa sparser::regulate :agent sparser::mv11365 :object sparser::mv11367
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11365 :isa sparser::micro-rna :has-determiner "WHAT" :raw-text "micrornas")
 (:var sparser::mv11367 :isa sparser::gene :context sparser::mv11363 :raw-text "genes")
 (:var sparser::mv11363 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv11370 :raw-text "signaling pathways")
 (:var sparser::mv11370 :isa sparser::protein-family :raw-text "mapk" :name
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
e6    INVOLVE       1 "What pahtways involve SRF" 5
                    question-mark
                    end-of-source
("What pahtways involve SRF?"
 (:var sparser::mv11374 :isa sparser::involve :theme sparser::mv11373 :theme sparser::mv11375
  :present "PRESENT")
 (:var sparser::mv11373 :isa sparser::bio-entity :has-determiner "WHAT" :name "pahtways")
 (:var sparser::mv11375 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
360: "What pathways are common to STAT3 and SRF?"

                    source-start
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    question-mark
                    end-of-source
("What pathways are common to STAT3 and SRF?"
 (:var sparser::mv11386 :isa sparser::copular-predication :item sparser::mv11378 :value
  sparser::mv11380 :predicate sparser::mv11379)
 (:var sparser::mv11378 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv11380 :isa sparser::common :theme sparser::mv11384)
 (:var sparser::mv11384 :isa sparser::collection :raw-text "STAT3 and SRF" :type sparser::protein
  :number 2 :items (sparser::mv11376 sparser::mv11383))
 (:var sparser::mv11376 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11383 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv11379 :isa sparser::be :present "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    source-start
e6    INVOLVE       1 "What pathways involve cfos" 5
                    question-mark
                    end-of-source
("What pathways involve cfos?"
 (:var sparser::mv11389 :isa sparser::involve :theme sparser::mv11388 :theme sparser::mv11390
  :present "PRESENT")
 (:var sparser::mv11388 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv11390 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    source-start
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    question-mark
                    end-of-source
("What pathways involve kras and elk1?"
 (:var sparser::mv11394 :isa sparser::involve :theme sparser::mv11393 :theme sparser::mv11397
  :present "PRESENT")
 (:var sparser::mv11393 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv11397 :isa sparser::collection :raw-text "kras and elk1" :type sparser::protein
  :number 2 :items (sparser::mv11395 sparser::mv11391))
 (:var sparser::mv11395 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv11391 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    source-start
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    question-mark
                    end-of-source
("What pathways involve the SRF transcription factor?"
 (:var sparser::mv11401 :isa sparser::involve :theme sparser::mv11400 :theme sparser::mv11398
  :present "PRESENT")
 (:var sparser::mv11400 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv11398 :isa sparser::transcription-factor :has-determiner "THE" :modifier
  sparser::mv11403 :raw-text "transcription factor")
 (:var sparser::mv11403 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
364: "What pathways utilize srf and is srf a kinase"

                    source-start
e16   KINASE        1 "What pathways utilize srf and is srf a kinase" 10
                    end-of-source
("What pathways utilize srf and is srf a kinase"
 (:var sparser::mv11414 :isa sparser::wh-question :statement sparser::mv11412 :var nil :wh
  sparser::what)
 (:var sparser::mv11412 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
365: "What proteins are in the MAPK family?"

                    source-start
e15   COPULAR-PREDICATION 1 "What proteins are in the MAPK family" 8
                    question-mark
                    end-of-source
("What proteins are in the MAPK family?"
 (:var sparser::mv11425 :isa sparser::copular-predication-of-pp :item sparser::mv11416 :value
  sparser::mv11423 :prep sparser::mv11418 :predicate sparser::mv11417)
 (:var sparser::mv11416 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv11423 :isa sparser::protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
 (:var sparser::mv11418 :isa sparser::in :word "in")
 (:var sparser::mv11417 :isa sparser::be :present "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    source-start
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    question-mark
                    end-of-source
("What proteins are targeted by lung cancer?"
 (:var sparser::mv11432 :isa sparser::target :object sparser::mv11428 :cause sparser::mv11426
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv11428 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv11426 :isa sparser::cancer :name "lung cancer" :uid "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    source-start
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    question-mark
                    end-of-source
("What proteins does PLX-4720 target?"
 (:var sparser::mv11439 :isa sparser::target :object sparser::mv11436 :agent sparser::mv11434
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv11436 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv11434 :isa sparser::drug :raw-text "PLX-4720" :name "PLX 4720" :uid
  "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    source-start
e9    TARGET        1 "What proteins does lung cancer target" 7
                    question-mark
                    end-of-source
("What proteins does lung cancer target?"
 (:var sparser::mv11445 :isa sparser::target :object sparser::mv11442 :cause sparser::mv11440
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv11442 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv11440 :isa sparser::cancer :name "lung cancer" :uid "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    source-start
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    question-mark
                    end-of-source
("What proteins does vemurafenib target?"
 (:var sparser::mv11451 :isa sparser::target :object sparser::mv11447 :agent sparser::mv11449
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv11447 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv11449 :isa sparser::drug :raw-text "vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    source-start
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    question-mark
                    end-of-source
("What proteins might lead to the development of lung cancer?"
 (:var sparser::mv11456 :isa sparser::lead :agent sparser::mv11454 :theme sparser::mv11459 :modal
  sparser::mv11455 :raw-text "lead")
 (:var sparser::mv11454 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv11459 :isa sparser::development :disease sparser::mv11452 :has-determiner "THE"
  :raw-text "development")
 (:var sparser::mv11452 :isa sparser::cancer :name "lung cancer" :uid "TS-0571")
 (:var sparser::mv11455 :isa sparser::might))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    source-start
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    period
                    end-of-source
("What proteins might lead to the development of pancreatic cancer."
 (:var sparser::mv11467 :isa sparser::lead :agent sparser::mv11465 :theme sparser::mv11470 :modal
  sparser::mv11466 :raw-text "lead")
 (:var sparser::mv11465 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv11470 :isa sparser::development :disease sparser::mv11463 :has-determiner "THE"
  :raw-text "development")
 (:var sparser::mv11463 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv11466 :isa sparser::might))

___________________
372: "What reactome pathways involve immune signaling?"

                    source-start
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    question-mark
                    end-of-source
("What reactome pathways involve immune signaling?"
 (:var sparser::mv11477 :isa sparser::involve :theme sparser::mv11476 :theme sparser::mv11479
  :present "PRESENT")
 (:var sparser::mv11476 :isa sparser::pathway :has-determiner "WHAT" :modifier sparser::mv11475
  :raw-text "pathways")
 (:var sparser::mv11475 :isa sparser::database :name "Reactome" :uid "Reactome")
 (:var sparser::mv11479 :isa signal :modifier sparser::mv11478 :raw-text "signaling")
 (:var sparser::mv11478 :isa sparser::immune :name "immune"))

___________________
373: "What regulates HGF?"

                    source-start
e4    REGULATE      1 "What regulates HGF" 4
                    question-mark
                    end-of-source
("What regulates HGF?"
 (:var sparser::mv11481 :isa sparser::regulate :|agent-OR-cause| sparser::mv11480 :object
  sparser::mv11482 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv11480 :isa sparser::what)
 (:var sparser::mv11482 :isa sparser::protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    source-start
e5    REGULATE      1 "What regulates SMURF2" 5
                    question-mark
                    end-of-source
("What regulates SMURF2?"
 (:var sparser::mv11485 :isa sparser::regulate :|agent-OR-cause| sparser::mv11484 :object
  sparser::mv11483 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv11484 :isa sparser::what)
 (:var sparser::mv11483 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    source-start
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    end-of-source
("What regulates smurf2 in liver"
 (:var sparser::mv11488 :isa sparser::regulate :|agent-OR-cause| sparser::mv11487 :object
  sparser::mv11486 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv11487 :isa sparser::what)
 (:var sparser::mv11486 :isa sparser::protein :organ sparser::mv11490 :raw-text "smurf2" :uid
  "UP:Q9HAU4" :name "SMUF2_HUMAN")
 (:var sparser::mv11490 :isa sparser::liver))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    source-start
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    question-mark
                    end-of-source
("What signaling pathways are shared by RELA and ELK1?"
 (:var sparser::mv11501 :isa sparser::share :object sparser::mv11492 :participant sparser::mv11500
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv11492 :isa sparser::signaling-pathway :has-determiner "WHAT" :raw-text
  "signaling pathways")
 (:var sparser::mv11500 :isa sparser::collection :raw-text "RELA and ELK1" :type sparser::protein
  :number 2 :items (sparser::mv11498 sparser::mv11493))
 (:var sparser::mv11498 :isa sparser::protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
 (:var sparser::mv11493 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    source-start
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    question-mark
                    end-of-source
("What signaling pathways are shared by STAT3 and SRF?"
 (:var sparser::mv11512 :isa sparser::share :object sparser::mv11503 :participant sparser::mv11511
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv11503 :isa sparser::signaling-pathway :has-determiner "WHAT" :raw-text
  "signaling pathways")
 (:var sparser::mv11511 :isa sparser::collection :raw-text "STAT3 and SRF" :type sparser::protein
  :number 2 :items (sparser::mv11504 sparser::mv11510))
 (:var sparser::mv11504 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11510 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    source-start
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    question-mark
                    end-of-source
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:var sparser::mv11524 :isa sparser::share :object sparser::mv11514 :participant sparser::mv11523
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv11514 :isa sparser::signaling-pathway :has-determiner "WHAT" :raw-text
  "signaling pathways")
 (:var sparser::mv11523 :isa sparser::collection :raw-text "STAT3, SOCS3 and SRF" :type
  sparser::protein :number 3 :items (sparser::mv11515 sparser::mv11516 sparser::mv11522))
 (:var sparser::mv11515 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11516 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11522 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

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
 (:var sparser::mv11535 :isa sparser::bio-produce :agent sparser::mv11532 :object sparser::mv11533
  :present "PRESENT" :raw-text "produces")
 (:var sparser::mv11532 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factor")
 (:var sparser::mv11533 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    source-start
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    question-mark
                    end-of-source
("What transcription factor transcribes SMURF2?"
 (:var sparser::mv11539 :isa sparser::transcribe :agent sparser::mv11536 :object sparser::mv11537
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv11536 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factor")
 (:var sparser::mv11537 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    question-mark
                    end-of-source
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv11555 :isa sparser::copular-predication :item sparser::mv11540 :value
  sparser::mv11547 :predicate sparser::mv11546)
 (:var sparser::mv11540 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11547 :isa sparser::common :theme sparser::mv11552)
 (:var sparser::mv11552 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv11553
  :raw-text "genes")
 (:var sparser::mv11553 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv11541 sparser::mv11542 sparser::mv11550 sparser::mv11543 sparser::mv11544))
 (:var sparser::mv11541 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11542 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11550 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv11543 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv11544 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN")
 (:var sparser::mv11546 :isa sparser::be :present "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    source-start
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    question-mark
                    end-of-source
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:var sparser::mv11569 :isa sparser::copular-predication :item sparser::mv11556 :value
  sparser::mv11562 :predicate sparser::mv11561)
 (:var sparser::mv11556 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11562 :isa sparser::common :theme sparser::mv11566)
 (:var sparser::mv11566 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv11567
  :raw-text "genes")
 (:var sparser::mv11567 :isa sparser::collection :raw-text "STAT3, SOCS3, and CREB5" :type
  sparser::protein :number 3 :items (sparser::mv11557 sparser::mv11558 sparser::mv11559))
 (:var sparser::mv11557 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11558 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11559 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN")
 (:var sparser::mv11561 :isa sparser::be :present "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    source-start
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    question-mark
                    end-of-source
("What genes does stat3 regulate?"
 (:var sparser::mv11574 :isa sparser::regulate :object sparser::mv11572 :agent sparser::mv11570
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11572 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv11570 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    source-start
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    question-mark
                    end-of-source
("What transcription factors are common to these genes?"
 (:var sparser::mv11583 :isa sparser::copular-predication :item sparser::mv11575 :value
  sparser::mv11578 :predicate sparser::mv11577)
 (:var sparser::mv11575 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11578 :isa sparser::common :theme sparser::mv11581)
 (:var sparser::mv11581 :isa sparser::gene :has-determiner "THESE" :raw-text "genes")
 (:var sparser::mv11577 :isa sparser::be :present "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    question-mark
                    end-of-source
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv11599 :isa sparser::copular-predication :item sparser::mv11584 :value
  sparser::mv11585 :predicate sparser::mv11591)
 (:var sparser::mv11584 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11585 :isa sparser::in-common :theme sparser::mv11596)
 (:var sparser::mv11596 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv11597
  :raw-text "genes")
 (:var sparser::mv11597 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv11586 sparser::mv11587 sparser::mv11594 sparser::mv11588 sparser::mv11589))
 (:var sparser::mv11586 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11587 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11594 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv11588 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv11589 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN")
 (:var sparser::mv11591 :isa sparser::be :present "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    source-start
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    question-mark
                    end-of-source
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:var sparser::mv11613 :isa sparser::copular-predication :item sparser::mv11600 :value
  sparser::mv11601 :predicate sparser::mv11606)
 (:var sparser::mv11600 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11601 :isa sparser::in-common :theme sparser::mv11610)
 (:var sparser::mv11610 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv11611
  :raw-text "genes")
 (:var sparser::mv11611 :isa sparser::collection :raw-text "STAT3, SOCS3, and CREB5" :type
  sparser::protein :number 3 :items (sparser::mv11602 sparser::mv11603 sparser::mv11604))
 (:var sparser::mv11602 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11603 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11604 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN")
 (:var sparser::mv11606 :isa sparser::be :present "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    source-start
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    question-mark
                    end-of-source
("What transcription factors are regulators of SMURF2 in liver?"
 (:var sparser::mv11617 :isa sparser::be :subject sparser::mv11614 :predicate sparser::mv11618
  :present "PRESENT")
 (:var sparser::mv11614 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11618 :isa sparser::regulator :theme sparser::mv11615 :raw-text "regulators")
 (:var sparser::mv11615 :isa sparser::protein :organ sparser::mv11621 :raw-text "SMURF2" :uid
  "UP:Q9HAU4" :name "SMUF2_HUMAN")
 (:var sparser::mv11621 :isa sparser::liver))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    source-start
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    question-mark
                    end-of-source
("What transcription factors are regulators of SMURF2?"
 (:var sparser::mv11627 :isa sparser::be :subject sparser::mv11624 :predicate sparser::mv11628
  :present "PRESENT")
 (:var sparser::mv11624 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11628 :isa sparser::regulator :theme sparser::mv11625 :raw-text "regulators")
 (:var sparser::mv11625 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    source-start
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    question-mark
                    end-of-source
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:var sparser::mv11643 :isa sparser::share :object sparser::mv11631 :participant sparser::mv11641
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv11631 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11641 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv11642
  :raw-text "genes")
 (:var sparser::mv11642 :isa sparser::collection :raw-text "SRF, HRAS, and elk1" :type
  sparser::protein :number 3 :items (sparser::mv11638 sparser::mv11639 sparser::mv11632))
 (:var sparser::mv11638 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv11639 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv11632 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    source-start
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    question-mark
                    end-of-source
("What transcription factors regulate SMURF2 in liver?"
 (:var sparser::mv11648 :isa sparser::regulate :agent sparser::mv11645 :object sparser::mv11646
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11645 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11646 :isa sparser::protein :organ sparser::mv11650 :raw-text "SMURF2" :uid
  "UP:Q9HAU4" :name "SMUF2_HUMAN")
 (:var sparser::mv11650 :isa sparser::liver))

___________________
392: "What transcription factors regulate ZEB1?"

                    source-start
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    question-mark
                    end-of-source
("What transcription factors regulate ZEB1?"
 (:var sparser::mv11655 :isa sparser::regulate :agent sparser::mv11652 :object sparser::mv11653
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11652 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11653 :isa sparser::protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    source-start
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    end-of-source
("What transcription factors regulate erk"
 (:var sparser::mv11658 :isa sparser::regulate :agent sparser::mv11656 :object sparser::mv11659
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11656 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11659 :isa sparser::protein-family :raw-text "erk" :name "ERK" :count 7
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
 (:var sparser::mv11662 :isa sparser::regulate :agent sparser::mv11660 :theme sparser::mv11668
  :object sparser::mv11663 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11660 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11668 :isa sparser::bio-entity :has-determiner "THE" :modifier sparser::mv11666
  :cellular-process sparser::mv11667 :name "pathwya")
 (:var sparser::mv11666 :isa sparser::protein-family :raw-text "mapk" :name
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
 (:var sparser::mv11667 :isa signal :raw-text "signaling")
 (:var sparser::mv11663 :isa sparser::gene :raw-text "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    source-start
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    question-mark
                    end-of-source
("What transcription factors regulated frizzled8?"
 (:var sparser::mv11671 :isa sparser::protein :has-determiner "WHAT" :predication sparser::mv11673
  :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
 (:var sparser::mv11673 :isa sparser::regulate :object sparser::mv11671 :agent sparser::mv11670
  :raw-text "regulated")
 (:var sparser::mv11670 :isa sparser::transcription-factor :raw-text "transcription factors"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    source-start
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    question-mark
                    end-of-source
("What transcription factors transcribe SMURF2?"
 (:var sparser::mv11677 :isa sparser::transcribe :agent sparser::mv11674 :object sparser::mv11675
  :present "PRESENT" :raw-text "transcribe")
 (:var sparser::mv11674 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11675 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    source-start
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    question-mark
                    end-of-source
("What upregulates fzd8?"
 (:var sparser::mv11680 :isa sparser::upregulate :|agent-OR-cause| sparser::mv11679 :object
  sparser::mv11678 :present "PRESENT" :raw-text "upregulates")
 (:var sparser::mv11679 :isa sparser::what)
 (:var sparser::mv11678 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    source-start
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    question-mark
                    end-of-source
("Where is STAT3 expressed?"
 (:var sparser::mv11686 :isa sparser::gene-transcript-express :location sparser::mv11682 :object
  sparser::mv11681 :past "PAST" :raw-text "expressed")
 (:var sparser::mv11682 :isa sparser::where)
 (:var sparser::mv11681 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    source-start
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    question-mark
                    end-of-source
("Which KEGG pathways involve SRF?"
 (:var sparser::mv11690 :isa sparser::involve :theme sparser::mv11689 :theme sparser::mv11691
  :present "PRESENT")
 (:var sparser::mv11689 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv11688
  :raw-text "pathways")
 (:var sparser::mv11688 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv11691 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    source-start
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    question-mark
                    end-of-source
("Which KEGG pathways use SRF?"
 (:var sparser::mv11696 :isa sparser::bio-use :agent sparser::mv11694 :object sparser::mv11697
  :present "PRESENT" :raw-text "use")
 (:var sparser::mv11694 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv11693
  :raw-text "pathways")
 (:var sparser::mv11693 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv11697 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    source-start
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    question-mark
                    end-of-source
("What transcription factors regulate frizzled8?"
 (:var sparser::mv11701 :isa sparser::regulate :agent sparser::mv11698 :object sparser::mv11699
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11698 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv11699 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    source-start
e7    REGULATE      1 "Which also regulate srf" 5
                    end-of-source
("Which also regulate srf"
 (:var sparser::mv11705 :isa sparser::regulate :|agent-OR-cause| sparser::mv11702 :object
  sparser::mv11706 :present "PRESENT" :adverb sparser::mv11703 :raw-text "regulate")
 (:var sparser::mv11702 :isa sparser::which)
 (:var sparser::mv11706 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv11703 :isa sparser::also :name "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    source-start
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    question-mark
                    end-of-source
("Which apoptotic genes are regulated by stat3?"
 (:var sparser::mv11715 :isa sparser::regulate :object sparser::mv11711 :agent sparser::mv11707
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11711 :isa sparser::gene :has-determiner "WHICH" :cellular-process
  sparser::mv11709 :raw-text "genes")
 (:var sparser::mv11709 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv11707 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    source-start
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    question-mark
                    end-of-source
("Which apoptotic genes is stat3 upstream of?"
 (:var sparser::mv11722 :isa sparser::be :subject sparser::mv11721 :predicate sparser::mv11723
  :present "PRESENT")
 (:var sparser::mv11721 :isa sparser::gene :has-determiner "WHICH" :cellular-process
  sparser::mv11719 :raw-text "genes")
 (:var sparser::mv11719 :isa sparser::apoptosis :raw-text "apoptotic")
 (:var sparser::mv11723 :isa sparser::upstream-segment :pathwaycomponent sparser::mv11721 :modifier
  sparser::mv11717 :raw-text "upstream")
 (:var sparser::mv11717 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    source-start
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    question-mark
                    end-of-source
("Which genes are targeted by STAT3?"
 (:var sparser::mv11732 :isa sparser::target :object sparser::mv11728 :agent sparser::mv11726
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv11728 :isa sparser::gene :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv11726 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    source-start
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    question-mark
                    end-of-source
("Which genes regulated by stat3 are kinases?"
 (:var sparser::mv11739 :isa sparser::be :subject sparser::mv11736 :predicate sparser::mv11740
  :present "PRESENT")
 (:var sparser::mv11736 :isa sparser::gene :predication sparser::mv11737 :has-determiner "WHICH"
  :raw-text "genes")
 (:var sparser::mv11737 :isa sparser::regulate :object sparser::mv11736 :agent sparser::mv11734
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv11734 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11740 :isa sparser::kinase :raw-text "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    question-mark
                    end-of-source
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv11756 :isa sparser::share :object sparser::mv11748 :participant sparser::mv11754
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv11748 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv11747
  :raw-text "pathways")
 (:var sparser::mv11747 :isa sparser::immune :name "immune")
 (:var sparser::mv11754 :isa sparser::gene :expresses sparser::mv11755 :raw-text "genes")
 (:var sparser::mv11755 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv11742 sparser::mv11743 sparser::mv11752 sparser::mv11744 sparser::mv11745))
 (:var sparser::mv11742 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11743 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11752 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv11744 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv11745 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    source-start
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    question-mark
                    end-of-source
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:var sparser::mv11771 :isa sparser::share :object sparser::mv11763 :participant sparser::mv11769
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv11763 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv11762
  :raw-text "pathways")
 (:var sparser::mv11762 :isa sparser::immune :name "immune")
 (:var sparser::mv11769 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv11770
  :raw-text "genes")
 (:var sparser::mv11770 :isa sparser::collection :raw-text "STAT3, SOCS3, and CREB5" :type
  sparser::protein :number 3 :items (sparser::mv11758 sparser::mv11759 sparser::mv11760))
 (:var sparser::mv11758 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11759 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11760 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    source-start
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    end-of-source
("Which kegg pathways utilize genes regulated by smad2"
 (:var sparser::mv11777 :isa sparser::utilize :participant sparser::mv11776 :object
  sparser::mv11778 :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv11776 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv11775
  :raw-text "pathways")
 (:var sparser::mv11775 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv11778 :isa sparser::gene :predication sparser::mv11779 :raw-text "genes")
 (:var sparser::mv11779 :isa sparser::regulate :object sparser::mv11778 :agent sparser::mv11773
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv11773 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    source-start
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    question-mark
                    end-of-source
("Which Reactome pathways utilize SRF?"
 (:var sparser::mv11785 :isa sparser::utilize :participant sparser::mv11784 :object
  sparser::mv11786 :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv11784 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv11783
  :raw-text "pathways")
 (:var sparser::mv11783 :isa sparser::database :name "Reactome" :uid "Reactome")
 (:var sparser::mv11786 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    source-start
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    end-of-source
("Which kegg pathways utilize it"
 (:var sparser::mv11790 :isa sparser::utilize :participant sparser::mv11789 :object
  sparser::mv11791 :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv11789 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv11788
  :raw-text "pathways")
 (:var sparser::mv11788 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv11791 :isa sparser::pronoun/inanimate :word "it"))

___________________
412: "Which of them are regulated by elk1"

                    source-start
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    end-of-source
("Which of them are regulated by elk1"
 (:var sparser::mv11799 :isa sparser::regulate :|affected-process-OR-object| sparser::mv11795
  :agent sparser::mv11792 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11795 :isa sparser::pronoun/plural :quantifier sparser::mv11793 :word "them")
 (:var sparser::mv11793 :isa sparser::which)
 (:var sparser::mv11792 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    source-start
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    end-of-source
("Which of these are expressed in liver"
 (:var sparser::mv11809 :isa sparser::gene-transcript-express :object sparser::mv11804 :organ
  sparser::mv11808 :present "PRESENT" :raw-text "expressed")
 (:var sparser::mv11804 :isa sparser::these :quantifier sparser::mv11802 :word "these")
 (:var sparser::mv11802 :isa sparser::which) (:var sparser::mv11808 :isa sparser::liver))

___________________
414: "Which of these are in immune pathways"

                    source-start
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    end-of-source
("Which of these are in immune pathways"
 (:var sparser::mv11820 :isa sparser::copular-predication-of-pp :item sparser::mv11814 :value
  sparser::mv11818 :prep sparser::mv11816 :predicate sparser::mv11815)
 (:var sparser::mv11814 :isa sparser::these :quantifier sparser::mv11812 :word "these")
 (:var sparser::mv11812 :isa sparser::which)
 (:var sparser::mv11818 :isa sparser::pathway :modifier sparser::mv11817 :raw-text "pathways")
 (:var sparser::mv11817 :isa sparser::immune :name "immune")
 (:var sparser::mv11816 :isa sparser::in :word "in")
 (:var sparser::mv11815 :isa sparser::be :present "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    source-start
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    question-mark
                    end-of-source
("what proteins does MEK phosphorylate?"
 (:var sparser::mv11826 :isa sparser::phosphorylate :amino-acid sparser::mv11823 :agent
  sparser::mv11825 :present "PRESENT" :raw-text "phosphorylate")
 (:var sparser::mv11823 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv11825 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
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
 (:var sparser::mv11830 :isa sparser::be :subject sparser::mv11829 :predicate sparser::mv11831
  :present "PRESENT")
 (:var sparser::mv11829 :isa sparser::these :quantifier sparser::mv11827 :word "these")
 (:var sparser::mv11827 :isa sparser::which)
 (:var sparser::mv11831 :isa sparser::kinase :raw-text "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    source-start
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    end-of-source
("Which of those are regulated by elk1"
 (:var sparser::mv11840 :isa sparser::regulate :|affected-process-OR-object| sparser::mv11836
  :agent sparser::mv11833 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11836 :isa sparser::those :quantifier sparser::mv11834 :word "those")
 (:var sparser::mv11834 :isa sparser::which)
 (:var sparser::mv11833 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    source-start
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    end-of-source
("Which of these are regulated by elk1"
 (:var sparser::mv11850 :isa sparser::regulate :|affected-process-OR-object| sparser::mv11846
  :agent sparser::mv11843 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11846 :isa sparser::these :quantifier sparser::mv11844 :word "these")
 (:var sparser::mv11844 :isa sparser::which)
 (:var sparser::mv11843 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    source-start
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    end-of-source
("Which of these are regulated by fakeprotein"
 (:var sparser::mv11860 :isa sparser::regulate :|affected-process-OR-object| sparser::mv11855
  :agent sparser::mv11859 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv11855 :isa sparser::these :quantifier sparser::mv11853 :word "these")
 (:var sparser::mv11853 :isa sparser::which)
 (:var sparser::mv11859 :isa sparser::bio-entity :name "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    question-mark
                    end-of-source
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv11876 :isa sparser::share :object sparser::mv11868 :participant sparser::mv11874
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv11868 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv11874 :isa sparser::gene :expresses sparser::mv11875 :raw-text "genes")
 (:var sparser::mv11875 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv11863 sparser::mv11864 sparser::mv11872 sparser::mv11865 sparser::mv11866))
 (:var sparser::mv11863 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11864 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11872 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv11865 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv11866 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    source-start
e20   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    end-of-source
("Which pathways are shared by stat3, socs3, and creb5"
 (:var sparser::mv11888 :isa sparser::share :object sparser::mv11882 :participant sparser::mv11887
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv11882 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv11887 :isa sparser::collection :raw-text "stat3, socs3, and creb5" :type
  sparser::protein :number 3 :items (sparser::mv11878 sparser::mv11879 sparser::mv11880))
 (:var sparser::mv11878 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11879 :isa sparser::protein :raw-text "socs3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11880 :isa sparser::protein :raw-text "creb5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    source-start
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    question-mark
                    end-of-source
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:var sparser::mv11904 :isa sparser::share :object sparser::mv11895 :participant sparser::mv11902
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv11895 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv11902 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv11903
  :raw-text "genes")
 (:var sparser::mv11903 :isa sparser::collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :type sparser::protein :number 5 :items
  (sparser::mv11890 sparser::mv11891 sparser::mv11900 sparser::mv11892 sparser::mv11893))
 (:var sparser::mv11890 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv11891 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv11900 :isa sparser::protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
 (:var sparser::mv11892 :isa sparser::protein :raw-text "FOXO3" :uid "UP:O43524" :name
  "FOXO3_HUMAN")
 (:var sparser::mv11893 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    source-start
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    question-mark
                    end-of-source
("Which pathways involve TAP1 and JAK1?"
 (:var sparser::mv11910 :isa sparser::involve :theme sparser::mv11909 :theme sparser::mv11912
  :present "PRESENT")
 (:var sparser::mv11909 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv11912 :isa sparser::collection :raw-text "TAP1 and JAK1" :type sparser::protein
  :number 2 :items (sparser::mv11906 sparser::mv11907))
 (:var sparser::mv11906 :isa sparser::protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
 (:var sparser::mv11907 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    source-start
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    question-mark
                    end-of-source
("Which pathways involve calcium?"
 (:var sparser::mv11915 :isa sparser::involve :theme sparser::mv11914 :theme sparser::mv11916
  :present "PRESENT")
 (:var sparser::mv11914 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv11916 :isa sparser::calcium :raw-text "calcium"))

___________________
425: "Which pathways use SRF?"

                    source-start
e7    BIO-USE       1 "Which pathways use SRF" 5
                    question-mark
                    end-of-source
("Which pathways use SRF?"
 (:var sparser::mv11920 :isa sparser::bio-use :agent sparser::mv11918 :object sparser::mv11921
  :present "PRESENT" :raw-text "use")
 (:var sparser::mv11918 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv11921 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    source-start
e7    BIO-USE       1 "Which pathways use these" 5
                    end-of-source
("Which pathways use these"
 (:var sparser::mv11925 :isa sparser::bio-use :agent sparser::mv11923 :object sparser::mv11926
  :present "PRESENT" :raw-text "use")
 (:var sparser::mv11923 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv11926 :isa sparser::these :word "these"))

___________________
427: "Which pathways utilize SRF?"

                    source-start
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    question-mark
                    end-of-source
("Which pathways utilize SRF?"
 (:var sparser::mv11929 :isa sparser::utilize :participant sparser::mv11928 :object
  sparser::mv11930 :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv11928 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv11930 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    source-start
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    end-of-source
("Which pathways utilize these genes"
 (:var sparser::mv11933 :isa sparser::utilize :participant sparser::mv11932 :object
  sparser::mv11935 :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv11932 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv11935 :isa sparser::gene :has-determiner "THESE" :raw-text "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    source-start
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    question-mark
                    end-of-source
("Which proteins are targeted by STAT3?"
 (:var sparser::mv11942 :isa sparser::target :object sparser::mv11938 :agent sparser::mv11936
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv11938 :isa sparser::protein :has-determiner "WHICH" :raw-text "proteins")
 (:var sparser::mv11936 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    source-start
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    end-of-source
("Which reactome pathways utilize srf"
 (:var sparser::mv11947 :isa sparser::utilize :participant sparser::mv11946 :object
  sparser::mv11948 :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv11946 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv11945
  :raw-text "pathways")
 (:var sparser::mv11945 :isa sparser::database :name "Reactome" :uid "Reactome")
 (:var sparser::mv11948 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    source-start
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("Which transcription factors are in the MAPK signaling pathway?"
 (:var sparser::mv11959 :isa sparser::copular-predication-of-pp :item sparser::mv11949 :value
  sparser::mv11958 :prep "IN" :predicate sparser::mv11952)
 (:var sparser::mv11949 :isa sparser::transcription-factor :has-determiner "WHICH" :raw-text
  "transcription factors")
 (:var sparser::mv11958 :isa sparser::transcription-factor :|context-OR-in-pathway|
  sparser::mv11950 :has-determiner "WHICH" :raw-text "transcription factors")
 (:var sparser::mv11950 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv11955 :raw-text "signaling pathway")
 (:var sparser::mv11955 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv11952 :isa sparser::be :present "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    source-start
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    question-mark
                    end-of-source
("Which transcription factors regulate frizzled8 in the liver?"
 (:var sparser::mv11964 :isa sparser::regulate :agent sparser::mv11961 :object sparser::mv11962
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11961 :isa sparser::transcription-factor :has-determiner "WHICH" :raw-text
  "transcription factors")
 (:var sparser::mv11962 :isa sparser::protein :organ sparser::mv11967 :raw-text "frizzled8" :uid
  "UP:Q9H461" :name "FZD8_HUMAN")
 (:var sparser::mv11967 :isa sparser::liver :has-determiner "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    source-start
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    question-mark
                    end-of-source
("Which transcription factors regulate frizzled8?"
 (:var sparser::mv11972 :isa sparser::regulate :agent sparser::mv11969 :object sparser::mv11970
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv11969 :isa sparser::transcription-factor :has-determiner "WHICH" :raw-text
  "transcription factors")
 (:var sparser::mv11970 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    source-start
e11   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    period
                    end-of-source
("Let's move AKT1 on top."
 (:var sparser::mv11979 :isa sparser::explicit-suggestion :suggestion sparser::mv11975 :marker
  sparser::let-as-directive)
 (:var sparser::mv11975 :isa sparser::move-something-somewhere :at-relative-location
  sparser::mv11977 :theme sparser::mv11974 :present "PRESENT")
 (:var sparser::mv11977 :isa sparser::top-qua-location)
 (:var sparser::mv11974 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    source-start
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    period
                    end-of-source
("Let's show the phosphorylated AKT1 on top."
 (:var sparser::mv11988 :isa sparser::explicit-suggestion :suggestion sparser::mv11982 :marker
  sparser::let-as-directive)
 (:var sparser::mv11982 :isa sparser::show :at-relative-location sparser::mv11986
  :|statement-OR-theme| sparser::mv11981 :present "PRESENT")
 (:var sparser::mv11986 :isa sparser::top-qua-location)
 (:var sparser::mv11981 :isa sparser::protein :has-determiner "THE" :predication sparser::mv11984
  :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv11984 :isa sparser::phosphorylate :substrate sparser::mv11981 :raw-text
  "phosphorylated"))

___________________
436: "What are the common upstreams of AKT1 and  BRAF?"

                    source-start
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    question-mark
                    end-of-source
("What are the common upstreams of AKT1 and  BRAF?"
 (:var sparser::mv11991 :isa sparser::be :subject sparser::mv11990 :predicate sparser::mv11994
  :present "PRESENT")
 (:var sparser::mv11990 :isa sparser::what)
 (:var sparser::mv11994 :isa sparser::upstream-segment :pathwaycomponent sparser::mv11998
  :has-determiner "THE" :predication sparser::mv11993 :raw-text "upstreams")
 (:var sparser::mv11998 :isa sparser::collection :raw-text "AKT1 and  BRAF" :type sparser::protein
  :number 2 :items (sparser::mv11989 sparser::mv11997))
 (:var sparser::mv11989 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv11997 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv11993 :isa sparser::common))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    source-start
e12   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    question-mark
                    end-of-source
("Is stat3 expressed exclusively in liver?"
 (:var sparser::mv12007 :isa sparser::polar-question :statement sparser::mv12002)
 (:var sparser::mv12002 :isa sparser::gene-transcript-express :object sparser::mv12000 :organ
  sparser::mv12005 :past "PAST" :raw-text "expressed")
 (:var sparser::mv12000 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12005 :isa sparser::liver))

___________________
438: "Is stat3 expressed in spleen?"

                    source-start
e10   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    question-mark
                    end-of-source
("Is stat3 expressed in spleen?"
 (:var sparser::mv12014 :isa sparser::polar-question :statement sparser::mv12010)
 (:var sparser::mv12010 :isa sparser::gene-transcript-express :object sparser::mv12008 :organ
  sparser::mv12012 :past "PAST" :raw-text "expressed")
 (:var sparser::mv12008 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12012 :isa sparser::spleen))

___________________
439: "Show phosphorylated akt1 on top."

                    source-start
e11   SHOW          1 "Show phosphorylated akt1 on top" 7
                    period
                    end-of-source
("Show phosphorylated akt1 on top."
 (:var sparser::mv12016 :isa sparser::show :at-relative-location sparser::mv12019
  :|statement-OR-theme| sparser::mv12015 :present "PRESENT")
 (:var sparser::mv12019 :isa sparser::top-qua-location)
 (:var sparser::mv12015 :isa sparser::protein :predication sparser::mv12017 :raw-text "akt1" :uid
  "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv12017 :isa sparser::phosphorylate :substrate sparser::mv12015 :raw-text
  "phosphorylated"))

___________________
440: "What are the common upstreams of AKT1 and  BRA?"

                    source-start
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    question-mark
                    end-of-source
("What are the common upstreams of AKT1 and  BRA?"
 (:var sparser::mv12023 :isa sparser::be :subject sparser::mv12022 :predicate sparser::mv12026
  :present "PRESENT")
 (:var sparser::mv12022 :isa sparser::what)
 (:var sparser::mv12026 :isa sparser::upstream-segment :pathwaycomponent sparser::mv12030
  :has-determiner "THE" :predication sparser::mv12025 :raw-text "upstreams")
 (:var sparser::mv12030 :isa sparser::collection :raw-text "AKT1 and  BRA" :type sparser::protein
  :number 2 :items (sparser::mv12021 sparser::mv12029))
 (:var sparser::mv12021 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv12029 :isa sparser::bio-entity :name "BRA")
 (:var sparser::mv12025 :isa sparser::common))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    source-start
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    period
                    end-of-source
("RAF activates MEK and MEK activates ERK."
 (:var sparser::mv12039 :isa sparser::collection :raw-text
  "RAF activates MEK and MEK activates ERK" :type sparser::bio-activate :number 2 :items
  (sparser::mv12033 sparser::mv12037))
 (:var sparser::mv12033 :isa sparser::bio-activate :agent sparser::mv12032 :object sparser::mv12034
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv12032 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114")
 (:var sparser::mv12034 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv12037 :isa sparser::bio-activate :agent sparser::mv12036 :object sparser::mv12038
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv12036 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv12038 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv12041 :isa sparser::be :subject sparser::mv12040 :predicate sparser::mv12043
  :present "PRESENT")
 (:var sparser::mv12040 :isa sparser::what)
 (:var sparser::mv12043 :isa sparser::path :end sparser::mv12047 :start sparser::mv12045
  :has-determiner "THE")
 (:var sparser::mv12047 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv12045 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
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
 (:var sparser::mv12050 :isa remove :object sparser::mv12057 :present "PRESENT" :raw-text "remove")
 (:var sparser::mv12057 :isa sparser::fact :statement sparser::mv12055 :has-determiner "THE")
 (:var sparser::mv12055 :isa sparser::bio-activate :agent sparser::mv12054 :object sparser::mv12056
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv12054 :isa sparser::protein-family :raw-text "mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv12056 :isa sparser::protein-family :raw-text "erk" :name "ERK" :count 7
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
 (:var sparser::mv12065 :isa sparser::explicit-suggestion :suggestion sparser::mv12060 :marker
  sparser::let-as-directive)
 (:var sparser::mv12060 :isa sparser::show :at-relative-location sparser::mv12063
  :|statement-OR-theme| sparser::mv12059 :present "PRESENT")
 (:var sparser::mv12063 :isa sparser::top-qua-location)
 (:var sparser::mv12059 :isa sparser::protein :predication sparser::mv12061 :raw-text "akt1" :uid
  "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv12061 :isa sparser::phosphorylate :substrate sparser::mv12059 :raw-text
  "phosphorylated"))

___________________
445: "what are positive regulators of the cfos gene?"

                    source-start
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    question-mark
                    end-of-source
("what are positive regulators of the cfos gene?"
 (:var sparser::mv12068 :isa sparser::be :subject sparser::mv12067 :predicate sparser::mv12066
  :present "PRESENT")
 (:var sparser::mv12067 :isa sparser::what)
 (:var sparser::mv12066 :isa sparser::positive-regulator :theme sparser::mv12072 :raw-text
  "positive regulators")
 (:var sparser::mv12072 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv12071
  :raw-text "gene")
 (:var sparser::mv12071 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    source-start
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    question-mark
                    end-of-source
("what transcription factors regulate FOS in soft tissue?"
 (:var sparser::mv12077 :isa sparser::regulate :agent sparser::mv12074 :object sparser::mv12078
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv12074 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv12078 :isa sparser::protein :organ sparser::mv12075 :raw-text "FOS" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv12075 :isa sparser::bio-organ :name "soft tissue" :uid "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    source-start
e14   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    question-mark
                    end-of-source
("Are there any drugs inhibiting MEK?"
 (:var sparser::mv12089 :isa sparser::polar-question :statement sparser::mv12088)
 (:var sparser::mv12088 :isa sparser::there-exists :value sparser::mv12085 :predicate
  sparser::mv12082)
 (:var sparser::mv12085 :isa sparser::drug :predication sparser::mv12086 :quantifier
  sparser::mv12084 :raw-text "drugs")
 (:var sparser::mv12086 :isa sparser::inhibit :agent sparser::mv12085 :object sparser::mv12087
  :progressive "PROGRESSIVE" :raw-text "inhibiting")
 (:var sparser::mv12087 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv12084 :isa sparser::any :word "any")
 (:var sparser::mv12082 :isa sparser::syntactic-there))

___________________
448: "Are there any drugs targeting KRAS?"

                    source-start
e14   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    question-mark
                    end-of-source
("Are there any drugs targeting KRAS?"
 (:var sparser::mv12098 :isa sparser::polar-question :statement sparser::mv12097)
 (:var sparser::mv12097 :isa sparser::there-exists :value sparser::mv12094 :predicate
  sparser::mv12091)
 (:var sparser::mv12094 :isa sparser::drug :predication sparser::mv12095 :quantifier
  sparser::mv12093 :raw-text "drugs")
 (:var sparser::mv12095 :isa sparser::target :agent sparser::mv12094 :object sparser::mv12096
  :progressive "PROGRESSIVE" :raw-text "targeting")
 (:var sparser::mv12096 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv12093 :isa sparser::any :word "any")
 (:var sparser::mv12091 :isa sparser::syntactic-there))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    source-start
e31   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    question-mark
                    end-of-source
("Are there any genes in the liver that are regulated by stat3?"
 (:var sparser::mv12116 :isa sparser::polar-question :statement sparser::mv12112)
 (:var sparser::mv12112 :isa sparser::there-exists :value sparser::mv12104 :predicate
  sparser::mv12101)
 (:var sparser::mv12104 :isa sparser::gene :predication sparser::mv12113 :organ sparser::mv12107
  :quantifier sparser::mv12103 :raw-text "genes")
 (:var sparser::mv12113 :isa sparser::regulate :object sparser::mv12104 :that-rel t :agent
  sparser::mv12099 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv12099 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12107 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv12103 :isa sparser::any :word "any")
 (:var sparser::mv12101 :isa sparser::syntactic-there))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    source-start
e31   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    question-mark
                    end-of-source
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:var sparser::mv12134 :isa sparser::polar-question :statement sparser::mv12130)
 (:var sparser::mv12130 :isa sparser::there-exists :value sparser::mv12122 :predicate
  sparser::mv12119)
 (:var sparser::mv12122 :isa sparser::gene :predication sparser::mv12123 :quantifier
  sparser::mv12121 :raw-text "genes")
 (:var sparser::mv12123 :isa sparser::involve :theme sparser::mv12122 :theme sparser::mv12125 :past
  "PAST")
 (:var sparser::mv12125 :isa sparser::apoptosis :predication sparser::mv12131 :raw-text
  "apoptosis")
 (:var sparser::mv12131 :isa sparser::regulate :affected-process sparser::mv12125 :that-rel t
  :agent sparser::mv12117 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv12117 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12121 :isa sparser::any :word "any")
 (:var sparser::mv12119 :isa sparser::syntactic-there))

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
 (:var sparser::mv12155 :isa sparser::polar-question :statement sparser::mv12153)
 (:var sparser::mv12153 :isa sparser::there-exists :value sparser::mv12151 :predicate
  sparser::mv12148)
 (:var sparser::mv12151 :isa sparser::inhibitor :|target-OR-protein| sparser::mv12146 :quantifier
  sparser::mv12150 :raw-text "inhibitors")
 (:var sparser::mv12146 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
 (:var sparser::mv12150 :isa sparser::any :word "any")
 (:var sparser::mv12148 :isa sparser::syntactic-there))

___________________
453: "Are there genes regulated by elk1 and srf"

                    source-start
e19   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    end-of-source
("Are there genes regulated by elk1 and srf"
 (:var sparser::mv12168 :isa sparser::polar-question :statement sparser::mv12165)
 (:var sparser::mv12165 :isa sparser::there-exists :value sparser::mv12160 :predicate
  sparser::mv12158)
 (:var sparser::mv12160 :isa sparser::gene :predication sparser::mv12161 :raw-text "genes")
 (:var sparser::mv12161 :isa sparser::regulate :object sparser::mv12160 :agent sparser::mv12166
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv12166 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv12156 sparser::mv12164))
 (:var sparser::mv12156 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12164 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv12158 :isa sparser::syntactic-there))

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
e28   BIO-FIND      1 "Can you find any apoptotic pathways that stat3 is involved " 12
e15   IN            12 "in" 13
                    question-mark
                    end-of-source
                    source-start
e28   S             1 "Can you find any apoptotic pathways that stat3 is involved " 12
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
 (:var sparser::mv12228 :isa sparser::polar-question :statement sparser::mv12222)
 (:var sparser::mv12222 :isa sparser::show :agent sparser::mv12221 :|statement-OR-theme|
  sparser::mv12224 :beneficiary sparser::mv12223 :modal "CAN")
 (:var sparser::mv12221 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12224 :isa sparser::gene :predication sparser::mv12225 :raw-text "genes")
 (:var sparser::mv12225 :isa sparser::regulate :object sparser::mv12224 :agent sparser::mv12219
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv12219 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12223 :isa sparser::interlocutor :name "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    source-start
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    end-of-source
("Can you show me genes that are regulated by ELK1"
 (:var sparser::mv12241 :isa sparser::polar-question :statement sparser::mv12232)
 (:var sparser::mv12232 :isa sparser::show :agent sparser::mv12231 :|statement-OR-theme|
  sparser::mv12234 :beneficiary sparser::mv12233 :modal "CAN")
 (:var sparser::mv12231 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12234 :isa sparser::gene :predication sparser::mv12239 :raw-text "genes")
 (:var sparser::mv12239 :isa sparser::regulate :object sparser::mv12234 :that-rel t :agent
  sparser::mv12229 :modal "CAN" :raw-text "regulated")
 (:var sparser::mv12229 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12233 :isa sparser::interlocutor :name "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    source-start
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    end-of-source
("Can you show me the pahtways that involve SRF"
 (:var sparser::mv12251 :isa sparser::polar-question :statement sparser::mv12244)
 (:var sparser::mv12244 :isa sparser::show :agent sparser::mv12243 :|statement-OR-theme|
  sparser::mv12247 :beneficiary sparser::mv12245 :modal "CAN")
 (:var sparser::mv12243 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12247 :isa sparser::bio-entity :predication sparser::mv12249 :has-determiner
  "THE" :name "pahtways")
 (:var sparser::mv12249 :isa sparser::involve :theme sparser::mv12247 :that-rel t :theme
  sparser::mv12250 :modal "CAN")
 (:var sparser::mv12250 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv12245 :isa sparser::interlocutor :name "speaker"))

___________________
460: "Can you tell me the genes regulated by STAT3"

                    source-start
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    end-of-source
("Can you tell me the genes regulated by STAT3"
 (:var sparser::mv12262 :isa sparser::polar-question :statement sparser::mv12255)
 (:var sparser::mv12255 :isa sparser::tell :agent sparser::mv12254 :theme sparser::mv12258
  :beneficiary sparser::mv12256 :modal "CAN")
 (:var sparser::mv12254 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12258 :isa sparser::gene :predication sparser::mv12259 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12259 :isa sparser::regulate :object sparser::mv12258 :agent sparser::mv12252
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv12252 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12256 :isa sparser::interlocutor :name "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    source-start
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    end-of-source
("Can you tell me the genes that STAT3 regulates"
 (:var sparser::mv12272 :isa sparser::polar-question :statement sparser::mv12266)
 (:var sparser::mv12266 :isa sparser::tell :agent sparser::mv12265 :theme sparser::mv12269
  :beneficiary sparser::mv12267 :modal "CAN")
 (:var sparser::mv12265 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12269 :isa sparser::gene :predication sparser::mv12271 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12271 :isa sparser::regulate :object sparser::mv12269 :that-rel t :agent
  sparser::mv12263 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv12263 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12267 :isa sparser::interlocutor :name "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    source-start
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    end-of-source
("Can you tell me the genes that are regulated by STAT3"
 (:var sparser::mv12286 :isa sparser::polar-question :statement sparser::mv12276)
 (:var sparser::mv12276 :isa sparser::tell :agent sparser::mv12275 :theme sparser::mv12279
  :beneficiary sparser::mv12277 :modal "CAN")
 (:var sparser::mv12275 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12279 :isa sparser::gene :predication sparser::mv12284 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12284 :isa sparser::regulate :object sparser::mv12279 :that-rel t :agent
  sparser::mv12273 :modal "CAN" :raw-text "regulated")
 (:var sparser::mv12273 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12277 :isa sparser::interlocutor :name "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    source-start
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    end-of-source
("Can you tell me the genes which are regulated by STAT3"
 (:var sparser::mv12301 :isa sparser::polar-question :statement sparser::mv12290)
 (:var sparser::mv12290 :isa sparser::tell :agent sparser::mv12289 :theme sparser::mv12293
  :beneficiary sparser::mv12291 :modal "CAN")
 (:var sparser::mv12289 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12293 :isa sparser::gene :predication sparser::mv12300 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12300 :isa sparser::regulate :object sparser::mv12293 :agent sparser::mv12287
  :modal sparser::mv12288 :raw-text "regulated")
 (:var sparser::mv12287 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12288 :isa sparser::can)
 (:var sparser::mv12291 :isa sparser::interlocutor :name "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    source-start
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    end-of-source
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:var sparser::mv12317 :isa sparser::polar-question :statement sparser::mv12306)
 (:var sparser::mv12306 :isa sparser::tell :agent sparser::mv12305 :theme sparser::mv12315 :theme
  sparser::mv12307 :modal "CAN")
 (:var sparser::mv12305 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12315 :isa sparser::share :object sparser::mv12302 :participant sparser::mv12314
  :modal "CAN" :raw-text "shared")
 (:var sparser::mv12302 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv12314 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv12303 sparser::mv12313))
 (:var sparser::mv12303 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12313 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv12307 :isa sparser::interlocutor :name "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    source-start
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    end-of-source
("Can you tell me which genes are regulated by STAT3"
 (:var sparser::mv12330 :isa sparser::polar-question :statement sparser::mv12321)
 (:var sparser::mv12321 :isa sparser::tell :agent sparser::mv12320 :theme sparser::mv12328 :theme
  sparser::mv12322 :modal "CAN")
 (:var sparser::mv12320 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12328 :isa sparser::regulate :object sparser::mv12324 :agent sparser::mv12318
  :modal "CAN" :raw-text "regulated")
 (:var sparser::mv12324 :isa sparser::gene :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv12318 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12322 :isa sparser::interlocutor :name "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    source-start
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    question-mark
                    end-of-source
("Can you tell me which genes in the liver are regulated by stat3?"
 (:var sparser::mv12347 :isa sparser::polar-question :statement sparser::mv12334)
 (:var sparser::mv12334 :isa sparser::tell :agent sparser::mv12333 :theme sparser::mv12344 :theme
  sparser::mv12335 :modal "CAN")
 (:var sparser::mv12333 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12344 :isa sparser::regulate :object sparser::mv12337 :agent sparser::mv12331
  :modal "CAN" :raw-text "regulated")
 (:var sparser::mv12337 :isa sparser::gene :organ sparser::mv12340 :has-determiner "WHICH"
  :raw-text "genes")
 (:var sparser::mv12340 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv12331 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12335 :isa sparser::interlocutor :name "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    source-start
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    question-mark
                    end-of-source
("Can you tell me which genes stat3 regulates?"
 (:var sparser::mv12356 :isa sparser::polar-question :statement sparser::mv12351)
 (:var sparser::mv12351 :isa sparser::tell :agent sparser::mv12350 :theme sparser::mv12354
  :beneficiary sparser::mv12352 :modal "CAN")
 (:var sparser::mv12350 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12354 :isa sparser::gene :predication sparser::mv12355 :has-determiner "WHICH"
  :raw-text "genes")
 (:var sparser::mv12355 :isa sparser::regulate :object sparser::mv12354 :agent sparser::mv12348
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv12348 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12352 :isa sparser::interlocutor :name "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    source-start
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    question-mark
                    end-of-source
("Does STAT3 affect the expression of c-fos?"
 (:var sparser::mv12366 :isa sparser::polar-question :statement sparser::mv12364)
 (:var sparser::mv12364 :isa sparser::affect :agent sparser::mv12357 :affected-process
  sparser::mv12362 :raw-text "affect")
 (:var sparser::mv12357 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12362 :isa sparser::gene-transcript-express :object sparser::mv12358
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv12358 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    source-start
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    question-mark
                    end-of-source
("Does STAT3 affect the expression of the c-fos gene?"
 (:var sparser::mv12378 :isa sparser::polar-question :statement sparser::mv12376)
 (:var sparser::mv12376 :isa sparser::affect :agent sparser::mv12367 :affected-process
  sparser::mv12372 :raw-text "affect")
 (:var sparser::mv12367 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12372 :isa sparser::gene-transcript-express :object sparser::mv12375
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv12375 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv12368
  :raw-text "gene")
 (:var sparser::mv12368 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    source-start
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    question-mark
                    end-of-source
("Does STAT3 increase the expression of the c-fos gene?"
 (:var sparser::mv12391 :isa sparser::polar-question :statement sparser::mv12389)
 (:var sparser::mv12389 :isa sparser::increase :agent sparser::mv12379 :affected-process
  sparser::mv12385 :raw-text "increase")
 (:var sparser::mv12379 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12385 :isa sparser::gene-transcript-express :object sparser::mv12388
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv12388 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv12380
  :raw-text "gene")
 (:var sparser::mv12380 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    source-start
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    question-mark
                    end-of-source
("Does STAT3 increase transcription of the c-fos gene?"
 (:var sparser::mv12403 :isa sparser::polar-question :statement sparser::mv12401)
 (:var sparser::mv12401 :isa sparser::increase :agent sparser::mv12392 :affected-process
  sparser::mv12397 :raw-text "increase")
 (:var sparser::mv12392 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12397 :isa sparser::transcribe :object sparser::mv12400 :raw-text
  "transcription")
 (:var sparser::mv12400 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv12393
  :raw-text "gene")
 (:var sparser::mv12393 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    source-start
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    question-mark
                    end-of-source
("Does stat3 affect the expression of cfos?"
 (:var sparser::mv12413 :isa sparser::polar-question :statement sparser::mv12411)
 (:var sparser::mv12411 :isa sparser::affect :agent sparser::mv12404 :affected-process
  sparser::mv12408 :raw-text "affect")
 (:var sparser::mv12404 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12408 :isa sparser::gene-transcript-express :object sparser::mv12410
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv12410 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    source-start
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    question-mark
                    end-of-source
("Does the mTor pathway contain SGK1?"
 (:var sparser::mv12423 :isa sparser::polar-question :statement sparser::mv12422)
 (:var sparser::mv12422 :isa sparser::contain :theme sparser::mv12420 :patient sparser::mv12414)
 (:var sparser::mv12420 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv12417
  :raw-text "pathway")
 (:var sparser::mv12417 :isa sparser::protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
 (:var sparser::mv12414 :isa sparser::protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    source-start
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    period
                    end-of-source
("Find a treatment for pancreatic cancer."
 (:var sparser::mv12426 :isa sparser::bio-find :object sparser::mv12428 :present "PRESENT"
  :raw-text "Find")
 (:var sparser::mv12428 :isa sparser::treatment :disease sparser::mv12424 :has-determiner "A"
  :raw-text "treatment")
 (:var sparser::mv12424 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    source-start
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    end-of-source
("Find genes in the liver regulated by stat3"
 (:var sparser::mv12433 :isa sparser::bio-find :object sparser::mv12434 :present "PRESENT"
  :raw-text "Find")
 (:var sparser::mv12434 :isa sparser::gene :predication sparser::mv12438 :organ sparser::mv12437
  :raw-text "genes")
 (:var sparser::mv12438 :isa sparser::regulate :object sparser::mv12434 :agent sparser::mv12431
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv12431 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12437 :isa sparser::liver :has-determiner "THE"))

___________________
476: "Find genes that stat3 regulates"

                    source-start
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    end-of-source
("Find genes that stat3 regulates"
 (:var sparser::mv12444 :isa sparser::bio-find :object sparser::mv12445 :present "PRESENT"
  :raw-text "Find")
 (:var sparser::mv12445 :isa sparser::gene :predication sparser::mv12447 :raw-text "genes")
 (:var sparser::mv12447 :isa sparser::regulate :object sparser::mv12445 :that-rel t :agent
  sparser::mv12442 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv12442 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    source-start
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    end-of-source
("Find transcription factors shared by elk1 and srf"
 (:var sparser::mv12451 :isa sparser::bio-find :object sparser::mv12448 :present "PRESENT"
  :raw-text "Find")
 (:var sparser::mv12448 :isa sparser::transcription-factor :predication sparser::mv12452 :raw-text
  "transcription factors")
 (:var sparser::mv12452 :isa sparser::share :object sparser::mv12448 :participant sparser::mv12456
  :past "PAST" :raw-text "shared")
 (:var sparser::mv12456 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv12449 sparser::mv12455))
 (:var sparser::mv12449 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12455 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    source-start
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    question-mark
                    end-of-source
("How does KRAS activate MAPK3?"
 (:var sparser::mv12462 :isa sparser::bio-activate :manner sparser::mv12459 :agent sparser::mv12461
  :object sparser::mv12458 :present "PRESENT" :raw-text "activate")
 (:var sparser::mv12459 :isa sparser::how)
 (:var sparser::mv12461 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv12458 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    source-start
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    question-mark
                    end-of-source
("How does STAT3 regulate the c-fos gene?"
 (:var sparser::mv12467 :isa sparser::regulate :manner sparser::mv12465 :agent sparser::mv12463
  :object sparser::mv12469 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv12465 :isa sparser::how)
 (:var sparser::mv12463 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12469 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv12464
  :raw-text "gene")
 (:var sparser::mv12464 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
480: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    source-start
e26   KNOCK-OUT     1 "How does knocking out p53 cause cancer via its effect on miRNAs" 14
                    question-mark
                    end-of-source
("How does knocking out p53 cause cancer via its effect on miRNAs?"
 (:var sparser::mv12484 :isa sparser::knock-out :raw-text "knocking out" :cause sparser::mv12471
  :object sparser::mv12488)
 (:var sparser::mv12471 :isa sparser::how)
 (:var sparser::mv12488 :isa sparser::cancer :modifier sparser::mv12475 :modifier sparser::mv12475)
 (:var sparser::mv12475 :isa sparser::cause :by-means-of sparser::mv12486 :raw-text "cause")
 (:var sparser::mv12486 :isa sparser::effect :object sparser::mv12483 :participant sparser::mv12479
  :raw-text "effect")
 (:var sparser::mv12483 :isa sparser::micro-rna :raw-text "miRNAs")
 (:var sparser::mv12479 :isa sparser::pronoun/inanimate :word "its"))

___________________
481: "How does stat3 regulate apoptosis in the liver?"

                    source-start
e16   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    question-mark
                    end-of-source
("How does stat3 regulate apoptosis in the liver?"
 (:var sparser::mv12492 :isa sparser::regulate :manner sparser::mv12490 :agent sparser::mv12489
  :affected-process sparser::mv12493 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv12490 :isa sparser::how)
 (:var sparser::mv12489 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12493 :isa sparser::apoptosis :organ sparser::mv12496 :raw-text "apoptosis")
 (:var sparser::mv12496 :isa sparser::liver :has-determiner "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    source-start
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    question-mark
                    end-of-source
("How does stat3 regulate apoptosis?"
 (:var sparser::mv12501 :isa sparser::regulate :manner sparser::mv12499 :agent sparser::mv12498
  :affected-process sparser::mv12502 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv12499 :isa sparser::how)
 (:var sparser::mv12498 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12502 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    source-start
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    question-mark
                    end-of-source
("How does stat3 regulate apoptotic genes?"
 (:var sparser::mv12506 :isa sparser::regulate :manner sparser::mv12504 :agent sparser::mv12503
  :object sparser::mv12509 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv12504 :isa sparser::how)
 (:var sparser::mv12503 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12509 :isa sparser::gene :cellular-process sparser::mv12507 :raw-text "genes")
 (:var sparser::mv12507 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    source-start
e16   BE            1 "How is stat3 involved in apoptotic regulation" 9
                    question-mark
                    end-of-source
("How is stat3 involved in apoptotic regulation?"
 (:var sparser::mv12519 :isa sparser::wh-question :statement sparser::mv12512 :wh sparser::how)
 (:var sparser::mv12512 :isa sparser::be :predicate sparser::mv12510 :present "PRESENT")
 (:var sparser::mv12510 :isa sparser::protein :predication sparser::mv12513 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv12513 :isa sparser::involve :theme sparser::mv12510 :theme sparser::mv12517 :past
  "PAST")
 (:var sparser::mv12517 :isa sparser::regulate :|cellular-process-OR-agent| sparser::mv12515
  :raw-text "regulation")
 (:var sparser::mv12515 :isa sparser::apoptosis :raw-text "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    source-start
e23   BE            1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    question-mark
                    end-of-source
("How is stat3 involved in apoptotis regulation in the liver?"
 (:var sparser::mv12532 :isa sparser::wh-question :statement sparser::mv12522 :wh sparser::how)
 (:var sparser::mv12522 :isa sparser::be :predicate sparser::mv12520 :present "PRESENT")
 (:var sparser::mv12520 :isa sparser::protein :predication sparser::mv12523 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv12523 :isa sparser::involve :theme sparser::mv12520 :theme sparser::mv12526 :past
  "PAST")
 (:var sparser::mv12526 :isa sparser::regulate :organ sparser::mv12529 :|agent-OR-object|
  sparser::mv12525 :raw-text "regulation")
 (:var sparser::mv12529 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv12525 :isa sparser::bio-entity :name "apoptotis"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    source-start
e15   BE            1 "How is stat3 involved in regulating apoptosis" 9
                    question-mark
                    end-of-source
("How is stat3 involved in regulating apoptosis?"
 (:var sparser::mv12541 :isa sparser::wh-question :statement sparser::mv12535 :wh sparser::how)
 (:var sparser::mv12535 :isa sparser::be :predicate sparser::mv12533 :present "PRESENT")
 (:var sparser::mv12533 :isa sparser::protein :predication sparser::mv12536 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv12536 :isa sparser::involve :theme sparser::mv12533 :theme sparser::mv12538 :past
  "PAST")
 (:var sparser::mv12538 :isa sparser::regulate :affected-process sparser::mv12539 :progressive
  "PROGRESSIVE" :raw-text "regulating")
 (:var sparser::mv12539 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    source-start
e15   BE            1 "How is stat3 used to regulate apoptosis" 9
                    question-mark
                    end-of-source
("How is stat3 used to regulate apoptosis?"
 (:var sparser::mv12550 :isa sparser::wh-question :statement sparser::mv12544 :wh sparser::how)
 (:var sparser::mv12544 :isa sparser::be :predicate sparser::mv12542 :present "PRESENT")
 (:var sparser::mv12542 :isa sparser::protein :predication sparser::mv12545 :raw-text "stat3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv12545 :isa sparser::bio-use :object sparser::mv12542 :theme sparser::mv12549
  :past "PAST" :raw-text "used")
 (:var sparser::mv12549 :isa sparser::regulate :affected-process sparser::mv12548 :raw-text
  "regulate")
 (:var sparser::mv12548 :isa sparser::apoptosis :raw-text "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    source-start
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    question-mark
                    end-of-source
("How many genes are in the MAPK signaling pathway?"
 (:var sparser::mv12562 :isa sparser::copular-predication-of-pp :item sparser::mv12554 :value
  sparser::mv12561 :prep "IN" :predicate sparser::mv12555)
 (:var sparser::mv12554 :isa sparser::gene :has-determiner "HOW" :quantifier sparser::mv12553
  :raw-text "genes")
 (:var sparser::mv12553 :isa sparser::many :word "many")
 (:var sparser::mv12561 :isa sparser::gene :context sparser::mv12551 :has-determiner "HOW"
  :quantifier sparser::mv12553 :raw-text "genes")
 (:var sparser::mv12551 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv12558 :raw-text "signaling pathway")
 (:var sparser::mv12558 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv12555 :isa sparser::be :present "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    source-start
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    question-mark
                    end-of-source
("How might a STAT3 mutation affect breast cancer?"
 (:var sparser::mv12571 :isa sparser::affect :manner sparser::mv12566 :modal sparser::mv12567
  :agent sparser::mv12569 :object sparser::mv12565 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv12566 :isa sparser::how) (:var sparser::mv12567 :isa sparser::might)
 (:var sparser::mv12569 :isa sparser::mutation :has-determiner "A" :|agent-OR-object|
  sparser::mv12564 :raw-text "mutation")
 (:var sparser::mv12564 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12565 :isa sparser::cancer :name "breast cancer" :uid "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    source-start
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    question-mark
                    end-of-source
("Is STAT3 a regulator for c-fos?"
 (:var sparser::mv12579 :isa sparser::polar-question :statement sparser::mv12574)
 (:var sparser::mv12574 :isa sparser::be :subject sparser::mv12572 :predicate sparser::mv12576)
 (:var sparser::mv12572 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12576 :isa sparser::regulator :theme sparser::mv12573 :has-determiner "A"
  :raw-text "regulator")
 (:var sparser::mv12573 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
491: "Is STAT3 a regulator of c-fos"

                    source-start
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    end-of-source
("Is STAT3 a regulator of c-fos"
 (:var sparser::mv12587 :isa sparser::polar-question :statement sparser::mv12582)
 (:var sparser::mv12582 :isa sparser::be :subject sparser::mv12580 :predicate sparser::mv12584)
 (:var sparser::mv12580 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12584 :isa sparser::regulator :theme sparser::mv12581 :has-determiner "A"
  :raw-text "regulator")
 (:var sparser::mv12581 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    source-start
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    end-of-source
("Is STAT3 a regulator of the c-fos gene"
 (:var sparser::mv12597 :isa sparser::polar-question :statement sparser::mv12590)
 (:var sparser::mv12590 :isa sparser::be :subject sparser::mv12588 :predicate sparser::mv12592)
 (:var sparser::mv12588 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12592 :isa sparser::regulator :theme sparser::mv12595 :has-determiner "A"
  :raw-text "regulator")
 (:var sparser::mv12595 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv12589
  :raw-text "gene")
 (:var sparser::mv12589 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
493: "Is STAT3 a regulator of the c-fos gene?"

                    source-start
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    question-mark
                    end-of-source
("Is STAT3 a regulator of the c-fos gene?"
 (:var sparser::mv12607 :isa sparser::polar-question :statement sparser::mv12600)
 (:var sparser::mv12600 :isa sparser::be :subject sparser::mv12598 :predicate sparser::mv12602)
 (:var sparser::mv12598 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12602 :isa sparser::regulator :theme sparser::mv12605 :has-determiner "A"
  :raw-text "regulator")
 (:var sparser::mv12605 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv12599
  :raw-text "gene")
 (:var sparser::mv12599 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    source-start
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    end-of-source
("Is STAT3 a transcription factor for c-fos gene"
 (:var sparser::mv12616 :isa sparser::polar-question :statement sparser::mv12611)
 (:var sparser::mv12611 :isa sparser::be :subject sparser::mv12608 :predicate sparser::mv12609)
 (:var sparser::mv12608 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12609 :isa sparser::transcription-factor :controlled-gene sparser::mv12614
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv12614 :isa sparser::gene :expresses sparser::mv12610 :raw-text "gene")
 (:var sparser::mv12610 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
495: "Is STAT3 a transcription factor for c-fos"

                    source-start
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    end-of-source
("Is STAT3 a transcription factor for c-fos"
 (:var sparser::mv12624 :isa sparser::polar-question :statement sparser::mv12620)
 (:var sparser::mv12620 :isa sparser::be :subject sparser::mv12617 :predicate sparser::mv12618)
 (:var sparser::mv12617 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12618 :isa sparser::transcription-factor :controlled-gene sparser::mv12619
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv12619 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
496: "Is STAT3 a transcription factor for c-fos?"

                    source-start
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    question-mark
                    end-of-source
("Is STAT3 a transcription factor for c-fos?"
 (:var sparser::mv12632 :isa sparser::polar-question :statement sparser::mv12628)
 (:var sparser::mv12628 :isa sparser::be :subject sparser::mv12625 :predicate sparser::mv12626)
 (:var sparser::mv12625 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12626 :isa sparser::transcription-factor :controlled-gene sparser::mv12627
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv12627 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
497: "Is STAT3 a transcription factor for the c-fos gene?"

                    source-start
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    question-mark
                    end-of-source
("Is STAT3 a transcription factor for the c-fos gene?"
 (:var sparser::mv12642 :isa sparser::polar-question :statement sparser::mv12636)
 (:var sparser::mv12636 :isa sparser::be :subject sparser::mv12633 :predicate sparser::mv12634)
 (:var sparser::mv12633 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12634 :isa sparser::transcription-factor :controlled-gene sparser::mv12640
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv12640 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv12635
  :raw-text "gene")
 (:var sparser::mv12635 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
498: "Is STAT3 regulated by c-fos?"

                    source-start
e11   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    question-mark
                    end-of-source
("Is STAT3 regulated by c-fos?"
 (:var sparser::mv12649 :isa sparser::polar-question :statement sparser::mv12646)
 (:var sparser::mv12646 :isa sparser::regulate :object sparser::mv12643 :agent sparser::mv12644
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv12643 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12644 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    source-start
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    end-of-source
("Is Stat3 a transcription factor for the c-fos gene"
 (:var sparser::mv12659 :isa sparser::polar-question :statement sparser::mv12653)
 (:var sparser::mv12653 :isa sparser::be :subject sparser::mv12650 :predicate sparser::mv12651)
 (:var sparser::mv12650 :isa sparser::protein :raw-text "Stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12651 :isa sparser::transcription-factor :controlled-gene sparser::mv12657
  :has-determiner "A" :raw-text "transcription factor")
 (:var sparser::mv12657 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv12652
  :raw-text "gene")
 (:var sparser::mv12652 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
500: "List genes regulated by ELK1"

                    source-start
e9    LIST          1 "List genes regulated by ELK1" 7
                    end-of-source
("List genes regulated by ELK1"
 (:var sparser::mv12661 :isa list :theme sparser::mv12662 :present "PRESENT")
 (:var sparser::mv12662 :isa sparser::gene :predication sparser::mv12663 :raw-text "genes")
 (:var sparser::mv12663 :isa sparser::regulate :object sparser::mv12662 :agent sparser::mv12660
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv12660 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    source-start
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    end-of-source
("List genes that are regulated by ELK1"
 (:var sparser::mv12667 :isa list :theme sparser::mv12668 :present "PRESENT")
 (:var sparser::mv12668 :isa sparser::gene :predication sparser::mv12673 :raw-text "genes")
 (:var sparser::mv12673 :isa sparser::regulate :object sparser::mv12668 :that-rel t :agent
  sparser::mv12666 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv12666 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    source-start
e13   LIST          1 "List some genes that stat3 regulates" 8
                    end-of-source
("List some genes that stat3 regulates"
 (:var sparser::mv12676 :isa list :theme sparser::mv12678 :present "PRESENT")
 (:var sparser::mv12678 :isa sparser::gene :predication sparser::mv12680 :quantifier
  sparser::mv12677 :raw-text "genes")
 (:var sparser::mv12680 :isa sparser::regulate :object sparser::mv12678 :that-rel t :agent
  sparser::mv12675 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv12675 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12677 :isa some :word "some"))

___________________
503: "List the genes STAT3 regulates"

                    source-start
e11   LIST          1 "List the genes STAT3 regulates" 7
                    end-of-source
("List the genes STAT3 regulates"
 (:var sparser::mv12682 :isa list :theme sparser::mv12684 :present "PRESENT")
 (:var sparser::mv12684 :isa sparser::gene :predication sparser::mv12685 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12685 :isa sparser::regulate :object sparser::mv12684 :agent sparser::mv12681
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv12681 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    source-start
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    end-of-source
("List the genes that are regulated by STAT3"
 (:var sparser::mv12687 :isa list :theme sparser::mv12689 :present "PRESENT")
 (:var sparser::mv12689 :isa sparser::gene :predication sparser::mv12694 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12694 :isa sparser::regulate :object sparser::mv12689 :that-rel t :agent
  sparser::mv12686 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv12686 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    source-start
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    end-of-source
("List the genes which STAT3 regulates"
 (:var sparser::mv12697 :isa list :theme sparser::mv12699 :present "PRESENT")
 (:var sparser::mv12699 :isa sparser::gene :predication sparser::mv12701 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12701 :isa sparser::regulate :object sparser::mv12699 :agent sparser::mv12696
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv12696 :isa sparser::protein :has-determiner "WHICH" :raw-text "STAT3" :uid
  "UP:P40763" :name "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    source-start
e13   LIST          1 "List the pahtways that involve SRF" 7
                    end-of-source
("List the pahtways that involve SRF"
 (:var sparser::mv12702 :isa list :theme sparser::mv12704 :present "PRESENT")
 (:var sparser::mv12704 :isa sparser::bio-entity :predication sparser::mv12706 :has-determiner
  "THE" :name "pahtways")
 (:var sparser::mv12706 :isa sparser::involve :theme sparser::mv12704 :that-rel t :theme
  sparser::mv12707 :present "PRESENT")
 (:var sparser::mv12707 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
507: "Show me genes regulated by ELK1"

                    source-start
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    end-of-source
("Show me genes regulated by ELK1"
 (:var sparser::mv12709 :isa sparser::show :|statement-OR-theme| sparser::mv12711 :beneficiary
  sparser::mv12710 :present "PRESENT")
 (:var sparser::mv12711 :isa sparser::gene :predication sparser::mv12712 :raw-text "genes")
 (:var sparser::mv12712 :isa sparser::regulate :object sparser::mv12711 :agent sparser::mv12708
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv12708 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12710 :isa sparser::interlocutor :name "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    source-start
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    end-of-source
("Show me genes that are regulated by ELK1"
 (:var sparser::mv12716 :isa sparser::show :|statement-OR-theme| sparser::mv12718 :beneficiary
  sparser::mv12717 :present "PRESENT")
 (:var sparser::mv12718 :isa sparser::gene :predication sparser::mv12723 :raw-text "genes")
 (:var sparser::mv12723 :isa sparser::regulate :object sparser::mv12718 :that-rel t :agent
  sparser::mv12715 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv12715 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12717 :isa sparser::interlocutor :name "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    source-start
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    end-of-source
("Show me genes that stat3 regulates"
 (:var sparser::mv12726 :isa sparser::show :|statement-OR-theme| sparser::mv12728 :beneficiary
  sparser::mv12727 :present "PRESENT")
 (:var sparser::mv12728 :isa sparser::gene :predication sparser::mv12730 :raw-text "genes")
 (:var sparser::mv12730 :isa sparser::regulate :object sparser::mv12728 :that-rel t :agent
  sparser::mv12725 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv12725 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12727 :isa sparser::interlocutor :name "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    source-start
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    end-of-source
("Show me the pahtways that involve SRF"
 (:var sparser::mv12731 :isa sparser::show :|statement-OR-theme| sparser::mv12734 :beneficiary
  sparser::mv12732 :present "PRESENT")
 (:var sparser::mv12734 :isa sparser::bio-entity :predication sparser::mv12736 :has-determiner
  "THE" :name "pahtways")
 (:var sparser::mv12736 :isa sparser::involve :theme sparser::mv12734 :that-rel t :theme
  sparser::mv12737 :present "PRESENT")
 (:var sparser::mv12737 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv12732 :isa sparser::interlocutor :name "speaker"))

___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    source-start
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    end-of-source
("Show me what transcription factors are shared by elk1 and srf"
 (:var sparser::mv12751 :isa sparser::show :statement sparser::mv12749 :theme sparser::mv12741
  :present "PRESENT")
 (:var sparser::mv12749 :isa sparser::share :object sparser::mv12738 :participant sparser::mv12748
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv12738 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv12748 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv12739 sparser::mv12747))
 (:var sparser::mv12739 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12747 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv12741 :isa sparser::interlocutor :name "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    source-start
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    end-of-source
("Show me which genes are regulated by STAT3"
 (:var sparser::mv12762 :isa sparser::show :statement sparser::mv12760 :theme sparser::mv12754
  :present "PRESENT")
 (:var sparser::mv12760 :isa sparser::regulate :object sparser::mv12756 :agent sparser::mv12752
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv12756 :isa sparser::gene :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv12752 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12754 :isa sparser::interlocutor :name "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    source-start
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    end-of-source
("Show the genes which STAT3 regulates"
 (:var sparser::mv12764 :isa sparser::show :|statement-OR-theme| sparser::mv12766 :present
  "PRESENT")
 (:var sparser::mv12766 :isa sparser::gene :predication sparser::mv12768 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12768 :isa sparser::regulate :object sparser::mv12766 :agent sparser::mv12763
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv12763 :isa sparser::protein :has-determiner "WHICH" :raw-text "STAT3" :uid
  "UP:P40763" :name "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    source-start
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    end-of-source
("Show the pahtways that involve SRF"
 (:var sparser::mv12769 :isa sparser::show :|statement-OR-theme| sparser::mv12771 :present
  "PRESENT")
 (:var sparser::mv12771 :isa sparser::bio-entity :predication sparser::mv12773 :has-determiner
  "THE" :name "pahtways")
 (:var sparser::mv12773 :isa sparser::involve :theme sparser::mv12771 :that-rel t :theme
  sparser::mv12774 :present "PRESENT")
 (:var sparser::mv12774 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    source-start
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    end-of-source
("Show transcription factors that are shared by elk1 and srf"
 (:var sparser::mv12777 :isa sparser::show :|statement-OR-theme| sparser::mv12775 :present
  "PRESENT")
 (:var sparser::mv12775 :isa sparser::transcription-factor :predication sparser::mv12785 :raw-text
  "transcription factors")
 (:var sparser::mv12785 :isa sparser::share :object sparser::mv12775 :that-rel t :participant
  sparser::mv12784 :present "PRESENT" :raw-text "shared")
 (:var sparser::mv12784 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv12776 sparser::mv12783))
 (:var sparser::mv12776 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12783 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    source-start
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    end-of-source
("Tell me the genes which are regulated by STAT3"
 (:var sparser::mv12788 :isa sparser::tell :theme sparser::mv12791 :beneficiary sparser::mv12789
  :present "PRESENT")
 (:var sparser::mv12791 :isa sparser::gene :predication sparser::mv12798 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12798 :isa sparser::regulate :object sparser::mv12791 :agent sparser::mv12787
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv12787 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12789 :isa sparser::interlocutor :name "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    source-start
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    end-of-source
("Tell me what genes are regulated by elk1 and srf"
 (:var sparser::mv12800 :isa sparser::tell :theme sparser::mv12810 :theme sparser::mv12801 :present
  "PRESENT")
 (:var sparser::mv12810 :isa sparser::regulate :object sparser::mv12803 :agent sparser::mv12809
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv12803 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv12809 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv12799 sparser::mv12808))
 (:var sparser::mv12799 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12808 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv12801 :isa sparser::interlocutor :name "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    source-start
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    end-of-source
("Tell me which genes are regulated by STAT3"
 (:var sparser::mv12813 :isa sparser::tell :theme sparser::mv12820 :theme sparser::mv12814 :present
  "PRESENT")
 (:var sparser::mv12820 :isa sparser::regulate :object sparser::mv12816 :agent sparser::mv12812
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv12816 :isa sparser::gene :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv12812 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12814 :isa sparser::interlocutor :name "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    source-start
e10   BE            1 "What are positive regulators of cfos" 7
                    question-mark
                    end-of-source
("What are positive regulators of cfos?"
 (:var sparser::mv12824 :isa sparser::be :subject sparser::mv12823 :predicate sparser::mv12822
  :present "PRESENT")
 (:var sparser::mv12823 :isa sparser::what)
 (:var sparser::mv12822 :isa sparser::positive-regulator :theme sparser::mv12826 :raw-text
  "positive regulators")
 (:var sparser::mv12826 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    source-start
e12   BE            1 "What are some regulators of SMURF2" 8
                    question-mark
                    end-of-source
("What are some regulators of SMURF2?"
 (:var sparser::mv12830 :isa sparser::be :subject sparser::mv12829 :predicate sparser::mv12832
  :present "PRESENT")
 (:var sparser::mv12829 :isa sparser::what)
 (:var sparser::mv12832 :isa sparser::regulator :theme sparser::mv12828 :quantifier
  sparser::mv12831 :raw-text "regulators")
 (:var sparser::mv12828 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN")
 (:var sparser::mv12831 :isa some :word "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    source-start
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    question-mark
                    end-of-source
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:var sparser::mv12841 :isa sparser::be :subject sparser::mv12840 :predicate sparser::mv12844
  :present "PRESENT")
 (:var sparser::mv12840 :isa sparser::what)
 (:var sparser::mv12844 :isa sparser::regulator :theme sparser::mv12848 :has-determiner "THE"
  :predication sparser::mv12843 :raw-text "regulators")
 (:var sparser::mv12848 :isa sparser::collection :raw-text
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type sparser::protein :number 6 :items
  (sparser::mv12835 sparser::mv12836 sparser::mv12846 sparser::mv12837 sparser::mv12838
   sparser::mv12839))
 (:var sparser::mv12835 :isa sparser::protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
 (:var sparser::mv12836 :isa sparser::protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
 (:var sparser::mv12846 :isa sparser::protein :raw-text "ACADSB" :uid "UP:P45954" :name
  "ACDSB_HUMAN")
 (:var sparser::mv12837 :isa sparser::protein :raw-text "ADGRL1" :uid "UP:O94910" :name
  "AGRL1_HUMAN")
 (:var sparser::mv12838 :isa sparser::protein :raw-text "ADRM1" :uid "UP:Q16186" :name
  "ADRM1_HUMAN")
 (:var sparser::mv12839 :isa sparser::protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name
  "AGAP1_HUMAN")
 (:var sparser::mv12843 :isa sparser::common))

___________________
522: "What are the common regulators of elk1 and srf"

                    source-start
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    end-of-source
("What are the common regulators of elk1 and srf"
 (:var sparser::mv12852 :isa sparser::be :subject sparser::mv12851 :predicate sparser::mv12855
  :present "PRESENT")
 (:var sparser::mv12851 :isa sparser::what)
 (:var sparser::mv12855 :isa sparser::regulator :theme sparser::mv12859 :has-determiner "THE"
  :predication sparser::mv12854 :raw-text "regulators")
 (:var sparser::mv12859 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv12850 sparser::mv12858))
 (:var sparser::mv12850 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12858 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv12854 :isa sparser::common))

___________________
523: "What are the common regulators of elk1 and srg"

                    source-start
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    end-of-source
("What are the common regulators of elk1 and srg"
 (:var sparser::mv12863 :isa sparser::be :subject sparser::mv12862 :predicate sparser::mv12866
  :present "PRESENT")
 (:var sparser::mv12862 :isa sparser::what)
 (:var sparser::mv12866 :isa sparser::regulator :theme sparser::mv12870 :has-determiner "THE"
  :predication sparser::mv12865 :raw-text "regulators")
 (:var sparser::mv12870 :isa sparser::collection :raw-text "elk1 and srg" :type sparser::protein
  :number 2 :items (sparser::mv12861 sparser::mv12869))
 (:var sparser::mv12861 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv12869 :isa sparser::bio-entity :name "srg")
 (:var sparser::mv12865 :isa sparser::common))

___________________
524: "What are the common regulators of those genes"

                    source-start
e16   BE            1 "What are the common regulators of those genes" 9
                    end-of-source
("What are the common regulators of those genes"
 (:var sparser::mv12873 :isa sparser::be :subject sparser::mv12872 :predicate sparser::mv12876
  :present "PRESENT")
 (:var sparser::mv12872 :isa sparser::what)
 (:var sparser::mv12876 :isa sparser::regulator :theme sparser::mv12879 :has-determiner "THE"
  :predication sparser::mv12875 :raw-text "regulators")
 (:var sparser::mv12879 :isa sparser::gene :has-determiner "THOSE" :raw-text "genes")
 (:var sparser::mv12875 :isa sparser::common))

___________________
525: "What are the genes regulated by STAT3?"

                    source-start
e16   BE            1 "What are the genes regulated by STAT3" 9
                    question-mark
                    end-of-source
("What are the genes regulated by STAT3?"
 (:var sparser::mv12883 :isa sparser::be :subject sparser::mv12882 :predicate sparser::mv12885
  :present "PRESENT")
 (:var sparser::mv12882 :isa sparser::what)
 (:var sparser::mv12885 :isa sparser::gene :predication sparser::mv12886 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12886 :isa sparser::regulate :object sparser::mv12885 :agent sparser::mv12881
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv12881 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    source-start
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    question-mark
                    end-of-source
("What are the genes which STAT3 regulates?"
 (:var sparser::mv12891 :isa sparser::be :subject sparser::mv12890 :predicate sparser::mv12893
  :present "PRESENT")
 (:var sparser::mv12890 :isa sparser::what)
 (:var sparser::mv12893 :isa sparser::gene :predication sparser::mv12895 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv12895 :isa sparser::regulate :object sparser::mv12893 :agent sparser::mv12889
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv12889 :isa sparser::protein :has-determiner "WHICH" :raw-text "STAT3" :uid
  "UP:P40763" :name "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    source-start
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    question-mark
                    end-of-source
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:var sparser::mv12900 :isa sparser::be :subject sparser::mv12899 :predicate sparser::mv12904
  :present "PRESENT")
 (:var sparser::mv12899 :isa sparser::what)
 (:var sparser::mv12904 :isa sparser::regulator :theme sparser::mv12909 :has-determiner "THE"
  :modifier sparser::mv12903 :raw-text "regulators")
 (:var sparser::mv12909 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :type sparser::protein :number 5 :items
  (sparser::mv12906 sparser::mv12907 sparser::mv12896 sparser::mv12897 sparser::mv12898))
 (:var sparser::mv12906 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv12907 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv12896 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12897 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv12898 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN")
 (:var sparser::mv12903 :isa sparser::frequent :comparative sparser::mv12902 :name "frequent")
 (:var sparser::mv12902 :isa sparser::superlative-quantifier :name "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    source-start
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    question-mark
                    end-of-source
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:var sparser::mv12916 :isa sparser::be :subject sparser::mv12915 :predicate sparser::mv12911
  :present "PRESENT")
 (:var sparser::mv12915 :isa sparser::what)
 (:var sparser::mv12911 :isa sparser::transcription-factor :predication sparser::mv12919
  :has-determiner "THE" :raw-text "transcription factors")
 (:var sparser::mv12919 :isa sparser::regulate :agent sparser::mv12911 :that-rel t :object
  sparser::mv12923 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv12923 :isa sparser::collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type
  sparser::protein :number 5 :items
  (sparser::mv12920 sparser::mv12921 sparser::mv12912 sparser::mv12913 sparser::mv12914))
 (:var sparser::mv12920 :isa sparser::protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
 (:var sparser::mv12921 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv12912 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv12913 :isa sparser::protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
 (:var sparser::mv12914 :isa sparser::protein :raw-text "SMAD3" :uid "UP:P84022" :name
  "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    source-start
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    question-mark
                    end-of-source
("What other genes are in the first pathway?"
 (:var sparser::mv12935 :isa sparser::copular-predication-of-pp :item sparser::mv12926 :value
  sparser::mv12934 :prep "IN" :predicate sparser::mv12927)
 (:var sparser::mv12926 :isa sparser::gene :has-determiner "WHAT" :quantifier sparser::mv12925
  :raw-text "genes")
 (:var sparser::mv12925 :isa sparser::other :word "other")
 (:var sparser::mv12934 :isa sparser::gene :context sparser::mv12931 :has-determiner "WHAT"
  :quantifier sparser::mv12925 :raw-text "genes")
 (:var sparser::mv12931 :isa sparser::pathway :quantifier sparser::mv12930 :raw-text "pathway")
 (:var sparser::mv12930 :isa sparser::ordinal :has-determiner "THE" :word "first" :number 1)
 (:var sparser::mv12927 :isa sparser::be :present "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    source-start
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    question-mark
                    end-of-source
("What other proteins are in the first pathway?"
 (:var sparser::mv12948 :isa sparser::copular-predication-of-pp :item sparser::mv12939 :value
  sparser::mv12947 :prep "IN" :predicate sparser::mv12940)
 (:var sparser::mv12939 :isa sparser::protein :has-determiner "WHAT" :quantifier sparser::mv12938
  :raw-text "proteins")
 (:var sparser::mv12938 :isa sparser::other :word "other")
 (:var sparser::mv12947 :isa sparser::protein :|context-OR-in-pathway| sparser::mv12944
  :has-determiner "WHAT" :quantifier sparser::mv12938 :raw-text "proteins")
 (:var sparser::mv12944 :isa sparser::pathway :quantifier sparser::mv12943 :raw-text "pathway")
 (:var sparser::mv12943 :isa sparser::ordinal :has-determiner "THE" :word "first" :number 1)
 (:var sparser::mv12940 :isa sparser::be :present "PRESENT"))

___________________
531: "What pathways are they in?"

                    source-start
e9    IN            1 "What pathways are they in" 6
                    question-mark
                    end-of-source
("What pathways are they in?"
 (:var sparser::mv12955 :isa sparser::wh-question :statement sparser::mv12954 :var nil :wh
  sparser::what)
 (:var sparser::mv12954 :isa sparser::in :word "in"))

___________________
532: "What pathways involve SOARING?"

                    source-start
e6    INVOLVE       1 "What pathways involve SOARING" 5
                    question-mark
                    end-of-source
("What pathways involve SOARING?"
 (:var sparser::mv12958 :isa sparser::involve :theme sparser::mv12957 :theme sparser::mv12959
  :present "PRESENT")
 (:var sparser::mv12957 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv12959 :isa sparser::soar :progressive "PROGRESSIVE" :raw-text "SOARING"))

___________________
533: "What proteins are in the first pathway"

                    source-start
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    end-of-source
("What proteins are in the first pathway"
 (:var sparser::mv12970 :isa sparser::copular-predication-of-pp :item sparser::mv12961 :value
  sparser::mv12969 :prep "IN" :predicate sparser::mv12962)
 (:var sparser::mv12961 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv12969 :isa sparser::protein :|context-OR-in-pathway| sparser::mv12966
  :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv12966 :isa sparser::pathway :quantifier sparser::mv12965 :raw-text "pathway")
 (:var sparser::mv12965 :isa sparser::ordinal :has-determiner "THE" :word "first" :number 1)
 (:var sparser::mv12962 :isa sparser::be :present "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    source-start
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    question-mark
                    end-of-source
("What pathways involve frizzled8?"
 (:var sparser::mv12975 :isa sparser::involve :theme sparser::mv12974 :theme sparser::mv12972
  :present "PRESENT")
 (:var sparser::mv12974 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv12972 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    source-start
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    end-of-source
("What genes are in the first pathway"
 (:var sparser::mv12986 :isa sparser::copular-predication-of-pp :item sparser::mv12977 :value
  sparser::mv12985 :prep "IN" :predicate sparser::mv12978)
 (:var sparser::mv12977 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv12985 :isa sparser::gene :context sparser::mv12982 :has-determiner "WHAT"
  :raw-text "genes")
 (:var sparser::mv12982 :isa sparser::pathway :quantifier sparser::mv12981 :raw-text "pathway")
 (:var sparser::mv12981 :isa sparser::ordinal :has-determiner "THE" :word "first" :number 1)
 (:var sparser::mv12978 :isa sparser::be :present "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    source-start
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    question-mark
                    end-of-source
("What questions can you answer about microRNAs?"
 (:var sparser::mv12998 :isa sparser::answer :patient sparser::mv12989 :modal sparser::mv12991
  :agent sparser::mv12992 :theme sparser::mv12996 :present "PRESENT")
 (:var sparser::mv12989 :isa sparser::bio-question :has-determiner "WHAT")
 (:var sparser::mv12991 :isa sparser::can)
 (:var sparser::mv12992 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv12996 :isa sparser::micro-rna :raw-text "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    source-start
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    question-mark
                    end-of-source
("What transcription factors regulate mothers against decapentaplegic?"
 (:var sparser::mv13002 :isa sparser::regulate :agent sparser::mv12999 :object sparser::mv13000
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv12999 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv13000 :isa sparser::protein-family :raw-text "mothers against decapentaplegic"
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
 (:var sparser::mv13006 :isa sparser::regulate :location sparser::mv13004 :agent sparser::mv13003
  :object sparser::mv13007 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv13004 :isa sparser::where)
 (:var sparser::mv13003 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv13007 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    source-start
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    question-mark
                    end-of-source
("Which KEGG pathways involve ATP?"
 (:var sparser::mv13011 :isa sparser::involve :theme sparser::mv13010 :theme sparser::mv13012
  :present "PRESENT")
 (:var sparser::mv13010 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv13009
  :raw-text "pathways")
 (:var sparser::mv13009 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv13012 :isa sparser::nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate"
  :uid "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    question-mark
                    end-of-source
("Which genes are in the MAPK signaling pathway?"
 (:var sparser::mv13023 :isa sparser::copular-predication-of-pp :item sparser::mv13015 :value
  sparser::mv13022 :prep "IN" :predicate sparser::mv13016)
 (:var sparser::mv13015 :isa sparser::gene :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv13022 :isa sparser::gene :context sparser::mv13013 :has-determiner "WHICH"
  :raw-text "genes")
 (:var sparser::mv13013 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv13019 :raw-text "signaling pathway")
 (:var sparser::mv13019 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv13016 :isa sparser::be :present "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    source-start
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    question-mark
                    end-of-source
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:var sparser::mv13036 :isa sparser::involve :theme sparser::mv13027 :context sparser::mv13025
  :present "PRESENT")
 (:var sparser::mv13027 :isa sparser::gene :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv13025 :isa sparser::signaling-pathway :has-determiner "THE" :predication
  sparser::mv13032 :modifier sparser::mv13033 :raw-text "signaling pathway")
 (:var sparser::mv13032 :isa sparser::oncogenic)
 (:var sparser::mv13033 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv13039 :isa sparser::regulate :agent sparser::mv13038 :object sparser::mv13040
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv13038 :isa sparser::kinase :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv13040 :isa sparser::bio-entity :name "x"))

___________________
543: "Which kinases negatively regulate x?"

                    source-start
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    question-mark
                    end-of-source
("Which kinases negatively regulate x?"
 (:var sparser::mv13041 :isa sparser::downregulate :agent sparser::mv13043 :object sparser::mv13044
  :present "PRESENT" :raw-text "negatively regulate")
 (:var sparser::mv13043 :isa sparser::kinase :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv13044 :isa sparser::bio-entity :name "x"))

___________________
544: "Which kinases positively regulate x?"

                    source-start
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    question-mark
                    end-of-source
("Which kinases positively regulate x?"
 (:var sparser::mv13045 :isa sparser::upregulate :agent sparser::mv13047 :object sparser::mv13048
  :present "PRESENT" :raw-text "positively regulate")
 (:var sparser::mv13047 :isa sparser::kinase :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv13048 :isa sparser::bio-entity :name "x"))

___________________
545: "Which of these are in immune pathways?"

                    source-start
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    question-mark
                    end-of-source
("Which of these are in immune pathways?"
 (:var sparser::mv13057 :isa sparser::copular-predication-of-pp :item sparser::mv13051 :value
  sparser::mv13055 :prep sparser::mv13053 :predicate sparser::mv13052)
 (:var sparser::mv13051 :isa sparser::these :quantifier sparser::mv13049 :word "these")
 (:var sparser::mv13049 :isa sparser::which)
 (:var sparser::mv13055 :isa sparser::pathway :modifier sparser::mv13054 :raw-text "pathways")
 (:var sparser::mv13054 :isa sparser::immune :name "immune")
 (:var sparser::mv13053 :isa sparser::in :word "in")
 (:var sparser::mv13052 :isa sparser::be :present "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    source-start
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    question-mark
                    end-of-source
("Which of these are in immune system pathways?"
 (:var sparser::mv13067 :isa sparser::copular-predication-of-pp :item sparser::mv13062 :value
  sparser::mv13065 :prep sparser::mv13064 :predicate sparser::mv13063)
 (:var sparser::mv13062 :isa sparser::these :quantifier sparser::mv13060 :word "these")
 (:var sparser::mv13060 :isa sparser::which)
 (:var sparser::mv13065 :isa sparser::pathway :non-cellular-location sparser::mv13059 :raw-text
  "pathways")
 (:var sparser::mv13059 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405")
 (:var sparser::mv13064 :isa sparser::in :word "in")
 (:var sparser::mv13063 :isa sparser::be :present "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    source-start
e13   BE            1 "What are the genes STAT3 regulates" 8
                    question-mark
                    end-of-source
("What are the genes STAT3 regulates?"
 (:var sparser::mv13071 :isa sparser::be :subject sparser::mv13070 :predicate sparser::mv13073
  :present "PRESENT")
 (:var sparser::mv13070 :isa sparser::what)
 (:var sparser::mv13073 :isa sparser::gene :predication sparser::mv13074 :has-determiner "THE"
  :raw-text "genes")
 (:var sparser::mv13074 :isa sparser::regulate :object sparser::mv13073 :agent sparser::mv13069
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv13069 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    source-start
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    question-mark
                    end-of-source
("Which of those are in the immune pathway?"
 (:var sparser::mv13084 :isa sparser::copular-predication-of-pp :item sparser::mv13077 :value
  sparser::mv13082 :prep sparser::mv13079 :predicate sparser::mv13078)
 (:var sparser::mv13077 :isa sparser::those :quantifier sparser::mv13075 :word "those")
 (:var sparser::mv13075 :isa sparser::which)
 (:var sparser::mv13082 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv13081
  :raw-text "pathway")
 (:var sparser::mv13081 :isa sparser::immune :name "immune")
 (:var sparser::mv13079 :isa sparser::in :word "in")
 (:var sparser::mv13078 :isa sparser::be :present "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    source-start
e7    INVOLVE       1 "Which pathways involve p53" 6
                    question-mark
                    end-of-source
("Which pathways involve p53?"
 (:var sparser::mv13089 :isa sparser::involve :theme sparser::mv13088 :theme sparser::mv13086
  :present "PRESENT")
 (:var sparser::mv13088 :isa sparser::pathway :has-determiner "WHICH" :raw-text "pathways")
 (:var sparser::mv13086 :isa sparser::protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    source-start
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    end-of-source
("can you show me the pahtways that involve SRF"
 (:var sparser::mv13099 :isa sparser::polar-question :statement sparser::mv13092)
 (:var sparser::mv13092 :isa sparser::show :agent sparser::mv13091 :|statement-OR-theme|
  sparser::mv13095 :beneficiary sparser::mv13093 :modal "CAN")
 (:var sparser::mv13091 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv13095 :isa sparser::bio-entity :predication sparser::mv13097 :has-determiner
  "THE" :name "pahtways")
 (:var sparser::mv13097 :isa sparser::involve :theme sparser::mv13095 :that-rel t :theme
  sparser::mv13098 :modal "CAN")
 (:var sparser::mv13098 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv13093 :isa sparser::interlocutor :name "speaker"))

___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    source-start
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    question-mark
                    end-of-source
("Does Selumetinib inhibit MAP2K1?"
 (:var sparser::mv13105 :isa sparser::polar-question :statement sparser::mv13104)
 (:var sparser::mv13104 :isa sparser::inhibit :agent sparser::mv13102 :object sparser::mv13100
  :raw-text "inhibit")
 (:var sparser::mv13102 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv13100 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    source-start
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    period
                    end-of-source
("Let's build a model of the KRAS neighborhood."
 (:var sparser::mv13115 :isa sparser::explicit-suggestion :suggestion sparser::mv13107 :marker
  sparser::let-as-directive)
 (:var sparser::mv13107 :isa sparser::build :artifact sparser::mv13109 :present "PRESENT")
 (:var sparser::mv13109 :isa sparser::model :object sparser::mv13113 :has-determiner "A")
 (:var sparser::mv13113 :isa sparser::neighborhood :has-determiner "THE" :modifier
  sparser::mv13112)
 (:var sparser::mv13112 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    source-start
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    period
                    end-of-source
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:var sparser::mv13133 :isa sparser::collection :type sparser::know :number 2 :items
  (sparser::mv13131 sparser::mv13132))
 (:var sparser::mv13131 :isa sparser::know :agent sparser::mv13116 :statement sparser::mv13122
  :present "PRESENT")
 (:var sparser::mv13116 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv13122 :isa sparser::bio-activate :agent sparser::mv13121 :object sparser::mv13123
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv13121 :isa sparser::protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv13123 :isa sparser::protein-family :raw-text "Raf" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114")
 (:var sparser::mv13132 :isa sparser::collection :raw-text
  "Raf activates Mek and Mek activates Erk" :type sparser::bio-activate :number 2 :items
  (sparser::mv13125 sparser::mv13129))
 (:var sparser::mv13125 :isa sparser::bio-activate :agent sparser::mv13124 :object sparser::mv13126
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv13124 :isa sparser::protein-family :raw-text "Raf" :name "Raf" :count 3
  :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114")
 (:var sparser::mv13126 :isa sparser::protein-family :raw-text "Mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv13129 :isa sparser::bio-activate :agent sparser::mv13128 :object sparser::mv13130
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv13128 :isa sparser::protein-family :raw-text "Mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv13130 :isa sparser::protein-family :raw-text "Erk" :name "ERK" :count 7
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
 (:var sparser::mv13136 :isa sparser::phosphorylate :agent sparser::mv13134 :substrate
  sparser::mv13135 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv13134 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv13135 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    source-start
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    period
                    end-of-source
("DUSP6 dephosphorylates MAPK1."
 (:var sparser::mv13139 :isa sparser::dephosphorylate :agent sparser::mv13137 :substrate
  sparser::mv13138 :present "PRESENT" :raw-text "dephosphorylates")
 (:var sparser::mv13137 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN")
 (:var sparser::mv13138 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    source-start
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 always high?"
 (:var sparser::mv13150 :isa sparser::polar-question :statement sparser::mv13149)
 (:var sparser::mv13149 :isa sparser::copular-predication :item sparser::mv13143 :value
  sparser::mv13147 :predicate sparser::mv13141)
 (:var sparser::mv13143 :isa sparser::bio-amount :measured-item sparser::mv13140 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13140 :isa sparser::protein :predication sparser::mv13145 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv13145 :isa sparser::phosphorylate :substrate sparser::mv13140 :raw-text
  "phosphorylated")
 (:var sparser::mv13147 :isa sparser::high :adverb sparser::mv13146)
 (:var sparser::mv13146 :isa sparser::always :name "always")
 (:var sparser::mv13141 :isa sparser::be))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    source-start
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    question-mark
                    end-of-source
("Is the amount of phosphorylated MAPK1 always low?"
 (:var sparser::mv13161 :isa sparser::polar-question :statement sparser::mv13160)
 (:var sparser::mv13160 :isa sparser::copular-predication :item sparser::mv13154 :value
  sparser::mv13158 :predicate sparser::mv13152)
 (:var sparser::mv13154 :isa sparser::bio-amount :measured-item sparser::mv13151 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13151 :isa sparser::protein :predication sparser::mv13156 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv13156 :isa sparser::phosphorylate :substrate sparser::mv13151 :raw-text
  "phosphorylated")
 (:var sparser::mv13158 :isa sparser::low :adverb sparser::mv13157)
 (:var sparser::mv13157 :isa sparser::always :name "always")
 (:var sparser::mv13152 :isa sparser::be))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    source-start
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    question-mark
                    end-of-source
("Does the MAP2K1-MAPK1 complex vanish?"
 (:var sparser::mv13171 :isa sparser::polar-question :statement sparser::mv13170)
 (:var sparser::mv13170 :isa sparser::vanish :agent sparser::mv13169 :raw-text "vanish")
 (:var sparser::mv13169 :isa sparser::bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1"
  :component sparser::mv13163 :component sparser::mv13162)
 (:var sparser::mv13163 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv13162 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    source-start
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    question-mark
                    end-of-source
("Does the DUSP6-MAPK1 complex vanish?"
 (:var sparser::mv13181 :isa sparser::polar-question :statement sparser::mv13180)
 (:var sparser::mv13180 :isa sparser::vanish :agent sparser::mv13179 :raw-text "vanish")
 (:var sparser::mv13179 :isa sparser::bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1"
  :component sparser::mv13173 :component sparser::mv13172)
 (:var sparser::mv13173 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv13172 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    source-start
e50   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    question-mark
                    end-of-source
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:var sparser::mv13211 :isa sparser::polar-question :statement sparser::mv13210)
 (:var sparser::mv13210 :isa sparser::event-relation :subordinated-event sparser::mv13207 :event
  sparser::mv13203)
 (:var sparser::mv13207 :isa sparser::wh-question :statement sparser::mv13204 :wh if)
 (:var sparser::mv13204 :isa sparser::increase :|agent-OR-cause| sparser::mv13191 :cause
  sparser::mv13202 :|affected-process-OR-object| sparser::mv13195 :raw-text "increase")
 (:var sparser::mv13191 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv13202 :isa sparser::measurement :number sparser::mv13199)
 (:var sparser::mv13199 :isa number :value 10)
 (:var sparser::mv13195 :isa sparser::bio-amount :measured-item sparser::mv13183 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13183 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN")
 (:var sparser::mv13203 :isa sparser::vanish :cause sparser::mv13186 :raw-text "vanish")
 (:var sparser::mv13186 :isa sparser::bio-amount :measured-item sparser::mv13182 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13182 :isa sparser::protein :predication sparser::mv13188 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv13188 :isa sparser::phosphorylate :substrate sparser::mv13182 :raw-text
  "phosphorylated"))

___________________
561: "Show me the evidence that kras regulates fzd8."

                    source-start
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    period
                    end-of-source
("Show me the evidence that kras regulates fzd8."
 (:var sparser::mv13213 :isa sparser::show :|statement-OR-theme| sparser::mv13220 :beneficiary
  sparser::mv13214 :present "PRESENT")
 (:var sparser::mv13220 :isa sparser::evidence :statement sparser::mv13219 :has-determiner "THE")
 (:var sparser::mv13219 :isa sparser::regulate :agent sparser::mv13218 :object sparser::mv13212
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv13218 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv13212 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
 (:var sparser::mv13214 :isa sparser::interlocutor :name "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    source-start
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    question-mark
                    end-of-source
("What increases the amount of fzd8?"
 (:var sparser::mv13224 :isa sparser::increase :|agent-OR-cause| sparser::mv13222
  :|affected-process-OR-object| sparser::mv13226 :present "PRESENT" :raw-text "increases")
 (:var sparser::mv13222 :isa sparser::what)
 (:var sparser::mv13226 :isa sparser::bio-amount :measured-item sparser::mv13221 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13221 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    question-mark
                    end-of-source
("Which kinases are in the MAPK signaling pathway?"
 (:var sparser::mv13239 :isa sparser::copular-predication-of-pp :item sparser::mv13231 :value
  sparser::mv13238 :prep "IN" :predicate sparser::mv13232)
 (:var sparser::mv13231 :isa sparser::kinase :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv13238 :isa sparser::kinase :|context-OR-in-pathway| sparser::mv13229
  :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv13229 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv13235 :raw-text "signaling pathway")
 (:var sparser::mv13235 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv13232 :isa sparser::be :present "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    source-start
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    question-mark
                    end-of-source
("Does STAT3 regulate the c-fos gene in the liver?"
 (:var sparser::mv13252 :isa sparser::polar-question :statement sparser::mv13250)
 (:var sparser::mv13250 :isa sparser::regulate :agent sparser::mv13241 :object sparser::mv13246
  :raw-text "regulate")
 (:var sparser::mv13241 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv13246 :isa sparser::gene :organ sparser::mv13249 :has-determiner "THE" :expresses
  sparser::mv13242 :raw-text "gene")
 (:var sparser::mv13249 :isa sparser::liver :has-determiner "THE")
 (:var sparser::mv13242 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    source-start
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    question-mark
                    end-of-source
("what genes are regulated by smad2?"
 (:var sparser::mv13259 :isa sparser::regulate :object sparser::mv13255 :agent sparser::mv13253
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv13255 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv13253 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    source-start
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    question-mark
                    end-of-source
("Which of these are regulated by smad2?"
 (:var sparser::mv13268 :isa sparser::regulate :|affected-process-OR-object| sparser::mv13264
  :agent sparser::mv13261 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv13264 :isa sparser::these :quantifier sparser::mv13262 :word "these")
 (:var sparser::mv13262 :isa sparser::which)
 (:var sparser::mv13261 :isa sparser::protein :raw-text "smad2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    source-start
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    question-mark
                    end-of-source
("Which of these also regulate cfos?"
 (:var sparser::mv13276 :isa sparser::regulate :|agent-OR-cause| sparser::mv13273 :object
  sparser::mv13277 :present "PRESENT" :adverb sparser::mv13274 :raw-text "regulate")
 (:var sparser::mv13273 :isa sparser::these :quantifier sparser::mv13271 :word "these")
 (:var sparser::mv13271 :isa sparser::which)
 (:var sparser::mv13277 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv13274 :isa sparser::also :name "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    source-start
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    question-mark
                    end-of-source
("what transcription factors transcribe SMURF2?"
 (:var sparser::mv13282 :isa sparser::transcribe :agent sparser::mv13279 :object sparser::mv13280
  :present "PRESENT" :raw-text "transcribe")
 (:var sparser::mv13279 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv13280 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    source-start
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    question-mark
                    end-of-source
("what transcription factor transcribes SMURF2?"
 (:var sparser::mv13286 :isa sparser::transcribe :agent sparser::mv13283 :object sparser::mv13284
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv13283 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factor")
 (:var sparser::mv13284 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    source-start
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    question-mark
                    end-of-source
("Which KEGG pathways utilize SRF?"
 (:var sparser::mv13290 :isa sparser::utilize :participant sparser::mv13289 :object
  sparser::mv13291 :present "PRESENT" :raw-text "utilize")
 (:var sparser::mv13289 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv13288
  :raw-text "pathways")
 (:var sparser::mv13288 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv13291 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
571: "What transcription factors are in the calcium regulated pathways?"

                    source-start
e17   REGULATE      1 "What transcription factors are in the calcium regulated pathways" 10
                    question-mark
                    end-of-source
("What transcription factors are in the calcium regulated pathways?"
 (:var sparser::mv13302 :isa sparser::wh-question :statement sparser::mv13298 :var nil :wh
  sparser::what)
 (:var sparser::mv13298 :isa sparser::regulate :affected-process sparser::mv13299 :past "PAST"
  :raw-text "regulated")
 (:var sparser::mv13299 :isa sparser::pathway :raw-text "pathways"))

___________________
572: "What pathways involve the immune system?"

                    source-start
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    question-mark
                    end-of-source
("What pathways involve the immune system?"
 (:var sparser::mv13306 :isa sparser::involve :theme sparser::mv13305 :theme sparser::mv13303
  :present "PRESENT")
 (:var sparser::mv13305 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv13303 :isa sparser::bio-organ :has-determiner "THE" :name "immune system" :uid
  "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    source-start
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    question-mark
                    end-of-source
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:var sparser::mv13313 :isa sparser::involve :theme sparser::mv13312 :theme sparser::mv13316
  :present "PRESENT")
 (:var sparser::mv13312 :isa sparser::pathway :has-determiner "WHAT" :modifier sparser::mv13311
  :raw-text "pathways")
 (:var sparser::mv13311 :isa sparser::database :name "KEGG" :uid "KEGG")
 (:var sparser::mv13316 :isa sparser::collection :raw-text "ERBB2, JUN, and MAPK8" :type
  sparser::protein :number 3 :items (sparser::mv13308 sparser::mv13314 sparser::mv13309))
 (:var sparser::mv13308 :isa sparser::protein :raw-text "ERBB2" :uid "UP:P04626" :name
  "ERBB2_HUMAN")
 (:var sparser::mv13314 :isa sparser::protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
 (:var sparser::mv13309 :isa sparser::protein :raw-text "MAPK8" :uid "UP:P45983" :name
  "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    source-start
e13   SHARE         1 "What pathways are shared by these genes" 8
                    question-mark
                    end-of-source
("What pathways are shared by these genes?"
 (:var sparser::mv13324 :isa sparser::share :object sparser::mv13318 :participant sparser::mv13323
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv13318 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv13323 :isa sparser::gene :has-determiner "THESE" :raw-text "genes"))

___________________
575: "what genes are regulated by srf?"

                    source-start
e11   REGULATE      1 "what genes are regulated by srf" 7
                    question-mark
                    end-of-source
("what genes are regulated by srf?"
 (:var sparser::mv13332 :isa sparser::regulate :object sparser::mv13327 :agent sparser::mv13331
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv13327 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv13331 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    source-start
e13   BE            1 "What are common pathways for these genes" 8
                    question-mark
                    end-of-source
("What are common pathways for these genes?"
 (:var sparser::mv13335 :isa sparser::be :subject sparser::mv13334 :predicate sparser::mv13337
  :present "PRESENT")
 (:var sparser::mv13334 :isa sparser::what)
 (:var sparser::mv13337 :isa sparser::pathway :pathwaycomponent sparser::mv13340 :predication
  sparser::mv13336 :raw-text "pathways")
 (:var sparser::mv13340 :isa sparser::gene :has-determiner "THESE" :raw-text "genes")
 (:var sparser::mv13336 :isa sparser::common))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    source-start
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    question-mark
                    end-of-source
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:var sparser::mv13354 :isa sparser::share :object sparser::mv13347 :participant sparser::mv13352
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv13347 :isa sparser::pathway :has-determiner "WHICH" :modifier sparser::mv13346
  :raw-text "pathways")
 (:var sparser::mv13346 :isa sparser::immune :name "immune")
 (:var sparser::mv13352 :isa sparser::gene :expresses sparser::mv13353 :raw-text "genes")
 (:var sparser::mv13353 :isa sparser::collection :raw-text "STAT3, SOCS3, and CREB5" :type
  sparser::protein :number 3 :items (sparser::mv13342 sparser::mv13343 sparser::mv13344))
 (:var sparser::mv13342 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv13343 :isa sparser::protein :raw-text "SOCS3" :uid "UP:O14543" :name
  "SOCS3_HUMAN")
 (:var sparser::mv13344 :isa sparser::protein :raw-text "CREB5" :uid "UP:Q02930" :name
  "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    source-start
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    question-mark
                    end-of-source
("What MAP kinase phosphatase are regulated by ELK1?"
 (:var sparser::mv13363 :isa sparser::regulate :object sparser::mv13359 :agent sparser::mv13357
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv13359 :isa sparser::phosphatase :has-determiner "WHAT" :enzyme sparser::mv13356
  :raw-text "phosphatase")
 (:var sparser::mv13356 :isa sparser::protein-family :raw-text "MAP kinase" :name
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
 (:var sparser::mv13357 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    source-start
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    question-mark
                    end-of-source
("What reactome pathways involve immune system?"
 (:var sparser::mv13369 :isa sparser::involve :theme sparser::mv13368 :theme sparser::mv13365
  :present "PRESENT")
 (:var sparser::mv13368 :isa sparser::pathway :has-determiner "WHAT" :modifier sparser::mv13367
  :raw-text "pathways")
 (:var sparser::mv13367 :isa sparser::database :name "Reactome" :uid "Reactome")
 (:var sparser::mv13365 :isa sparser::bio-organ :name "immune system" :uid "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    source-start
e9    BE            1 "Is stat3 a kinase" 6
                    question-mark
                    end-of-source
("Is stat3 a kinase?"
 (:var sparser::mv13374 :isa sparser::polar-question :statement sparser::mv13371)
 (:var sparser::mv13371 :isa sparser::be :subject sparser::mv13370 :predicate sparser::mv13373)
 (:var sparser::mv13370 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv13373 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
581: "Is STAT3 a transcription factor?"

                    source-start
e10   BE            1 "Is STAT3 a transcription factor" 7
                    question-mark
                    end-of-source
("Is STAT3 a transcription factor?"
 (:var sparser::mv13379 :isa sparser::polar-question :statement sparser::mv13377)
 (:var sparser::mv13377 :isa sparser::be :subject sparser::mv13375 :predicate sparser::mv13376)
 (:var sparser::mv13375 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv13376 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor"))

___________________
582: "Which of these are protein kinases?"

                    source-start
e11   BE            1 "Which of these are protein kinases" 7
                    question-mark
                    end-of-source
("Which of these are protein kinases?"
 (:var sparser::mv13383 :isa sparser::be :subject sparser::mv13382 :predicate sparser::mv13385
  :present "PRESENT")
 (:var sparser::mv13382 :isa sparser::these :quantifier sparser::mv13380 :word "these")
 (:var sparser::mv13380 :isa sparser::which)
 (:var sparser::mv13385 :isa sparser::kinase :enzyme sparser::mv13384 :raw-text "kinases")
 (:var sparser::mv13384 :isa sparser::protein :raw-text "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    source-start
e10   BE            1 "Which of these are tyrosine kinases" 7
                    question-mark
                    end-of-source
("Which of these are tyrosine kinases?"
 (:var sparser::mv13391 :isa sparser::be :subject sparser::mv13390 :predicate sparser::mv13387
  :present "PRESENT")
 (:var sparser::mv13390 :isa sparser::these :quantifier sparser::mv13388 :word "these")
 (:var sparser::mv13388 :isa sparser::which)
 (:var sparser::mv13387 :isa sparser::protein-family :raw-text "tyrosine kinases" :name
  "protein tyrosine kinase" :uid "NCIT:C17020"))

___________________
584: "Which of these are serine/threonine kinases?"

                    source-start
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    question-mark
                    end-of-source
("Which of these are serine/threonine kinases?"
 (:var sparser::mv13396 :isa sparser::be :subject sparser::mv13395 :predicate sparser::mv13399
  :present "PRESENT")
 (:var sparser::mv13395 :isa sparser::these :quantifier sparser::mv13393 :word "these")
 (:var sparser::mv13393 :isa sparser::which)
 (:var sparser::mv13399 :isa sparser::kinase :amino-acid sparser::mv13400 :raw-text "kinases")
 (:var sparser::mv13400 :isa sparser::collection :raw-text "serine/threonine" :type
  sparser::amino-acid :items (sparser::mv13397 sparser::mv13398))
 (:var sparser::mv13397 :isa sparser::amino-acid :raw-text "serine" :name "serine")
 (:var sparser::mv13398 :isa sparser::amino-acid :raw-text "threonine" :name "threonine"))

___________________
585: "Which of these are phosphatases?"

                    source-start
e9    BE            1 "Which of these are phosphatases" 6
                    question-mark
                    end-of-source
("Which of these are phosphatases?"
 (:var sparser::mv13405 :isa sparser::be :subject sparser::mv13404 :predicate sparser::mv13406
  :present "PRESENT")
 (:var sparser::mv13404 :isa sparser::these :quantifier sparser::mv13402 :word "these")
 (:var sparser::mv13402 :isa sparser::which)
 (:var sparser::mv13406 :isa sparser::phosphatase :raw-text "phosphatases"))

___________________
586: "Which of these are proteases?"

                    source-start
e9    BE            1 "Which of these are proteases" 6
                    question-mark
                    end-of-source
("Which of these are proteases?"
 (:var sparser::mv13411 :isa sparser::be :subject sparser::mv13410 :predicate sparser::mv13412
  :present "PRESENT")
 (:var sparser::mv13410 :isa sparser::these :quantifier sparser::mv13408 :word "these")
 (:var sparser::mv13408 :isa sparser::which)
 (:var sparser::mv13412 :isa sparser::protein :raw-text "proteases" :uid "UP:P63127" :name
  "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    source-start
e9    BE            1 "Which of these are receptors" 6
                    question-mark
                    end-of-source
("Which of these are receptors?"
 (:var sparser::mv13417 :isa sparser::be :subject sparser::mv13416 :predicate sparser::mv13418
  :present "PRESENT")
 (:var sparser::mv13416 :isa sparser::these :quantifier sparser::mv13414 :word "these")
 (:var sparser::mv13414 :isa sparser::which)
 (:var sparser::mv13418 :isa sparser::receptor :raw-text "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    source-start
e12   BE            1 "Which of these are tyrosine kinase receptors" 8
                    question-mark
                    end-of-source
("Which of these are tyrosine kinase receptors?"
 (:var sparser::mv13424 :isa sparser::be :subject sparser::mv13423 :predicate sparser::mv13425
  :present "PRESENT")
 (:var sparser::mv13423 :isa sparser::these :quantifier sparser::mv13421 :word "these")
 (:var sparser::mv13421 :isa sparser::which)
 (:var sparser::mv13425 :isa sparser::receptor :modifier sparser::mv13420 :raw-text "receptors")
 (:var sparser::mv13420 :isa sparser::protein-family :raw-text "tyrosine kinase" :name
  "protein tyrosine kinase" :uid "NCIT:C17020"))

___________________
589: "Which of these are histone demethylases?"

                    source-start
e10   BE            1 "Which of these are histone demethylases" 7
                    question-mark
                    end-of-source
("Which of these are histone demethylases?"
 (:var sparser::mv13431 :isa sparser::be :subject sparser::mv13430 :predicate sparser::mv13427
  :present "PRESENT")
 (:var sparser::mv13430 :isa sparser::these :quantifier sparser::mv13428 :word "these")
 (:var sparser::mv13428 :isa sparser::which)
 (:var sparser::mv13427 :isa sparser::protein-family :raw-text "histone demethylases" :name
  "histone demethylase" :uid "GO:0032452"))

___________________
590: "Which of these are histone methylases?"

                    source-start
e10   BE            1 "Which of these are histone methylases" 7
                    question-mark
                    end-of-source
("Which of these are histone methylases?"
 (:var sparser::mv13437 :isa sparser::be :subject sparser::mv13436 :predicate sparser::mv13433
  :present "PRESENT")
 (:var sparser::mv13436 :isa sparser::these :quantifier sparser::mv13434 :word "these")
 (:var sparser::mv13434 :isa sparser::which)
 (:var sparser::mv13433 :isa sparser::protein-family :raw-text "histone methylases" :name
  "histone methyltransferase" :uid "GO:0042054"))

___________________
591: "Which of these are histone methyltransferases?"

                    source-start
e10   BE            1 "Which of these are histone methyltransferases" 7
                    question-mark
                    end-of-source
("Which of these are histone methyltransferases?"
 (:var sparser::mv13443 :isa sparser::be :subject sparser::mv13442 :predicate sparser::mv13439
  :present "PRESENT")
 (:var sparser::mv13442 :isa sparser::these :quantifier sparser::mv13440 :word "these")
 (:var sparser::mv13440 :isa sparser::which)
 (:var sparser::mv13439 :isa sparser::protein-family :raw-text "histone methyltransferases" :name
  "histone methyltransferase" :uid "GO:0042054"))

___________________
592: "Which of these are demethylases?"

                    source-start
e9    BE            1 "Which of these are demethylases" 6
                    question-mark
                    end-of-source
("Which of these are demethylases?"
 (:var sparser::mv13448 :isa sparser::be :subject sparser::mv13447 :predicate sparser::mv13449
  :present "PRESENT")
 (:var sparser::mv13447 :isa sparser::these :quantifier sparser::mv13445 :word "these")
 (:var sparser::mv13445 :isa sparser::which)
 (:var sparser::mv13449 :isa sparser::protein-family :raw-text "demethylases" :name "demethylase"
  :uid "GO:0032451"))

___________________
593: "Which of these are methylases?"

                    source-start
e9    BE            1 "Which of these are methylases" 6
                    question-mark
                    end-of-source
("Which of these are methylases?"
 (:var sparser::mv13454 :isa sparser::be :subject sparser::mv13453 :predicate sparser::mv13455
  :present "PRESENT")
 (:var sparser::mv13453 :isa sparser::these :quantifier sparser::mv13451 :word "these")
 (:var sparser::mv13451 :isa sparser::which)
 (:var sparser::mv13455 :isa sparser::protein-family :raw-text "methylases" :name
  "methyltransferase" :uid "GO:0008168"))

___________________
594: "Which of these are methyltransferases?"

                    source-start
e9    BE            1 "Which of these are methyltransferases" 6
                    question-mark
                    end-of-source
("Which of these are methyltransferases?"
 (:var sparser::mv13460 :isa sparser::be :subject sparser::mv13459 :predicate sparser::mv13461
  :present "PRESENT")
 (:var sparser::mv13459 :isa sparser::these :quantifier sparser::mv13457 :word "these")
 (:var sparser::mv13457 :isa sparser::which)
 (:var sparser::mv13461 :isa sparser::protein-family :raw-text "methyltransferases" :name
  "methyltransferase" :uid "GO:0008168"))

___________________
595: "Which of these are steroid receptors?"

                    source-start
e11   BE            1 "Which of these are steroid receptors" 7
                    question-mark
                    end-of-source
("Which of these are steroid receptors?"
 (:var sparser::mv13466 :isa sparser::be :subject sparser::mv13465 :predicate sparser::mv13468
  :present "PRESENT")
 (:var sparser::mv13465 :isa sparser::these :quantifier sparser::mv13463 :word "these")
 (:var sparser::mv13463 :isa sparser::which)
 (:var sparser::mv13468 :isa sparser::receptor :modifier sparser::mv13467 :raw-text "receptors")
 (:var sparser::mv13467 :isa sparser::molecule :raw-text "steroid" :name "steroid" :uid
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    source-start
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    question-mark
                    end-of-source
("Which of these are receptor tyrosine kinases?"
 (:var sparser::mv13474 :isa sparser::be :subject sparser::mv13473 :predicate sparser::mv13470
  :present "PRESENT")
 (:var sparser::mv13473 :isa sparser::these :quantifier sparser::mv13471 :word "these")
 (:var sparser::mv13471 :isa sparser::which)
 (:var sparser::mv13470 :isa sparser::protein-family :raw-text "receptor tyrosine kinases" :name
  "receptor tyrosine kinase" :count 2 :family-members
  ((sparser::protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
   (sparser::protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
  :uid "NCIT:C17660"))

___________________
597: "Which of these are transcription factors?"

                    source-start
e10   BE            1 "Which of these are transcription factors" 7
                    question-mark
                    end-of-source
("Which of these are transcription factors?"
 (:var sparser::mv13480 :isa sparser::be :subject sparser::mv13479 :predicate sparser::mv13476
  :present "PRESENT")
 (:var sparser::mv13479 :isa sparser::these :quantifier sparser::mv13477 :word "these")
 (:var sparser::mv13477 :isa sparser::which)
 (:var sparser::mv13476 :isa sparser::transcription-factor :raw-text "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    source-start
e12   BE            1 "Which of these are DNA binding proteins" 8
                    question-mark
                    end-of-source
("Which of these are DNA binding proteins?"
 (:var sparser::mv13486 :isa sparser::be :subject sparser::mv13485 :predicate sparser::mv13487
  :present "PRESENT")
 (:var sparser::mv13485 :isa sparser::these :quantifier sparser::mv13483 :word "these")
 (:var sparser::mv13483 :isa sparser::which)
 (:var sparser::mv13487 :isa sparser::protein :modifier sparser::mv13482 :raw-text "proteins")
 (:var sparser::mv13482 :isa sparser::dna-binding :raw-text "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    source-start
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    question-mark
                    end-of-source
("Which of these are serine/threonine phosphatases?"
 (:var sparser::mv13492 :isa sparser::be :subject sparser::mv13491 :predicate sparser::mv13495
  :present "PRESENT")
 (:var sparser::mv13491 :isa sparser::these :quantifier sparser::mv13489 :word "these")
 (:var sparser::mv13489 :isa sparser::which)
 (:var sparser::mv13495 :isa sparser::phosphatase :modifier sparser::mv13496 :raw-text
  "phosphatases")
 (:var sparser::mv13496 :isa sparser::collection :raw-text "serine/threonine" :type
  sparser::amino-acid :items (sparser::mv13493 sparser::mv13494))
 (:var sparser::mv13493 :isa sparser::amino-acid :raw-text "serine" :name "serine")
 (:var sparser::mv13494 :isa sparser::amino-acid :raw-text "threonine" :name "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    source-start
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    question-mark
                    end-of-source
("Which of these are tyrosine phosphatases?"
 (:var sparser::mv13501 :isa sparser::be :subject sparser::mv13500 :predicate sparser::mv13503
  :present "PRESENT")
 (:var sparser::mv13500 :isa sparser::these :quantifier sparser::mv13498 :word "these")
 (:var sparser::mv13498 :isa sparser::which)
 (:var sparser::mv13503 :isa sparser::phosphatase :modifier sparser::mv13502 :raw-text
  "phosphatases")
 (:var sparser::mv13502 :isa sparser::amino-acid :raw-text "tyrosine" :name "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    source-start
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    question-mark
                    end-of-source
("What does MEK phosphorylate?"
 (:var sparser::mv13508 :isa sparser::phosphorylate :amino-acid sparser::mv13505 :agent
  sparser::mv13507 :present "PRESENT" :raw-text "phosphorylate")
 (:var sparser::mv13505 :isa sparser::what)
 (:var sparser::mv13507 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
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
 (:var sparser::mv13517 :isa sparser::gene-transcript-express :object sparser::mv13511 :organ
  sparser::mv13516 :present "PRESENT" :adverb sparser::mv13513 :raw-text "expressed")
 (:var sparser::mv13511 :isa sparser::these :quantifier sparser::mv13509 :word "these")
 (:var sparser::mv13509 :isa sparser::which) (:var sparser::mv13516 :isa sparser::liver)
 (:var sparser::mv13513 :isa sparser::exclusively :name "exclusively"))

___________________
603: "What regulates frizzled8?"

                    source-start
e5    REGULATE      1 "What regulates frizzled8" 5
                    question-mark
                    end-of-source
("What regulates frizzled8?"
 (:var sparser::mv13522 :isa sparser::regulate :|agent-OR-cause| sparser::mv13521 :object
  sparser::mv13520 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv13521 :isa sparser::what)
 (:var sparser::mv13520 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    source-start
e13   INCREASE      1 "What increases the amount of myc" 7
                    question-mark
                    end-of-source
("What increases the amount of myc?"
 (:var sparser::mv13525 :isa sparser::increase :|agent-OR-cause| sparser::mv13523
  :|affected-process-OR-object| sparser::mv13527 :present "PRESENT" :raw-text "increases")
 (:var sparser::mv13523 :isa sparser::what)
 (:var sparser::mv13527 :isa sparser::bio-amount :measured-item sparser::mv13529 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13529 :isa sparser::protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    source-start
e4    UPREGULATE    1 "What upregulates myc" 4
                    question-mark
                    end-of-source
("What upregulates myc?"
 (:var sparser::mv13532 :isa sparser::upregulate :|agent-OR-cause| sparser::mv13531 :object
  sparser::mv13533 :present "PRESENT" :raw-text "upregulates")
 (:var sparser::mv13531 :isa sparser::what)
 (:var sparser::mv13533 :isa sparser::protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    source-start
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    question-mark
                    end-of-source
("What downregulates myc?"
 (:var sparser::mv13535 :isa sparser::downregulate :|agent-OR-cause| sparser::mv13534 :object
  sparser::mv13536 :present "PRESENT" :raw-text "downregulates")
 (:var sparser::mv13534 :isa sparser::what)
 (:var sparser::mv13536 :isa sparser::protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    source-start
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    question-mark
                    end-of-source
("What decreases the amount of GFAP?"
 (:var sparser::mv13538 :isa sparser::decrease :|agent-OR-cause| sparser::mv13537
  :|affected-process-OR-object| sparser::mv13540 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv13537 :isa sparser::what)
 (:var sparser::mv13540 :isa sparser::bio-amount :measured-item sparser::mv13542 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13542 :isa sparser::protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    source-start
e4    REGULATE      1 "What regulates GLUL" 4
                    question-mark
                    end-of-source
("What regulates GLUL?"
 (:var sparser::mv13545 :isa sparser::regulate :|agent-OR-cause| sparser::mv13544 :object
  sparser::mv13546 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv13544 :isa sparser::what)
 (:var sparser::mv13546 :isa sparser::protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))

___________________
609: "What regulates GLUL from the literature?"

                    source-start
e11   FROM          1 "What regulates GLUL from the literature" 7
                    question-mark
                    end-of-source
("What regulates GLUL from the literature?"
 (:var sparser::mv13554 :isa sparser::wh-question :statement sparser::mv13553 :wh sparser::what)
 (:var sparser::mv13553 :isa sparser::prepositional-phrase :pobj sparser::mv13552 :prep "FROM")
 (:var sparser::mv13552 :isa sparser::literature :has-determiner "THE"))

___________________
610: "What regulates GLUL from the GEO RNAi database?"

                    source-start
e12   FROM          1 "What regulates GLUL from the GEO RNAi database" 9
                    question-mark
                    end-of-source
("What regulates GLUL from the GEO RNAi database?"
 (:var sparser::mv13562 :isa sparser::wh-question :statement sparser::mv13561 :wh sparser::what)
 (:var sparser::mv13561 :isa sparser::prepositional-phrase :pobj sparser::mv13555 :prep "FROM")
 (:var sparser::mv13555 :isa sparser::database :has-determiner "THE" :name "GEO RNAi database" :uid
  "GEO-RNAi"))

___________________
611: "Which kinases regulate the cfos gene?"

                    source-start
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    question-mark
                    end-of-source
("Which kinases regulate the cfos gene?"
 (:var sparser::mv13565 :isa sparser::regulate :agent sparser::mv13564 :object sparser::mv13568
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv13564 :isa sparser::kinase :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv13568 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv13567
  :raw-text "gene")
 (:var sparser::mv13567 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    source-start
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    question-mark
                    end-of-source
("Which kinases negatively regulate the cfos gene?"
 (:var sparser::mv13569 :isa sparser::downregulate :agent sparser::mv13571 :object sparser::mv13574
  :present "PRESENT" :raw-text "negatively regulate")
 (:var sparser::mv13571 :isa sparser::kinase :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv13574 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv13573
  :raw-text "gene")
 (:var sparser::mv13573 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    source-start
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    question-mark
                    end-of-source
("What are positive regulators of the cfos gene?"
 (:var sparser::mv13577 :isa sparser::be :subject sparser::mv13576 :predicate sparser::mv13575
  :present "PRESENT")
 (:var sparser::mv13576 :isa sparser::what)
 (:var sparser::mv13575 :isa sparser::positive-regulator :theme sparser::mv13581 :raw-text
  "positive regulators")
 (:var sparser::mv13581 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv13580
  :raw-text "gene")
 (:var sparser::mv13580 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    source-start
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    question-mark
                    end-of-source
("What transcribes ZEB1?"
 (:var sparser::mv13585 :isa sparser::transcribe :|agent-OR-cause| sparser::mv13584 :object
  sparser::mv13583 :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv13584 :isa sparser::what)
 (:var sparser::mv13583 :isa sparser::protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    source-start
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    period
                    end-of-source
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:var sparser::mv13588 :isa sparser::show :|statement-OR-theme| sparser::mv13599 :beneficiary
  sparser::mv13589 :present "PRESENT")
 (:var sparser::mv13599 :isa sparser::evidence :statement sparser::mv13594 :has-determiner "THE")
 (:var sparser::mv13594 :isa sparser::increase :agent sparser::mv13586
  :|affected-process-OR-object| sparser::mv13596 :present "PRESENT" :raw-text "increases")
 (:var sparser::mv13586 :isa sparser::protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
 (:var sparser::mv13596 :isa sparser::bio-amount :measured-item sparser::mv13587 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13587 :isa sparser::protein :raw-text "SOCS1" :uid "UP:O15524" :name
  "SOCS1_HUMAN")
 (:var sparser::mv13589 :isa sparser::interlocutor :name "speaker"))

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
 (:var sparser::mv13614 :isa sparser::be :subject sparser::mv13613 :predicate sparser::mv13620
  :present "PRESENT")
 (:var sparser::mv13613 :isa sparser::what)
 (:var sparser::mv13620 :isa sparser::evidence :statement sparser::mv13619 :has-determiner "THE")
 (:var sparser::mv13619 :isa sparser::regulate :agent sparser::mv13618 :object sparser::mv13612
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv13618 :isa sparser::protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
 (:var sparser::mv13612 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    source-start
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    question-mark
                    end-of-source
("What is the evidence that SRF binds the cfos gene?"
 (:var sparser::mv13622 :isa sparser::be :subject sparser::mv13621 :predicate sparser::mv13631
  :present "PRESENT")
 (:var sparser::mv13621 :isa sparser::what)
 (:var sparser::mv13631 :isa sparser::evidence :statement sparser::mv13627 :has-determiner "THE")
 (:var sparser::mv13627 :isa sparser::binding :binder sparser::mv13626 :direct-bindee
  sparser::mv13630 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv13626 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv13630 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv13629
  :raw-text "gene")
 (:var sparser::mv13629 :isa sparser::protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    source-start
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    question-mark
                    end-of-source
("what genes are exclusively expressed in liver?"
 (:var sparser::mv13639 :isa sparser::gene-transcript-express :object sparser::mv13633 :organ
  sparser::mv13638 :present "PRESENT" :adverb sparser::mv13635 :raw-text "expressed")
 (:var sparser::mv13633 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv13638 :isa sparser::liver)
 (:var sparser::mv13635 :isa sparser::exclusively :name "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    source-start
e10   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    question-mark
                    end-of-source
("Is stat3 expressed in liver?"
 (:var sparser::mv13647 :isa sparser::polar-question :statement sparser::mv13643)
 (:var sparser::mv13643 :isa sparser::gene-transcript-express :object sparser::mv13641 :organ
  sparser::mv13645 :past "PAST" :raw-text "expressed")
 (:var sparser::mv13641 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv13645 :isa sparser::liver))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    source-start
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    question-mark
                    end-of-source
("Is stat3 exclusively expressed in liver?"
 (:var sparser::mv13656 :isa sparser::polar-question :statement sparser::mv13654)
 (:var sparser::mv13654 :isa sparser::gene-transcript-express :object sparser::mv13648 :organ
  sparser::mv13653 :adverb sparser::mv13650 :raw-text "expressed")
 (:var sparser::mv13648 :isa sparser::protein :raw-text "stat3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv13653 :isa sparser::liver)
 (:var sparser::mv13650 :isa sparser::exclusively :name "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    source-start
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    question-mark
                    end-of-source
("How does MAP4K2 affect CXCL8?"
 (:var sparser::mv13661 :isa sparser::affect :manner sparser::mv13659 :agent sparser::mv13657
  :object sparser::mv13658 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv13659 :isa sparser::how)
 (:var sparser::mv13657 :isa sparser::protein :raw-text "MAP4K2" :uid "UP:Q12851" :name
  "M4K2_HUMAN")
 (:var sparser::mv13658 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    source-start
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    question-mark
                    end-of-source
("How does ERK affect CXCL8?"
 (:var sparser::mv13666 :isa sparser::affect :manner sparser::mv13663 :agent sparser::mv13665
  :object sparser::mv13662 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv13663 :isa sparser::how)
 (:var sparser::mv13665 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv13662 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    source-start
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    question-mark
                    end-of-source
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:var sparser::mv13670 :isa sparser::be :subject sparser::mv13669 :predicate sparser::mv13675
  :present "PRESENT")
 (:var sparser::mv13669 :isa sparser::what)
 (:var sparser::mv13675 :isa sparser::regulator :theme sparser::mv13678 :has-determiner "THE"
  :predication sparser::mv13672 :context sparser::mv13673 :raw-text "regulators")
 (:var sparser::mv13678 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv13667 sparser::mv13668))
 (:var sparser::mv13667 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv13668 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN")
 (:var sparser::mv13672 :isa sparser::common)
 (:var sparser::mv13673 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    source-start
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    question-mark
                    end-of-source
("What are the paths between MAP3K7 and CXCL8?"
 (:var sparser::mv13683 :isa sparser::be :subject sparser::mv13682 :predicate sparser::mv13685
  :present "PRESENT")
 (:var sparser::mv13682 :isa sparser::what)
 (:var sparser::mv13685 :isa sparser::path :endpoints sparser::mv13688 :has-determiner "THE")
 (:var sparser::mv13688 :isa sparser::collection :raw-text "MAP3K7 and CXCL8" :type
  sparser::protein :number 2 :items (sparser::mv13680 sparser::mv13681))
 (:var sparser::mv13680 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv13681 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    source-start
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    question-mark
                    end-of-source
("Does MAP3K7 affect IKK?"
 (:var sparser::mv13695 :isa sparser::polar-question :statement sparser::mv13694)
 (:var sparser::mv13694 :isa sparser::affect :agent sparser::mv13690 :object sparser::mv13693
  :raw-text "affect")
 (:var sparser::mv13690 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv13693 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
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
 (:var sparser::mv13697 :isa sparser::regulate :agent sparser::mv13696 :object sparser::mv13698
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv13696 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv13698 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
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
 (:var sparser::mv13700 :isa sparser::upregulate :agent sparser::mv13699 :object sparser::mv13701
  :present "PRESENT" :raw-text "positively regulates")
 (:var sparser::mv13699 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv13701 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
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
 (:var sparser::mv13702 :isa sparser::upregulate :agent sparser::mv13704 :object sparser::mv13703
  :present "PRESENT" :raw-text "positively regulates")
 (:var sparser::mv13704 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv13703 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    source-start
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    question-mark
                    end-of-source
("Does NFkappaB regulate the CXCL8 gene?"
 (:var sparser::mv13714 :isa sparser::polar-question :statement sparser::mv13713)
 (:var sparser::mv13713 :isa sparser::regulate :agent sparser::mv13708 :object sparser::mv13712
  :raw-text "regulate")
 (:var sparser::mv13708 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv13712 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv13706
  :raw-text "gene")
 (:var sparser::mv13706 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    source-start
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    end-of-source
("Show me the evidence that NFkappaB regulates CXCL8"
 (:var sparser::mv13716 :isa sparser::show :|statement-OR-theme| sparser::mv13724 :beneficiary
  sparser::mv13717 :present "PRESENT")
 (:var sparser::mv13724 :isa sparser::evidence :statement sparser::mv13723 :has-determiner "THE")
 (:var sparser::mv13723 :isa sparser::regulate :agent sparser::mv13721 :object sparser::mv13715
  :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv13721 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv13715 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv13717 :isa sparser::interlocutor :name "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    source-start
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    question-mark
                    end-of-source
("Does ERK regulate the CXCL8 gene?"
 (:var sparser::mv13732 :isa sparser::polar-question :statement sparser::mv13731)
 (:var sparser::mv13731 :isa sparser::regulate :agent sparser::mv13727 :object sparser::mv13730
  :raw-text "regulate")
 (:var sparser::mv13727 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv13730 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv13725
  :raw-text "gene")
 (:var sparser::mv13725 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    source-start
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    end-of-source
("ERK decreases the amount of CXCL8"
 (:var sparser::mv13735 :isa sparser::decrease :agent sparser::mv13734
  :|affected-process-OR-object| sparser::mv13737 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv13734 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv13737 :isa sparser::bio-amount :measured-item sparser::mv13733 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13733 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    source-start
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    question-mark
                    end-of-source
("Does TNG regulate ERK?"
 (:var sparser::mv13745 :isa sparser::polar-question :statement sparser::mv13744)
 (:var sparser::mv13744 :isa sparser::regulate :agent sparser::mv13741 :object sparser::mv13743
  :raw-text "regulate")
 (:var sparser::mv13741 :isa sparser::bio-entity :name "TNG")
 (:var sparser::mv13743 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13753 :isa sparser::polar-question :statement sparser::mv13752)
 (:var sparser::mv13752 :isa sparser::regulate :agent sparser::mv13747 :object sparser::mv13751
  :raw-text "regulate")
 (:var sparser::mv13747 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv13751 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv13750
  :raw-text "gene")
 (:var sparser::mv13750 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13755 :isa sparser::be :subject sparser::mv13754 :predicate sparser::mv13757
  :present "PRESENT")
 (:var sparser::mv13754 :isa sparser::what)
 (:var sparser::mv13757 :isa sparser::pathway :pathwaycomponent sparser::mv13762 :has-determiner
  "THE" :raw-text "pathways")
 (:var sparser::mv13762 :isa sparser::collection :raw-text "TNG and ERK" :type
  sparser::protein-family :number 2 :items (sparser::mv13759 sparser::mv13761))
 (:var sparser::mv13759 :isa sparser::bio-entity :name "TNG")
 (:var sparser::mv13761 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13765 :isa sparser::be :subject sparser::mv13764 :predicate sparser::mv13767
  :present "PRESENT")
 (:var sparser::mv13764 :isa sparser::what)
 (:var sparser::mv13767 :isa sparser::pathway :pathwaycomponent sparser::mv13772 :has-determiner
  "THE" :raw-text "pathways")
 (:var sparser::mv13772 :isa sparser::collection :raw-text "TNF and ERK" :type sparser::protein
  :number 2 :items (sparser::mv13769 sparser::mv13771))
 (:var sparser::mv13769 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv13771 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13780 :isa sparser::polar-question :statement sparser::mv13779)
 (:var sparser::mv13779 :isa sparser::regulate :agent sparser::mv13775 :object sparser::mv13778
  :raw-text "regulate")
 (:var sparser::mv13775 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv13778 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13789 :isa sparser::polar-question :statement sparser::mv13788)
 (:var sparser::mv13788 :isa sparser::regulate :agent sparser::mv13782 :object sparser::mv13787
  :raw-text "regulate")
 (:var sparser::mv13782 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv13787 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv13786
  :raw-text "gene")
 (:var sparser::mv13786 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13802 :isa sparser::copular-predication-of-pp :item sparser::mv13791 :value
  sparser::mv13801 :prep "BETWEEN" :predicate sparser::mv13792)
 (:var sparser::mv13791 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv13801 :isa sparser::pathway :pathwaycomponent sparser::mv13798 :has-determiner
  "WHAT" :raw-text "pathways")
 (:var sparser::mv13798 :isa sparser::collection :raw-text "NFkappaB and ERK" :type
  sparser::protein-family :number 2 :items (sparser::mv13795 sparser::mv13797))
 (:var sparser::mv13795 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv13797 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv13792 :isa sparser::exist :present "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    source-start
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    question-mark
                    end-of-source
("How does NFkappaB affect ERK?"
 (:var sparser::mv13808 :isa sparser::affect :manner sparser::mv13804 :agent sparser::mv13806
  :object sparser::mv13809 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv13804 :isa sparser::how)
 (:var sparser::mv13806 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
  2 :family-members
  ((sparser::protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
   (sparser::protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
  :uid "FPLX:NFkappaB")
 (:var sparser::mv13809 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13811 :isa sparser::bio-activate :agent sparser::mv13810 :object sparser::mv13812
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv13810 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv13812 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
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
 (:var sparser::mv13814 :isa sparser::bio-activate :agent sparser::mv13813 :object sparser::mv13815
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv13813 :isa sparser::protein-family :raw-text "IKK" :name "IKK" :count 3
  :family-members
  ((sparser::protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
   (sparser::protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
   (sparser::protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
  :uid "NCIT:C104199")
 (:var sparser::mv13815 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    source-start
e14   BE            1 "What are the paths between TNF and ERK" 9
                    question-mark
                    end-of-source
("What are the paths between TNF and ERK?"
 (:var sparser::mv13817 :isa sparser::be :subject sparser::mv13816 :predicate sparser::mv13819
  :present "PRESENT")
 (:var sparser::mv13816 :isa sparser::what)
 (:var sparser::mv13819 :isa sparser::path :endpoints sparser::mv13824 :has-determiner "THE")
 (:var sparser::mv13824 :isa sparser::collection :raw-text "TNF and ERK" :type sparser::protein
  :number 2 :items (sparser::mv13821 sparser::mv13823))
 (:var sparser::mv13821 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv13823 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13831 :isa sparser::polar-question :statement sparser::mv13830)
 (:var sparser::mv13830 :isa sparser::regulate :agent sparser::mv13827 :object sparser::mv13829
  :raw-text "regulate")
 (:var sparser::mv13827 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv13829 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13836 :isa sparser::affect :manner sparser::mv13834 :agent sparser::mv13832
  :object sparser::mv13833 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv13834 :isa sparser::how)
 (:var sparser::mv13832 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv13833 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    source-start
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    end-of-source
("TNF activates ERK"
 (:var sparser::mv13838 :isa sparser::bio-activate :agent sparser::mv13837 :object sparser::mv13839
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv13837 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv13839 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv13843 :isa sparser::decrease :agent sparser::mv13842
  :|affected-process-OR-object| sparser::mv13845 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv13842 :isa sparser::protein-family :predication sparser::mv13841 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv13841 :isa sparser::active)
 (:var sparser::mv13845 :isa sparser::bio-amount :measured-item sparser::mv13840 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13840 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    source-start
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    question-mark
                    end-of-source
("What are the common upstreams of CXCL8 and CXCL10?"
 (:var sparser::mv13851 :isa sparser::be :subject sparser::mv13850 :predicate sparser::mv13854
  :present "PRESENT")
 (:var sparser::mv13850 :isa sparser::what)
 (:var sparser::mv13854 :isa sparser::upstream-segment :pathwaycomponent sparser::mv13857
  :has-determiner "THE" :predication sparser::mv13853 :raw-text "upstreams")
 (:var sparser::mv13857 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv13848 sparser::mv13849))
 (:var sparser::mv13848 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv13849 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN")
 (:var sparser::mv13853 :isa sparser::common))

___________________
650: "How does CXCL8 affect CXCL8?"

                    source-start
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    question-mark
                    end-of-source
("How does CXCL8 affect CXCL8?"
 (:var sparser::mv13863 :isa sparser::affect :manner sparser::mv13861 :agent sparser::mv13859
  :object sparser::mv13860 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv13861 :isa sparser::how)
 (:var sparser::mv13859 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv13860 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    source-start
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    question-mark
                    end-of-source
("Does CXCL8 regulate CXCL10?"
 (:var sparser::mv13869 :isa sparser::polar-question :statement sparser::mv13868)
 (:var sparser::mv13868 :isa sparser::regulate :agent sparser::mv13864 :object sparser::mv13865
  :raw-text "regulate")
 (:var sparser::mv13864 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv13865 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    source-start
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    question-mark
                    end-of-source
("Does CXCL8 regulate the CXCL10 gene?"
 (:var sparser::mv13877 :isa sparser::polar-question :statement sparser::mv13876)
 (:var sparser::mv13876 :isa sparser::regulate :agent sparser::mv13870 :object sparser::mv13875
  :raw-text "regulate")
 (:var sparser::mv13870 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv13875 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv13871
  :raw-text "gene")
 (:var sparser::mv13871 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    source-start
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    question-mark
                    end-of-source
("How does MAP3k7 affect CXCL10?"
 (:var sparser::mv13882 :isa sparser::affect :manner sparser::mv13880 :agent sparser::mv13878
  :object sparser::mv13879 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv13880 :isa sparser::how)
 (:var sparser::mv13878 :isa sparser::protein :raw-text "MAP3k7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv13879 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    source-start
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    question-mark
                    end-of-source
("What are the paths between TNF and CXCL10?"
 (:var sparser::mv13885 :isa sparser::be :subject sparser::mv13884 :predicate sparser::mv13887
  :present "PRESENT")
 (:var sparser::mv13884 :isa sparser::what)
 (:var sparser::mv13887 :isa sparser::path :endpoints sparser::mv13891 :has-determiner "THE")
 (:var sparser::mv13891 :isa sparser::collection :raw-text "TNF and CXCL10" :type sparser::protein
  :number 2 :items (sparser::mv13889 sparser::mv13883))
 (:var sparser::mv13889 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv13883 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    source-start
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    question-mark
                    end-of-source
("Does ERK regulate the expression of CXCL10?"
 (:var sparser::mv13902 :isa sparser::polar-question :statement sparser::mv13900)
 (:var sparser::mv13900 :isa sparser::regulate :agent sparser::mv13895 :affected-process
  sparser::mv13898 :raw-text "regulate")
 (:var sparser::mv13895 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv13898 :isa sparser::gene-transcript-express :object sparser::mv13893
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv13893 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    source-start
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    end-of-source
("active ERK decreases the expression of CXCL10"
 (:var sparser::mv13906 :isa sparser::decrease :agent sparser::mv13905 :affected-process
  sparser::mv13908 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv13905 :isa sparser::protein-family :predication sparser::mv13904 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv13904 :isa sparser::active)
 (:var sparser::mv13908 :isa sparser::gene-transcript-express :object sparser::mv13903
  :has-determiner "THE" :raw-text "expression")
 (:var sparser::mv13903 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    source-start
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    end-of-source
("active ERK decreases the amount of CXCL8"
 (:var sparser::mv13914 :isa sparser::decrease :agent sparser::mv13913
  :|affected-process-OR-object| sparser::mv13916 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv13913 :isa sparser::protein-family :predication sparser::mv13912 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv13912 :isa sparser::active)
 (:var sparser::mv13916 :isa sparser::bio-amount :measured-item sparser::mv13911 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13911 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    source-start
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    end-of-source
("Active ERK decreases the amount of CXCL10"
 (:var sparser::mv13922 :isa sparser::decrease :agent sparser::mv13921
  :|affected-process-OR-object| sparser::mv13924 :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv13921 :isa sparser::protein-family :predication sparser::mv13920 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv13920 :isa sparser::active)
 (:var sparser::mv13924 :isa sparser::bio-amount :measured-item sparser::mv13919 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv13919 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    source-start
e14   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    end-of-source
("NG25 inhibits the activity of MAP3K7"
 (:var sparser::mv13929 :isa sparser::inhibit :agent sparser::mv13927 :affected-process
  sparser::mv13931 :present "PRESENT" :raw-text "inhibits")
 (:var sparser::mv13927 :isa sparser::drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
 (:var sparser::mv13931 :isa sparser::bio-activity :participant sparser::mv13928 :has-determiner
  "THE" :raw-text "activity")
 (:var sparser::mv13928 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    source-start
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    question-mark
                    end-of-source
("Does NG25 decrease the CXCL8 in the model?"
 (:var sparser::mv13945 :isa sparser::polar-question :statement sparser::mv13943)
 (:var sparser::mv13943 :isa sparser::decrease :agent sparser::mv13934 :object sparser::mv13935
  :raw-text "decrease")
 (:var sparser::mv13934 :isa sparser::drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
 (:var sparser::mv13935 :isa sparser::protein :info-context sparser::mv13942 :has-determiner "THE"
  :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv13942 :isa sparser::model :has-determiner "THE"))

___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    source-start
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    question-mark
                    end-of-source
("Does NG25 decrease CXCL10 in the model?"
 (:var sparser::mv13956 :isa sparser::polar-question :statement sparser::mv13954)
 (:var sparser::mv13954 :isa sparser::decrease :agent sparser::mv13946 :object sparser::mv13947
  :raw-text "decrease")
 (:var sparser::mv13946 :isa sparser::drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
 (:var sparser::mv13947 :isa sparser::protein :info-context sparser::mv13953 :raw-text "CXCL10"
  :uid "UP:P02778" :name "CXL10_HUMAN")
 (:var sparser::mv13953 :isa sparser::model :has-determiner "THE"))

___________________
662: "TNF activates NFkappaB"

                    source-start
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    end-of-source
("TNF activates NFkappaB"
 (:var sparser::mv13958 :isa sparser::bio-activate :agent sparser::mv13957 :object sparser::mv13959
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv13957 :isa sparser::protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
 (:var sparser::mv13959 :isa sparser::protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count
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
 (:var sparser::mv13965 :isa sparser::want :agent sparser::mv13962 :theme sparser::mv13976 :present
  "PRESENT")
 (:var sparser::mv13962 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv13976 :isa sparser::find-out :agent sparser::mv13962 :statement sparser::mv13973)
 (:var sparser::mv13973 :isa sparser::wh-question :statement sparser::mv13972 :var nil :wh
  sparser::how)
 (:var sparser::mv13972 :isa sparser::decrease :agent sparser::mv13971 :object sparser::mv13961
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv13971 :isa sparser::drug :raw-text "tofacitinib" :name "tasocitinib" :uid
  "NCIT:C95800")
 (:var sparser::mv13961 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    source-start
e29   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    end-of-source
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:var sparser::mv13981 :isa sparser::want :agent sparser::mv13978 :theme sparser::mv13996 :present
  "PRESENT")
 (:var sparser::mv13978 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv13996 :isa sparser::find-out :agent sparser::mv13978 :statement sparser::mv13993)
 (:var sparser::mv13993 :isa sparser::wh-question :statement sparser::mv13988 :var nil :wh
  sparser::how)
 (:var sparser::mv13988 :isa sparser::decrease :agent sparser::mv13987 :object sparser::mv13989
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv13987 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv13989 :isa sparser::protein :cell-type sparser::mv13991 :raw-text "FOS" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv13991 :isa sparser::cell-type :cell-line sparser::mv13977)
 (:var sparser::mv13977 :isa sparser::cell-line :name "BT-20" :uid "CVCL:0178"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    source-start
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    end-of-source
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:var sparser::mv14002 :isa sparser::want :agent sparser::mv13999 :theme sparser::mv14016 :present
  "PRESENT")
 (:var sparser::mv13999 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv14016 :isa sparser::find-out :agent sparser::mv13999 :statement sparser::mv14013)
 (:var sparser::mv14013 :isa sparser::wh-question :statement sparser::mv14008 :var nil :wh
  sparser::how)
 (:var sparser::mv14008 :isa sparser::bio-activate :agent sparser::mv13997 :object sparser::mv14009
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv13997 :isa sparser::protein :raw-text "ERBB3" :uid "UP:P21860" :name
  "ERBB3_HUMAN")
 (:var sparser::mv14009 :isa sparser::protein :cell-type sparser::mv14011 :raw-text "JUN" :uid
  "UP:P05412" :name "JUN_HUMAN")
 (:var sparser::mv14011 :isa sparser::cell-type :cell-line sparser::mv13998)
 (:var sparser::mv13998 :isa sparser::cell-line :name "SKBR3" :uid "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    source-start
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    question-mark
                    end-of-source
("Does MEK phosphorylate ERK?"
 (:var sparser::mv14022 :isa sparser::polar-question :statement sparser::mv14021)
 (:var sparser::mv14021 :isa sparser::phosphorylate :agent sparser::mv14018 :substrate
  sparser::mv14020 :raw-text "phosphorylate")
 (:var sparser::mv14018 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv14020 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv14030 :isa sparser::polar-question :statement sparser::mv14029)
 (:var sparser::mv14029 :isa sparser::inhibit :agent sparser::mv14023 :object sparser::mv14028
  :raw-text "inhibit")
 (:var sparser::mv14023 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv14028 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv14024
  :raw-text "gene")
 (:var sparser::mv14024 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    source-start
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    question-mark
                    end-of-source
("Does STAT3 stimulate the c-fos gene?"
 (:var sparser::mv14038 :isa sparser::polar-question :statement sparser::mv14037)
 (:var sparser::mv14037 :isa sparser::stimulate :agent sparser::mv14031 :object sparser::mv14036
  :raw-text "stimulate")
 (:var sparser::mv14031 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv14036 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv14032
  :raw-text "gene")
 (:var sparser::mv14032 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    source-start
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    period
                    end-of-source
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:var sparser::mv14043 :isa sparser::want :agent sparser::mv14040 :theme sparser::mv14059 :present
  "PRESENT")
 (:var sparser::mv14040 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv14059 :isa sparser::find-out :agent sparser::mv14040 :statement sparser::mv14056)
 (:var sparser::mv14056 :isa sparser::wh-question :statement sparser::mv14050 :var nil :wh
  sparser::how)
 (:var sparser::mv14050 :isa sparser::decrease :agent sparser::mv14049 :object sparser::mv14051
  :present "PRESENT" :raw-text "decreases")
 (:var sparser::mv14049 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv14051 :isa sparser::protein :cell-type sparser::mv14054 :raw-text "FOS" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv14054 :isa sparser::cell-type :cell-line sparser::mv14039
  :|context-OR-associated-disease| sparser::mv14053)
 (:var sparser::mv14039 :isa sparser::cell-line :name "SK-MEL-133" :uid "CVCL:6082")
 (:var sparser::mv14053 :isa sparser::melanoma))

___________________
670: "Is ERK a transcription factor?"

                    source-start
e9    BE            1 "Is ERK a transcription factor" 6
                    question-mark
                    end-of-source
("Is ERK a transcription factor?"
 (:var sparser::mv14064 :isa sparser::polar-question :statement sparser::mv14061)
 (:var sparser::mv14061 :isa sparser::be :subject sparser::mv14062 :predicate sparser::mv14060)
 (:var sparser::mv14062 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
  :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv14060 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor"))

___________________
671: "List all the genes regulated by elk1 and srf."

                    source-start
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    period
                    end-of-source
("List all the genes regulated by elk1 and srf."
 (:var sparser::mv14066 :isa list :theme sparser::mv14069 :present "PRESENT")
 (:var sparser::mv14069 :isa sparser::gene :predication sparser::mv14070 :quantifier
  sparser::mv14067 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv14070 :isa sparser::regulate :object sparser::mv14069 :agent sparser::mv14074
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv14074 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv14065 sparser::mv14073))
 (:var sparser::mv14065 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv14073 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv14067 :isa sparser::all :word "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    source-start
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    period
                    end-of-source
("List some of the genes regulated by elk1 and srf."
 (:var sparser::mv14077 :isa list :theme sparser::mv14081 :present "PRESENT")
 (:var sparser::mv14081 :isa sparser::gene :predication sparser::mv14082 :quantifier
  sparser::mv14078 :has-determiner "THE" :raw-text "genes")
 (:var sparser::mv14082 :isa sparser::regulate :object sparser::mv14081 :agent sparser::mv14086
  :past "PAST" :raw-text "regulated")
 (:var sparser::mv14086 :isa sparser::collection :raw-text "elk1 and srf" :type sparser::protein
  :number 2 :items (sparser::mv14076 sparser::mv14085))
 (:var sparser::mv14076 :isa sparser::protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv14085 :isa sparser::protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv14078 :isa some :word "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    source-start
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    period
                    end-of-source
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:var sparser::mv14092 :isa sparser::show :|statement-OR-theme| sparser::mv14095 :beneficiary
  sparser::mv14093 :present "PRESENT")
 (:var sparser::mv14095 :isa sparser::mutation :object sparser::mv14100 :has-determiner "THE"
  :raw-text "mutations")
 (:var sparser::mv14100 :isa sparser::collection :context sparser::mv14091 :raw-text
  "TP53 and BRAF" :type sparser::protein :number 2 :items (sparser::mv14090 sparser::mv14098))
 (:var sparser::mv14091 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv14090 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv14098 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14093 :isa sparser::interlocutor :name "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    source-start
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    question-mark
                    end-of-source
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:var sparser::mv14106 :isa sparser::be :subject sparser::mv14105 :predicate sparser::mv14108
  :present "PRESENT")
 (:var sparser::mv14105 :isa sparser::what)
 (:var sparser::mv14108 :isa sparser::mutation :object sparser::mv14113 :has-determiner "THE"
  :raw-text "mutations")
 (:var sparser::mv14113 :isa sparser::collection :context sparser::mv14104 :raw-text
  "TP53 and BRAF" :type sparser::protein :number 2 :items (sparser::mv14103 sparser::mv14111))
 (:var sparser::mv14104 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv14103 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv14111 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    source-start
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    question-mark
                    end-of-source
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:var sparser::mv14120 :isa sparser::be :subject sparser::mv14119 :predicate sparser::mv14127
  :present "PRESENT")
 (:var sparser::mv14119 :isa sparser::what)
 (:var sparser::mv14127 :isa sparser::gene :disease sparser::mv14118 :has-determiner "THE"
  :predication sparser::mv14116 :raw-text "genes")
 (:var sparser::mv14118 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv14116 :isa sparser::mutual-exclusivity :alternative sparser::mv14117)
 (:var sparser::mv14117 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    source-start
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    question-mark
                    end-of-source
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:var sparser::mv14132 :isa sparser::be :subject sparser::mv14131 :predicate sparser::mv14139
  :present "PRESENT")
 (:var sparser::mv14131 :isa sparser::what)
 (:var sparser::mv14139 :isa sparser::gene :has-determiner "THE" :predication sparser::mv14128
  :raw-text "genes")
 (:var sparser::mv14128 :isa sparser::mutual-exclusivity :alternative sparser::mv14129)
 (:var sparser::mv14129 :isa sparser::protein :context sparser::mv14130 :raw-text "CDH1" :uid
  "UP:P12830" :name "CADH1_HUMAN")
 (:var sparser::mv14130 :isa sparser::cancer :name "breast cancer" :uid "TS-0591"))

___________________
677: "What downregulates it?"

                    source-start
e5    DOWNREGULATE  1 "What downregulates it" 4
                    question-mark
                    end-of-source
("What downregulates it?"
 (:var sparser::mv14141 :isa sparser::downregulate :|agent-OR-cause| sparser::mv14140
  :|affected-process-OR-object| sparser::mv14142 :present "PRESENT" :raw-text "downregulates")
 (:var sparser::mv14140 :isa sparser::what)
 (:var sparser::mv14142 :isa sparser::pronoun/inanimate :word "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    source-start
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    question-mark
                    end-of-source
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:var sparser::mv14146 :isa sparser::have :possessor sparser::mv14145 :thing-possessed
  sparser::mv14148 :present "PRESENT")
 (:var sparser::mv14145 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv14148 :isa sparser::evidence :fact sparser::mv14151 :predication
  sparser::mv14147)
 (:var sparser::mv14151 :isa sparser::regulate :agent sparser::mv14143 :progressive
  sparser::mv14150 :raw-text "regulated")
 (:var sparser::mv14143 :isa sparser::micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid
  "MIMAT0000421")
 (:var sparser::mv14150 :isa sparser::be) (:var sparser::mv14147 :isa sparser::strong))

___________________
679: "What increases the amount of myc"

                    source-start
e13   INCREASE      1 "What increases the amount of myc" 7
                    end-of-source
("What increases the amount of myc"
 (:var sparser::mv14157 :isa sparser::increase :|agent-OR-cause| sparser::mv14155
  :|affected-process-OR-object| sparser::mv14159 :present "PRESENT" :raw-text "increases")
 (:var sparser::mv14155 :isa sparser::what)
 (:var sparser::mv14159 :isa sparser::bio-amount :measured-item sparser::mv14161 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv14161 :isa sparser::protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    source-start
e5    INHIBIT       1 "What inhibits fzd8" 5
                    question-mark
                    end-of-source
("What inhibits fzd8?"
 (:var sparser::mv14165 :isa sparser::inhibit :|agent-OR-cause| sparser::mv14164 :object
  sparser::mv14163 :present "PRESENT" :raw-text "inhibits")
 (:var sparser::mv14164 :isa sparser::what)
 (:var sparser::mv14163 :isa sparser::protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    source-start
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    question-mark
                    end-of-source
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:var sparser::mv14169 :isa sparser::be :subject sparser::mv14168 :predicate sparser::mv14181
  :present "PRESENT")
 (:var sparser::mv14168 :isa sparser::what)
 (:var sparser::mv14181 :isa sparser::quality-predicate :item sparser::mv14179 :attribute
  sparser::mv14175)
 (:var sparser::mv14179 :isa sparser::collection :raw-text "AKT1, BRAF and MAPK1" :type
  sparser::protein :number 3 :items (sparser::mv14166 sparser::mv14177 sparser::mv14167))
 (:var sparser::mv14166 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv14177 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14167 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv14175 :isa sparser::location-of :has-determiner "THE" :predication
  sparser::mv14173 :modifier sparser::mv14174)
 (:var sparser::mv14173 :isa sparser::likely :comparative sparser::mv14171)
 (:var sparser::mv14171 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv14174 :isa sparser::cellular :name "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    source-start
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    question-mark
                    end-of-source
("What is the most likely cellular location of AKT1?"
 (:var sparser::mv14184 :isa sparser::be :subject sparser::mv14183 :predicate sparser::mv14193
  :present "PRESENT")
 (:var sparser::mv14183 :isa sparser::what)
 (:var sparser::mv14193 :isa sparser::quality-predicate :item sparser::mv14182 :attribute
  sparser::mv14190)
 (:var sparser::mv14182 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv14190 :isa sparser::location-of :has-determiner "THE" :predication
  sparser::mv14188 :modifier sparser::mv14189)
 (:var sparser::mv14188 :isa sparser::likely :comparative sparser::mv14186)
 (:var sparser::mv14186 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv14189 :isa sparser::cellular :name "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    source-start
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    question-mark
                    end-of-source
("What is the mutation significance of TP53 in lung cancer?"
 (:var sparser::mv14197 :isa sparser::be :subject sparser::mv14196 :predicate sparser::mv14200
  :present "PRESENT")
 (:var sparser::mv14196 :isa sparser::what)
 (:var sparser::mv14200 :isa sparser::significance :agent sparser::mv14194 :has-determiner "THE"
  :modifier sparser::mv14199)
 (:var sparser::mv14194 :isa sparser::protein :context sparser::mv14195 :raw-text "TP53" :uid
  "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv14195 :isa sparser::cancer :name "lung cancer" :uid "TS-0571")
 (:var sparser::mv14199 :isa sparser::mutation :raw-text "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    source-start
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    question-mark
                    end-of-source
("Which of those are regulated by tp53?"
 (:var sparser::mv14212 :isa sparser::regulate :|affected-process-OR-object| sparser::mv14208
  :agent sparser::mv14205 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv14208 :isa sparser::those :quantifier sparser::mv14206 :word "those")
 (:var sparser::mv14206 :isa sparser::which)
 (:var sparser::mv14205 :isa sparser::protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    source-start
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    question-mark
                    end-of-source
("Which of those genes are in the MAPK signaling pathway?"
 (:var sparser::mv14228 :isa sparser::copular-predication-of-pp :item sparser::mv14219 :value
  sparser::mv14227 :prep "IN" :predicate sparser::mv14220)
 (:var sparser::mv14219 :isa sparser::gene :quantifier sparser::mv14216 :has-determiner "THOSE"
  :raw-text "genes")
 (:var sparser::mv14216 :isa sparser::which)
 (:var sparser::mv14227 :isa sparser::gene :context sparser::mv14215 :quantifier sparser::mv14216
  :has-determiner "THOSE" :raw-text "genes")
 (:var sparser::mv14215 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv14223 :raw-text "signaling pathway")
 (:var sparser::mv14223 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv14220 :isa sparser::be :present "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    source-start
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    question-mark
                    end-of-source
("Which of these are in the il-12 pathway?"
 (:var sparser::mv14239 :isa sparser::copular-predication-of-pp :item sparser::mv14233 :value
  sparser::mv14237 :prep sparser::mv14235 :predicate sparser::mv14234)
 (:var sparser::mv14233 :isa sparser::these :quantifier sparser::mv14231 :word "these")
 (:var sparser::mv14231 :isa sparser::which)
 (:var sparser::mv14237 :isa sparser::pathway :has-determiner "THE" :modifier sparser::mv14230
  :raw-text "pathway")
 (:var sparser::mv14230 :isa sparser::protein-family :raw-text "il-12" :name "IL-12" :count 2
  :family-members
  ((sparser::protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
   (sparser::protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
  :uid "FPLX:IL12")
 (:var sparser::mv14235 :isa sparser::in :word "in")
 (:var sparser::mv14234 :isa sparser::be :present "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    source-start
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    question-mark
                    end-of-source
("Which of them are expressed in liver?"
 (:var sparser::mv14248 :isa sparser::gene-transcript-express :object sparser::mv14243 :organ
  sparser::mv14247 :present "PRESENT" :raw-text "expressed")
 (:var sparser::mv14243 :isa sparser::pronoun/plural :quantifier sparser::mv14241 :word "them")
 (:var sparser::mv14241 :isa sparser::which) (:var sparser::mv14247 :isa sparser::liver))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    source-start
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    question-mark
                    end-of-source
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:var sparser::mv14263 :isa sparser::regulate :|affected-process-OR-object| sparser::mv14255
  :agent sparser::mv14262 :present "PRESENT" :superlative sparser::mv14257 :adverb sparser::mv14258
  :raw-text "regulated")
 (:var sparser::mv14255 :isa sparser::pronoun/plural :quantifier sparser::mv14253 :word "them")
 (:var sparser::mv14253 :isa sparser::which)
 (:var sparser::mv14262 :isa sparser::collection :raw-text "miR-335-5p and miR-155-5p" :type
  sparser::micro-rna :number 2 :items (sparser::mv14251 sparser::mv14252))
 (:var sparser::mv14251 :isa sparser::micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid
  "MIMAT0000765")
 (:var sparser::mv14252 :isa sparser::micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid
  "MIMAT0000646")
 (:var sparser::mv14257 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv14258 :isa sparser::frequently :name "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    source-start
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    question-mark
                    end-of-source
("What transcription factors target SMURF2?"
 (:var sparser::mv14270 :isa sparser::target :agent sparser::mv14266 :object sparser::mv14267
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv14266 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv14267 :isa sparser::protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    source-start
e11   TARGET        1 "Which of those target frizzled8" 7
                    question-mark
                    end-of-source
("Which of those target frizzled8?"
 (:var sparser::mv14276 :isa sparser::target :|agent-OR-cause| sparser::mv14274 :object
  sparser::mv14271 :present "PRESENT" :raw-text "target")
 (:var sparser::mv14274 :isa sparser::those :quantifier sparser::mv14272 :word "those")
 (:var sparser::mv14272 :isa sparser::which)
 (:var sparser::mv14271 :isa sparser::protein :raw-text "frizzled8" :uid "UP:Q9H461" :name
  "FZD8_HUMAN"))

___________________
691: "What is Selumetinib?"

                    source-start
e4    BE            1 "What is Selumetinib" 4
                    question-mark
                    end-of-source
("What is Selumetinib?"
 (:var sparser::mv14279 :isa sparser::be :subject sparser::mv14278 :predicate sparser::mv14280
  :present "PRESENT")
 (:var sparser::mv14278 :isa sparser::what)
 (:var sparser::mv14280 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
692: "What is MAPK3?"

                    source-start
e5    BE            1 "What is MAPK3" 5
                    question-mark
                    end-of-source
("What is MAPK3?"
 (:var sparser::mv14283 :isa sparser::be :subject sparser::mv14282 :predicate sparser::mv14281
  :present "PRESENT")
 (:var sparser::mv14282 :isa sparser::what)
 (:var sparser::mv14281 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
693: "What does it do?"

                    source-start
e6    DO            1 "What does it do" 5
                    question-mark
                    end-of-source
("What does it do?" (:var sparser::mv14289 :isa do :patient sparser::mv14284 :present "PRESENT")
 (:var sparser::mv14284 :isa sparser::what))

___________________
694: "Is there an inhibitor of ERK1?"

                    source-start
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    question-mark
                    end-of-source
("Is there an inhibitor of ERK1?"
 (:var sparser::mv14299 :isa sparser::polar-question :statement sparser::mv14297)
 (:var sparser::mv14297 :isa sparser::there-exists :value sparser::mv14295 :predicate
  sparser::mv14292)
 (:var sparser::mv14295 :isa sparser::inhibitor :protein sparser::mv14290 :has-determiner "AN"
  :raw-text "inhibitor")
 (:var sparser::mv14290 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
 (:var sparser::mv14292 :isa sparser::syntactic-there))

___________________
695: "Name some drugs that inhibit AKT1."

                    source-start
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    period
                    end-of-source
("Name some drugs that inhibit AKT1."
 (:var sparser::mv14301 :isa sparser::name-something :patient sparser::mv14305 :present "PRESENT")
 (:var sparser::mv14305 :isa sparser::drug :predication sparser::mv14307 :quantifier
  sparser::mv14304 :raw-text "drugs")
 (:var sparser::mv14307 :isa sparser::inhibit :agent sparser::mv14305 :that-rel t :object
  sparser::mv14300 :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv14300 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv14304 :isa some :word "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    source-start
e12   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    question-mark
                    end-of-source
("Are there any Map2K1 inhibitors?"
 (:var sparser::mv14315 :isa sparser::polar-question :statement sparser::mv14314)
 (:var sparser::mv14314 :isa sparser::there-exists :value sparser::mv14313 :predicate
  sparser::mv14310)
 (:var sparser::mv14313 :isa sparser::inhibitor :quantifier sparser::mv14312 :protein
  sparser::mv14308 :raw-text "inhibitors")
 (:var sparser::mv14312 :isa sparser::any :word "any")
 (:var sparser::mv14308 :isa sparser::protein :raw-text "Map2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv14310 :isa sparser::syntactic-there))

___________________
697: "Are there targets of Selumetinib?"

                    source-start
e13   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    question-mark
                    end-of-source
("Are there targets of Selumetinib?"
 (:var sparser::mv14325 :isa sparser::polar-question :statement sparser::mv14323)
 (:var sparser::mv14323 :isa sparser::there-exists :value sparser::mv14319 :predicate
  sparser::mv14317)
 (:var sparser::mv14319 :isa sparser::target-protein :agent sparser::mv14322 :raw-text "targets")
 (:var sparser::mv14322 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622")
 (:var sparser::mv14317 :isa sparser::syntactic-there))

___________________
698: "What does Selumetinib inhibit?"

                    source-start
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    question-mark
                    end-of-source
("What does Selumetinib inhibit?"
 (:var sparser::mv14329 :isa sparser::inhibit :object sparser::mv14326 :agent sparser::mv14328
  :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv14326 :isa sparser::what)
 (:var sparser::mv14328 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
699: "What does Selumetinib target?"

                    source-start
e6    TARGET        1 "What does Selumetinib target" 5
                    question-mark
                    end-of-source
("What does Selumetinib target?"
 (:var sparser::mv14334 :isa sparser::target :object sparser::mv14330 :agent sparser::mv14332
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv14330 :isa sparser::what)
 (:var sparser::mv14332 :isa sparser::drug :raw-text "Selumetinib" :name "selumetinib" :uid
  "PCID:10127622"))

___________________
700: "Does Vemurafenib target BRAF?"

                    source-start
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    question-mark
                    end-of-source
("Does Vemurafenib target BRAF?"
 (:var sparser::mv14341 :isa sparser::polar-question :statement sparser::mv14340)
 (:var sparser::mv14340 :isa sparser::target :agent sparser::mv14336 :object sparser::mv14339
  :raw-text "target")
 (:var sparser::mv14336 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv14339 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    source-start
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    question-mark
                    end-of-source
("What are some targets for treating pancreatic cancer?"
 (:var sparser::mv14344 :isa sparser::be :subject sparser::mv14343 :predicate sparser::mv14346
  :present "PRESENT")
 (:var sparser::mv14343 :isa sparser::what)
 (:var sparser::mv14346 :isa sparser::target-protein :quantifier sparser::mv14345 :treatment
  sparser::mv14349 :raw-text "targets")
 (:var sparser::mv14345 :isa some :word "some")
 (:var sparser::mv14349 :isa sparser::treatment :disease sparser::mv14342 :progressive
  "PROGRESSIVE" :raw-text "treating")
 (:var sparser::mv14342 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    source-start
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    question-mark
                    end-of-source
("What are some targets for pancreatic cancer?"
 (:var sparser::mv14353 :isa sparser::be :subject sparser::mv14352 :predicate sparser::mv14355
  :present "PRESENT")
 (:var sparser::mv14352 :isa sparser::what)
 (:var sparser::mv14355 :isa sparser::target-protein :quantifier sparser::mv14354 :disease
  sparser::mv14351 :raw-text "targets")
 (:var sparser::mv14354 :isa some :word "some")
 (:var sparser::mv14351 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    source-start
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    question-mark
                    end-of-source
("What targets could lead to the development of pancreatic cancer?"
 (:var sparser::mv14364 :isa sparser::lead :agent sparser::mv14361 :theme sparser::mv14367 :modal
  sparser::mv14363 :raw-text "lead")
 (:var sparser::mv14361 :isa sparser::target-protein :has-determiner "WHAT" :raw-text "targets")
 (:var sparser::mv14367 :isa sparser::development :disease sparser::mv14359 :has-determiner "THE"
  :raw-text "development")
 (:var sparser::mv14359 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv14363 :isa sparser::could))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    source-start
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    question-mark
                    end-of-source
("What proteins could lead to the development of pancreatic cancer?"
 (:var sparser::mv14375 :isa sparser::lead :agent sparser::mv14373 :theme sparser::mv14378 :modal
  sparser::mv14374 :raw-text "lead")
 (:var sparser::mv14373 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv14378 :isa sparser::development :disease sparser::mv14371 :has-determiner "THE"
  :raw-text "development")
 (:var sparser::mv14371 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv14374 :isa sparser::could))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    source-start
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    question-mark
                    end-of-source
("What mutated genes could lead to pancreatic cancer?"
 (:var sparser::mv14387 :isa sparser::lead :agent sparser::mv14385 :theme sparser::mv14382 :modal
  sparser::mv14386 :raw-text "lead")
 (:var sparser::mv14385 :isa sparser::gene :has-determiner "WHAT" :predication sparser::mv14384
  :raw-text "genes")
 (:var sparser::mv14384 :isa sparser::mutation :object sparser::mv14385 :raw-text "mutated")
 (:var sparser::mv14382 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv14386 :isa sparser::could))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    source-start
e23   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    question-mark
                    end-of-source
("What is the top gene mutation that leads to pancreatic cancer?"
 (:var sparser::mv14392 :isa sparser::be :subject sparser::mv14391 :predicate sparser::mv14396
  :present "PRESENT")
 (:var sparser::mv14391 :isa sparser::what)
 (:var sparser::mv14396 :isa sparser::mutation :predication sparser::mv14398 :has-determiner "THE"
  :modifier sparser::mv14394 :|agent-OR-object| sparser::mv14395 :raw-text "mutation")
 (:var sparser::mv14398 :isa sparser::lead :agent sparser::mv14396 :that-rel t :theme
  sparser::mv14390 :present "PRESENT" :raw-text "leads")
 (:var sparser::mv14390 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv14394 :isa sparser::top-qua-location)
 (:var sparser::mv14395 :isa sparser::gene :raw-text "gene"))

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
 (:var sparser::mv14428 :isa sparser::bio-use :patient sparser::mv14418 :modal sparser::mv14419
  :agent sparser::mv14420 :theme sparser::mv14427 :present "PRESENT" :raw-text "use")
 (:var sparser::mv14418 :isa sparser::drug :has-determiner "WHAT" :raw-text "drug")
 (:var sparser::mv14419 :isa sparser::could)
 (:var sparser::mv14420 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv14427 :isa sparser::treatment :disease sparser::mv14416 :raw-text "treat")
 (:var sparser::mv14416 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    source-start
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    question-mark
                    end-of-source
("What are some drugs for treating pancreatic cancer?"
 (:var sparser::mv14431 :isa sparser::be :subject sparser::mv14430 :predicate sparser::mv14433
  :present "PRESENT")
 (:var sparser::mv14430 :isa sparser::what)
 (:var sparser::mv14433 :isa sparser::drug :treatment sparser::mv14435 :quantifier sparser::mv14432
  :raw-text "drugs")
 (:var sparser::mv14435 :isa sparser::treatment :disease sparser::mv14429 :progressive
  "PROGRESSIVE" :raw-text "treating")
 (:var sparser::mv14429 :isa sparser::cancer :name "pancreatic cancer" :uid "TS-0739")
 (:var sparser::mv14432 :isa some :word "some"))

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
 (:var sparser::mv14464 :isa sparser::polar-question :statement sparser::mv14462)
 (:var sparser::mv14462 :isa sparser::bio-act :agent sparser::mv14458 :acted-on sparser::mv14461
  :raw-text "act")
 (:var sparser::mv14458 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv14461 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv14469 :isa sparser::explicit-suggestion :suggestion sparser::mv14466 :marker
  sparser::let-as-directive)
 (:var sparser::mv14466 :isa sparser::build :artifact sparser::mv14468 :present "PRESENT")
 (:var sparser::mv14468 :isa sparser::model :has-determiner "A"))

___________________
714: "Mek activates MAPK3"

                    source-start
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    end-of-source
("Mek activates MAPK3"
 (:var sparser::mv14472 :isa sparser::bio-activate :agent sparser::mv14471 :object sparser::mv14470
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv14471 :isa sparser::protein-family :raw-text "Mek" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv14470 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    source-start
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    period
                    end-of-source
("HRAS activates RAF."
 (:var sparser::mv14474 :isa sparser::bio-activate :agent sparser::mv14473 :object sparser::mv14475
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv14473 :isa sparser::protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv14475 :isa sparser::protein-family :raw-text "RAF" :name "Raf" :count 3
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
 (:var sparser::mv14476 :isa remove :object sparser::mv14483 :present "PRESENT" :raw-text "Remove")
 (:var sparser::mv14483 :isa sparser::fact :statement sparser::mv14481 :has-determiner "THE")
 (:var sparser::mv14481 :isa sparser::bio-activate :agent sparser::mv14480 :object sparser::mv14482
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv14480 :isa sparser::protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
 (:var sparser::mv14482 :isa sparser::protein-family :raw-text "ras" :name "Ras" :count 3
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
 (:var sparser::mv14495 :isa sparser::polar-question :statement sparser::mv14486)
 (:var sparser::mv14486 :isa sparser::tell :agent sparser::mv14485 :theme sparser::mv14494 :theme
  sparser::mv14487 :modal "CAN")
 (:var sparser::mv14485 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv14494 :isa sparser::copular-predication-of-pp :item sparser::mv14488 :value
  sparser::mv14492 :prep sparser::mv14490 :predicate sparser::mv14489)
 (:var sparser::mv14488 :isa sparser::what)
 (:var sparser::mv14492 :isa sparser::model :has-determiner "THE")
 (:var sparser::mv14490 :isa sparser::in :word "in")
 (:var sparser::mv14489 :isa sparser::be :modal "CAN")
 (:var sparser::mv14487 :isa sparser::interlocutor :name "speaker"))

___________________
718: "Summarize the model."

                    source-start
e5    SUMMARIZE     1 "Summarize the model" 4
                    period
                    end-of-source
("Summarize the model."
 (:var sparser::mv14499 :isa sparser::summarize :statement sparser::mv14498 :present "PRESENT")
 (:var sparser::mv14498 :isa sparser::model :has-determiner "THE"))

___________________
719: "Summarize the current model."

                    source-start
e7    SUMMARIZE     1 "Summarize the current model" 5
                    period
                    end-of-source
("Summarize the current model."
 (:var sparser::mv14504 :isa sparser::summarize :statement sparser::mv14503 :present "PRESENT")
 (:var sparser::mv14503 :isa sparser::model :has-determiner "THE" :predication sparser::mv14502)
 (:var sparser::mv14502 :isa sparser::current))

___________________
720: "What phosphorylates BRAF?"

                    source-start
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    question-mark
                    end-of-source
("What phosphorylates BRAF?"
 (:var sparser::mv14506 :isa sparser::phosphorylate :|agent-OR-cause| sparser::mv14505 :substrate
  sparser::mv14507 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv14505 :isa sparser::what)
 (:var sparser::mv14507 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
721: "Vemurafenib binds BRAF."

                    source-start
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    period
                    end-of-source
("Vemurafenib binds BRAF."
 (:var sparser::mv14509 :isa sparser::binding :binder sparser::mv14508 :direct-bindee
  sparser::mv14510 :present "PRESENT" :raw-text "binds")
 (:var sparser::mv14508 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv14510 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
722: "Phosphorylated MAP2K1 is activated."

                    source-start
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    period
                    end-of-source
("Phosphorylated MAP2K1 is activated."
 (:var sparser::mv14515 :isa sparser::bio-activate :object sparser::mv14511 :present "PRESENT"
  :raw-text "activated")
 (:var sparser::mv14511 :isa sparser::protein :predication sparser::mv14512 :raw-text "MAP2K1" :uid
  "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv14512 :isa sparser::phosphorylate :substrate sparser::mv14511 :raw-text
  "Phosphorylated"))

___________________
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    source-start
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    period
                    end-of-source
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:var sparser::mv14519 :isa sparser::dephosphorylate :agent sparser::mv14516 :substrate
  sparser::mv14517 :present "PRESENT" :raw-text "dephosphorylates")
 (:var sparser::mv14516 :isa sparser::protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name
  "PP2AA_HUMAN")
 (:var sparser::mv14517 :isa sparser::protein :predication sparser::mv14525 :raw-text "MAP2K1" :uid
  "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv14525 :isa sparser::binding :direct-bindee sparser::mv14517 :that-rel t :bindee
  sparser::mv14518 :present "PRESENT" :negation sparser::mv14522 :raw-text "bound")
 (:var sparser::mv14518 :isa sparser::protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv14522 :isa not :word "not"))

___________________
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    source-start
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    period
                    end-of-source
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:var sparser::mv14536 :isa sparser::phosphorylate :agent sparser::mv14527 :substrate
  sparser::mv14529 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv14527 :isa sparser::protein :predication sparser::mv14537 :predication
  sparser::mv14530 :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
 (:var sparser::mv14537 :isa sparser::binding :direct-bindee sparser::mv14527 :that-rel t :bindee
  sparser::mv14528 :present "PRESENT" :negation sparser::mv14533 :raw-text "bound")
 (:var sparser::mv14528 :isa sparser::protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name
  "PP2AA_HUMAN")
 (:var sparser::mv14533 :isa not :word "not") (:var sparser::mv14530 :isa sparser::active)
 (:var sparser::mv14529 :isa sparser::protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
725: "Phosphorylated ERK2 is activated."

                    source-start
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    period
                    end-of-source
("Phosphorylated ERK2 is activated."
 (:var sparser::mv14543 :isa sparser::bio-activate :object sparser::mv14539 :present "PRESENT"
  :raw-text "activated")
 (:var sparser::mv14539 :isa sparser::protein :predication sparser::mv14540 :raw-text "ERK2" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv14540 :isa sparser::phosphorylate :substrate sparser::mv14539 :raw-text
  "Phosphorylated"))

___________________
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    source-start
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    period
                    end-of-source
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:var sparser::mv14547 :isa sparser::dephosphorylate :agent sparser::mv14544 :substrate
  sparser::mv14545 :present "PRESENT" :raw-text "dephosphorylates")
 (:var sparser::mv14544 :isa sparser::protein :raw-text "DUSP6" :uid "UP:Q16828" :name
  "DUS6_HUMAN")
 (:var sparser::mv14545 :isa sparser::protein :predication sparser::mv14553 :raw-text "ERK2" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv14553 :isa sparser::binding :direct-bindee sparser::mv14545 :that-rel t :bindee
  sparser::mv14546 :present "PRESENT" :negation sparser::mv14550 :raw-text "bound")
 (:var sparser::mv14546 :isa sparser::protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
 (:var sparser::mv14550 :isa not :word "not"))

___________________
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    source-start
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    period
                    end-of-source
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:var sparser::mv14568 :isa sparser::phosphorylate :agent sparser::mv14556 :substrate
  sparser::mv14555 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv14556 :isa sparser::protein :predication sparser::mv14571 :mutation
  sparser::mv14570 :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14571 :isa sparser::binding :direct-bindee sparser::mv14556 :that-rel t :bindee
  sparser::mv14567 :present "PRESENT" :negation sparser::mv14564 :raw-text "bound")
 (:var sparser::mv14567 :isa sparser::drug :raw-text "Vemurafenib" :name "vemurafenib" :uid
  "PCID:42611257")
 (:var sparser::mv14564 :isa not :word "not")
 (:var sparser::mv14570 :isa sparser::point-mutated-protein :position sparser::mv14559
  :new-amino-acid sparser::mv14561 :original-amino-acid sparser::mv14557)
 (:var sparser::mv14559 :isa number :value 600)
 (:var sparser::mv14561 :isa sparser::amino-acid :name "glutamic acid" :letter "E")
 (:var sparser::mv14557 :isa sparser::amino-acid :name "valine" :letter "V")
 (:var sparser::mv14555 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
728: "Phosphorylated MAPK1 is active."

                    source-start
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    period
                    end-of-source
("Phosphorylated MAPK1 is active."
 (:var sparser::mv14577 :isa sparser::copular-predication :item sparser::mv14573 :value
  sparser::mv14576 :predicate sparser::mv14575)
 (:var sparser::mv14573 :isa sparser::protein :predication sparser::mv14574 :raw-text "MAPK1" :uid
  "UP:P28482" :name "MK01_HUMAN")
 (:var sparser::mv14574 :isa sparser::phosphorylate :substrate sparser::mv14573 :raw-text
  "Phosphorylated")
 (:var sparser::mv14576 :isa sparser::active)
 (:var sparser::mv14575 :isa sparser::be :present "PRESENT"))

___________________
729: "PDK1 phosphorylates AKT1."

                    source-start
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    period
                    end-of-source
("PDK1 phosphorylates AKT1."
 (:var sparser::mv14580 :isa sparser::phosphorylate :agent sparser::mv14578 :substrate
  sparser::mv14579 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv14578 :isa sparser::protein :raw-text "PDK1" :uid "UP:O15530" :name
  "PDPK1_HUMAN")
 (:var sparser::mv14579 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
730: "Let's move phosphorylated AKT1 to the top"

                    source-start
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    end-of-source
("Let's move phosphorylated AKT1 to the top"
 (:var sparser::mv14589 :isa sparser::explicit-suggestion :suggestion sparser::mv14583 :marker
  sparser::let-as-directive)
 (:var sparser::mv14583 :isa sparser::move-something-somewhere :goal sparser::mv14587 :theme
  sparser::mv14582 :present "PRESENT")
 (:var sparser::mv14587 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv14582 :isa sparser::protein :predication sparser::mv14584 :raw-text "AKT1" :uid
  "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv14584 :isa sparser::phosphorylate :substrate sparser::mv14582 :raw-text
  "phosphorylated"))

___________________
731: "Let's move phosphorylated AKT1 on top"

                    source-start
e14   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    end-of-source
("Let's move phosphorylated AKT1 on top"
 (:var sparser::mv14597 :isa sparser::explicit-suggestion :suggestion sparser::mv14592 :marker
  sparser::let-as-directive)
 (:var sparser::mv14592 :isa sparser::move-something-somewhere :at-relative-location
  sparser::mv14595 :theme sparser::mv14591 :present "PRESENT")
 (:var sparser::mv14595 :isa sparser::top-qua-location)
 (:var sparser::mv14591 :isa sparser::protein :predication sparser::mv14593 :raw-text "AKT1" :uid
  "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv14593 :isa sparser::phosphorylate :substrate sparser::mv14591 :raw-text
  "phosphorylated"))

___________________
732: "show AKT1 on top"

                    source-start
e8    SHOW          1 "show AKT1 on top" 6
                    end-of-source
("show AKT1 on top"
 (:var sparser::mv14599 :isa sparser::show :at-relative-location sparser::mv14601
  :|statement-OR-theme| sparser::mv14598 :present "PRESENT")
 (:var sparser::mv14601 :isa sparser::top-qua-location)
 (:var sparser::mv14598 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    source-start
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    end-of-source
("Let's highlight upstream of AKT1"
 (:var sparser::mv14610 :isa sparser::explicit-suggestion :suggestion sparser::mv14605 :marker
  sparser::let-as-directive)
 (:var sparser::mv14605 :isa sparser::highlight :theme sparser::mv14606 :present "PRESENT")
 (:var sparser::mv14606 :isa sparser::upstream-segment :pathwaycomponent sparser::mv14604 :raw-text
  "upstream")
 (:var sparser::mv14604 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    source-start
e15   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    end-of-source
("Let's move nucleus elements to the top"
 (:var sparser::mv14619 :isa sparser::explicit-suggestion :suggestion sparser::mv14612 :marker
  sparser::let-as-directive)
 (:var sparser::mv14612 :isa sparser::move-something-somewhere :goal sparser::mv14617 :theme
  sparser::mv14614 :present "PRESENT")
 (:var sparser::mv14617 :isa sparser::top-qua-location :has-determiner "THE")
 (:var sparser::mv14614 :isa sparser::element :modifier sparser::mv14613)
 (:var sparser::mv14613 :isa sparser::nucleus :raw-text "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

                    source-start
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    question-mark
                    end-of-source
("What are the common downstreams of AKT1 and  BRAF?"
 (:var sparser::mv14622 :isa sparser::be :subject sparser::mv14621 :predicate sparser::mv14625
  :present "PRESENT")
 (:var sparser::mv14621 :isa sparser::what)
 (:var sparser::mv14625 :isa sparser::downstream-segment :pathwaycomponent sparser::mv14629
  :has-determiner "THE" :predication sparser::mv14624 :raw-text "downstreams")
 (:var sparser::mv14629 :isa sparser::collection :raw-text "AKT1 and  BRAF" :type sparser::protein
  :number 2 :items (sparser::mv14620 sparser::mv14628))
 (:var sparser::mv14620 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv14628 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14624 :isa sparser::common))

___________________
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    source-start
e21   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    question-mark
                    end-of-source
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:var sparser::mv14644 :isa sparser::polar-question :statement sparser::mv14641)
 (:var sparser::mv14641 :isa sparser::there-exists :value sparser::mv14637 :predicate
  sparser::mv14634)
 (:var sparser::mv14637 :isa sparser::upstream-segment :pathwaycomponent sparser::mv14642
  :predication sparser::mv14636 :raw-text "upstreams")
 (:var sparser::mv14642 :isa sparser::collection :raw-text "AKT1, BRAF and MAPK1" :type
  sparser::protein :number 3 :items (sparser::mv14631 sparser::mv14639 sparser::mv14632))
 (:var sparser::mv14631 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv14639 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14632 :isa sparser::protein :raw-text "MAPK1" :uid "UP:P28482" :name
  "MK01_HUMAN")
 (:var sparser::mv14636 :isa sparser::common) (:var sparser::mv14634 :isa sparser::syntactic-there))

___________________
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    source-start
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    question-mark
                    end-of-source
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:var sparser::mv14649 :isa sparser::be :subject sparser::mv14648 :predicate sparser::mv14654
  :present "PRESENT")
 (:var sparser::mv14648 :isa sparser::what)
 (:var sparser::mv14654 :isa sparser::regulator :theme sparser::mv14657 :has-determiner "THE"
  :predication sparser::mv14651 :context sparser::mv14652 :raw-text "regulators")
 (:var sparser::mv14657 :isa sparser::collection :raw-text "FN1, MMP3, and SERPINE1" :type
  sparser::protein :number 3 :items (sparser::mv14645 sparser::mv14646 sparser::mv14647))
 (:var sparser::mv14645 :isa sparser::protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
 (:var sparser::mv14646 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv14647 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN")
 (:var sparser::mv14651 :isa sparser::common)
 (:var sparser::mv14652 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    source-start
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    question-mark
                    end-of-source
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:var sparser::mv14662 :isa sparser::be :subject sparser::mv14661 :predicate sparser::mv14666
  :present "PRESENT")
 (:var sparser::mv14661 :isa sparser::what)
 (:var sparser::mv14666 :isa sparser::regulator :theme sparser::mv14669 :predication
  sparser::mv14663 :context sparser::mv14664 :raw-text "regulators")
 (:var sparser::mv14669 :isa sparser::collection :raw-text "MMP3 and SERPINE1" :type
  sparser::protein :number 2 :items (sparser::mv14659 sparser::mv14660))
 (:var sparser::mv14659 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv14660 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN")
 (:var sparser::mv14663 :isa sparser::common)
 (:var sparser::mv14664 :isa sparser::downstream-segment :raw-text "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    source-start
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    question-mark
                    end-of-source
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:var sparser::mv14676 :isa sparser::be :subject sparser::mv14675 :predicate sparser::mv14671
  :present "PRESENT")
 (:var sparser::mv14675 :isa sparser::what)
 (:var sparser::mv14671 :isa sparser::protein-family :molecule-type sparser::mv14682 :predication
  sparser::mv14677 :context sparser::mv14678 :raw-text "transcriptional regulators" :name
  "transcriptional regulator" :uid "XFAM:PF02082")
 (:var sparser::mv14682 :isa sparser::collection :raw-text "FN1, MMP3, and SERPINE1" :type
  sparser::protein :number 3 :items (sparser::mv14672 sparser::mv14673 sparser::mv14674))
 (:var sparser::mv14672 :isa sparser::protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
 (:var sparser::mv14673 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv14674 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN")
 (:var sparser::mv14677 :isa sparser::common)
 (:var sparser::mv14678 :isa sparser::upstream-segment :raw-text "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    source-start
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    question-mark
                    end-of-source
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:var sparser::mv14687 :isa sparser::be :subject sparser::mv14686 :predicate sparser::mv14689
  :present "PRESENT")
 (:var sparser::mv14686 :isa sparser::what)
 (:var sparser::mv14689 :isa sparser::mutation :object sparser::mv14695 :has-determiner "THE"
  :raw-text "mutations")
 (:var sparser::mv14695 :isa sparser::collection :context sparser::mv14685 :raw-text
  "PTEN, TP53 and BRAF" :type sparser::protein :number 3 :items
  (sparser::mv14691 sparser::mv14684 sparser::mv14693))
 (:var sparser::mv14685 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv14691 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv14684 :isa sparser::protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv14693 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    source-start
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    question-mark
                    end-of-source
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:var sparser::mv14701 :isa sparser::be :subject sparser::mv14700 :predicate sparser::mv14704
  :present "PRESENT")
 (:var sparser::mv14700 :isa sparser::what)
 (:var sparser::mv14704 :isa sparser::frequency :measured-item sparser::mv14698 :has-determiner
  "THE" :measured-item sparser::mv14703 :raw-text "frequency")
 (:var sparser::mv14698 :isa sparser::protein :context sparser::mv14699 :raw-text "TP53" :uid
  "UP:P04637" :name "P53_HUMAN")
 (:var sparser::mv14699 :isa sparser::cancer :name "ovarian cancer" :uid "TS-1223")
 (:var sparser::mv14703 :isa sparser::mutation :raw-text "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    source-start
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    question-mark
                    end-of-source
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:var sparser::mv14719 :isa sparser::copular-predication :item sparser::mv14713 :value
  sparser::mv14709 :predicate sparser::mv14714)
 (:var sparser::mv14713 :isa sparser::gene :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv14709 :isa sparser::mutual-exclusivity :disease sparser::mv14711 :alternative
  sparser::mv14710)
 (:var sparser::mv14711 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv14710 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name
  "CADH1_HUMAN")
 (:var sparser::mv14714 :isa sparser::be :present "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    source-start
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    question-mark
                    end-of-source
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:var sparser::mv14730 :isa sparser::copular-predication :item sparser::mv14724 :value
  sparser::mv14720 :predicate sparser::mv14725)
 (:var sparser::mv14724 :isa sparser::gene :has-determiner "WHICH" :raw-text "genes")
 (:var sparser::mv14720 :isa sparser::mutual-exclusivity :alternative sparser::mv14721)
 (:var sparser::mv14721 :isa sparser::protein :context sparser::mv14722 :raw-text "CDH1" :uid
  "UP:P12830" :name "CADH1_HUMAN")
 (:var sparser::mv14722 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv14725 :isa sparser::be :present "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    source-start
e15   BE            1 "What is the cellular location of akt1" 9
                    question-mark
                    end-of-source
("What is the cellular location of akt1?"
 (:var sparser::mv14733 :isa sparser::be :subject sparser::mv14732 :predicate sparser::mv14739
  :present "PRESENT")
 (:var sparser::mv14732 :isa sparser::what)
 (:var sparser::mv14739 :isa sparser::quality-predicate :item sparser::mv14731 :attribute
  sparser::mv14736)
 (:var sparser::mv14731 :isa sparser::protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv14736 :isa sparser::location-of :has-determiner "THE" :modifier sparser::mv14735)
 (:var sparser::mv14735 :isa sparser::cellular :name "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    source-start
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    question-mark
                    end-of-source
("How does MAPK regulate BRAF?"
 (:var sparser::mv14743 :isa sparser::regulate :manner sparser::mv14740 :agent sparser::mv14742
  :object sparser::mv14744 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv14740 :isa sparser::how)
 (:var sparser::mv14742 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv14744 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    source-start
e4    BE            1 "What is BRAF" 4
                    question-mark
                    end-of-source
("What is BRAF?"
 (:var sparser::mv14746 :isa sparser::be :subject sparser::mv14745 :predicate sparser::mv14747
  :present "PRESENT")
 (:var sparser::mv14745 :isa sparser::what)
 (:var sparser::mv14747 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    source-start
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    question-mark
                    end-of-source
("Is BRAF a member of the RAF family?"
 (:var sparser::mv14759 :isa sparser::polar-question :statement sparser::mv14748)
 (:var sparser::mv14748 :isa sparser::be :subject sparser::mv14749 :predicate sparser::mv14751)
 (:var sparser::mv14749 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14751 :isa member :set sparser::mv14757 :has-determiner "A")
 (:var sparser::mv14757 :isa sparser::protein-family :has-determiner "THE" :raw-text "RAF" :name
  "Raf" :count 3 :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114"))

___________________
748: "What genes are in RAS?"

                    source-start
e9    COPULAR-PREDICATION 1 "What genes are in RAS" 6
                    question-mark
                    end-of-source
("What genes are in RAS?"
 (:var sparser::mv14766 :isa sparser::copular-predication-of-pp :item sparser::mv14761 :value
  sparser::mv14764 :prep sparser::mv14763 :predicate sparser::mv14762)
 (:var sparser::mv14761 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv14764 :isa sparser::protein-family :raw-text "RAS" :name "Ras" :count 3
  :family-members
  ((sparser::protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
   (sparser::protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
   (sparser::protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
  :uid "FA:03663")
 (:var sparser::mv14763 :isa sparser::in :word "in")
 (:var sparser::mv14762 :isa sparser::be :present "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    source-start
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    question-mark
                    end-of-source
("What genes are in the RAF family?"
 (:var sparser::mv14777 :isa sparser::copular-predication-of-pp :item sparser::mv14768 :value
  sparser::mv14775 :prep sparser::mv14770 :predicate sparser::mv14769)
 (:var sparser::mv14768 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv14775 :isa sparser::protein-family :has-determiner "THE" :raw-text "RAF" :name
  "Raf" :count 3 :family-members
  ((sparser::protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
   (sparser::protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
   (sparser::protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
  :uid "FA:03114")
 (:var sparser::mv14770 :isa sparser::in :word "in")
 (:var sparser::mv14769 :isa sparser::be :present "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    source-start
e15   BE            1 "What are some other names for BRAF" 8
                    question-mark
                    end-of-source
("What are some other names for BRAF?"
 (:var sparser::mv14779 :isa sparser::be :subject sparser::mv14778 :predicate sparser::mv14783
  :present "PRESENT")
 (:var sparser::mv14778 :isa sparser::what)
 (:var sparser::mv14783 :isa sparser::has-name :quantifier sparser::mv14780 :quantifier
  sparser::mv14781 :item sparser::mv14786)
 (:var sparser::mv14780 :isa some :word "some")
 (:var sparser::mv14781 :isa sparser::other :word "other")
 (:var sparser::mv14786 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
751: "What are synonyms for ERK?"

                    source-start
e9    BE            1 "What are synonyms for ERK" 6
                    question-mark
                    end-of-source
("What are synonyms for ERK?"
 (:var sparser::mv14789 :isa sparser::be :subject sparser::mv14788 :predicate sparser::mv14790
  :present "PRESENT")
 (:var sparser::mv14788 :isa sparser::what)
 (:var sparser::mv14790 :isa sparser::has-synonym :item sparser::mv14792)
 (:var sparser::mv14792 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv14804 :isa sparser::share :object sparser::mv14794 :participant sparser::mv14803
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv14794 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv14803 :isa sparser::collection :raw-text "CXCL8, CXCL10, and IL2" :type
  sparser::protein :number 3 :items (sparser::mv14795 sparser::mv14796 sparser::mv14797))
 (:var sparser::mv14795 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv14796 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN")
 (:var sparser::mv14797 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
753: "What are the paths between BRAF and AKT1?"

                    source-start
e15   BE            1 "What are the paths between BRAF and AKT1" 10
                    question-mark
                    end-of-source
("What are the paths between BRAF and AKT1?"
 (:var sparser::mv14808 :isa sparser::be :subject sparser::mv14807 :predicate sparser::mv14810
  :present "PRESENT")
 (:var sparser::mv14807 :isa sparser::what)
 (:var sparser::mv14810 :isa sparser::path :endpoints sparser::mv14814 :has-determiner "THE")
 (:var sparser::mv14814 :isa sparser::collection :raw-text "BRAF and AKT1" :type sparser::protein
  :number 2 :items (sparser::mv14812 sparser::mv14806))
 (:var sparser::mv14812 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14806 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))

___________________
754: "Is SMAD2 a transcription factor?"

                    source-start
e10   BE            1 "Is SMAD2 a transcription factor" 7
                    question-mark
                    end-of-source
("Is SMAD2 a transcription factor?"
 (:var sparser::mv14820 :isa sparser::polar-question :statement sparser::mv14818)
 (:var sparser::mv14818 :isa sparser::be :subject sparser::mv14816 :predicate sparser::mv14817)
 (:var sparser::mv14816 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN")
 (:var sparser::mv14817 :isa sparser::transcription-factor :has-determiner "A" :raw-text
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
 (:var sparser::mv14836 :isa sparser::bio-activate :agent sparser::mv14835 :object sparser::mv14837
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv14835 :isa sparser::protein-family :predication sparser::mv14834 :raw-text "MEK"
  :name "MEK" :count 2 :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv14834 :isa sparser::active)
 (:var sparser::mv14837 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv14844 :isa sparser::copular-predication-of-pp :item sparser::mv14838 :value
  sparser::mv14842 :prep sparser::mv14840 :predicate sparser::mv14839)
 (:var sparser::mv14838 :isa sparser::what)
 (:var sparser::mv14842 :isa sparser::model :has-determiner "THE")
 (:var sparser::mv14840 :isa sparser::in :word "in")
 (:var sparser::mv14839 :isa sparser::be :present "PRESENT"))

___________________
758: "Is the amount of phosphorylated ERK ever high?"

                    source-start
e18   COPULAR-PREDICATION 1 "Is the amount of phosphorylated ERK ever high" 9
                    question-mark
                    end-of-source
("Is the amount of phosphorylated ERK ever high?"
 (:var sparser::mv14855 :isa sparser::polar-question :statement sparser::mv14854)
 (:var sparser::mv14854 :isa sparser::copular-predication :item sparser::mv14847 :value
  sparser::mv14852 :predicate sparser::mv14845)
 (:var sparser::mv14847 :isa sparser::bio-amount :measured-item sparser::mv14850 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv14850 :isa sparser::protein-family :predication sparser::mv14849 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv14849 :isa sparser::phosphorylate :substrate sparser::mv14850 :raw-text
  "phosphorylated")
 (:var sparser::mv14852 :isa sparser::high :adverb sparser::mv14851)
 (:var sparser::mv14851 :isa sparser::ever :name "ever") (:var sparser::mv14845 :isa sparser::be))

___________________
759: "What genes are mutually exclusive with PTEN for prostate cancer?"

                    source-start
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with PTEN for prostate cancer" 11
                    question-mark
                    end-of-source
("What genes are mutually exclusive with PTEN for prostate cancer?"
 (:var sparser::mv14866 :isa sparser::copular-predication :item sparser::mv14859 :value
  sparser::mv14856 :predicate sparser::mv14860)
 (:var sparser::mv14859 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv14856 :isa sparser::mutual-exclusivity :disease sparser::mv14857 :alternative
  sparser::mv14862)
 (:var sparser::mv14857 :isa sparser::cancer :name "prostate cancer" :uid "TS-1224")
 (:var sparser::mv14862 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv14860 :isa sparser::be :present "PRESENT"))

___________________
760: "What signaling pathways are shared by SMAD2 and CXCL8?"

                    source-start
e17   SHARE         1 "What signaling pathways are shared by SMAD2 and CXCL8" 12
                    question-mark
                    end-of-source
("What signaling pathways are shared by SMAD2 and CXCL8?"
 (:var sparser::mv14876 :isa sparser::share :object sparser::mv14867 :participant sparser::mv14875
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv14867 :isa sparser::signaling-pathway :has-determiner "WHAT" :raw-text
  "signaling pathways")
 (:var sparser::mv14875 :isa sparser::collection :raw-text "SMAD2 and CXCL8" :type sparser::protein
  :number 2 :items (sparser::mv14868 sparser::mv14869))
 (:var sparser::mv14868 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN")
 (:var sparser::mv14869 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
761: "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"

                    source-start
e19   REGULATE      1 "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1" 15
                    question-mark
                    end-of-source
("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
 (:var sparser::mv14885 :isa sparser::regulate :agent sparser::mv14882 :object sparser::mv14887
  :present "PRESENT" :adverb sparser::mv14883 :adverb sparser::mv14884 :raw-text "regulate")
 (:var sparser::mv14882 :isa sparser::micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
 (:var sparser::mv14887 :isa sparser::collection :raw-text "FN1, MMP3, and SERPINE1" :type
  sparser::protein :number 3 :items (sparser::mv14878 sparser::mv14879 sparser::mv14880))
 (:var sparser::mv14878 :isa sparser::protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
 (:var sparser::mv14879 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv14880 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN")
 (:var sparser::mv14883 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv14884 :isa sparser::frequently :name "frequently"))

___________________
762: "What is the most likely cellular location of PTEN?"

                    source-start
e19   BE            1 "What is the most likely cellular location of PTEN" 10
                    question-mark
                    end-of-source
("What is the most likely cellular location of PTEN?"
 (:var sparser::mv14889 :isa sparser::be :subject sparser::mv14888 :predicate sparser::mv14899
  :present "PRESENT")
 (:var sparser::mv14888 :isa sparser::what)
 (:var sparser::mv14899 :isa sparser::quality-predicate :item sparser::mv14897 :attribute
  sparser::mv14895)
 (:var sparser::mv14897 :isa sparser::protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv14895 :isa sparser::location-of :has-determiner "THE" :predication
  sparser::mv14893 :modifier sparser::mv14894)
 (:var sparser::mv14893 :isa sparser::likely :comparative sparser::mv14891)
 (:var sparser::mv14891 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv14894 :isa sparser::cellular :name "cellular"))

___________________
763: "Is BRAF a kinase?"

                    source-start
e8    BE            1 "Is BRAF a kinase" 5
                    question-mark
                    end-of-source
("Is BRAF a kinase?"
 (:var sparser::mv14904 :isa sparser::polar-question :statement sparser::mv14900)
 (:var sparser::mv14900 :isa sparser::be :subject sparser::mv14901 :predicate sparser::mv14903)
 (:var sparser::mv14901 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14903 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
764: "Can you tell me whether BRAF is a kinase?"

                    source-start
e22   TELL          1 "Can you tell me whether BRAF is a kinase" 10
                    question-mark
                    end-of-source
("Can you tell me whether BRAF is a kinase?"
 (:var sparser::mv14916 :isa sparser::polar-question :statement sparser::mv14907)
 (:var sparser::mv14907 :isa sparser::tell :agent sparser::mv14906 :theme sparser::mv14915 :theme
  sparser::mv14908 :modal "CAN")
 (:var sparser::mv14906 :isa sparser::interlocutor :name "hearer")
 (:var sparser::mv14915 :isa sparser::wh-question :statement sparser::mv14912 :wh sparser::whether)
 (:var sparser::mv14912 :isa sparser::be :subject sparser::mv14911 :predicate sparser::mv14914
  :modal "CAN")
 (:var sparser::mv14911 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14914 :isa sparser::kinase :has-determiner "A" :raw-text "kinase")
 (:var sparser::mv14908 :isa sparser::interlocutor :name "speaker"))

___________________
765: "I want to know if BRAF is a kinase."

                    source-start
e21   WANT          1 "I want to know if BRAF is a kinase" 10
                    period
                    end-of-source
("I want to know if BRAF is a kinase."
 (:var sparser::mv14920 :isa sparser::want :agent sparser::mv14917 :theme sparser::mv14930 :present
  "PRESENT")
 (:var sparser::mv14917 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv14930 :isa sparser::know :agent sparser::mv14917 :statement sparser::mv14929)
 (:var sparser::mv14929 :isa sparser::wh-question :statement sparser::mv14925 :wh if)
 (:var sparser::mv14925 :isa sparser::be :subject sparser::mv14924 :predicate sparser::mv14927
  :present "PRESENT")
 (:var sparser::mv14924 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14927 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

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
 (:var sparser::mv14939 :isa sparser::be :subject sparser::mv14936 :predicate sparser::mv14940
  :present "PRESENT")
 (:var sparser::mv14936 :isa type :molecule-type sparser::mv14938 :has-determiner "WHAT" :raw-text
  "type")
 (:var sparser::mv14938 :isa sparser::protein :raw-text "protein")
 (:var sparser::mv14940 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
768: "What is the activity of the BRAF protein?"

                    source-start
e17   BE            1 "What is the activity of the BRAF protein" 9
                    question-mark
                    end-of-source
("What is the activity of the BRAF protein?"
 (:var sparser::mv14943 :isa sparser::be :subject sparser::mv14942 :predicate sparser::mv14945
  :present "PRESENT")
 (:var sparser::mv14942 :isa sparser::what)
 (:var sparser::mv14945 :isa sparser::bio-activity :participant sparser::mv14950 :has-determiner
  "THE" :raw-text "activity")
 (:var sparser::mv14950 :isa sparser::protein :has-determiner "THE" :raw-text "BRAF" :uid
  "UP:P15056" :name "BRAF_HUMAN"))

___________________
769: "Is BRAF a kinase or a transcription factor?"

                    source-start
e15   BE            1 "Is BRAF a kinase or a transcription factor" 9
                    question-mark
                    end-of-source
("Is BRAF a kinase or a transcription factor?"
 (:var sparser::mv14960 :isa sparser::polar-question :statement sparser::mv14953)
 (:var sparser::mv14953 :isa sparser::be :subject sparser::mv14954 :predicate sparser::mv14959)
 (:var sparser::mv14954 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv14959 :isa sparser::collection :raw-text "a kinase or a transcription factor"
  :type sparser::kinase :number 2 :items (sparser::mv14956 sparser::mv14952))
 (:var sparser::mv14956 :isa sparser::kinase :has-determiner "A" :raw-text "kinase")
 (:var sparser::mv14952 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor"))

___________________
770: "What proteins are targeted by NG25?"

                    source-start
e12   TARGET        1 "What proteins are targeted by NG25" 8
                    question-mark
                    end-of-source
("What proteins are targeted by NG25?"
 (:var sparser::mv14967 :isa sparser::target :object sparser::mv14963 :agent sparser::mv14961
  :present "PRESENT" :raw-text "targeted")
 (:var sparser::mv14963 :isa sparser::protein :has-determiner "WHAT" :raw-text "proteins")
 (:var sparser::mv14961 :isa sparser::drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))

___________________
771: "Name transcription factors shared by FN1, MMP3, and SERPINE1."

                    source-start
e20   NAME-SOMETHING  1 "Name transcription factors shared by FN1, MMP3, and SERPINE1" 15
                    period
                    end-of-source
("Name transcription factors shared by FN1, MMP3, and SERPINE1."
 (:var sparser::mv14973 :isa sparser::name-something :patient sparser::mv14969 :present "PRESENT")
 (:var sparser::mv14969 :isa sparser::transcription-factor :predication sparser::mv14976 :raw-text
  "transcription factors")
 (:var sparser::mv14976 :isa sparser::share :object sparser::mv14969 :participant sparser::mv14979
  :past "PAST" :raw-text "shared")
 (:var sparser::mv14979 :isa sparser::collection :raw-text "FN1, MMP3, and SERPINE1" :type
  sparser::protein :number 3 :items (sparser::mv14970 sparser::mv14971 sparser::mv14972))
 (:var sparser::mv14970 :isa sparser::protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
 (:var sparser::mv14971 :isa sparser::protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
 (:var sparser::mv14972 :isa sparser::protein :raw-text "SERPINE1" :uid "UP:P05121" :name
  "PAI1_HUMAN"))

___________________
772: "Tell me if STAT3 is a transcription factor"

                    source-start
e15   TELL          1 "Tell me if STAT3 is a transcription factor" 10
                    end-of-source
("Tell me if STAT3 is a transcription factor"
 (:var sparser::mv14983 :isa sparser::tell :theme sparser::mv14988 :beneficiary sparser::mv14984
  :present "PRESENT")
 (:var sparser::mv14988 :isa sparser::wh-question :statement sparser::mv14986 :wh if)
 (:var sparser::mv14986 :isa sparser::be :subject sparser::mv14981 :predicate sparser::mv14982
  :present "PRESENT")
 (:var sparser::mv14981 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv14982 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor")
 (:var sparser::mv14984 :isa sparser::interlocutor :name "speaker"))

___________________
773: "Show me signaling pathways shared by MAP3K7 and CXCL8."

                    source-start
e18   SHOW          1 "Show me signaling pathways shared by MAP3K7 and CXCL8" 14
                    period
                    end-of-source
("Show me signaling pathways shared by MAP3K7 and CXCL8."
 (:var sparser::mv14992 :isa sparser::show :|statement-OR-theme| sparser::mv14989 :beneficiary
  sparser::mv14993 :present "PRESENT")
 (:var sparser::mv14989 :isa sparser::signaling-pathway :predication sparser::mv14994 :raw-text
  "signaling pathways")
 (:var sparser::mv14994 :isa sparser::share :object sparser::mv14989 :participant sparser::mv14997
  :past "PAST" :raw-text "shared")
 (:var sparser::mv14997 :isa sparser::collection :raw-text "MAP3K7 and CXCL8" :type
  sparser::protein :number 2 :items (sparser::mv14990 sparser::mv14991))
 (:var sparser::mv14990 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv14991 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv14993 :isa sparser::interlocutor :name "speaker"))

___________________
774: "Give me signaling pathways shared by MAP3K7 and CXCL8"

                    source-start
e18   GIVE          1 "Give me signaling pathways shared by MAP3K7 and CXCL8" 14
                    end-of-source
("Give me signaling pathways shared by MAP3K7 and CXCL8"
 (:var sparser::mv15002 :isa sparser::give :theme sparser::mv14999 :beneficiary sparser::mv15003
  :present "PRESENT")
 (:var sparser::mv14999 :isa sparser::signaling-pathway :predication sparser::mv15004 :raw-text
  "signaling pathways")
 (:var sparser::mv15004 :isa sparser::share :object sparser::mv14999 :participant sparser::mv15007
  :past "PAST" :raw-text "shared")
 (:var sparser::mv15007 :isa sparser::collection :raw-text "MAP3K7 and CXCL8" :type
  sparser::protein :number 2 :items (sparser::mv15000 sparser::mv15001))
 (:var sparser::mv15000 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv15001 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv15003 :isa sparser::interlocutor :name "speaker"))

___________________
775: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"

                    source-start
e47   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold" 19
                    question-mark
                    end-of-source
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
 (:var sparser::mv15038 :isa sparser::polar-question :statement sparser::mv15037)
 (:var sparser::mv15037 :isa sparser::event-relation :subordinated-event sparser::mv15033 :event
  sparser::mv15035)
 (:var sparser::mv15033 :isa sparser::wh-question :statement sparser::mv15020 :wh if)
 (:var sparser::mv15020 :isa sparser::increase :|agent-OR-cause| sparser::mv15018 :cause
  sparser::mv15030 :|affected-process-OR-object| sparser::mv15022 :present "PRESENT" :raw-text
  "increase")
 (:var sparser::mv15018 :isa sparser::interlocutor :name "person-and-machine")
 (:var sparser::mv15030 :isa sparser::measurement :number sparser::mv15027)
 (:var sparser::mv15027 :isa number :value 10)
 (:var sparser::mv15022 :isa sparser::bio-amount :measured-item sparser::mv15024 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv15024 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
  :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv15035 :isa sparser::copular-predication :item sparser::mv15011 :value
  sparser::mv15016 :predicate sparser::mv15009)
 (:var sparser::mv15011 :isa sparser::bio-amount :measured-item sparser::mv15014 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv15014 :isa sparser::protein-family :predication sparser::mv15013 :raw-text "ERK"
  :name "ERK" :count 7 :family-members
  ((sparser::protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
   (sparser::protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
   (sparser::protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
   (sparser::protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
   (sparser::protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
   (sparser::protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
   (sparser::protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
  :uid "NCIT:C26360")
 (:var sparser::mv15013 :isa sparser::phosphorylate :substrate sparser::mv15014 :raw-text
  "phosphorylated")
 (:var sparser::mv15016 :isa sparser::high :adverb sparser::mv15015)
 (:var sparser::mv15015 :isa sparser::ever :name "ever") (:var sparser::mv15009 :isa sparser::be))

___________________
776: "Active MEK phosphorylates ERK"

                    source-start
e6    PHOSPHORYLATE 1 "Active MEK phosphorylates ERK" 5
                    end-of-source
("Active MEK phosphorylates ERK"
 (:var sparser::mv15041 :isa sparser::phosphorylate :agent sparser::mv15040 :substrate
  sparser::mv15042 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv15040 :isa sparser::protein-family :predication sparser::mv15039 :raw-text "MEK"
  :name "MEK" :count 2 :family-members
  ((sparser::protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
   (sparser::protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
  :uid "FPLX:MEK")
 (:var sparser::mv15039 :isa sparser::active)
 (:var sparser::mv15042 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
e43   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount " 14
e33   OF            14 "of MEK ten fold" 18
                    question-mark
                    end-of-source
                    source-start
e43   S             1 "Is the amount of phosphorylated ERK ever high if we increase the amount " 14
e33   PP            14 "of MEK ten fold" 18
                    question-mark
                    end-of-source


___________________
778: "What are some pathways that affect BRAF?"

                    source-start
e14   BE            1 "What are some pathways that affect BRAF" 8
                    question-mark
                    end-of-source
("What are some pathways that affect BRAF?"
 (:var sparser::mv15073 :isa sparser::be :subject sparser::mv15072 :predicate sparser::mv15075
  :present "PRESENT")
 (:var sparser::mv15072 :isa sparser::what)
 (:var sparser::mv15075 :isa sparser::pathway :predication sparser::mv15077 :quantifier
  sparser::mv15074 :raw-text "pathways")
 (:var sparser::mv15077 :isa sparser::affect :agent sparser::mv15075 :that-rel t :object
  sparser::mv15078 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv15078 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv15074 :isa some :word "some"))

___________________
779: "What are the pathways that affect BRAF"

                    source-start
e15   BE            1 "What are the pathways that affect BRAF" 8
                    end-of-source
("What are the pathways that affect BRAF"
 (:var sparser::mv15080 :isa sparser::be :subject sparser::mv15079 :predicate sparser::mv15082
  :present "PRESENT")
 (:var sparser::mv15079 :isa sparser::what)
 (:var sparser::mv15082 :isa sparser::pathway :predication sparser::mv15084 :has-determiner "THE"
  :raw-text "pathways")
 (:var sparser::mv15084 :isa sparser::affect :agent sparser::mv15082 :that-rel t :object
  sparser::mv15085 :present "PRESENT" :raw-text "affect")
 (:var sparser::mv15085 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    source-start
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    question-mark
                    end-of-source
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:var sparser::mv15095 :isa sparser::regulate :object sparser::mv15089 :agent sparser::mv15094
  :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv15089 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv15094 :isa sparser::collection :raw-text "miR-20b-5p, and miR-145-5p" :type
  sparser::micro-rna :number 2 :items (sparser::mv15086 sparser::mv15087))
 (:var sparser::mv15086 :isa sparser::micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm"
  :uid "MIMAT0001413")
 (:var sparser::mv15087 :isa sparser::micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
  "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    source-start
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    question-mark
                    end-of-source
("What are some genes that are regulated by ELK1?"
 (:var sparser::mv15099 :isa sparser::be :subject sparser::mv15098 :predicate sparser::mv15101
  :present "PRESENT")
 (:var sparser::mv15098 :isa sparser::what)
 (:var sparser::mv15101 :isa sparser::gene :predication sparser::mv15106 :quantifier
  sparser::mv15100 :raw-text "genes")
 (:var sparser::mv15106 :isa sparser::regulate :object sparser::mv15101 :that-rel t :agent
  sparser::mv15097 :present "PRESENT" :raw-text "regulated")
 (:var sparser::mv15097 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv15100 :isa some :word "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    source-start
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    question-mark
                    end-of-source
("What pathways contain CXCL8 and CXCL10?"
 (:var sparser::mv15112 :isa sparser::contain :theme sparser::mv15111 :patient sparser::mv15114
  :present "PRESENT")
 (:var sparser::mv15111 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv15114 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv15108 sparser::mv15109))
 (:var sparser::mv15108 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv15109 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    source-start
e24   REMOVE        1 "Remove the fact that IL10 activates STAT3 in the model" 13
                    end-of-source
("Remove the fact that IL10 activates STAT3 in the model"
 (:var sparser::mv15117 :isa remove :object sparser::mv15126 :present "PRESENT" :raw-text "Remove")
 (:var sparser::mv15126 :isa sparser::fact :statement sparser::mv15121 :has-determiner "THE")
 (:var sparser::mv15121 :isa sparser::bio-activate :agent sparser::mv15115 :object sparser::mv15116
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv15115 :isa sparser::protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
 (:var sparser::mv15116 :isa sparser::protein :info-context sparser::mv15124 :raw-text "STAT3" :uid
  "UP:P40763" :name "STAT3_HUMAN")
 (:var sparser::mv15124 :isa sparser::model :has-determiner "THE"))

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
 (:var sparser::mv15138 :isa sparser::be :subject sparser::mv15137 :predicate sparser::mv15140
  :present "PRESENT")
 (:var sparser::mv15137 :isa sparser::what)
 (:var sparser::mv15140 :isa sparser::path :endpoints sparser::mv15144 :quantifier
  sparser::mv15139)
 (:var sparser::mv15144 :isa sparser::collection :raw-text "BRAF and AKT1" :type sparser::protein
  :number 2 :items (sparser::mv15142 sparser::mv15136))
 (:var sparser::mv15142 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv15136 :isa sparser::protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
 (:var sparser::mv15139 :isa some :word "some"))

___________________
786: "Does MEK1 activate ERK2"

                    source-start
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    end-of-source
("Does MEK1 activate ERK2"
 (:var sparser::mv15151 :isa sparser::polar-question :statement sparser::mv15150)
 (:var sparser::mv15150 :isa sparser::bio-activate :agent sparser::mv15146 :object sparser::mv15147
  :raw-text "activate")
 (:var sparser::mv15146 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv15147 :isa sparser::protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    source-start
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    question-mark
                    end-of-source
("What drugs tagret BRAF?"
 (:var sparser::mv15155 :isa sparser::protein :has-determiner "WHAT" :modifier sparser::mv15153
  :modifier sparser::mv15154 :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
 (:var sparser::mv15153 :isa sparser::drug :raw-text "drugs")
 (:var sparser::mv15154 :isa sparser::bio-entity :name "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signalling pathway" 9
                    question-mark
                    end-of-source
("Which kinases are in the MAPK signalling pathway?"
 (:var sparser::mv15166 :isa sparser::copular-predication-of-pp :item sparser::mv15158 :value
  sparser::mv15165 :prep "IN" :predicate sparser::mv15159)
 (:var sparser::mv15158 :isa sparser::kinase :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv15165 :isa sparser::kinase :|context-OR-in-pathway| sparser::mv15156
  :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv15156 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv15162 :raw-text "signalling pathway")
 (:var sparser::mv15162 :isa sparser::protein-family :raw-text "MAPK" :name
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
 (:var sparser::mv15159 :isa sparser::be :present "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    source-start
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    question-mark
                    end-of-source
("What drugs drugs target BRAF?"
 (:var sparser::mv15172 :isa sparser::target :agent sparser::mv15174 :object sparser::mv15173
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15174 :isa sparser::drug :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv15173 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    source-start
e5    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    question-mark
                    end-of-source
("What rgulates ELLK1?"
 (:var sparser::mv15175 :isa sparser::bio-entity :has-determiner "WHAT" :modifier sparser::mv15177
  :name "ELLK1")
 (:var sparser::mv15177 :isa sparser::bio-entity :name "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    source-start
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    question-mark
                    end-of-source
("Does STAT3 increase expression of c-fos in liver?"
 (:var sparser::mv15190 :isa sparser::polar-question :statement sparser::mv15187)
 (:var sparser::mv15187 :isa sparser::increase :agent sparser::mv15178 :affected-process
  sparser::mv15183 :raw-text "increase")
 (:var sparser::mv15178 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv15183 :isa sparser::gene-transcript-express :object sparser::mv15179 :raw-text
  "expression")
 (:var sparser::mv15179 :isa sparser::protein :organ sparser::mv15186 :raw-text "c-fos" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv15186 :isa sparser::liver))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    source-start
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    question-mark
                    end-of-source
("Does STAT3 affect c-fos expression in liver?"
 (:var sparser::mv15200 :isa sparser::polar-question :statement sparser::mv15198)
 (:var sparser::mv15198 :isa sparser::affect :agent sparser::mv15191 :affected-process
  sparser::mv15195 :raw-text "affect")
 (:var sparser::mv15191 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv15195 :isa sparser::gene-transcript-express :organ sparser::mv15197 :object
  sparser::mv15192 :raw-text "expression")
 (:var sparser::mv15197 :isa sparser::liver)
 (:var sparser::mv15192 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    source-start
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    question-mark
                    end-of-source
("Does STAT3 alter c-fos expression?"
 (:var sparser::mv15207 :isa sparser::polar-question :statement sparser::mv15206)
 (:var sparser::mv15206 :isa sparser::alter :agent sparser::mv15201 :affected-process
  sparser::mv15205 :raw-text "alter")
 (:var sparser::mv15201 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv15205 :isa sparser::gene-transcript-express :object sparser::mv15202 :raw-text
  "expression")
 (:var sparser::mv15202 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    source-start
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    question-mark
                    end-of-source
("Is STAT3 a transcriptional regulator of c-fos?"
 (:var sparser::mv15215 :isa sparser::polar-question :statement sparser::mv15211)
 (:var sparser::mv15211 :isa sparser::be :subject sparser::mv15208 :predicate sparser::mv15209)
 (:var sparser::mv15208 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv15209 :isa sparser::protein-family :molecule-type sparser::mv15210
  :has-determiner "A" :raw-text "transcriptional regulator" :name "transcriptional regulator" :uid
  "XFAM:PF02082")
 (:var sparser::mv15210 :isa sparser::protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
795: "Which drugs inhibit BRAF?"

                    source-start
e6    INHIBIT       1 "Which drugs inhibit BRAF" 5
                    question-mark
                    end-of-source
("Which drugs inhibit BRAF?"
 (:var sparser::mv15218 :isa sparser::inhibit :agent sparser::mv15217 :object sparser::mv15219
  :present "PRESENT" :raw-text "inhibit")
 (:var sparser::mv15217 :isa sparser::drug :has-determiner "WHICH" :raw-text "drugs")
 (:var sparser::mv15219 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    source-start
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    period
                    end-of-source
("STAT3 upregulates ELK1."
 (:var sparser::mv15222 :isa sparser::upregulate :agent sparser::mv15220 :object sparser::mv15221
  :present "PRESENT" :raw-text "upregulates")
 (:var sparser::mv15220 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv15221 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    source-start
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    question-mark
                    end-of-source
("What does STAT3 transcribe?"
 (:var sparser::mv15226 :isa sparser::transcribe :object sparser::mv15224 :agent sparser::mv15223
  :present "PRESENT" :raw-text "transcribe")
 (:var sparser::mv15224 :isa sparser::what)
 (:var sparser::mv15223 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    source-start
e5    BE            1 "What is PI3K" 6
                    question-mark
                    end-of-source
("What is PI3K?"
 (:var sparser::mv15229 :isa sparser::be :subject sparser::mv15228 :predicate sparser::mv15227
  :present "PRESENT")
 (:var sparser::mv15228 :isa sparser::what)
 (:var sparser::mv15227 :isa sparser::protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4
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
 (:var sparser::mv15231 :isa sparser::be :subject sparser::mv15230 :predicate sparser::mv15232
  :present "PRESENT")
 (:var sparser::mv15230 :isa sparser::what)
 (:var sparser::mv15232 :isa sparser::protein-family :raw-text "MEK" :name "MEK" :count 2
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
 (:var sparser::mv15234 :isa sparser::phosphorylate :|agent-OR-cause| sparser::mv15233 :substrate
  sparser::mv15235 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv15233 :isa sparser::what)
 (:var sparser::mv15235 :isa sparser::protein-family :raw-text "ERK" :name "ERK" :count 7
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
 (:var sparser::mv15239 :isa sparser::target :agent sparser::mv15237 :object sparser::mv15240
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15237 :isa sparser::drug :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv15240 :isa sparser::protein-family :raw-text "AKT" :name "Rac" :count 3
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
 (:var sparser::mv15243 :isa sparser::regulate :|agent-OR-cause| sparser::mv15242 :object
  sparser::mv15241 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv15242 :isa sparser::what)
 (:var sparser::mv15241 :isa sparser::bio-entity :name "ELLK1"))

___________________
803: "What regulates ELK1?"

                    source-start
e5    REGULATE      1 "What regulates ELK1" 5
                    question-mark
                    end-of-source
("What regulates ELK1?"
 (:var sparser::mv15246 :isa sparser::regulate :|agent-OR-cause| sparser::mv15245 :object
  sparser::mv15244 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv15245 :isa sparser::what)
 (:var sparser::mv15244 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    source-start
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    question-mark
                    end-of-source
("Does miR-20b-5pp target STAT3?"
 (:var sparser::mv15257 :isa sparser::polar-question :statement sparser::mv15256)
 (:var sparser::mv15256 :isa sparser::target :agent sparser::mv15255 :object sparser::mv15248
  :raw-text "target")
 (:var sparser::mv15255 :isa sparser::bio-entity :name "miR-20b-5pp")
 (:var sparser::mv15248 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
805: "What are the mutations of PTEEN in prostate cancer?"

                    source-start
e18   OF            1 "What are the mutations of PTEEN in prostate cancer" 10
                    question-mark
                    end-of-source
("What are the mutations of PTEEN in prostate cancer?"
 (:var sparser::mv15268 :isa sparser::wh-question :statement sparser::mv15267 :wh sparser::what)
 (:var sparser::mv15267 :isa sparser::prepositional-phrase :pobj sparser::mv15264 :prep "OF")
 (:var sparser::mv15264 :isa sparser::bio-entity :context sparser::mv15258 :name "PTEEN")
 (:var sparser::mv15258 :isa sparser::cancer :name "prostate cancer" :uid "TS-1224"))

___________________
806: "What does selumitinibib target?"

                    source-start
e6    TARGET        1 "What does selumitinibib target" 5
                    question-mark
                    end-of-source
("What does selumitinibib target?"
 (:var sparser::mv15273 :isa sparser::target :object sparser::mv15269 :agent sparser::mv15271
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15269 :isa sparser::what)
 (:var sparser::mv15271 :isa sparser::bio-entity :name "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    source-start
e9    BE            1 "Is ELLK1 a kinase" 6
                    question-mark
                    end-of-source
("Is ELLK1 a kinase?"
 (:var sparser::mv15278 :isa sparser::polar-question :statement sparser::mv15275)
 (:var sparser::mv15275 :isa sparser::be :subject sparser::mv15274 :predicate sparser::mv15277)
 (:var sparser::mv15274 :isa sparser::bio-entity :name "ELLK1")
 (:var sparser::mv15277 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
808: "What regulates ELK12?"

                    source-start
e7    REGULATE      1 "What regulates ELK12" 5
                    question-mark
                    end-of-source
("What regulates ELK12?"
 (:var sparser::mv15280 :isa sparser::regulate :|agent-OR-cause| sparser::mv15279 :object
  sparser::mv15281 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv15279 :isa sparser::what)
 (:var sparser::mv15281 :isa sparser::protein :variant-number sparser::mv15283 :raw-text "ELK" :uid
  "UP:P54762" :name "EPHB1_HUMAN")
 (:var sparser::mv15283 :isa number :value 12))

___________________
809: "What does sleumiitibbb target?"

                    source-start
e6    TARGET        1 "What does sleumiitibbb target" 5
                    question-mark
                    end-of-source
("What does sleumiitibbb target?"
 (:var sparser::mv15288 :isa sparser::target :object sparser::mv15284 :agent sparser::mv15286
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15284 :isa sparser::what)
 (:var sparser::mv15286 :isa sparser::bio-entity :name "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    source-start
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    question-mark
                    end-of-source
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:var sparser::mv15292 :isa sparser::be :subject sparser::mv15291 :predicate sparser::mv15297
  :present "PRESENT")
 (:var sparser::mv15291 :isa sparser::what)
 (:var sparser::mv15297 :isa sparser::evidence :statement sparser::mv15296 :has-determiner "THE")
 (:var sparser::mv15296 :isa sparser::phosphorylate :agent sparser::mv15289 :substrate
  sparser::mv15290 :present "PRESENT" :raw-text "phosphorylates")
 (:var sparser::mv15289 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv15290 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))

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
 (:var sparser::mv15314 :isa sparser::bio-activate :agent sparser::mv15312 :object sparser::mv15313
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv15312 :isa sparser::protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
 (:var sparser::mv15313 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    source-start
e16   COPULAR-PREDICATE 1 "How many interactions are in the model" 8
                    question-mark
                    end-of-source
("How many interactions are in the model?"
 (:var sparser::mv15325 :isa sparser::copular-predication-of-pp :item sparser::mv15317 :value
  sparser::mv15324 :prep "IN" :predicate sparser::mv15318)
 (:var sparser::mv15317 :isa sparser::interact :has-determiner "HOW" :quantifier sparser::mv15316
  :raw-text "interactions")
 (:var sparser::mv15316 :isa sparser::many :word "many")
 (:var sparser::mv15324 :isa sparser::interact :info-context sparser::mv15321 :has-determiner "HOW"
  :quantifier sparser::mv15316 :raw-text "interactions")
 (:var sparser::mv15321 :isa sparser::model :has-determiner "THE")
 (:var sparser::mv15318 :isa sparser::be :present "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    source-start
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    question-mark
                    end-of-source
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:var sparser::mv15338 :isa sparser::polar-question :statement sparser::mv15336)
 (:var sparser::mv15336 :isa sparser::decrease :agent sparser::mv15329
  :|affected-process-OR-object| sparser::mv15333 :raw-text "decrease")
 (:var sparser::mv15329 :isa sparser::drug :raw-text "tofacitinib" :name "tasocitinib" :uid
  "NCIT:C95800")
 (:var sparser::mv15333 :isa sparser::bio-amount :measured-item sparser::mv15327 :has-determiner
  "THE" :raw-text "amount")
 (:var sparser::mv15327 :isa sparser::protein :predication sparser::mv15335 :raw-text "MAP2K2" :uid
  "UP:P36507" :name "MP2K2_HUMAN")
 (:var sparser::mv15335 :isa sparser::phosphorylate :substrate sparser::mv15327 :raw-text
  "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    source-start
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    question-mark
                    end-of-source
("What kinases does ERK1 activate?"
 (:var sparser::mv15343 :isa sparser::bio-activate :object sparser::mv15341 :agent sparser::mv15339
  :present "PRESENT" :raw-text "activate")
 (:var sparser::mv15341 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv15339 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    source-start
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    question-mark
                    end-of-source
("What kinases does MEK1 activate?"
 (:var sparser::mv15348 :isa sparser::bio-activate :object sparser::mv15346 :agent sparser::mv15344
  :present "PRESENT" :raw-text "activate")
 (:var sparser::mv15346 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv15344 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    source-start
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    question-mark
                    end-of-source
("What does ERK1 activate?"
 (:var sparser::mv15352 :isa sparser::bio-activate :object sparser::mv15350 :agent sparser::mv15349
  :present "PRESENT" :raw-text "activate")
 (:var sparser::mv15350 :isa sparser::what)
 (:var sparser::mv15349 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    source-start
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    question-mark
                    end-of-source
("What does JAK1 phosphorylate?"
 (:var sparser::mv15356 :isa sparser::phosphorylate :amino-acid sparser::mv15354 :agent
  sparser::mv15353 :present "PRESENT" :raw-text "phosphorylate")
 (:var sparser::mv15354 :isa sparser::what)
 (:var sparser::mv15353 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    source-start
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    question-mark
                    end-of-source
("What kinases does STAT3 regulate?"
 (:var sparser::mv15361 :isa sparser::regulate :object sparser::mv15359 :agent sparser::mv15357
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv15359 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv15357 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    source-start
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    question-mark
                    end-of-source
("What pathways involve SRF and what does SRF bind?"
 (:var sparser::mv15371 :isa sparser::collection :type sparser::involve :number 2 :items
  (sparser::mv15364 sparser::mv15370))
 (:var sparser::mv15364 :isa sparser::involve :theme sparser::mv15363 :theme sparser::mv15365
  :present "PRESENT")
 (:var sparser::mv15363 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv15365 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
 (:var sparser::mv15370 :isa sparser::binding :direct-bindee sparser::mv15367 :binder
  sparser::mv15369 :present "PRESENT" :raw-text "bind")
 (:var sparser::mv15367 :isa sparser::what)
 (:var sparser::mv15369 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    source-start
e6    INVOLVE       1 "What pathways involve SRF" 5
                    question-mark
                    end-of-source
("What pathways involve SRF?"
 (:var sparser::mv15374 :isa sparser::involve :theme sparser::mv15373 :theme sparser::mv15375
  :present "PRESENT")
 (:var sparser::mv15373 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv15375 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    source-start
e5    BINDING       1 "What does SRF bind" 5
                    question-mark
                    end-of-source
("What does SRF bind?"
 (:var sparser::mv15379 :isa sparser::binding :direct-bindee sparser::mv15376 :binder
  sparser::mv15378 :present "PRESENT" :raw-text "bind")
 (:var sparser::mv15376 :isa sparser::what)
 (:var sparser::mv15378 :isa sparser::protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))

___________________
824: "What pathways involve SRF and is SRF a kinase?"

                    source-start
e16   KINASE        1 "What pathways involve SRF and is SRF a kinase" 10
                    question-mark
                    end-of-source
("What pathways involve SRF and is SRF a kinase?"
 (:var sparser::mv15390 :isa sparser::wh-question :statement sparser::mv15388 :var nil :wh
  sparser::what)
 (:var sparser::mv15388 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
825: "Does MAP2K1 phosphorylate and activate MAPK1?"

                    source-start
e13   COLLECTION    1 "Does MAP2K1 phosphorylate and activate MAPK1" 11
                    question-mark
                    end-of-source
("Does MAP2K1 phosphorylate and activate MAPK1?"
 (:var sparser::mv15401 :isa sparser::polar-question :statement sparser::mv15400)
 (:var sparser::mv15400 :isa sparser::collection :type sparser::phosphorylate :items
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
 (:var sparser::mv15407 :isa sparser::polar-question :statement sparser::mv15406)
 (:var sparser::mv15406 :isa sparser::phosphorylate :agent sparser::mv15402 :substrate
  sparser::mv15403 :raw-text "phosphorylate")
 (:var sparser::mv15402 :isa sparser::protein :raw-text "MAP2K1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv15403 :isa sparser::protein :raw-text "MAPK3" :uid "UP:P27361" :name
  "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    source-start
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    question-mark
                    end-of-source
("Which kinases activate MEK2?"
 (:var sparser::mv15411 :isa sparser::bio-activate :agent sparser::mv15410 :object sparser::mv15408
  :present "PRESENT" :raw-text "activate")
 (:var sparser::mv15410 :isa sparser::kinase :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv15408 :isa sparser::protein :raw-text "MEK2" :uid "UP:P36507" :name
  "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    source-start
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    question-mark
                    end-of-source
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:var sparser::mv15417 :isa sparser::target :agent sparser::mv15415 :affected-process
  sparser::mv15418 :present "PRESENT" :raw-text "target")
 (:var sparser::mv15415 :isa sparser::drug :has-determiner "WHICH" :raw-text "drugs")
 (:var sparser::mv15418 :isa sparser::upstream-segment :pathwaycomponent sparser::mv15421 :raw-text
  "upstreams")
 (:var sparser::mv15421 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv15412 sparser::mv15413))
 (:var sparser::mv15412 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv15413 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    source-start
e8    TARGET        1 "Which drugs target CXCL8" 6
                    question-mark
                    end-of-source
("Which drugs target CXCL8?"
 (:var sparser::mv15427 :isa sparser::target :agent sparser::mv15425 :object sparser::mv15423
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15425 :isa sparser::drug :has-determiner "WHICH" :raw-text "drugs")
 (:var sparser::mv15423 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    source-start
e8    TARGET        1 "Which drugs target Jak3" 6
                    question-mark
                    end-of-source
("Which drugs target Jak3?"
 (:var sparser::mv15432 :isa sparser::target :agent sparser::mv15430 :object sparser::mv15428
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15430 :isa sparser::drug :has-determiner "WHICH" :raw-text "drugs")
 (:var sparser::mv15428 :isa sparser::protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    source-start
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    question-mark
                    end-of-source
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:var sparser::mv15439 :isa sparser::target :agent sparser::mv15437 :object sparser::mv15433
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15437 :isa sparser::drug :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv15433 :isa sparser::transcription-factor :predication sparser::mv15440 :raw-text
  "transcription factors")
 (:var sparser::mv15440 :isa sparser::share :object sparser::mv15433 :participant sparser::mv15443
  :past "PAST" :raw-text "shared")
 (:var sparser::mv15443 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv15434 sparser::mv15435))
 (:var sparser::mv15434 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv15435 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    source-start
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    question-mark
                    end-of-source
("What kinases does miR-20a-5p target?"
 (:var sparser::mv15450 :isa sparser::target :object sparser::mv15447 :agent sparser::mv15445
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15447 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv15445 :isa sparser::micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm"
  :uid "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    source-start
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    question-mark
                    end-of-source
("What transcription factors does miR-20a-5p target?"
 (:var sparser::mv15456 :isa sparser::target :object sparser::mv15451 :agent sparser::mv15452
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15451 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv15452 :isa sparser::micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm"
  :uid "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    source-start
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    question-mark
                    end-of-source
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:var sparser::mv15467 :isa sparser::copular-predication :item sparser::mv15461 :value
  sparser::mv15457 :predicate sparser::mv15462)
 (:var sparser::mv15461 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv15457 :isa sparser::mutual-exclusivity :disease sparser::mv15459 :alternative
  sparser::mv15458)
 (:var sparser::mv15459 :isa sparser::cancer :name "breast cancer" :uid "TS-0591")
 (:var sparser::mv15458 :isa sparser::protein :raw-text "CDH1" :uid "UP:P12830" :name
  "CADH1_HUMAN")
 (:var sparser::mv15462 :isa sparser::be :present "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    source-start
e7    TARGET        1 "What drugs target fakeprotein" 5
                    question-mark
                    end-of-source
("What drugs target fakeprotein?"
 (:var sparser::mv15471 :isa sparser::target :agent sparser::mv15469 :object sparser::mv15472
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15469 :isa sparser::drug :has-determiner "WHAT" :raw-text "drugs")
 (:var sparser::mv15472 :isa sparser::bio-entity :name "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    source-start
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    question-mark
                    end-of-source
("Which kinases are in the FAKE signaling pathway?"
 (:var sparser::mv15483 :isa sparser::copular-predication-of-pp :item sparser::mv15475 :value
  sparser::mv15482 :prep "IN" :predicate sparser::mv15476)
 (:var sparser::mv15475 :isa sparser::kinase :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv15482 :isa sparser::kinase :|context-OR-in-pathway| sparser::mv15473
  :has-determiner "WHICH" :raw-text "kinases")
 (:var sparser::mv15473 :isa sparser::signaling-pathway :has-determiner "THE" :modifier
  sparser::mv15479 :raw-text "signaling pathway")
 (:var sparser::mv15479 :isa sparser::bio-entity :name "FAKE")
 (:var sparser::mv15476 :isa sparser::be :present "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    source-start
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    question-mark
                    end-of-source
("What are the mutations of PTEN in fictional cancer?"
 (:var sparser::mv15486 :isa sparser::be :subject sparser::mv15485 :predicate sparser::mv15488
  :present "PRESENT")
 (:var sparser::mv15485 :isa sparser::what)
 (:var sparser::mv15488 :isa sparser::mutation :object sparser::mv15490 :has-determiner "THE"
  :raw-text "mutations")
 (:var sparser::mv15490 :isa sparser::protein :context sparser::mv15493 :raw-text "PTEN" :uid
  "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv15493 :isa sparser::cancer :predication sparser::mv15492)
 (:var sparser::mv15492 :isa sparser::fictional))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    source-start
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    question-mark
                    end-of-source
("What are the mutations of PTEN in liver cancer?"
 (:var sparser::mv15497 :isa sparser::be :subject sparser::mv15496 :predicate sparser::mv15499
  :present "PRESENT")
 (:var sparser::mv15496 :isa sparser::what)
 (:var sparser::mv15499 :isa sparser::mutation :object sparser::mv15501 :has-determiner "THE"
  :raw-text "mutations")
 (:var sparser::mv15501 :isa sparser::protein :context sparser::mv15504 :raw-text "PTEN" :uid
  "UP:P60484" :name "PTEN_HUMAN")
 (:var sparser::mv15504 :isa sparser::cancer :organ sparser::mv15503)
 (:var sparser::mv15503 :isa sparser::liver))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    source-start
e23   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE in the model" 12
                    period
                    end-of-source
("Remove the fact that ELk1 transcribes FAKE in the model."
 (:var sparser::mv15508 :isa remove :object sparser::mv15518 :present "PRESENT" :raw-text "Remove")
 (:var sparser::mv15518 :isa sparser::fact :statement sparser::mv15512 :has-determiner "THE")
 (:var sparser::mv15512 :isa sparser::transcribe :agent sparser::mv15507 :object sparser::mv15513
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv15507 :isa sparser::protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv15513 :isa sparser::bio-entity :info-context sparser::mv15516 :name "FAKE")
 (:var sparser::mv15516 :isa sparser::model :has-determiner "THE"))

___________________
840: "ELK1 transcribes FOS"

                    source-start
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    end-of-source
("ELK1 transcribes FOS"
 (:var sparser::mv15520 :isa sparser::transcribe :agent sparser::mv15519 :object sparser::mv15521
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv15519 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv15521 :isa sparser::protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    source-start
e23   REMOVE        1 "Remove the fact that ELK1 transcribes FOS in the model" 12
                    period
                    end-of-source
("Remove the fact that ELK1 transcribes FOS in the model."
 (:var sparser::mv15523 :isa remove :object sparser::mv15533 :present "PRESENT" :raw-text "Remove")
 (:var sparser::mv15533 :isa sparser::fact :statement sparser::mv15527 :has-determiner "THE")
 (:var sparser::mv15527 :isa sparser::transcribe :agent sparser::mv15522 :object sparser::mv15528
  :present "PRESENT" :raw-text "transcribes")
 (:var sparser::mv15522 :isa sparser::protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
 (:var sparser::mv15528 :isa sparser::protein :info-context sparser::mv15531 :raw-text "FOS" :uid
  "UP:P01100" :name "FOS_HUMAN")
 (:var sparser::mv15531 :isa sparser::model :has-determiner "THE"))

___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    source-start
e17   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    question-mark
                    end-of-source
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:var sparser::mv15543 :isa sparser::share :object sparser::mv15534 :participant sparser::mv15542
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv15534 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv15542 :isa sparser::collection :raw-text "CXCL8 and FAKE10" :type
  sparser::protein :number 2 :items (sparser::mv15535 sparser::mv15536))
 (:var sparser::mv15535 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv15536 :isa sparser::bio-entity :name "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    source-start
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    question-mark
                    end-of-source
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:var sparser::mv15554 :isa sparser::share :object sparser::mv15545 :participant sparser::mv15553
  :present "PRESENT" :raw-text "shared")
 (:var sparser::mv15545 :isa sparser::transcription-factor :has-determiner "WHAT" :raw-text
  "transcription factors")
 (:var sparser::mv15553 :isa sparser::collection :raw-text "CXCL8 and CXCL10" :type
  sparser::protein :number 2 :items (sparser::mv15546 sparser::mv15547))
 (:var sparser::mv15546 :isa sparser::protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
 (:var sparser::mv15547 :isa sparser::protein :raw-text "CXCL10" :uid "UP:P02778" :name
  "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    source-start
e8    BIO-USE       1 "What databases do you use" 6
                    question-mark
                    end-of-source
("What databases do you use?"
 (:var sparser::mv15561 :isa sparser::bio-use :object sparser::mv15557 :agent sparser::mv15559
  :present "PRESENT" :raw-text "use")
 (:var sparser::mv15557 :isa sparser::database :has-determiner "WHAT")
 (:var sparser::mv15559 :isa sparser::interlocutor :name "hearer"))

___________________
845: "What is the MSA?"

                    source-start
e7    BE            1 "What is the MSA" 5
                    question-mark
                    end-of-source
("What is the MSA?"
 (:var sparser::mv15563 :isa sparser::be :subject sparser::mv15562 :predicate sparser::mv15565
  :present "PRESENT")
 (:var sparser::mv15562 :isa sparser::what)
 (:var sparser::mv15565 :isa sparser::protein :has-determiner "THE" :raw-text "MSA" :uid
  "UP:Q9FIB6" :name "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    source-start
e11   ASK           1 "What tissues can I ask about" 7
                    question-mark
                    end-of-source
("What tissues can I ask about?"
 (:var sparser::mv15574 :isa sparser::ask :patient sparser::mv15567 :modal sparser::mv15568 :agent
  sparser::mv15569 :present "PRESENT")
 (:var sparser::mv15567 :isa sparser::tissue :has-determiner "WHAT")
 (:var sparser::mv15568 :isa sparser::can)
 (:var sparser::mv15569 :isa sparser::interlocutor :name "speaker"))

___________________
847: "What cancers can I ask about?"

                    source-start
e11   ASK           1 "What cancers can I ask about" 7
                    question-mark
                    end-of-source
("What cancers can I ask about?"
 (:var sparser::mv15583 :isa sparser::ask :patient sparser::mv15576 :modal sparser::mv15577 :agent
  sparser::mv15578 :present "PRESENT")
 (:var sparser::mv15576 :isa sparser::cancer :has-determiner "WHAT")
 (:var sparser::mv15577 :isa sparser::can)
 (:var sparser::mv15578 :isa sparser::interlocutor :name "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    source-start
e11   ASK           1 "What mechanisms can I ask about" 7
                    question-mark
                    end-of-source
("What mechanisms can I ask about?"
 (:var sparser::mv15592 :isa sparser::ask :patient sparser::mv15585 :modal sparser::mv15586 :agent
  sparser::mv15587 :present "PRESENT")
 (:var sparser::mv15585 :isa sparser::bio-mechanism :has-determiner "WHAT")
 (:var sparser::mv15586 :isa sparser::can)
 (:var sparser::mv15587 :isa sparser::interlocutor :name "speaker"))

___________________
849: "What does STAT3 regulate?"

                    source-start
e6    REGULATE      1 "What does STAT3 regulate" 6
                    question-mark
                    end-of-source
("What does STAT3 regulate?"
 (:var sparser::mv15596 :isa sparser::regulate :object sparser::mv15594 :agent sparser::mv15593
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv15594 :isa sparser::what)
 (:var sparser::mv15593 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    source-start
e9    BE            1 "Which of these are kinases" 6
                    question-mark
                    end-of-source
("Which of these are kinases?"
 (:var sparser::mv15600 :isa sparser::be :subject sparser::mv15599 :predicate sparser::mv15601
  :present "PRESENT")
 (:var sparser::mv15599 :isa sparser::these :quantifier sparser::mv15597 :word "these")
 (:var sparser::mv15597 :isa sparser::which)
 (:var sparser::mv15601 :isa sparser::kinase :raw-text "kinases"))

___________________
851: "What pathways is ERK1 in?"

                    source-start
e10   IN            1 "What pathways is ERK1 in" 7
                    question-mark
                    end-of-source
("What pathways is ERK1 in?"
 (:var sparser::mv15608 :isa sparser::wh-question :statement sparser::mv15607 :var nil :wh
  sparser::what)
 (:var sparser::mv15607 :isa sparser::in :word "in"))

___________________
852: "Which of these is AKT1 in?"

                    source-start
e13   IN            1 "Which of these is AKT1 in" 8
                    question-mark
                    end-of-source
("Which of these is AKT1 in?"
 (:var sparser::mv15616 :isa sparser::wh-question :statement sparser::mv15614 :wh sparser::which)
 (:var sparser::mv15614 :isa sparser::in :word "in"))

___________________
853: "What pathways are ERK1 and AKT1 in?"

                    source-start
e14   IN            1 "What pathways are ERK1 and AKT1 in" 10
                    question-mark
                    end-of-source
("What pathways are ERK1 and AKT1 in?"
 (:var sparser::mv15625 :isa sparser::wh-question :statement sparser::mv15623 :var nil :wh
  sparser::what)
 (:var sparser::mv15623 :isa sparser::in :word "in"))

___________________
854: "What microRNAs target STAT3?"

                    source-start
e8    TARGET        1 "What microRNAs target STAT3" 6
                    question-mark
                    end-of-source
("What microRNAs target STAT3?"
 (:var sparser::mv15630 :isa sparser::target :agent sparser::mv15628 :object sparser::mv15626
  :present "PRESENT" :raw-text "target")
 (:var sparser::mv15628 :isa sparser::micro-rna :has-determiner "WHAT" :raw-text "microRNAs")
 (:var sparser::mv15626 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    source-start
e11   TARGET        1 "Which of these target SMAD2" 7
                    question-mark
                    end-of-source
("Which of these target SMAD2?"
 (:var sparser::mv15636 :isa sparser::target :|agent-OR-cause| sparser::mv15634 :object
  sparser::mv15631 :present "PRESENT" :raw-text "target")
 (:var sparser::mv15634 :isa sparser::these :quantifier sparser::mv15632 :word "these")
 (:var sparser::mv15632 :isa sparser::which)
 (:var sparser::mv15631 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
856: "Do any of these regulate IL2?"

                    source-start
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    question-mark
                    end-of-source
("Do any of these regulate IL2?"
 (:var sparser::mv15646 :isa sparser::polar-question :statement sparser::mv15644)
 (:var sparser::mv15644 :isa sparser::regulate :|agent-OR-cause| sparser::mv15642 :object
  sparser::mv15638 :raw-text "regulate")
 (:var sparser::mv15642 :isa sparser::these :quantifier sparser::mv15640 :word "these")
 (:var sparser::mv15640 :isa sparser::any :word "any")
 (:var sparser::mv15638 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    source-start
e5    REGULATE      1 "What regulates STAT3" 5
                    question-mark
                    end-of-source
("What regulates STAT3?"
 (:var sparser::mv15649 :isa sparser::regulate :|agent-OR-cause| sparser::mv15648 :object
  sparser::mv15647 :present "PRESENT" :raw-text "regulates")
 (:var sparser::mv15648 :isa sparser::what)
 (:var sparser::mv15647 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    source-start
e6    INVOLVE       1 "What pathways involve these" 5
                    question-mark
                    end-of-source
("What pathways involve these?"
 (:var sparser::mv15652 :isa sparser::involve :theme sparser::mv15651 :theme sparser::mv15653
  :present "PRESENT")
 (:var sparser::mv15651 :isa sparser::pathway :has-determiner "WHAT" :raw-text "pathways")
 (:var sparser::mv15653 :isa sparser::these :word "these"))

___________________
859: "What are the targets of NG25?"

                    source-start
e14   BE            1 "What are the targets of NG25" 8
                    question-mark
                    end-of-source
("What are the targets of NG25?"
 (:var sparser::mv15656 :isa sparser::be :subject sparser::mv15655 :predicate sparser::mv15658
  :present "PRESENT")
 (:var sparser::mv15655 :isa sparser::what)
 (:var sparser::mv15658 :isa sparser::target-protein :agent sparser::mv15654 :has-determiner "THE"
  :raw-text "targets")
 (:var sparser::mv15654 :isa sparser::drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))

___________________
860: "What is their most likely cellular location?"

                    source-start
e13   BE            1 "What is their most likely cellular location" 8
                    question-mark
                    end-of-source
("What is their most likely cellular location?"
 (:var sparser::mv15663 :isa sparser::be :subject sparser::mv15662 :predicate sparser::mv15669
  :present "PRESENT")
 (:var sparser::mv15662 :isa sparser::what)
 (:var sparser::mv15669 :isa sparser::location-of :theme sparser::mv15664 :predication
  sparser::mv15667 :modifier sparser::mv15668)
 (:var sparser::mv15664 :isa sparser::pronoun/plural :word "their")
 (:var sparser::mv15667 :isa sparser::likely :comparative sparser::mv15665)
 (:var sparser::mv15665 :isa sparser::superlative-quantifier :name "most")
 (:var sparser::mv15668 :isa sparser::cellular :name "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    source-start
e10   BE            1 "Is ERK1 a transcription factor" 7
                    question-mark
                    end-of-source
("Is ERK1 a transcription factor?"
 (:var sparser::mv15674 :isa sparser::polar-question :statement sparser::mv15672)
 (:var sparser::mv15672 :isa sparser::be :subject sparser::mv15670 :predicate sparser::mv15671)
 (:var sparser::mv15670 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
 (:var sparser::mv15671 :isa sparser::transcription-factor :has-determiner "A" :raw-text
  "transcription factor"))

___________________
862: "Is it a kinase?"

                    source-start
e9    BE            1 "Is it a kinase" 5
                    question-mark
                    end-of-source
("Is it a kinase?" (:var sparser::mv15679 :isa sparser::polar-question :statement sparser::mv15675)
 (:var sparser::mv15675 :isa sparser::be :subject sparser::mv15676 :predicate sparser::mv15678)
 (:var sparser::mv15676 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv15678 :isa sparser::kinase :has-determiner "A" :raw-text "kinase"))

___________________
863: "What is PLX-4720?"

                    source-start
e5    BE            1 "What is PLX-4720" 6
                    question-mark
                    end-of-source
("What is PLX-4720?"
 (:var sparser::mv15682 :isa sparser::be :subject sparser::mv15681 :predicate sparser::mv15680
  :present "PRESENT")
 (:var sparser::mv15681 :isa sparser::what)
 (:var sparser::mv15680 :isa sparser::drug :raw-text "PLX-4720" :name "PLX 4720" :uid
  "PCID:24180719"))

___________________
864: "What does it target?"

                    source-start
e7    TARGET        1 "What does it target" 5
                    question-mark
                    end-of-source
("What does it target?"
 (:var sparser::mv15687 :isa sparser::target :object sparser::mv15683 :|agent-OR-cause|
  sparser::mv15685 :present "PRESENT" :raw-text "target")
 (:var sparser::mv15683 :isa sparser::what)
 (:var sparser::mv15685 :isa sparser::pronoun/inanimate :word "it"))

___________________
865: "What genes does STAT3 regulate?"

                    source-start
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    question-mark
                    end-of-source
("What genes does STAT3 regulate?"
 (:var sparser::mv15692 :isa sparser::regulate :object sparser::mv15690 :agent sparser::mv15688
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv15690 :isa sparser::gene :has-determiner "WHAT" :raw-text "genes")
 (:var sparser::mv15688 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
866: "What pathways is it in?"

                    source-start
e10   IN            1 "What pathways is it in" 6
                    question-mark
                    end-of-source
("What pathways is it in?"
 (:var sparser::mv15698 :isa sparser::wh-question :statement sparser::mv15697 :var nil :wh
  sparser::what)
 (:var sparser::mv15697 :isa sparser::in :word "in"))

___________________
867: "What are the targets of PLX-4720?"

                    source-start
e14   BE            1 "What are the targets of PLX-4720" 9
                    question-mark
                    end-of-source
("What are the targets of PLX-4720?"
 (:var sparser::mv15701 :isa sparser::be :subject sparser::mv15700 :predicate sparser::mv15703
  :present "PRESENT")
 (:var sparser::mv15700 :isa sparser::what)
 (:var sparser::mv15703 :isa sparser::target-protein :agent sparser::mv15699 :has-determiner "THE"
  :raw-text "targets")
 (:var sparser::mv15699 :isa sparser::drug :raw-text "PLX-4720" :name "PLX 4720" :uid
  "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    source-start
e10   TARGET        1 "Does it target BRAF" 5
                    question-mark
                    end-of-source
("Does it target BRAF?"
 (:var sparser::mv15713 :isa sparser::polar-question :statement sparser::mv15712)
 (:var sparser::mv15712 :isa sparser::target :|agent-OR-cause| sparser::mv15708 :object
  sparser::mv15711 :raw-text "target")
 (:var sparser::mv15708 :isa sparser::pronoun/inanimate :word "it")
 (:var sparser::mv15711 :isa sparser::protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))

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
 (:var sparser::mv15725 :isa sparser::bio-activate :agent sparser::mv15723 :object sparser::mv15724
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv15723 :isa sparser::protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
 (:var sparser::mv15724 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    source-start
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    end-of-source
("I want to find out how Jak1 activates IL2"
 (:var sparser::mv15731 :isa sparser::want :agent sparser::mv15728 :theme sparser::mv15741 :present
  "PRESENT")
 (:var sparser::mv15728 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv15741 :isa sparser::find-out :agent sparser::mv15728 :statement sparser::mv15738)
 (:var sparser::mv15738 :isa sparser::wh-question :statement sparser::mv15737 :var nil :wh
  sparser::how)
 (:var sparser::mv15737 :isa sparser::bio-activate :agent sparser::mv15726 :object sparser::mv15727
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv15726 :isa sparser::protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
 (:var sparser::mv15727 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    source-start
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    period
                    end-of-source
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:var sparser::mv15747 :isa sparser::want :agent sparser::mv15744 :theme sparser::mv15761 :present
  "PRESENT")
 (:var sparser::mv15744 :isa sparser::interlocutor :name "speaker")
 (:var sparser::mv15761 :isa sparser::find-out :agent sparser::mv15744 :statement sparser::mv15758)
 (:var sparser::mv15758 :isa sparser::wh-question :statement sparser::mv15753 :var nil :wh
  sparser::how)
 (:var sparser::mv15753 :isa sparser::bio-activate :agent sparser::mv15742 :object sparser::mv15754
  :present "PRESENT" :raw-text "activates")
 (:var sparser::mv15742 :isa sparser::protein :raw-text "ERBB3" :uid "UP:P21860" :name
  "ERBB3_HUMAN")
 (:var sparser::mv15754 :isa sparser::protein :cell-type sparser::mv15756 :raw-text "JUN" :uid
  "UP:P05412" :name "JUN_HUMAN")
 (:var sparser::mv15756 :isa sparser::cell-type :cell-line sparser::mv15743)
 (:var sparser::mv15743 :isa sparser::cell-line :name "SKBR3" :uid "EFO:0001236"))

___________________
873: "Let's build a model."

                    source-start
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    period
                    end-of-source
("Let's build a model."
 (:var sparser::mv15766 :isa sparser::explicit-suggestion :suggestion sparser::mv15763 :marker
  sparser::let-as-directive)
 (:var sparser::mv15763 :isa sparser::build :artifact sparser::mv15765 :present "PRESENT")
 (:var sparser::mv15765 :isa sparser::model :has-determiner "A"))

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
 (:var sparser::mv15776 :isa sparser::regulate :agent sparser::mv15775 :object sparser::mv15773
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv15775 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv15773 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    source-start
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    question-mark
                    end-of-source
("What positively regulates IL2?"
 (:var sparser::mv15777 :isa sparser::upregulate :|agent-OR-cause| sparser::mv15779 :object
  sparser::mv15778 :present "PRESENT" :raw-text "positively regulates")
 (:var sparser::mv15779 :isa sparser::what)
 (:var sparser::mv15778 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    source-start
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    question-mark
                    end-of-source
("What can have the effect of activation on STAT3?"
 (:var sparser::mv15783 :isa sparser::have :possessor sparser::mv15781 :thing-possessed
  sparser::mv15785 :modal sparser::mv15782)
 (:var sparser::mv15781 :isa sparser::what)
 (:var sparser::mv15785 :isa sparser::effect :object sparser::mv15780 :affected-process
  sparser::mv15788 :has-determiner "THE" :raw-text "effect")
 (:var sparser::mv15780 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN")
 (:var sparser::mv15788 :isa sparser::bio-activate :raw-text "activation")
 (:var sparser::mv15782 :isa sparser::can))

___________________
878: "Are there any drugs for IL10?"

                    source-start
e15   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    question-mark
                    end-of-source
("Are there any drugs for IL10?"
 (:var sparser::mv15801 :isa sparser::polar-question :statement sparser::mv15799)
 (:var sparser::mv15799 :isa sparser::there-exists :value sparser::mv15797 :predicate
  sparser::mv15794)
 (:var sparser::mv15797 :isa sparser::drug :target sparser::mv15792 :quantifier sparser::mv15796
  :raw-text "drugs")
 (:var sparser::mv15792 :isa sparser::protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
 (:var sparser::mv15796 :isa sparser::any :word "any")
 (:var sparser::mv15794 :isa sparser::syntactic-there))

___________________
879: "Which tissues express STAT3?"

                    source-start
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    question-mark
                    end-of-source
("Which tissues express STAT3?"
 (:var sparser::mv15805 :isa sparser::gene-transcript-express :agent sparser::mv15804 :object
  sparser::mv15802 :present "PRESENT" :raw-text "express")
 (:var sparser::mv15804 :isa sparser::tissue :has-determiner "WHICH")
 (:var sparser::mv15802 :isa sparser::protein :raw-text "STAT3" :uid "UP:P40763" :name
  "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    source-start
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    question-mark
                    end-of-source
("How does MEK1 regulate ERK1?"
 (:var sparser::mv15810 :isa sparser::regulate :manner sparser::mv15808 :agent sparser::mv15806
  :object sparser::mv15807 :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv15808 :isa sparser::how)
 (:var sparser::mv15806 :isa sparser::protein :raw-text "MEK1" :uid "UP:Q02750" :name
  "MP2K1_HUMAN")
 (:var sparser::mv15807 :isa sparser::protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    source-start
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    question-mark
                    end-of-source
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:var sparser::mv15815 :isa sparser::be :subject sparser::mv15814 :predicate sparser::mv15811
  :present "PRESENT")
 (:var sparser::mv15814 :isa sparser::what)
 (:var sparser::mv15811 :isa sparser::transcription-factor :predication sparser::mv15817 :raw-text
  "transcription factors")
 (:var sparser::mv15817 :isa sparser::binding :binder sparser::mv15811 :that-rel t :direct-bindee
  sparser::mv15820 :present "PRESENT" :raw-text "bind")
 (:var sparser::mv15820 :isa sparser::gene :has-determiner "THE" :expresses sparser::mv15821
  :raw-text "genes")
 (:var sparser::mv15821 :isa sparser::collection :raw-text "IL15 and IL2" :type sparser::protein
  :number 2 :items (sparser::mv15812 sparser::mv15813))
 (:var sparser::mv15812 :isa sparser::protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
 (:var sparser::mv15813 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    source-start
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    question-mark
                    end-of-source
("What kinases regulate the IL15 and IL2?"
 (:var sparser::mv15826 :isa sparser::regulate :agent sparser::mv15825 :object sparser::mv15829
  :present "PRESENT" :raw-text "regulate")
 (:var sparser::mv15825 :isa sparser::kinase :has-determiner "WHAT" :raw-text "kinases")
 (:var sparser::mv15829 :isa sparser::collection :has-determiner "THE" :raw-text "IL15 and IL2"
  :type sparser::protein :number 2 :items (sparser::mv15822 sparser::mv15823))
 (:var sparser::mv15822 :isa sparser::protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
 (:var sparser::mv15823 :isa sparser::protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))

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
 (:var sparser::mv15854 :isa sparser::be :subject sparser::mv15853 :predicate sparser::mv15852
  :present "PRESENT")
 (:var sparser::mv15853 :isa sparser::what)
 (:var sparser::mv15852 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    source-start
e9    BE            1 "Is MAP3K7 a protein" 8
                    question-mark
                    end-of-source
("Is MAP3K7 a protein?"
 (:var sparser::mv15859 :isa sparser::polar-question :statement sparser::mv15856)
 (:var sparser::mv15856 :isa sparser::be :subject sparser::mv15855 :predicate sparser::mv15858)
 (:var sparser::mv15855 :isa sparser::protein :raw-text "MAP3K7" :uid "UP:O43318" :name
  "M3K7_HUMAN")
 (:var sparser::mv15858 :isa sparser::protein :has-determiner "A" :raw-text "protein"))

___________________
887: "What does SMAD2 transcribe?"

                    source-start
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    question-mark
                    end-of-source
("What does SMAD2 transcribe?"
 (:var sparser::mv15863 :isa sparser::transcribe :object sparser::mv15861 :agent sparser::mv15860
  :present "PRESENT" :raw-text "transcribe")
 (:var sparser::mv15861 :isa sparser::what)
 (:var sparser::mv15860 :isa sparser::protein :raw-text "SMAD2" :uid "UP:Q15796" :name
  "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    source-start
e13   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    question-mark
                    end-of-source
("Are there drugs for IL10?"
 (:var sparser::mv15872 :isa sparser::polar-question :statement sparser::mv15870)
 (:var sparser::mv15870 :isa sparser::there-exists :value sparser::mv15868 :predicate
  sparser::mv15866)
 (:var sparser::mv15868 :isa sparser::drug :target sparser::mv15864 :raw-text "drugs")
 (:var sparser::mv15864 :isa sparser::protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
 (:var sparser::mv15866 :isa sparser::syntactic-there))

___________________
889: "What relations in the literature match tofacitinib?"

                    source-start
e15   IN            1 "What relations in the literature match tofacitinib" 8
                    question-mark
                    end-of-source
("What relations in the literature match tofacitinib?"
 (:var sparser::mv15882 :isa sparser::wh-question :statement sparser::mv15881 :var nil :wh
  sparser::what)
 (:var sparser::mv15881 :isa sparser::prepositional-phrase :pobj sparser::mv15880 :prep "IN")
 (:var sparser::mv15880 :isa sparser::drug :has-determiner "THE" :modifier sparser::mv15877
  :modifier sparser::mv15879 :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
 (:var sparser::mv15877 :isa sparser::literature)
 (:var sparser::mv15879 :isa sparser::match-endurant))

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
