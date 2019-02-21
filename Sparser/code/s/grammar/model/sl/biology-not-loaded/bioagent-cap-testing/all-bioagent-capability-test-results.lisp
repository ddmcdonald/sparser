

___________________
0: "What genes does mir-128 regulate?"

                    SOURCE-START
e10   REGULATE      1 "What genes does mir-128 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does mir-128 regulate?"
 (:VAR MV5 :ISA REGULATE :OBJECT MV2 :AGENT MV6 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6 :ISA BIO-ENTITY :NAME "mir-128"))

___________________
1: "what transcription factors does miR-200c regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c regulate?"
 (:VAR MV11 :ISA REGULATE :OBJECT MV7 :AGENT MV8 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV7 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV8 :ISA MICRO-RNA :RAW-TEXT "miR-200c" :NAME "MIR200C" :UID
  "NCIT:C82157"))

___________________
2: "Tell me about stat3's involvement in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me about stat3's involvement in apoptosis" 11
                    END-OF-SOURCE
("Tell me about stat3's involvement in apoptosis"
 (:VAR MV13 :ISA TELL :THEME MV18 :BENEFICIARY MV14 :PRESENT "PRESENT")
 (:VAR MV18 :ISA INVOLVE :THEME MV20 :PARTICIPANT MV17)
 (:VAR MV20 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV17 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV14 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
3: "What are the genes that have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e30   OF            1 "What are the genes that have strong evidence of being regulated by mir-122-5p" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV39 :ISA WH-QUESTION :STATEMENT MV38 :WH WHAT)
 (:VAR MV38 :ISA PREPOSITIONAL-PHRASE :COMP MV34 :PREP #<ref-category OF>)
 (:VAR MV34 :ISA REGULATE :AGENT MV23 :PROGRESSIVE MV33 :RAW-TEXT "regulated")
 (:VAR MV23 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID
  "MIMAT0000421")
 (:VAR MV33 :ISA BE))

___________________
4: "What is stat3's involvement in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's involvement in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's involvement in apoptosis?"
 (:VAR MV42 :ISA BE :SUBJECT MV41 :PREDICATE MV44 :PRESENT "PRESENT")
 (:VAR MV41 :ISA WHAT) (:VAR MV44 :ISA INVOLVE :THEME MV46 :PARTICIPANT MV43)
 (:VAR MV46 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV43 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
5: "What is stat3's role in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's role in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptosis?"
 (:VAR MV50 :ISA BE :SUBJECT MV49 :PREDICATE MV52 :PRESENT "PRESENT")
 (:VAR MV49 :ISA WHAT) (:VAR MV52 :ISA ROLE :PROCESS MV54 :PARTICIPANT MV51)
 (:VAR MV54 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV51 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
6: "What is stat3's role in apoptotic regulation?"

                    SOURCE-START
e17   BE            1 "What is stat3's role in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptotic regulation?"
 (:VAR MV58 :ISA BE :SUBJECT MV57 :PREDICATE MV60 :PRESENT "PRESENT")
 (:VAR MV57 :ISA WHAT) (:VAR MV60 :ISA ROLE :PROCESS MV64 :PARTICIPANT MV59)
 (:VAR MV64 :ISA REGULATE :AGENT MV62 :RAW-TEXT "regulation")
 (:VAR MV62 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV59 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
7: "What is the evidence that miR-148a-3p targets DNMT1?"

                    SOURCE-START
e19   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:VAR MV69 :ISA BE :SUBJECT MV68 :PREDICATE MV75 :PRESENT "PRESENT")
 (:VAR MV68 :ISA WHAT)
 (:VAR MV75 :ISA EVIDENCE :STATEMENT MV74 :HAS-DETERMINER "THE")
 (:VAR MV74 :ISA TARGET :AGENT MV66 :OBJECT MV67 :PRESENT "PRESENT" :RAW-TEXT
  "targets")
 (:VAR MV66 :ISA MICRO-RNA :RAW-TEXT "miR-148a-3p" :NAME "microRNA 148a-3p"
  :UID "MIMAT0000243")
 (:VAR MV67 :ISA PROTEIN :RAW-TEXT "DNMT1" :UID "UP:P26358" :NAME
  "DNMT1_HUMAN"))

___________________
8: "what transcription factors does miR-124-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-124-3p regulate?"
 (:VAR MV80 :ISA REGULATE :OBJECT MV76 :AGENT MV77 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV76 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV77 :ISA MICRO-RNA :RAW-TEXT "miR-124-3p" :NAME "microRNA 124-3p" :UID
  "MIMAT0000422"))

___________________
9: "what transcription factors does miR-200c-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c-3p regulate?"
 (:VAR MV85 :ISA REGULATE :OBJECT MV81 :AGENT MV82 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV81 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV82 :ISA MICRO-RNA :RAW-TEXT "miR-200c-3p" :NAME "microRNA 200c-3p"
  :UID "MIMAT0000617"))

___________________
10: "What is the mutation significance of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian cancer?"
 (:VAR MV89 :ISA BE :SUBJECT MV88 :PREDICATE MV92 :PRESENT "PRESENT")
 (:VAR MV88 :ISA WHAT)
 (:VAR MV92 :ISA SIGNIFICANCE :AGENT MV86 :HAS-DETERMINER "THE" :MODIFIER MV91)
 (:VAR MV86 :ISA PROTEIN :CONTEXT MV87 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME
  "P53_HUMAN")
 (:VAR MV87 :ISA CANCER :UID "TS-1223")
 (:VAR MV91 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
11: "What is the mutation significance of TP53 for ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for ovarian cancer?"
 (:VAR MV100 :ISA BE :SUBJECT MV99 :PREDICATE MV103 :PRESENT "PRESENT")
 (:VAR MV99 :ISA WHAT)
 (:VAR MV103 :ISA SIGNIFICANCE :RESULT MV98 :AGENT MV97 :HAS-DETERMINER "THE"
  :MODIFIER MV102)
 (:VAR MV98 :ISA CANCER :UID "TS-1223")
 (:VAR MV97 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV102 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
12: "What are synonyms for BRAF?"

                    SOURCE-START
e9    FOR           1 "What are synonyms for BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for BRAF?"
 (:VAR MV114 :ISA WH-QUESTION :STATEMENT MV113 :WH WHAT)
 (:VAR MV113 :ISA PREPOSITIONAL-PHRASE :POBJ MV112 :PREP "FOR")
 (:VAR MV112 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
13: "What are some genes that are mutated in breast cancer?"

                    SOURCE-START
e20   BE            1 "What are some genes that are mutated in breast cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are mutated in breast cancer?"
 (:VAR MV117 :ISA BE :SUBJECT MV116 :PREDICATE MV119 :PRESENT "PRESENT")
 (:VAR MV116 :ISA WHAT)
 (:VAR MV119 :ISA GENE :PREDICATION MV124 :QUANTIFIER MV118 :RAW-TEXT "genes")
 (:VAR MV124 :ISA MUTATION :OBJECT MV119 :THAT-REL T :CONTEXT MV115 :PRESENT
  "PRESENT" :RAW-TEXT "mutated")
 (:VAR MV115 :ISA CANCER :UID "TS-0591") (:VAR MV118 :ISA SOME :WORD "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    SOURCE-START
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are mutated in breast cancer?"
 (:VAR MV132 :ISA MUTATION :OBJECT MV128 :CONTEXT MV126 :PRESENT "PRESENT"
  :RAW-TEXT "mutated")
 (:VAR MV128 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV126 :ISA CANCER :UID "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S221 activate MAP2K2?"
 (:VAR MV145 :ISA POLAR-QUESTION :STATEMENT MV143)
 (:VAR MV143 :ISA BIO-ACTIVATE :AGENT MV136 :OBJECT MV134 :RAW-TEXT "activate")
 (:VAR MV136 :ISA PHOSPHORYLATE :SITE MV142 :RAW-TEXT "phosphorylation")
 (:VAR MV142 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S221" :POSITION MV140
  :AMINO-ACID MV139)
 (:VAR MV140 :ISA NUMBER :VALUE 221)
 (:VAR MV139 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV134 :ISA PROTEIN :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S222 activate MAP2K1?"
 (:VAR MV157 :ISA POLAR-QUESTION :STATEMENT MV155)
 (:VAR MV155 :ISA BIO-ACTIVATE :AGENT MV148 :OBJECT MV146 :RAW-TEXT "activate")
 (:VAR MV148 :ISA PHOSPHORYLATE :SITE MV154 :RAW-TEXT "phosphorylation")
 (:VAR MV154 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S222" :POSITION MV152
  :AMINO-ACID MV151)
 (:VAR MV152 :ISA NUMBER :VALUE 222)
 (:VAR MV151 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV146 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    SOURCE-START
e12   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    END-OF-SOURCE
("Simulate the MAP2K1-MAPK1 complex"
 (:VAR MV160 :ISA SIMULATE :OBJECT MV164 :PRESENT "PRESENT" :RAW-TEXT
  "Simulate")
 (:VAR MV164 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV159 :COMPONENT MV158)
 (:VAR MV159 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV158 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
18: "What are the members of ERK?"

                    SOURCE-START
e12   BE            1 "What are the members of ERK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of ERK?"
 (:VAR MV166 :ISA BE :SUBJECT MV165 :PREDICATE MV168 :PRESENT "PRESENT")
 (:VAR MV165 :ISA WHAT)
 (:VAR MV168 :ISA MEMBER :SET MV170 :HAS-DETERMINER "THE")
 (:VAR MV170 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
19: "What are the members of MEK?"

                    SOURCE-START
e12   BE            1 "What are the members of MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of MEK?"
 (:VAR MV173 :ISA BE :SUBJECT MV172 :PREDICATE MV175 :PRESENT "PRESENT")
 (:VAR MV172 :ISA WHAT)
 (:VAR MV175 :ISA MEMBER :SET MV177 :HAS-DETERMINER "THE")
 (:VAR MV177 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
20: "What are the members of RAF?"

                    SOURCE-START
e12   BE            1 "What are the members of RAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAF?"
 (:VAR MV180 :ISA BE :SUBJECT MV179 :PREDICATE MV182 :PRESENT "PRESENT")
 (:VAR MV179 :ISA WHAT)
 (:VAR MV182 :ISA MEMBER :SET MV184 :HAS-DETERMINER "THE")
 (:VAR MV184 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
21: "What are the members of the RAF family?"

                    SOURCE-START
e18   BE            1 "What are the members of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of the RAF family?"
 (:VAR MV187 :ISA BE :SUBJECT MV186 :PREDICATE MV189 :PRESENT "PRESENT")
 (:VAR MV186 :ISA WHAT)
 (:VAR MV189 :ISA MEMBER :SET MV195 :HAS-DETERMINER "THE")
 (:VAR MV195 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
22: "What are the members of the RAS family?"

                    SOURCE-START
e16   BE            1 "What are the members of the RAS family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of the RAS family?"
 (:VAR MV199 :ISA BE :SUBJECT MV198 :PREDICATE MV201 :PRESENT "PRESENT")
 (:VAR MV198 :ISA WHAT)
 (:VAR MV201 :ISA MEMBER :SET MV197 :HAS-DETERMINER "THE")
 (:VAR MV197 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAS family"
  :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663"))

___________________
23: "What is another name for BRAF?"

                    SOURCE-START
e13   BE            1 "What is another name for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is another name for BRAF?"
 (:VAR MV206 :ISA BE :SUBJECT MV205 :PREDICATE MV209 :PRESENT "PRESENT")
 (:VAR MV205 :ISA WHAT)
 (:VAR MV209 :ISA HAS-NAME :ITEM MV212 :QUANTIFIER MV207)
 (:VAR MV212 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV207 :ISA ANOTHER :WORD "another"))

___________________
24: "What is another name for MAP2K1?"

                    SOURCE-START
e14   BE            1 "What is another name for MAP2K1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is another name for MAP2K1?"
 (:VAR MV216 :ISA BE :SUBJECT MV215 :PREDICATE MV219 :PRESENT "PRESENT")
 (:VAR MV215 :ISA WHAT)
 (:VAR MV219 :ISA HAS-NAME :ITEM MV214 :QUANTIFIER MV217)
 (:VAR MV214 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV217 :ISA ANOTHER :WORD "another"))

___________________
25: "How does STAT3 affect c-fos"

                    SOURCE-START
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    END-OF-SOURCE
("How does STAT3 affect c-fos"
 (:VAR MV227 :ISA AFFECT :MANNER MV225 :AGENT MV223 :OBJECT MV224 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV225 :ISA HOW)
 (:VAR MV223 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV224 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    SOURCE-START
e13   LIST          1 "List some genes regulated by elk1" 8
                    END-OF-SOURCE
("List some genes regulated by elk1"
 (:VAR MV228 :ISA LIST :THEME MV230 :PRESENT "PRESENT")
 (:VAR MV230 :ISA GENE :PREDICATION MV231 :QUANTIFIER MV229 :RAW-TEXT "genes")
 (:VAR MV231 :ISA REGULATE :OBJECT MV230 :AGENT MV233 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV233 :ISA PROTEIN :VARIANT-NUMBER MV235 :RAW-TEXT "elk" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV235 :ISA NUMBER :VALUE 1) (:VAR MV229 :ISA SOME :WORD "some"))

___________________
27: "List some of the genes regulated by elk1"

                    SOURCE-START
e19   LIST          1 "List some of the genes regulated by elk1" 10
                    END-OF-SOURCE
("List some of the genes regulated by elk1"
 (:VAR MV237 :ISA LIST :THEME MV241 :PRESENT "PRESENT")
 (:VAR MV241 :ISA GENE :PREDICATION MV242 :QUANTIFIER MV238 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV242 :ISA REGULATE :OBJECT MV241 :AGENT MV244 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV244 :ISA PROTEIN :VARIANT-NUMBER MV246 :RAW-TEXT "elk" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV246 :ISA NUMBER :VALUE 1) (:VAR MV238 :ISA SOME :WORD "some"))

___________________
28: "List the genes regulated by elk1"

                    SOURCE-START
e14   LIST          1 "List the genes regulated by elk1" 8
                    END-OF-SOURCE
("List the genes regulated by elk1"
 (:VAR MV250 :ISA LIST :THEME MV252 :PRESENT "PRESENT")
 (:VAR MV252 :ISA GENE :PREDICATION MV253 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV253 :ISA REGULATE :OBJECT MV252 :AGENT MV255 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV255 :ISA PROTEIN :VARIANT-NUMBER MV257 :RAW-TEXT "elk" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV257 :ISA NUMBER :VALUE 1))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    SOURCE-START
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of AKT1 and BRAF?"
 (:VAR MV261 :ISA BE :SUBJECT MV260 :PREDICATE MV266 :PRESENT "PRESENT")
 (:VAR MV260 :ISA WHAT)
 (:VAR MV266 :ISA REGULATOR :THEME MV270 :HAS-DETERMINER "THE" :PREDICATION
  MV263 :CONTEXT MV264 :RAW-TEXT "regulators")
 (:VAR MV270 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV259 MV269))
 (:VAR MV259 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV269 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV263 :ISA COMMON)
 (:VAR MV264 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT and BRAF?"
 (:VAR MV273 :ISA BE :SUBJECT MV272 :PREDICATE MV276 :PRESENT "PRESENT")
 (:VAR MV272 :ISA WHAT)
 (:VAR MV276 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV281 :HAS-DETERMINER
  "THE" :PREDICATION MV275 :RAW-TEXT "upstreams")
 (:VAR MV281 :ISA COLLECTION :RAW-TEXT "AKT and BRAF" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV278 MV280))
 (:VAR MV278 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "AKT3_HUMAN") (:UID "UP:Q9Y243"))
   (PROTEIN (:NAME "AKT2_HUMAN") (:UID "UP:P31751"))
   (PROTEIN (:NAME "AKT1_HUMAN") (:UID "UP:P31749")))
  :UID "FA:03066")
 (:VAR MV280 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV275 :ISA COMMON))

___________________
31: "What are the common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and BRAF?"
 (:VAR MV285 :ISA BE :SUBJECT MV284 :PREDICATE MV288 :PRESENT "PRESENT")
 (:VAR MV284 :ISA WHAT)
 (:VAR MV288 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV292 :HAS-DETERMINER
  "THE" :PREDICATION MV287 :RAW-TEXT "upstreams")
 (:VAR MV292 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV283 MV291))
 (:VAR MV283 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV291 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV287 :ISA COMMON))

___________________
32: "What are the genes that smad2 regulates?"

                    SOURCE-START
e16   BE            1 "What are the genes that smad2 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that smad2 regulates?"
 (:VAR MV296 :ISA BE :SUBJECT MV295 :PREDICATE MV298 :PRESENT "PRESENT")
 (:VAR MV295 :ISA WHAT)
 (:VAR MV298 :ISA GENE :PREDICATION MV300 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV300 :ISA REGULATE :OBJECT MV298 :THAT-REL T :AGENT MV294 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV294 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV305 :ISA BE :SUBJECT MV304 :PREDICATE MV307 :PRESENT "PRESENT")
 (:VAR MV304 :ISA WHAT)
 (:VAR MV307 :ISA MICRO-RNA :PREDICATION MV309 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV309 :ISA REGULATE :AGENT MV307 :THAT-REL T :OBJECT MV313 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV313 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE
  PROTEIN :NUMBER 5 :ITEMS (MV310 MV311 MV301 MV302 MV303))
 (:VAR MV310 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV311 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV301 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV302 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV303 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    SOURCE-START
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:VAR MV316 :ISA BE :SUBJECT MV315 :PREDICATE MV318 :PRESENT "PRESENT")
 (:VAR MV315 :ISA WHAT)
 (:VAR MV318 :ISA MICRO-RNA :PREDICATION MV320 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV320 :ISA REGULATE :AGENT MV318 :THAT-REL T :OBJECT MV324 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV324 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, and STAT3" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV321 MV322 MV314))
 (:VAR MV321 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV322 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV314 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "What are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SRF?"
 (:VAR MV326 :ISA BE :SUBJECT MV325 :PREDICATE MV328 :PRESENT "PRESENT")
 (:VAR MV325 :ISA WHAT)
 (:VAR MV328 :ISA REGULATOR :THEME MV330 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV330 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate in the liver?"
 (:VAR MV335 :ISA REGULATE :OBJECT MV333 :AGENT MV332 :ORGAN MV338 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV333 :ISA WHAT)
 (:VAR MV332 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV338 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
37: "What does it regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does it regulate in the liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it regulate in the liver?"
 (:VAR MV343 :ISA REGULATE :OBJECT MV340 :AGENT-OR-CAUSE MV342 :ORGAN MV346
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV340 :ISA WHAT) (:VAR MV342 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV346 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMAD2?"
 (:VAR MV354 :ISA REGULATE :OBJECT MV350 :AGENT MV348 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV350 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV348 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMDA2?"
 (:VAR MV364 :ISA REGULATE :OBJECT MV357 :AGENT MV363 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV357 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV363 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SRF?"
 (:VAR MV372 :ISA REGULATE :OBJECT MV367 :AGENT MV371 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV367 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV371 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
41: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV378 :ISA REGULATE :OBJECT MV376 :AGENT MV374 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV376 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV374 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
42: "Which of these are regulated by SMAD2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMAD2?"
 (:VAR MV386 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV382 :AGENT MV379
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV382 :ISA THESE :QUANTIFIER MV380 :WORD "these")
 (:VAR MV380 :ISA WHICH)
 (:VAR MV379 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
43: "Which of these are regulated by SMDA2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMDA2?"
 (:VAR MV396 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV392 :AGENT MV389
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV392 :ISA THESE :QUANTIFIER MV390 :WORD "these")
 (:VAR MV390 :ISA WHICH) (:VAR MV389 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
44: "Which pathways use these?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use these?"
 (:VAR MV402 :ISA BIO-USE :AGENT MV400 :OBJECT MV403 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV400 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV403 :ISA THESE :WORD "these"))

___________________
45: "Where does STAT3 regulate the expression of c-fos?"

                    SOURCE-START
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Where does STAT3 regulate the expression of c-fos?"
 (:VAR MV408 :ISA REGULATE :LOCATION MV406 :AGENT MV404 :AFFECTED-PROCESS MV410
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV406 :ISA WHERE)
 (:VAR MV404 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV410 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV405 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV405 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
46: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e36   TELL          1 "can you tell me " 5
e32   TRANSCRIPTION-FACTOR  5 "all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE
                    SOURCE-START
e36   S             1 "can you tell me " 5
e32   NP            5 "all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE


___________________
47: "can you tell me which transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("can you tell me which transcription factors are shared by elk1 and srf"
 (:VAR MV449 :ISA POLAR-QUESTION :STATEMENT MV438)
 (:VAR MV438 :ISA TELL :AGENT MV437 :THEME MV447 :BENEFICIARY MV439 :MODAL
  "CAN")
 (:VAR MV437 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV447 :ISA SHARE :OBJECT MV434 :PARTICIPANT MV446 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV434 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV446 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV435 MV445))
 (:VAR MV435 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV445 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV439 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
48: "what are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "what are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what are the regulators of SRF?"
 (:VAR MV451 :ISA BE :SUBJECT MV450 :PREDICATE MV453 :PRESENT "PRESENT")
 (:VAR MV450 :ISA WHAT)
 (:VAR MV453 :ISA REGULATOR :THEME MV455 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV455 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
49: "what does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "what does stat regulate" 5
                    END-OF-SOURCE
("what does stat regulate"
 (:VAR MV460 :ISA REGULATE :OBJECT MV457 :AGENT MV459 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV457 :ISA WHAT)
 (:VAR MV459 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
50: "what is erbb?"

                    SOURCE-START
e4    BE            1 "what is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("what is erbb?"
 (:VAR MV462 :ISA BE :SUBJECT MV461 :PREDICATE MV463 :PRESENT "PRESENT")
 (:VAR MV461 :ISA WHAT)
 (:VAR MV463 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
51: "Is STAT3 involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?"
 (:VAR MV471 :ISA POLAR-QUESTION :STATEMENT MV470)
 (:VAR MV470 :ISA INVOLVE :PARTICIPANT MV464 :THEME MV468 :PAST "PAST")
 (:VAR MV464 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV468 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
52: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?"
 (:VAR MV481 :ISA POLAR-QUESTION :STATEMENT MV480)
 (:VAR MV480 :ISA INVOLVE :PARTICIPANT MV472 :THEME MV478 :PAST "PAST")
 (:VAR MV472 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV478 :ISA REGULATE :AGENT MV476 :RAW-TEXT "regulation")
 (:VAR MV476 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
53: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?"
 (:VAR MV490 :ISA POLAR-QUESTION :STATEMENT MV489)
 (:VAR MV489 :ISA INVOLVE :PARTICIPANT MV482 :THEME MV486 :PAST "PAST")
 (:VAR MV482 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV486 :ISA REGULATE :AFFECTED-PROCESS MV487 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV487 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
54: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV499 :ISA REGULATE :OBJECT MV495 :AGENT MV491 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV495 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV494 :RAW-TEXT
  "genes")
 (:VAR MV494 :ISA APOPTOTIC)
 (:VAR MV491 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
55: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes"
 (:VAR MV501 :ISA LIST :THEME MV505 :PRESENT "PRESENT")
 (:VAR MV505 :ISA GENE :HAS-DETERMINER "THE" :MODIFIER MV504 :RAW-TEXT "genes")
 (:VAR MV504 :ISA APOPTOTIC))

___________________
56: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV515 :ISA INVOLVE :THEME MV508 :THEME MV514 :PRESENT "PRESENT")
 (:VAR MV508 :ISA GENE :PREDICATION MV509 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV509 :ISA REGULATE :OBJECT MV508 :AGENT MV506 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV506 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV514 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
57: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3"
 (:VAR MV519 :ISA LIST :THEME MV520 :PRESENT "PRESENT")
 (:VAR MV520 :ISA GENE :PREDICATION MV521 :RAW-TEXT "genes")
 (:VAR MV521 :ISA REGULATE :OBJECT MV520 :AGENT MV518 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV518 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
58: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV530 :ISA INVOLVE :THEME MV525 :THEME MV529 :PRESENT "PRESENT")
 (:VAR MV525 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV529 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
59: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV541 :ISA INVOLVE :THEME MV534 :THEME MV540 :PRESENT "PRESENT")
 (:VAR MV534 :ISA GENE :PREDICATION MV536 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV536 :ISA REGULATE :OBJECT MV534 :THAT-REL T :AGENT MV532 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV532 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV540 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
60: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3"
 (:VAR MV544 :ISA LIST :THEME MV546 :PRESENT "PRESENT")
 (:VAR MV546 :ISA GENE :PREDICATION MV547 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV547 :ISA REGULATE :OBJECT MV546 :AGENT MV543 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV543 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
61: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes"
 (:VAR MV551 :ISA LIST :THEME MV554 :PRESENT "PRESENT")
 (:VAR MV554 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV553 :RAW-TEXT
  "genes")
 (:VAR MV553 :ISA REGULATE :OBJECT MV554 :AGENT MV550 :RAW-TEXT "regulated")
 (:VAR MV550 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
62: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV561 :ISA REGULATE :OBJECT MV557 :AGENT MV555 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV557 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV555 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
63: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV569 :ISA INVOLVE :THEME MV564 :THEME MV568 :PRESENT "PRESENT")
 (:VAR MV564 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV568 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
64: "What STAT3 regulated genes are involved in aptosis"

                    SOURCE-START
e17   IN            1 "What STAT3 regulated genes are involved in aptosis" 10
                    END-OF-SOURCE
("What STAT3 regulated genes are involved in aptosis"
 (:VAR MV581 :ISA WH-QUESTION :STATEMENT MV580 :VAR NIL :WH WHAT)
 (:VAR MV580 :ISA PREPOSITIONAL-PHRASE :POBJ MV578 :PREP "IN")
 (:VAR MV578 :ISA APTOSIS))

___________________
65: "Let me know if any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e31   LET           1 "Let me know if any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know if any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV583 :ISA LET :COMPLEMENT MV600 :PRESENT "PRESENT")
 (:VAR MV600 :ISA KNOW :AGENT MV584 :STATEMENT MV599 :PRESENT "PRESENT")
 (:VAR MV584 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV599 :ISA WH-QUESTION :STATEMENT MV596 :WH IF)
 (:VAR MV596 :ISA INVOLVE :THEME MV590 :THEME MV595 :PRESENT "PRESENT")
 (:VAR MV590 :ISA GENE :QUANTIFIER MV587 :PREDICATION MV591 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV587 :ISA ANY :WORD "any")
 (:VAR MV591 :ISA REGULATE :OBJECT MV590 :AGENT MV582 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV582 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV595 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
66: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV602 :ISA LET :COMPLEMENT MV620 :PRESENT "PRESENT")
 (:VAR MV620 :ISA KNOW :AGENT MV603 :STATEMENT MV619 :PRESENT "PRESENT")
 (:VAR MV603 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV619 :ISA WH-QUESTION :STATEMENT MV616 :WH WHETHER)
 (:VAR MV616 :ISA INVOLVE :THEME MV610 :THEME MV615 :PRESENT "PRESENT")
 (:VAR MV610 :ISA GENE :QUANTIFIER MV607 :PREDICATION MV611 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV607 :ISA ANY :WORD "any")
 (:VAR MV611 :ISA REGULATE :OBJECT MV610 :AGENT MV601 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV601 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV615 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
67: "Look up which genes targeted by stat3 are involved in apoptosis"

                    SOURCE-START
e16   LOOK-UP       1 "Look up " 3
e5    WHICH         3 "which " 4
e23   INVOLVE       4 "genes targeted by stat3 are involved in apoptosis" 13
                    END-OF-SOURCE
                    SOURCE-START
e16   VG            1 "Look up " 3
e5    WH-PRONOUN    3 "which " 4
e23   S             4 "genes targeted by stat3 are involved in apoptosis" 13
                    END-OF-SOURCE


___________________
68: "Tell me how stat3 is involved in apoptosis"

                    SOURCE-START
e15   TELL          1 "Tell me " 3
e14   INVOLVE       3 "how stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
                    SOURCE-START
e15   VP            1 "Tell me " 3
e14   HOWCOMP       3 "how stat3 is involved in apoptosis" 10
                    END-OF-SOURCE


___________________
69: "Tell me if stat3 is involved in apoptosis"

                    SOURCE-START
e16   TELL          1 "Tell me if stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me if stat3 is involved in apoptosis"
 (:VAR MV649 :ISA TELL :THEME MV658 :BENEFICIARY MV650 :PRESENT "PRESENT")
 (:VAR MV658 :ISA WH-QUESTION :STATEMENT MV656 :WH IF)
 (:VAR MV656 :ISA INVOLVE :THEME MV648 :THEME MV655 :PRESENT "PRESENT")
 (:VAR MV648 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV655 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV650 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
70: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV660 :ISA TELL :THEME MV670 :BENEFICIARY MV661 :PRESENT "PRESENT")
 (:VAR MV670 :ISA WH-QUESTION :STATEMENT MV668 :WH WHETHER)
 (:VAR MV668 :ISA INVOLVE :THEME MV659 :THEME MV667 :PRESENT "PRESENT")
 (:VAR MV659 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV667 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV661 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV673 :ISA BE :SUBJECT MV672 :PREDICATE MV675 :PRESENT "PRESENT")
 (:VAR MV672 :ISA WHAT)
 (:VAR MV675 :ISA GENE :PREDICATION MV681 :EXPRESSES MV671 :PREDICATION MV674
  :RAW-TEXT "genes")
 (:VAR MV681 :ISA INVOLVE :THEME MV675 :THAT-REL T :THEME MV680 :PRESENT
  "PRESENT")
 (:VAR MV680 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV671 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV674 :ISA REGULATE :OBJECT MV675 :RAW-TEXT "regulated"))

___________________
72: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV685 :ISA BE :SUBJECT MV684 :PREDICATE MV687 :PRESENT "PRESENT")
 (:VAR MV684 :ISA WHAT)
 (:VAR MV687 :ISA GENE :PREDICATION MV693 :EXPRESSES MV683 :PREDICATION MV686
  :RAW-TEXT "genes")
 (:VAR MV693 :ISA INVOLVE :THEME MV687 :THAT-REL T :THEME MV692 :PRESENT
  "PRESENT")
 (:VAR MV692 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV683 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV686 :ISA REGULATE :OBJECT MV687 :RAW-TEXT "regulated"))

___________________
73: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV705 :ISA INVOLVE :THEME MV698 :THEME MV704 :PRESENT "PRESENT")
 (:VAR MV698 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV695 :HAS-DETERMINER
  "WHAT" :MODIFIER MV697 :RAW-TEXT "downstream")
 (:VAR MV695 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV697 :ISA GENE :RAW-TEXT "genes")
 (:VAR MV704 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
74: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV710 :ISA BE :SUBJECT MV709 :PREDICATE MV712 :PRESENT "PRESENT")
 (:VAR MV709 :ISA WHAT)
 (:VAR MV712 :ISA INVOLVE :THEME MV717 :PARTICIPANT MV708 :HAS-DETERMINER
  "THE")
 (:VAR MV717 :ISA REGULATE :AGENT MV715 :RAW-TEXT "regulation")
 (:VAR MV715 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV708 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
75: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV722 :ISA INVOLVE :PARTICIPANT MV721 :THEME MV723 :PRESENT "PRESENT")
 (:VAR MV721 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV723 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
76: "What processes involve srf"

                    SOURCE-START
e7    INVOLVE       1 "What processes involve srf" 5
                    END-OF-SOURCE
("What processes involve srf"
 (:VAR MV727 :ISA INVOLVE :PARTICIPANT MV725 :THEME MV728 :PRESENT "PRESENT")
 (:VAR MV725 :ISA BIO-PROCESS :HAS-DETERMINER "WHAT" :RAW-TEXT "processes")
 (:VAR MV728 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
77: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV737 :ISA INVOLVE :THEME MV732 :THEME MV736 :PRESENT "PRESENT")
 (:VAR MV732 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV731 :RAW-TEXT
  "genes")
 (:VAR MV731 :ISA REGULATE :OBJECT MV732 :AGENT MV729 :RAW-TEXT "regulated")
 (:VAR MV729 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV736 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
78: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV750 :ISA INVOLVE :THEME MV742 :THEME MV749 :PRESENT "PRESENT")
 (:VAR MV742 :ISA GENE :ORGAN MV745 :HAS-DETERMINER "WHICH" :PREDICATION MV741
  :RAW-TEXT "genes")
 (:VAR MV745 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV741 :ISA REGULATE :OBJECT MV742 :AGENT MV739 :RAW-TEXT "regulated")
 (:VAR MV739 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV749 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
79: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3-regulated genes are involved in apoptosis?"
 (:VAR MV761 :ISA INVOLVE :THEME MV756 :THEME MV760 :PRESENT "PRESENT")
 (:VAR MV756 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV755 :RAW-TEXT
  "genes")
 (:VAR MV755 :ISA REGULATE :OBJECT MV756 :AGENT MV753 :RAW-TEXT "regulated")
 (:VAR MV753 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV760 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
80: "Mek activates MAPK1."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK1."
 (:VAR MV765 :ISA BIO-ACTIVATE :AGENT MV764 :OBJECT MV763 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV764 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV763 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
81: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV767 :ISA BIO-ACTIVATE :AGENT MV766 :OBJECT MV768 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV766 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV768 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
82: "MAPK1 phosphorylates ELK1"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "MAPK1 phosphorylates ELK1" 6
                    END-OF-SOURCE
("MAPK1 phosphorylates ELK1"
 (:VAR MV771 :ISA PHOSPHORYLATE :AGENT MV769 :SUBSTRATE MV770 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV769 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV770 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
83: "DUSP6 dephosphorylates MAPK1"

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1"
 (:VAR MV774 :ISA DEPHOSPHORYLATE :AGENT MV772 :SUBSTRATE MV773 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV772 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV773 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
84: "ELK1 positively regulates FOS."

                    SOURCE-START
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    PERIOD
                    END-OF-SOURCE
("ELK1 positively regulates FOS."
 (:VAR MV776 :ISA UPREGULATE :AGENT MV775 :OBJECT MV777 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV775 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV777 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
85: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV781 :ISA BINDING :BINDER MV780 :DIRECT-BINDEE MV784 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV780 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV784 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV779 :MODIFIER MV783
  :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV779 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV783 :ISA LIGAND :RAW-TEXT "ligand"))

___________________
86: "revert that"

                    SOURCE-START
e0    REVERT        1 "revert " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE
                    SOURCE-START
e0    VG            1 "revert " 2
e2    DET           2 "that" 3
                    END-OF-SOURCE


___________________
87: "The EGFR-EGF complex binds another EGFR-EGF complex."

                    SOURCE-START
e19   BINDING       1 "The EGFR-EGF complex binds another EGFR-EGF complex" 12
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGF complex binds another EGFR-EGF complex."
 (:VAR MV791 :ISA BINDING :BINDER MV798 :DIRECT-BINDEE MV799 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV798 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF"
  :COMPONENT MV789 :COMPONENT MV788)
 (:VAR MV789 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV788 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV799 :ISA BIO-COMPLEX :QUANTIFIER MV792 :RAW-TEXT "EGFR-EGF" :COMPONENT
  MV794 :COMPONENT MV793)
 (:VAR MV792 :ISA ANOTHER :WORD "another")
 (:VAR MV794 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV793 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
88: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV805 :ISA BINDING :BINDER MV807 :DIRECT-BINDEE MV800 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV807 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR"
  :COMPONENT MV802 :COMPONENT MV802)
 (:VAR MV802 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV802 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV800 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

___________________
89: "undo that"

                    SOURCE-START
e0    UNDO          1 "undo " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE
                    SOURCE-START
e0    VG            1 "undo " 2
e2    DET           2 "that" 3
                    END-OF-SOURCE


___________________
90: "EGFR-bound GRB2 binds SOS1."

                    SOURCE-START
e12   BINDING       1 "EGFR-bound GRB2 binds SOS1" 9
                    PERIOD
                    END-OF-SOURCE
("EGFR-bound GRB2 binds SOS1."
 (:VAR MV814 :ISA BINDING :BINDER MV810 :DIRECT-BINDEE MV811 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV810 :ISA PROTEIN :PREDICATION MV813 :RAW-TEXT "GRB2" :UID "UP:P62993"
  :NAME "GRB2_HUMAN")
 (:VAR MV813 :ISA BINDING :DIRECT-BINDEE MV810 :BINDER MV812 :RAW-TEXT "bound")
 (:VAR MV812 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV811 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN"))

___________________
91: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV818 :ISA BINDING :BINDER MV816 :DIRECT-BINDEE MV819 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV816 :ISA PROTEIN :PREDICATION MV817 :RAW-TEXT "SOS1" :UID "UP:Q07889"
  :NAME "SOS1_HUMAN")
 (:VAR MV817 :ISA BINDING :DIRECT-BINDEE MV816 :BINDER MV815 :RAW-TEXT "bound")
 (:VAR MV815 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV819 :ISA PROTEIN :PREDICATION MV826 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV826 :ISA BINDING :DIRECT-BINDEE MV819 :THAT-REL T :BINDEE MV825
  :PRESENT "PRESENT" :NEGATION MV822 :RAW-TEXT "bound")
 (:VAR MV825 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV822 :ISA NOT :WORD "not"))

___________________
92: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV831 :ISA BINDING :BINDER MV830 :DIRECT-BINDEE MV832 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV830 :ISA PROTEIN :PREDICATION MV829 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV829 :ISA BINDING :DIRECT-BINDEE MV830 :BINDER MV828 :RAW-TEXT "bound")
 (:VAR MV828 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV832 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
93: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV842 :ISA BINDING :BINDER MV836 :DIRECT-BINDEE MV843 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV836 :ISA PROTEIN :PREDICATION MV844 :PREDICATION MV835 :RAW-TEXT
  "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV844 :ISA BINDING :DIRECT-BINDEE MV836 :THAT-REL T :BINDEE MV833
  :PRESENT "PRESENT" :NEGATION MV839 :RAW-TEXT "bound")
 (:VAR MV833 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV839 :ISA NOT :WORD "not")
 (:VAR MV835 :ISA BINDING :DIRECT-BINDEE MV836 :BINDER MV834 :RAW-TEXT "bound")
 (:VAR MV834 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV843 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
94: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV846 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
95: "How does BRAF affect MAP2K1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAP2K1?"
 (:VAR MV851 :ISA AFFECT :MANNER MV848 :AGENT MV850 :OBJECT MV847 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV848 :ISA HOW)
 (:VAR MV850 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV847 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
96: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the downstream of AKT1."
 (:VAR MV860 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV854 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV854 :ISA HIGHLIGHT :THEME MV856 :PRESENT "PRESENT")
 (:VAR MV856 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV853 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV853 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
97: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    PERIOD
                    END-OF-SOURCE
("Let's move phosphorylated MAPK1 to the bottom."
 (:VAR MV869 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV863 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV863 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV867 :THEME MV862 :PRESENT
  "PRESENT")
 (:VAR MV867 :ISA BOTTOM :HAS-DETERMINER "THE")
 (:VAR MV862 :ISA PROTEIN :PREDICATION MV864 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV864 :ISA PHOSPHORYLATE :SUBSTRATE MV862 :RAW-TEXT "phosphorylated"))

___________________
98: "Let's put AKT1, MAPK1 into mitochondrion."

                    SOURCE-START
e13   EXPLICIT-SUGGESTION 1 "Let's put AKT1" 7
e8                  "COMMA"
e5    PROTEIN       8 "MAPK1 " 10
e11   INTO          10 "into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e13   S             1 "Let's put AKT1" 7
e8                  "COMMA"
e5    PROPER-NOUN   8 "MAPK1 " 10
e11   PP            10 "into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE


___________________
99: "Let's show AKT1 on the top."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's show AKT1 on the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's show AKT1 on the top."
 (:VAR MV887 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV881 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV881 :ISA SHOW :AT-RELATIVE-LOCATION MV884 :STATEMENT-OR-THEME MV880
  :PRESENT "PRESENT")
 (:VAR MV884 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV880 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
100: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease FOS in the model?"
 (:VAR MV898 :ISA POLAR-QUESTION :STATEMENT MV896)
 (:VAR MV896 :ISA DECREASE :AGENT MV888 :OBJECT MV892 :RAW-TEXT "decrease")
 (:VAR MV888 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV892 :ISA PROTEIN :INFO-CONTEXT MV895 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV895 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
101: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease the amount of FOS in the model?"
 (:VAR MV913 :ISA POLAR-QUESTION :STATEMENT MV910)
 (:VAR MV910 :ISA DECREASE :AGENT MV899 :AFFECTED-PROCESS-OR-OBJECT MV904
  :RAW-TEXT "decrease")
 (:VAR MV899 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV904 :ISA BIO-AMOUNT :MEASURED-ITEM MV906 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV906 :ISA PROTEIN :INFO-CONTEXT MV909 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV909 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
102: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS decrease ELK1 in the model?"
 (:VAR MV924 :ISA POLAR-QUESTION :STATEMENT MV922)
 (:VAR MV922 :ISA DECREASE :AGENT MV916 :OBJECT MV914 :RAW-TEXT "decrease")
 (:VAR MV916 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV914 :ISA PROTEIN :INFO-CONTEXT MV921 :RAW-TEXT "ELK1" :UID "UP:P19419"
  :NAME "ELK1_HUMAN")
 (:VAR MV921 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
103: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 10 fold?"
 (:VAR MV945 :ISA POLAR-QUESTION :STATEMENT MV944)
 (:VAR MV944 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV942 :EVENT MV939)
 (:VAR MV942 :ISA WH-QUESTION :STATEMENT MV940 :WH IF)
 (:VAR MV940 :ISA INCREASE :AGENT-OR-CAUSE MV930 :ADVERB MV938
  :AFFECTED-PROCESS-OR-OBJECT MV934 :RAW-TEXT "increase")
 (:VAR MV930 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV938 :ISA N-FOLD :NUMBER MV937) (:VAR MV937 :ISA NUMBER :VALUE 10)
 (:VAR MV934 :ISA BIO-AMOUNT :MEASURED-ITEM MV925 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV925 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV939 :ISA VANISH :AGENT MV927 :RAW-TEXT "vanish")
 (:VAR MV927 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV968 :ISA POLAR-QUESTION :STATEMENT MV967)
 (:VAR MV967 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV965 :EVENT MV961)
 (:VAR MV965 :ISA WH-QUESTION :STATEMENT MV962 :WH IF)
 (:VAR MV962 :ISA INCREASE :AGENT-OR-CAUSE MV951 :MULTIPLIER MV960
  :AFFECTED-PROCESS-OR-OBJECT MV955 :RAW-TEXT "increase")
 (:VAR MV951 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV960 :ISA N-FOLD :NUMBER MV959) (:VAR MV959 :ISA NUMBER :VALUE 10)
 (:VAR MV955 :ISA BIO-AMOUNT :MEASURED-ITEM MV946 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV946 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV961 :ISA VANISH :AGENT MV948 :RAW-TEXT "vanish")
 (:VAR MV948 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV988 :ISA POLAR-QUESTION :STATEMENT MV987)
 (:VAR MV987 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV985 :EVENT MV982)
 (:VAR MV985 :ISA WH-QUESTION :STATEMENT MV983 :WH IF)
 (:VAR MV983 :ISA INCREASE :AGENT-OR-CAUSE MV975 :MULTIPLIER MV981 :OBJECT
  MV970 :RAW-TEXT "increase")
 (:VAR MV975 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV981 :ISA N-FOLD :NUMBER MV980) (:VAR MV980 :ISA NUMBER :VALUE 10)
 (:VAR MV970 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV982 :ISA VANISH :AGENT MV969 :RAW-TEXT "vanish")
 (:VAR MV969 :ISA PROTEIN :PREDICATION MV972 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV972 :ISA PHOSPHORYLATE :SUBSTRATE MV969 :RAW-TEXT "phosphorylated"))

___________________
106: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV1012 :ISA POLAR-QUESTION :STATEMENT MV1011)
 (:VAR MV1011 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1009 :EVENT MV1005)
 (:VAR MV1009 :ISA WH-QUESTION :STATEMENT MV1006 :WH IF)
 (:VAR MV1006 :ISA INCREASE :AGENT-OR-CAUSE MV995 :MULTIPLIER MV1004
  :AFFECTED-PROCESS-OR-OBJECT MV999 :RAW-TEXT "increase")
 (:VAR MV995 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1004 :ISA N-FOLD :NUMBER MV1003) (:VAR MV1003 :ISA NUMBER :VALUE 10)
 (:VAR MV999 :ISA BIO-AMOUNT :MEASURED-ITEM MV990 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV990 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV1005 :ISA VANISH :AGENT MV989 :RAW-TEXT "vanish")
 (:VAR MV989 :ISA PROTEIN :PREDICATION MV992 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV992 :ISA PHOSPHORYLATE :SUBSTRATE MV989 :RAW-TEXT "phosphorylated"))

___________________
107: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1024 :ISA POLAR-QUESTION :STATEMENT MV1022)
 (:VAR MV1022 :ISA INCREASE :CAUSE MV1016 :ADVERB MV1019 :RAW-TEXT "increase")
 (:VAR MV1016 :ISA BIO-AMOUNT :MEASURED-ITEM MV1013 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1013 :ISA PROTEIN :PREDICATION MV1018 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1018 :ISA PHOSPHORYLATE :SUBSTRATE MV1013 :RAW-TEXT "phosphorylated")
 (:VAR MV1019 :ISA EVER))

___________________
108: "Is MAP2K1 bound to MAPK1 eventually high?"

                    SOURCE-START
e4    BE            1 "Is " 2
e1    PROTEIN       2 "MAP2K1 " 6
e12   BINDING       6 "bound to MAPK1 " 10
e10   HIGH          10 "eventually high" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e4    PREPOSED-AUXILIARY  1 "Is " 2
e1    PROPER-NOUN   2 "MAP2K1 " 6
e12   VP+ED         6 "bound to MAPK1 " 10
e10   ADJECTIVE     10 "eventually high" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
109: "Is MAPK1 bound to MAP2K1 transient?"

                    SOURCE-START
e4    BE            1 "Is " 2
e1    PROTEIN       2 "MAPK1 " 4
e10   BINDING       4 "bound to MAP2K1 " 10
e8    TRANSIENT     10 "transient" 11
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e4    PREPOSED-AUXILIARY  1 "Is " 2
e1    PROPER-NOUN   2 "MAPK1 " 4
e10   VP+ED         4 "bound to MAP2K1 " 10
e8    ADJECTIVE     10 "transient" 11
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
110: "Is MAPK1-bound MAP2K1 sustained?"

                    SOURCE-START
e13   SUSTAINED     1 "Is MAPK1-bound MAP2K1 sustained" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1-bound MAP2K1 sustained?"
 (:VAR MV1046 :ISA POLAR-QUESTION :STATEMENT MV1045)
 (:VAR MV1045 :ISA SUSTAINED :PARTICIPANT MV1041 :PAST "PAST")
 (:VAR MV1041 :ISA PROTEIN :PREDICATION MV1043 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1043 :ISA BINDING :DIRECT-BINDEE MV1041 :BINDER MV1040 :RAW-TEXT
  "bound")
 (:VAR MV1040 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
111: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?"
 (:VAR MV1053 :ISA POLAR-QUESTION :STATEMENT MV1052)
 (:VAR MV1052 :ISA COPULAR-PREDICATION :ITEM MV1047 :VALUE MV1051 :PREDICATE
  MV1048)
 (:VAR MV1047 :ISA PROTEIN :PREDICATION MV1049 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1049 :ISA PHOSPHORYLATE :SUBSTRATE MV1047 :RAW-TEXT "phosphorylated")
 (:VAR MV1051 :ISA HIGH :ADVERB MV1050) (:VAR MV1050 :ISA ALWAYS)
 (:VAR MV1048 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?"
 (:VAR MV1060 :ISA POLAR-QUESTION :STATEMENT MV1059)
 (:VAR MV1059 :ISA COPULAR-PREDICATION :ITEM MV1054 :VALUE MV1058 :PREDICATE
  MV1055)
 (:VAR MV1054 :ISA PROTEIN :PREDICATION MV1056 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1056 :ISA PHOSPHORYLATE :SUBSTRATE MV1054 :RAW-TEXT "phosphorylated")
 (:VAR MV1058 :ISA HIGH :ADVERB MV1057) (:VAR MV1057 :ISA EVENTUALLY)
 (:VAR MV1055 :ISA BE))

___________________
113: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?"
 (:VAR MV1067 :ISA POLAR-QUESTION :STATEMENT MV1066)
 (:VAR MV1066 :ISA COPULAR-PREDICATION :ITEM MV1061 :VALUE MV1065 :PREDICATE
  MV1062)
 (:VAR MV1061 :ISA PROTEIN :PREDICATION MV1063 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1063 :ISA PHOSPHORYLATE :SUBSTRATE MV1061 :RAW-TEXT "phosphorylated")
 (:VAR MV1065 :ISA HIGH :ADVERB MV1064) (:VAR MV1064 :ISA EVER)
 (:VAR MV1062 :ISA BE))

___________________
114: "Is phosphorylated MAPK1 high at the end?"

                    SOURCE-START
e16   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 high " 6
e13   AT            6 "at the end" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e16   S             1 "Is phosphorylated MAPK1 high " 6
e13   PP            6 "at the end" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
115: "Is phosphorylated MAPK1 high?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 high" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 high?"
 (:VAR MV1083 :ISA POLAR-QUESTION :STATEMENT MV1082)
 (:VAR MV1082 :ISA COPULAR-PREDICATION :ITEM MV1078 :VALUE MV1081 :PREDICATE
  MV1079)
 (:VAR MV1078 :ISA PROTEIN :PREDICATION MV1080 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1080 :ISA PHOSPHORYLATE :SUBSTRATE MV1078 :RAW-TEXT "phosphorylated")
 (:VAR MV1081 :ISA HIGH) (:VAR MV1079 :ISA BE))

___________________
116: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e20   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1095 :ISA POLAR-QUESTION :STATEMENT MV1094)
 (:VAR MV1094 :ISA SUSTAINED :PARTICIPANT MV1084 :LEVEL MV1092 :PAST "PAST")
 (:VAR MV1084 :ISA PROTEIN :PREDICATION MV1086 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1086 :ISA PHOSPHORYLATE :SUBSTRATE MV1084 :RAW-TEXT "phosphorylated")
 (:VAR MV1092 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1091 :RAW-TEXT
  "level")
 (:VAR MV1091 :ISA HIGH))

___________________
117: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?"
 (:VAR MV1101 :ISA POLAR-QUESTION :STATEMENT MV1100)
 (:VAR MV1100 :ISA SUSTAINED :PARTICIPANT MV1096 :PAST "PAST")
 (:VAR MV1096 :ISA PROTEIN :PREDICATION MV1098 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1098 :ISA PHOSPHORYLATE :SUBSTRATE MV1096 :RAW-TEXT "phosphorylated"))

___________________
118: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?"
 (:VAR MV1107 :ISA POLAR-QUESTION :STATEMENT MV1106)
 (:VAR MV1106 :ISA COPULAR-PREDICATION :ITEM MV1102 :VALUE MV1105 :PREDICATE
  MV1103)
 (:VAR MV1102 :ISA PROTEIN :PREDICATION MV1104 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1104 :ISA PHOSPHORYLATE :SUBSTRATE MV1102 :RAW-TEXT "phosphorylated")
 (:VAR MV1105 :ISA TRANSIENT) (:VAR MV1103 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?"
 (:VAR MV1118 :ISA POLAR-QUESTION :STATEMENT MV1117)
 (:VAR MV1117 :ISA COPULAR-PREDICATION :ITEM MV1116 :VALUE MV1114 :PREDICATE
  MV1110)
 (:VAR MV1116 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1109 :COMPONENT MV1108)
 (:VAR MV1109 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1108 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1114 :ISA HIGH :ADVERB MV1113) (:VAR MV1113 :ISA EVER)
 (:VAR MV1110 :ISA BE))

___________________
120: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?"
 (:VAR MV1127 :ISA POLAR-QUESTION :STATEMENT MV1124)
 (:VAR MV1124 :ISA BIO-FORM :AGENT MV1126 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1126 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1120 :COMPONENT MV1119)
 (:VAR MV1120 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1119 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
121: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV1148 :ISA POLAR-QUESTION :STATEMENT MV1147)
 (:VAR MV1147 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1143 :EVENT MV1145)
 (:VAR MV1143 :ISA WH-QUESTION :STATEMENT MV1139 :WH IF)
 (:VAR MV1139 :ISA INCREASE :AGENT-OR-CAUSE MV1137 :ADVERB MV1142 :OBJECT
  MV1128 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1137 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1142 :ISA N-FOLD :NUMBER MV1141) (:VAR MV1141 :ISA NUMBER :VALUE 10)
 (:VAR MV1128 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1145 :ISA COPULAR-PREDICATION :ITEM MV1131 :VALUE MV1135 :PREDICATE
  MV1129)
 (:VAR MV1131 :ISA BIO-AMOUNT :MEASURED-ITEM MV1133 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1133 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1135 :ISA LOW :ADVERB MV1134) (:VAR MV1134 :ISA ALWAYS)
 (:VAR MV1129 :ISA BE))

___________________
122: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1171 :ISA POLAR-QUESTION :STATEMENT MV1170)
 (:VAR MV1170 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1166 :EVENT MV1168)
 (:VAR MV1166 :ISA WH-QUESTION :STATEMENT MV1160 :WH IF)
 (:VAR MV1160 :ISA INCREASE :AGENT-OR-CAUSE MV1158 :MULTIPLIER MV1164 :OBJECT
  MV1149 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1158 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1164 :ISA N-FOLD :NUMBER MV1163) (:VAR MV1163 :ISA NUMBER :VALUE 100)
 (:VAR MV1149 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1168 :ISA COPULAR-PREDICATION :ITEM MV1152 :VALUE MV1156 :PREDICATE
  MV1150)
 (:VAR MV1152 :ISA BIO-AMOUNT :MEASURED-ITEM MV1154 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1154 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1156 :ISA LOW :ADVERB MV1155) (:VAR MV1155 :ISA ALWAYS)
 (:VAR MV1150 :ISA BE))

___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
 (:VAR MV1196 :ISA POLAR-QUESTION :STATEMENT MV1195)
 (:VAR MV1195 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1191 :EVENT MV1193)
 (:VAR MV1191 :ISA WH-QUESTION :STATEMENT MV1183 :WH IF)
 (:VAR MV1183 :ISA INCREASE :AGENT-OR-CAUSE MV1181 :ADVERB MV1189
  :AFFECTED-PROCESS-OR-OBJECT MV1185 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1181 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1189 :ISA N-FOLD :NUMBER MV1188) (:VAR MV1188 :ISA NUMBER :VALUE 100)
 (:VAR MV1185 :ISA BIO-AMOUNT :MEASURED-ITEM MV1172 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1172 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1193 :ISA COPULAR-PREDICATION :ITEM MV1175 :VALUE MV1179 :PREDICATE
  MV1173)
 (:VAR MV1175 :ISA BIO-AMOUNT :MEASURED-ITEM MV1177 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1177 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1179 :ISA HIGH :ADVERB MV1178) (:VAR MV1178 :ISA EVER)
 (:VAR MV1173 :ISA BE))

___________________
124: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1223 :ISA POLAR-QUESTION :STATEMENT MV1222)
 (:VAR MV1222 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1218 :EVENT MV1220)
 (:VAR MV1218 :ISA WH-QUESTION :STATEMENT MV1208 :WH IF)
 (:VAR MV1208 :ISA INCREASE :AGENT-OR-CAUSE MV1206 :MULTIPLIER MV1215
  :AFFECTED-PROCESS-OR-OBJECT MV1210 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1206 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1215 :ISA N-FOLD :NUMBER MV1214) (:VAR MV1214 :ISA NUMBER :VALUE 100)
 (:VAR MV1210 :ISA BIO-AMOUNT :MEASURED-ITEM MV1197 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1197 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1220 :ISA COPULAR-PREDICATION :ITEM MV1200 :VALUE MV1204 :PREDICATE
  MV1198)
 (:VAR MV1200 :ISA BIO-AMOUNT :MEASURED-ITEM MV1202 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1202 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1204 :ISA HIGH :ADVERB MV1203) (:VAR MV1203 :ISA EVER)
 (:VAR MV1198 :ISA BE))

___________________
125: "Is the amount of MAPK1 phosphorylated eventually high?"

                    SOURCE-START
e16   PHOSPHORYLATE 1 "Is the amount of MAPK1 phosphorylated " 8
e12   HIGH          8 "eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e16   S             1 "Is the amount of MAPK1 phosphorylated " 8
e12   ADJECTIVE     8 "eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
126: "Is the amount of phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 eventually high?"
 (:VAR MV1244 :ISA POLAR-QUESTION :STATEMENT MV1243)
 (:VAR MV1243 :ISA COPULAR-PREDICATION :ITEM MV1237 :VALUE MV1241 :PREDICATE
  MV1235)
 (:VAR MV1237 :ISA BIO-AMOUNT :MEASURED-ITEM MV1234 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1234 :ISA PROTEIN :PREDICATION MV1239 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1239 :ISA PHOSPHORYLATE :SUBSTRATE MV1234 :RAW-TEXT "phosphorylated")
 (:VAR MV1241 :ISA HIGH :ADVERB MV1240) (:VAR MV1240 :ISA EVENTUALLY)
 (:VAR MV1235 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1255 :ISA POLAR-QUESTION :STATEMENT MV1254)
 (:VAR MV1254 :ISA COPULAR-PREDICATION :ITEM MV1248 :VALUE MV1252 :PREDICATE
  MV1246)
 (:VAR MV1248 :ISA BIO-AMOUNT :MEASURED-ITEM MV1245 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1245 :ISA PROTEIN :PREDICATION MV1250 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1250 :ISA PHOSPHORYLATE :SUBSTRATE MV1245 :RAW-TEXT "phosphorylated")
 (:VAR MV1252 :ISA HIGH :ADVERB MV1251) (:VAR MV1251 :ISA EVER)
 (:VAR MV1246 :ISA BE))

___________________
128: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1266 :ISA POLAR-QUESTION :STATEMENT MV1264)
 (:VAR MV1264 :ISA INCREASE :CAUSE MV1259 :ADVERB MV1262 :RAW-TEXT
  "increasing")
 (:VAR MV1259 :ISA BIO-AMOUNT :MEASURED-ITEM MV1256 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1256 :ISA PROTEIN :PREDICATION MV1261 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1261 :ISA PHOSPHORYLATE :SUBSTRATE MV1256 :RAW-TEXT "phosphorylated")
 (:VAR MV1262 :ISA EVER))

___________________
129: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?"
 (:VAR MV1276 :ISA POLAR-QUESTION :STATEMENT MV1275)
 (:VAR MV1275 :ISA COPULAR-PREDICATION :ITEM MV1270 :VALUE MV1273 :PREDICATE
  MV1268)
 (:VAR MV1270 :ISA BIO-AMOUNT :MEASURED-ITEM MV1267 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1267 :ISA PROTEIN :PREDICATION MV1272 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1272 :ISA PHOSPHORYLATE :SUBSTRATE MV1267 :RAW-TEXT "phosphorylated")
 (:VAR MV1273 :ISA HIGH) (:VAR MV1268 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1287 :ISA POLAR-QUESTION :STATEMENT MV1286)
 (:VAR MV1286 :ISA COPULAR-PREDICATION :ITEM MV1280 :VALUE MV1284 :PREDICATE
  MV1278)
 (:VAR MV1280 :ISA BIO-AMOUNT :MEASURED-ITEM MV1277 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1277 :ISA PROTEIN :PREDICATION MV1282 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1282 :ISA PHOSPHORYLATE :SUBSTRATE MV1277 :RAW-TEXT "phosphorylated")
 (:VAR MV1284 :ISA HIGH :ADVERB MV1283) (:VAR MV1283 :ISA SOMETIMES)
 (:VAR MV1278 :ISA BE))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e28   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1303 :ISA POLAR-QUESTION :STATEMENT MV1302)
 (:VAR MV1302 :ISA SUSTAINED :PARTICIPANT MV1291 :LEVEL MV1299 :PAST "PAST")
 (:VAR MV1291 :ISA BIO-AMOUNT :MEASURED-ITEM MV1288 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1288 :ISA PROTEIN :PREDICATION MV1293 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1293 :ISA PHOSPHORYLATE :SUBSTRATE MV1288 :RAW-TEXT "phosphorylated")
 (:VAR MV1299 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1298 :RAW-TEXT
  "level")
 (:VAR MV1298 :ISA HIGH))

___________________
132: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1313 :ISA POLAR-QUESTION :STATEMENT MV1311)
 (:VAR MV1311 :ISA SUSTAINED :PARTICIPANT MV1307 :PAST "PAST")
 (:VAR MV1307 :ISA BIO-AMOUNT :MEASURED-ITEM MV1304 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1304 :ISA PROTEIN :PREDICATION MV1309 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1309 :ISA PHOSPHORYLATE :SUBSTRATE MV1304 :RAW-TEXT "phosphorylated"))

___________________
133: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1323 :ISA POLAR-QUESTION :STATEMENT MV1322)
 (:VAR MV1322 :ISA COPULAR-PREDICATION :ITEM MV1317 :VALUE MV1320 :PREDICATE
  MV1315)
 (:VAR MV1317 :ISA BIO-AMOUNT :MEASURED-ITEM MV1314 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1314 :ISA PROTEIN :PREDICATION MV1319 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1319 :ISA PHOSPHORYLATE :SUBSTRATE MV1314 :RAW-TEXT "phosphorylated")
 (:VAR MV1320 :ISA TRANSIENT) (:VAR MV1315 :ISA BE))

___________________
134: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1334 :ISA POLAR-QUESTION :STATEMENT MV1332)
 (:VAR MV1332 :ISA COPULAR-PREDICATION :ITEM MV1327 :VALUE MV1331 :PREDICATE
  MV1330)
 (:VAR MV1327 :ISA BIO-AMOUNT :MEASURED-ITEM MV1324 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1324 :ISA PROTEIN :PREDICATION MV1329 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1329 :ISA PHOSPHORYLATE :SUBSTRATE MV1324 :RAW-TEXT "phosphorylated")
 (:VAR MV1331 :ISA HIGH) (:VAR MV1330 :ISA BE :MODAL "WILL"))

___________________
135: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1355 :ISA POLAR-QUESTION :STATEMENT MV1354)
 (:VAR MV1354 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1351 :EVENT MV1352)
 (:VAR MV1351 :ISA WH-QUESTION :STATEMENT MV1343 :WH IF)
 (:VAR MV1343 :ISA INCREASE :AGENT-OR-CAUSE MV1341 :ADVERB MV1349
  :AFFECTED-PROCESS-OR-OBJECT MV1345 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1341 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1349 :ISA N-FOLD :NUMBER MV1348) (:VAR MV1348 :ISA NUMBER :VALUE 100)
 (:VAR MV1345 :ISA BIO-AMOUNT :MEASURED-ITEM MV1336 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1336 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1352 :ISA COPULAR-PREDICATION :ITEM MV1335 :VALUE MV1339 :PREDICATE
  MV1337)
 (:VAR MV1335 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1339 :ISA LOW :ADVERB MV1338) (:VAR MV1338 :ISA EVENTUALLY)
 (:VAR MV1337 :ISA BE))

___________________
136: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e39   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1380 :ISA POLAR-QUESTION :STATEMENT MV1379)
 (:VAR MV1379 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1376 :EVENT MV1377)
 (:VAR MV1376 :ISA WH-QUESTION :STATEMENT MV1373 :WH IF)
 (:VAR MV1373 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1364 :MULTIPLIER
  MV1371 :RAW-TEXT "increased")
 (:VAR MV1364 :ISA BIO-AMOUNT :MEASURED-ITEM MV1357 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1357 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1371 :ISA N-FOLD :NUMBER MV1370) (:VAR MV1370 :ISA NUMBER :VALUE 100)
 (:VAR MV1377 :ISA COPULAR-PREDICATION :ITEM MV1356 :VALUE MV1361 :PREDICATE
  MV1358)
 (:VAR MV1356 :ISA PROTEIN :PREDICATION MV1359 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1359 :ISA ACTIVE) (:VAR MV1361 :ISA LOW :ADVERB MV1360)
 (:VAR MV1360 :ISA EVENTUALLY) (:VAR MV1358 :ISA BE))

___________________
137: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1405 :ISA POLAR-QUESTION :STATEMENT MV1404)
 (:VAR MV1404 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1400 :EVENT MV1402)
 (:VAR MV1400 :ISA WH-QUESTION :STATEMENT MV1392 :WH IF)
 (:VAR MV1392 :ISA INCREASE :AGENT-OR-CAUSE MV1390 :ADVERB MV1398
  :AFFECTED-PROCESS-OR-OBJECT MV1394 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1390 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1398 :ISA N-FOLD :NUMBER MV1397) (:VAR MV1397 :ISA NUMBER :VALUE 100)
 (:VAR MV1394 :ISA BIO-AMOUNT :MEASURED-ITEM MV1382 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1382 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1402 :ISA COPULAR-PREDICATION :ITEM MV1385 :VALUE MV1388 :PREDICATE
  MV1383)
 (:VAR MV1385 :ISA BIO-AMOUNT :MEASURED-ITEM MV1381 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1381 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1388 :ISA LOW :ADVERB MV1387) (:VAR MV1387 :ISA EVENTUALLY)
 (:VAR MV1383 :ISA BE))

___________________
138: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e44   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" 21
                    END-OF-SOURCE
("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
 (:VAR MV1431 :ISA POLAR-QUESTION :STATEMENT MV1430)
 (:VAR MV1430 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1426 :EVENT MV1428)
 (:VAR MV1426 :ISA WH-QUESTION :STATEMENT MV1418 :WH IF)
 (:VAR MV1418 :ISA INCREASE :AGENT-OR-CAUSE MV1416 :ADVERB MV1424
  :AFFECTED-PROCESS-OR-OBJECT MV1420 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1416 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1424 :ISA N-FOLD :NUMBER MV1423) (:VAR MV1423 :ISA NUMBER :VALUE 100)
 (:VAR MV1420 :ISA BIO-AMOUNT :MEASURED-ITEM MV1407 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1407 :ISA MOLECULE :RAW-TEXT "SB-525334" :UID "PCID:9967941")
 (:VAR MV1428 :ISA COPULAR-PREDICATION :ITEM MV1410 :VALUE MV1414 :PREDICATE
  MV1408)
 (:VAR MV1410 :ISA BIO-AMOUNT :MEASURED-ITEM MV1406 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1406 :ISA PROTEIN :PREDICATION MV1412 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1412 :ISA ACTIVE) (:VAR MV1414 :ISA LOW :ADVERB MV1413)
 (:VAR MV1413 :ISA ALWAYS) (:VAR MV1408 :ISA BE))

___________________
139: "Let's move AKT1 and MAPK1 into mitochondrion."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:VAR MV1441 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1435 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1435 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1438 :THEME
  MV1439 :PRESENT "PRESENT")
 (:VAR MV1438 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1439 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1433 MV1434))
 (:VAR MV1433 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1434 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
140: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1444 :ISA PHOSPHORYLATE :AGENT MV1442 :SUBSTRATE MV1443 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1442 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME
  "FEN1_HUMAN")
 (:VAR MV1443 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
141: "Move all into mitochondrion."

                    SOURCE-START
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1445 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1448 :THEME
  MV1450 :PRESENT "PRESENT")
 (:VAR MV1448 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1450 :ISA ALL :WORD "all"))

___________________
142: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1453 :ISA PHOSPHORYLATE :AGENT MV1451 :SUBSTRATE MV1452 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1451 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1452 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
143: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1463 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1456 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1456 :ISA HIGHLIGHT :THEME MV1458 :PRESENT "PRESENT")
 (:VAR MV1458 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1455 :HAS-DETERMINER
  "THE" :RAW-TEXT "upstream")
 (:VAR MV1455 :ISA PROTEIN :PREDICATION MV1461 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1461 :ISA PHOSPHORYLATE :SUBSTRATE MV1455 :RAW-TEXT "phosphorylated"))

___________________
144: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1473 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1466 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1466 :ISA SHOW :AT-RELATIVE-LOCATION MV1470 :STATEMENT-OR-THEME MV1465
  :PRESENT "PRESENT")
 (:VAR MV1470 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1465 :ISA PROTEIN :PREDICATION MV1467 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1467 :ISA PHOSPHORYLATE :SUBSTRATE MV1465 :RAW-TEXT "phosphorylated"))

___________________
145: "Let's show the downstream of AKT1 on the top."

                    SOURCE-START
e24   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    PERIOD
                    END-OF-SOURCE
("Let's show the downstream of AKT1 on the top."
 (:VAR MV1487 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1476 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1476 :ISA SHOW :AT-RELATIVE-LOCATION MV1483 :STATEMENT-OR-THEME MV1478
  :PRESENT "PRESENT")
 (:VAR MV1483 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1478 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1475 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV1475 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
146: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1497 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1489 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1489 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV1494 :THEME MV1491 :PRESENT
  "PRESENT")
 (:VAR MV1494 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1491 :ISA ELEMENT :MODIFIER MV1490)
 (:VAR MV1490 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173"))

___________________
147: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1502 :ISA AFFECT :MANNER MV1499 :AGENT MV1501 :OBJECT MV1498 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1499 :ISA HOW)
 (:VAR MV1501 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1498 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
148: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1506 :ISA AFFECT :MANNER MV1504 :AGENT MV1503 :OBJECT MV1507 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1504 :ISA HOW)
 (:VAR MV1503 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1507 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
149: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1510 :ISA BE :SUBJECT MV1509 :PREDICATE MV1512 :PRESENT "PRESENT")
 (:VAR MV1509 :ISA WHAT)
 (:VAR MV1512 :ISA PATH :ENDPOINTS MV1516 :HAS-DETERMINER "THE")
 (:VAR MV1516 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1514 MV1508))
 (:VAR MV1514 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1508 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
150: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1521 :ISA AFFECT :MANNER MV1519 :AGENT MV1518 :OBJECT MV1522 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1519 :ISA HOW)
 (:VAR MV1518 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1522 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME
  "JUND_HUMAN"))

___________________
151: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1527 :ISA AFFECT :MANNER MV1525 :AGENT MV1523 :OBJECT MV1524 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1525 :ISA HOW)
 (:VAR MV1523 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME
  "SETB1_HUMAN")
 (:VAR MV1524 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME
  "ADA17_HUMAN"))

___________________
152: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1532 :ISA AFFECT :MANNER MV1529 :AGENT MV1531 :OBJECT MV1528 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1529 :ISA HOW)
 (:VAR MV1531 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1528 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
153: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1536 :ISA AFFECT :MANNER MV1533 :AGENT MV1535 :OBJECT MV1537 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1533 :ISA HOW)
 (:VAR MV1535 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME
  "ITAV_HUMAN")
 (:VAR MV1537 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
154: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does MAPK1 phosphorylate?"
 (:VAR MV1542 :ISA PHOSPHORYLATE :AMINO-ACID MV1540 :AGENT MV1538 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV1540 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1538 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
155: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1545 :ISA AFFECT :AGENT MV1544 :OBJECT MV1546 :PRESENT "PRESENT"
  :RAW-TEXT "affect")
 (:VAR MV1544 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1546 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
156: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1549 :ISA BIO-ACTIVATE :AGENT MV1548 :OBJECT MV1550 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV1548 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1550 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
157: "Let's learn about AKT1 in ovarian cancer."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e6    LEARNING      4 "learn " 5
e11   ABOUT         5 "about AKT1 " 8
e12   IN            8 "in ovarian cancer" 11
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e1    INTERJECTION  1 "Let's " 4
e6    VG            4 "learn " 5
e11   PP            5 "about AKT1 " 8
e12   PP            8 "in ovarian cancer" 11
                    PERIOD
                    END-OF-SOURCE


___________________
158: "What is its relationship with BRAF?"

                    SOURCE-START
e10   WITH          1 "What is its relationship with BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with BRAF?"
 (:VAR MV1567 :ISA WH-QUESTION :STATEMENT MV1566 :WH WHAT)
 (:VAR MV1566 :ISA PREPOSITIONAL-PHRASE :POBJ MV1565 :PREP "WITH")
 (:VAR MV1565 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
159: "What is its relationship with PTPN1?"

                    SOURCE-START
e11   WITH          1 "What is its relationship with PTPN1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with PTPN1?"
 (:VAR MV1575 :ISA WH-QUESTION :STATEMENT MV1574 :WH WHAT)
 (:VAR MV1574 :ISA PREPOSITIONAL-PHRASE :POBJ MV1568 :PREP "WITH")
 (:VAR MV1568 :ISA PROTEIN :RAW-TEXT "PTPN1" :UID "UP:P18031" :NAME
  "PTN1_HUMAN"))

___________________
160: "AKT1 phosphorylates IFT140. "

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates IFT140."
 (:VAR MV1578 :ISA PHOSPHORYLATE :AGENT MV1576 :SUBSTRATE MV1577 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1576 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1577 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME
  "IF140_HUMAN"))

___________________
161: "What is the next correlation of AKT1?"

                    SOURCE-START
e16   OF            1 "What is the next correlation of AKT1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the next correlation of AKT1?"
 (:VAR MV1588 :ISA WH-QUESTION :STATEMENT MV1587 :WH WHAT)
 (:VAR MV1587 :ISA PREPOSITIONAL-PHRASE :POBJ MV1579 :PREP "OF")
 (:VAR MV1579 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
162: "Let's stop learning about AKT1."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e9    PROTEIN       4 "stop learning " 6
e8    ABOUT         6 "about AKT1" 9
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e1    INTERJECTION  1 "Let's " 4
e9    NP            4 "stop learning " 6
e8    PP            6 "about AKT1" 9
                    PERIOD
                    END-OF-SOURCE


___________________
163: "What is the drug response on cells with TP53 alterations?"

                    SOURCE-START
e21   ON            1 "What is the drug response on cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response on cells with TP53 alterations?"
 (:VAR MV1608 :ISA WH-QUESTION :STATEMENT MV1607 :WH WHAT)
 (:VAR MV1607 :ISA PREPOSITIONAL-PHRASE :POBJ MV1603 :PREP "ON")
 (:VAR MV1603 :ISA CELL-TYPE :MUTATION MV1605)
 (:VAR MV1605 :ISA ALTER :OBJECT MV1596 :AGENT-OR-OBJECT MV1596 :RAW-TEXT
  "alterations")
 (:VAR MV1596 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1596 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
164: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   FOR           1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1621 :ISA WH-QUESTION :STATEMENT MV1620 :WH WHAT)
 (:VAR MV1620 :ISA PREPOSITIONAL-PHRASE :POBJ MV1616 :PREP "FOR")
 (:VAR MV1616 :ISA CELL-TYPE :MUTATION MV1618)
 (:VAR MV1618 :ISA ALTER :OBJECT MV1609 :AGENT-OR-OBJECT MV1609 :RAW-TEXT
  "alterations")
 (:VAR MV1609 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1609 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
165: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1623 :ISA BE :SUBJECT MV1622 :PREDICATE MV1626 :PRESENT "PRESENT")
 (:VAR MV1622 :ISA WHAT)
 (:VAR MV1626 :ISA FREQUENCY :MEASURED-ITEM MV1628 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1625 :RAW-TEXT "frequency")
 (:VAR MV1628 :ISA PROTEIN :CONTEXT MV1630 :RAW-TEXT "EGFR" :UID "UP:P00533"
  :NAME "EGFR_HUMAN")
 (:VAR MV1630 :ISA GLIOBLASTOMA)
 (:VAR MV1625 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e23   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1635 :ISA BE :SUBJECT MV1634 :PREDICATE MV1638 :PRESENT "PRESENT")
 (:VAR MV1634 :ISA WHAT)
 (:VAR MV1638 :ISA FREQUENCY :MEASURED-ITEM MV1633 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1637 :RAW-TEXT "frequency")
 (:VAR MV1633 :ISA PROTEIN :CONTEXT MV1644 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1644 :ISA CANCER :NAME "cystadenocarcinoma" :UID "EFO:0006387")
 (:VAR MV1637 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
167: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1648 :ISA SHOW :STATEMENT-OR-THEME MV1651 :BENEFICIARY MV1649 :PRESENT
  "PRESENT")
 (:VAR MV1651 :ISA MUTATION :OBJECT MV1657 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1657 :ISA COLLECTION :CONTEXT MV1647 :RAW-TEXT "PTEN and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV1653 MV1655))
 (:VAR MV1647 :ISA CANCER :UID "TS-1223")
 (:VAR MV1653 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1655 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1649 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1661 :ISA SHOW :STATEMENT-OR-THEME MV1664 :BENEFICIARY MV1662 :PRESENT
  "PRESENT")
 (:VAR MV1664 :ISA MUTATION :OBJECT MV1666 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1666 :ISA PROTEIN :CONTEXT MV1660 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1660 :ISA CANCER :UID "TS-1223")
 (:VAR MV1662 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
169: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1672 :ISA BE :SUBJECT MV1671 :PREDICATE MV1674 :PRESENT "PRESENT")
 (:VAR MV1671 :ISA WHAT)
 (:VAR MV1674 :ISA MUTATION :OBJECT MV1676 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1676 :ISA PROTEIN :CONTEXT MV1670 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1670 :ISA CANCER :UID "TS-1223"))

___________________
170: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1682 :ISA BE :SUBJECT MV1681 :PREDICATE MV1694 :PRESENT "PRESENT")
 (:VAR MV1681 :ISA WHAT)
 (:VAR MV1694 :ISA QUALITY-PREDICATE :ITEM MV1692 :ATTRIBUTE MV1688)
 (:VAR MV1692 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1680 MV1691))
 (:VAR MV1680 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1691 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1688 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1686
  :MODIFIER MV1687)
 (:VAR MV1686 :ISA LIKELY :COMPARATIVE MV1684)
 (:VAR MV1684 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV1687 :ISA CELLULAR))

___________________
171: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e17   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1704 :ISA THERE-EXISTS :VALUE MV1700 :PREDICATE MV1697)
 (:VAR MV1700 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1705 :PREDICATION
  MV1699 :RAW-TEXT "upstreams")
 (:VAR MV1705 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1695 MV1703))
 (:VAR MV1695 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1703 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1699 :ISA COMMON) (:VAR MV1697 :ISA SYNTACTIC-THERE))

___________________
172: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1710 :ISA BE :SUBJECT MV1709 :PREDICATE MV1713 :PRESENT "PRESENT")
 (:VAR MV1709 :ISA WHAT)
 (:VAR MV1713 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1717 :HAS-DETERMINER
  "THE" :PREDICATION MV1712 :RAW-TEXT "upstreams")
 (:VAR MV1717 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1707 MV1715 MV1708))
 (:VAR MV1707 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1715 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1708 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1712 :ISA COMMON))

___________________
173: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive " 6
e16   WITH          6 "with CDH1 " 9
e15   FOR           9 "for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e18   S             1 "What genes are mutually exclusive " 6
e16   PP            6 "with CDH1 " 9
e15   PP            9 "for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
174: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e21   BE            1 "What are the mutually exclusive genes " 7
e19   WITH          7 "with TP53 " 10
e18   FOR           10 "for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e21   S             1 "What are the mutually exclusive genes " 7
e19   PP            7 "with TP53 " 10
e18   PP            10 "for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
175: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1748 :ISA BE :SUBJECT MV1747 :PREDICATE MV1751 :PRESENT "PRESENT")
 (:VAR MV1747 :ISA WHAT)
 (:VAR MV1751 :ISA SIGNIFICANCE :RESULT MV1746 :AGENT MV1745 :HAS-DETERMINER
  "THE" :MODIFIER MV1750)
 (:VAR MV1746 :ISA CANCER :UID "TS-0571")
 (:VAR MV1745 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1750 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e23   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1758 :ISA BE :SUBJECT MV1757 :PREDICATE MV1761 :PRESENT "PRESENT")
 (:VAR MV1757 :ISA WHAT)
 (:VAR MV1761 :ISA SIGNIFICANCE :AGENT MV1756 :HAS-DETERMINER "THE" :MODIFIER
  MV1760)
 (:VAR MV1756 :ISA PROTEIN :CONTEXT MV1767 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1767 :ISA CANCER :NAME "cystadenocarcinoma" :UID "EFO:0006387")
 (:VAR MV1760 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1771 :ISA BE :SUBJECT MV1770 :PREDICATE MV1774 :PRESENT "PRESENT")
 (:VAR MV1770 :ISA WHAT)
 (:VAR MV1774 :ISA SIGNIFICANCE :AGENT MV1776 :HAS-DETERMINER "THE" :MODIFIER
  MV1773)
 (:VAR MV1776 :ISA PROTEIN :CONTEXT MV1779 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1779 :ISA CANCER :ORGAN MV1778 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1778 :ISA PANCREAS) (:VAR MV1773 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1783 :ISA BE :SUBJECT MV1782 :PREDICATE MV1786 :PRESENT "PRESENT")
 (:VAR MV1782 :ISA WHAT)
 (:VAR MV1786 :ISA SIGNIFICANCE :AGENT MV1788 :HAS-DETERMINER "THE" :MODIFIER
  MV1785)
 (:VAR MV1788 :ISA PROTEIN :CONTEXT MV1791 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV1791 :ISA CANCER :MODIFIER MV1790 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1790 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME
  "KLK2_HUMAN")
 (:VAR MV1785 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
179: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1795 :ISA PHOSPHORYLATE :AGENT MV1794 :SUBSTRATE MV1796 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1794 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1796 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
180: "EGF binds EGFR."

                    SOURCE-START
e4    BINDING       1 "EGF binds EGFR" 4
                    PERIOD
                    END-OF-SOURCE
("EGF binds EGFR."
 (:VAR MV1798 :ISA BINDING :BINDER MV1797 :DIRECT-BINDEE MV1799 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1797 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1799 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
181: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1805 :ISA BINDING :BINDER MV1801 :DIRECT-BINDEE MV1800 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1801 :ISA PROTEIN :PREDICATION MV1802 :RAW-TEXT "EGFR" :UID
  "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1802 :ISA BINDING :DIRECT-BINDEE MV1801 :BINDEE MV1804 :PAST "PAST"
  :RAW-TEXT "bound")
 (:VAR MV1804 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1800 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
182: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1811 :ISA COPULAR-PREDICATION :ITEM MV1808 :VALUE MV1810 :PREDICATE
  MV1809)
 (:VAR MV1808 :ISA PROTEIN-FAMILY :PREDICATION MV1807 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1807 :ISA PHOSPHORYLATE :SUBSTRATE MV1808 :RAW-TEXT "Phosphorylated")
 (:VAR MV1810 :ISA ACTIVE) (:VAR MV1809 :ISA BE :PRESENT "PRESENT"))

___________________
183: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1812 :ISA PROTEIN :PREDICATION MV1814 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1814 :ISA PHOSPHORYLATE :SUBSTRATE MV1812 :TARGET MV1813 :PAST "PAST"
  :RAW-TEXT "phosphorylated")
 (:VAR MV1813 :ISA PROTEIN :SITE MV1819 :MODIFIER MV1820 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1819 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1818
  :AMINO-ACID MV1817)
 (:VAR MV1818 :ISA NUMBER :VALUE 220)
 (:VAR MV1817 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1820 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
184: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1825 :ISA TRANSCRIBE :AGENT MV1822 :OBJECT MV1823 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV1822 :ISA PROTEIN :PREDICATION MV1824 :RAW-TEXT "TP53" :UID
  "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1824 :ISA ACTIVE)
 (:VAR MV1823 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
185: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1852 :ISA POLAR-QUESTION :STATEMENT MV1851)
 (:VAR MV1851 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1847 :EVENT MV1849)
 (:VAR MV1847 :ISA WH-QUESTION :STATEMENT MV1837 :WH IF)
 (:VAR MV1837 :ISA INCREASE :AGENT-OR-CAUSE MV1835 :MULTIPLIER MV1844
  :AFFECTED-PROCESS-OR-OBJECT MV1839 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1835 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1844 :ISA N-FOLD :NUMBER MV1843) (:VAR MV1843 :ISA NUMBER :VALUE 10)
 (:VAR MV1839 :ISA BIO-AMOUNT :MEASURED-ITEM MV1826 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1826 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1849 :ISA COPULAR-PREDICATION :ITEM MV1829 :VALUE MV1833 :PREDICATE
  MV1827)
 (:VAR MV1829 :ISA BIO-AMOUNT :MEASURED-ITEM MV1831 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1831 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1833 :ISA HIGH :ADVERB MV1832) (:VAR MV1832 :ISA EVER)
 (:VAR MV1827 :ISA BE))

___________________
186: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1864 :ISA POLAR-QUESTION :STATEMENT MV1862)
 (:VAR MV1862 :ISA DECREASE :AGENT MV1854 :OBJECT MV1858 :RAW-TEXT "decrease")
 (:VAR MV1854 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1858 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1861 :PREDICATION MV1857
  :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1861 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1857 :ISA PHOSPHORYLATE :SUBSTRATE MV1858 :RAW-TEXT "phosphorylated"))

___________________
187: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?"
 (:VAR MV1875 :ISA POLAR-QUESTION :STATEMENT MV1873)
 (:VAR MV1873 :ISA DECREASE :AGENT MV1866 :OBJECT MV1869 :RAW-TEXT "decrease")
 (:VAR MV1866 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV1869 :ISA PROTEIN :INFO-CONTEXT MV1872 :RAW-TEXT "JUN" :UID
  "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1872 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
188: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1880 :ISA REGULATE :MANNER MV1877 :AGENT MV1879 :OBJECT MV1876
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV1877 :ISA HOW)
 (:VAR MV1879 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1876 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
189: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1885 :ISA BIO-ACTIVATE :MANNER MV1882 :AGENT MV1884 :OBJECT MV1881
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV1882 :ISA HOW)
 (:VAR MV1884 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1881 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
190: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?"
 (:VAR MV1891 :ISA POLAR-QUESTION :STATEMENT MV1890)
 (:VAR MV1890 :ISA INHIBIT :AGENT MV1887 :OBJECT MV1889 :RAW-TEXT "inhibit")
 (:VAR MV1887 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1889 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
191: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1902 :ISA SHARE :OBJECT MV1892 :PARTICIPANT MV1901 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV1892 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1901 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1898 MV1899 MV1893))
 (:VAR MV1898 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1899 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1893 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
192: "Create a model where LCK phosphorylates CD3E"

                    SOURCE-START
e2    CREATE        1 "Create " 2
e13   MODEL         2 "a model where LCK phosphorylates CD3E" 10
                    END-OF-SOURCE
                    SOURCE-START
e2    VG            1 "Create " 2
e13   NP            2 "a model where LCK phosphorylates CD3E" 10
                    END-OF-SOURCE


___________________
193: "What is upstream of CD3E?"

                    SOURCE-START
e11   BE            1 "What is upstream of CD3E" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is upstream of CD3E?"
 (:VAR MV1914 :ISA BE :SUBJECT MV1913 :PREDICATE MV1915 :PRESENT "PRESENT")
 (:VAR MV1913 :ISA WHAT)
 (:VAR MV1915 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1912 :RAW-TEXT
  "upstream")
 (:VAR MV1912 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME
  "CD3E_HUMAN"))

___________________
194: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1923 :ISA WANT :AGENT MV1920 :THEME MV1931 :PRESENT "PRESENT")
 (:VAR MV1920 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1931 :ISA BIO-FIND :AGENT MV1920 :OBJECT MV1928 :PRESENT "PRESENT"
  :RAW-TEXT "find")
 (:VAR MV1920 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1928 :ISA TREATMENT :DISEASE MV1919 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV1919 :ISA CANCER :UID "TS-0739"))

___________________
195: "What drug could I use?"

                    SOURCE-START
e11   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV1940 :ISA BIO-USE :OBJECT WHAT :MODAL MV1934 :AGENT MV1935 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV1934 :ISA COULD) (:VAR MV1935 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
196: "Are there any drugs for BRAF?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1948 :ISA THERE-EXISTS :VALUE MV1945 :PREDICATE MV1942)
 (:VAR MV1945 :ISA DRUG :TARGET MV1947 :QUANTIFIER MV1944 :RAW-TEXT "drugs")
 (:VAR MV1947 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1944 :ISA ANY :WORD "any") (:VAR MV1942 :ISA SYNTACTIC-THERE))

___________________
197: "Are they kinases?"

                    SOURCE-START
e3    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1948 :ISA THERE-EXISTS :VALUE MV1945 :PREDICATE MV1942)
 (:VAR MV1945 :ISA DRUG :TARGET MV1947 :QUANTIFIER MV1944 :RAW-TEXT "drugs")
 (:VAR MV1947 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1944 :ISA ANY :WORD "any") (:VAR MV1942 :ISA SYNTACTIC-THERE))

___________________
198: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV1962 :ISA POLAR-QUESTION :STATEMENT MV1956)
 (:VAR MV1956 :ISA BIO-FIND :AGENT MV1954 :OBJECT MV1958 :MODAL "CAN" :RAW-TEXT
  "find")
 (:VAR MV1954 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1958 :ISA DRUG :TARGET MV1960 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1960 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
199: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e34   TELL          1 "Can you tell me " 5
e30   TRANSCRIPTION-FACTOR  5 "all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e34   S             1 "Can you tell me " 5
e30   NP            5 "all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
200: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1996 :ISA POLAR-QUESTION :STATEMENT MV1985)
 (:VAR MV1985 :ISA TELL :AGENT MV1984 :THEME MV1994 :BENEFICIARY MV1986 :MODAL
  "CAN")
 (:VAR MV1984 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1994 :ISA SHARE :OBJECT MV1981 :PARTICIPANT MV1993 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV1981 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1993 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1982 MV1992))
 (:VAR MV1982 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1992 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1986 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
201: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV2007 :ISA POLAR-QUESTION :STATEMENT MV2006)
 (:VAR MV2006 :ISA KNOW :AGENT MV1998 :STATEMENT MV2001)
 (:VAR MV1998 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV2001 :ISA DRUG :TARGET MV2003 :QUANTIFIER MV2000 :RAW-TEXT "drugs")
 (:VAR MV2003 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2000 :ISA ANY :WORD "any"))

___________________
202: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV2019 :ISA POLAR-QUESTION :STATEMENT MV2017)
 (:VAR MV2017 :ISA REGULATE :AGENT MV2008 :OBJECT MV2013 :RAW-TEXT "regulate")
 (:VAR MV2008 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2013 :ISA GENE :ORGAN MV2016 :HAS-DETERMINER "THE" :EXPRESSES MV2012
  :RAW-TEXT "gene")
 (:VAR MV2016 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2012 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV2030 :ISA POLAR-QUESTION :STATEMENT MV2028)
 (:VAR MV2028 :ISA REGULATE :AGENT MV2020 :OBJECT MV2025 :RAW-TEXT "regulate")
 (:VAR MV2020 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2025 :ISA GENE :ORGAN MV2027 :HAS-DETERMINER "THE" :EXPRESSES MV2021
  :RAW-TEXT "gene")
 (:VAR MV2027 :ISA LIVER)
 (:VAR MV2021 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV2038 :ISA POLAR-QUESTION :STATEMENT MV2037)
 (:VAR MV2037 :ISA REGULATE :AGENT MV2031 :OBJECT MV2036 :RAW-TEXT "regulate")
 (:VAR MV2031 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2036 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2032 :RAW-TEXT
  "gene")
 (:VAR MV2032 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
205: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2050 :ISA POLAR-QUESTION :STATEMENT MV2048)
 (:VAR MV2048 :ISA REGULATE :AGENT MV2039 :OBJECT MV2044 :RAW-TEXT "regulate")
 (:VAR MV2039 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2044 :ISA GENE :ORGAN MV2047 :HAS-DETERMINER "THE" :EXPRESSES MV2043
  :RAW-TEXT "gene")
 (:VAR MV2047 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2043 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
206: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2057 :ISA POLAR-QUESTION :STATEMENT MV2056)
 (:VAR MV2056 :ISA TARGET :AGENT MV2051 :OBJECT MV2052 :RAW-TEXT "target")
 (:VAR MV2051 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2052 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
207: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV2064 :ISA POLAR-QUESTION :STATEMENT MV2063)
 (:VAR MV2063 :ISA TARGET :AGENT MV2058 :OBJECT MV2059 :RAW-TEXT "target")
 (:VAR MV2058 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV2059 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
208: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV2071 :ISA POLAR-QUESTION :STATEMENT MV2070)
 (:VAR MV2070 :ISA TARGET :AGENT MV2065 :OBJECT MV2066 :RAW-TEXT "target")
 (:VAR MV2065 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV2066 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
209: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV2078 :ISA POLAR-QUESTION :STATEMENT MV2077)
 (:VAR MV2077 :ISA TARGET :AGENT MV2072 :OBJECT MV2073 :RAW-TEXT "target")
 (:VAR MV2072 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV2073 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
210: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV2087 :ISA POLAR-QUESTION :STATEMENT MV2085)
 (:VAR MV2085 :ISA REGULATE :AGENT MV2079 :OBJECT MV2084 :RAW-TEXT "regulate")
 (:VAR MV2079 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2084 :ISA BIO-ENTITY :ORGAN MV2083 :NAME "cfors")
 (:VAR MV2083 :ISA LIVER))

___________________
211: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV2096 :ISA POLAR-QUESTION :STATEMENT MV2094)
 (:VAR MV2094 :ISA REGULATE :AGENT MV2088 :OBJECT MV2091 :RAW-TEXT "regulate")
 (:VAR MV2088 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2091 :ISA PROTEIN :ORGAN MV2093 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2093 :ISA LIVER))

___________________
212: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV2105 :ISA POLAR-QUESTION :STATEMENT MV2103)
 (:VAR MV2103 :ISA REGULATE :AGENT-OR-CAUSE MV2098 :OBJECT MV2100 :RAW-TEXT
  "regulate")
 (:VAR MV2098 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2100 :ISA PROTEIN :ORGAN MV2102 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2102 :ISA BRAIN))

___________________
213: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV2111 :ISA POLAR-QUESTION :STATEMENT MV2110)
 (:VAR MV2110 :ISA REGULATE :AGENT MV2106 :OBJECT MV2109 :RAW-TEXT "regulate")
 (:VAR MV2106 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2109 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2123 :ISA POLAR-QUESTION :STATEMENT MV2121)
 (:VAR MV2121 :ISA REGULATE :AGENT MV2112 :OBJECT MV2117 :RAW-TEXT "regulate")
 (:VAR MV2112 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2117 :ISA GENE :CELL-TYPE MV2120 :HAS-DETERMINER "THE" :EXPRESSES
  MV2116 :RAW-TEXT "gene")
 (:VAR MV2120 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2119)
 (:VAR MV2119 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2116 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
215: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV2133 :ISA POLAR-QUESTION :STATEMENT MV2132)
 (:VAR MV2132 :ISA UTILIZE :PARTICIPANT MV2129 :OBJECT MV2124 :RAW-TEXT
  "utilize")
 (:VAR MV2129 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2131 :RAW-TEXT
  "pathway")
 (:VAR MV2131 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2124 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
216: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV2143 :ISA POLAR-QUESTION :STATEMENT MV2142)
 (:VAR MV2142 :ISA UTILIZE :PARTICIPANT MV2140 :OBJECT MV2134 :RAW-TEXT
  "utilize")
 (:VAR MV2140 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2137 :RAW-TEXT
  "pathway")
 (:VAR MV2137 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV2134 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
217: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2145 :ISA GIVE :THEME MV2152 :BENEFICIARY MV2146 :PRESENT "PRESENT")
 (:VAR MV2152 :ISA EVIDENCE :STATEMENT MV2151 :HAS-DETERMINER "THE")
 (:VAR MV2151 :ISA DECREASE :AGENT MV2150 :OBJECT MV2144 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2150 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2144 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2146 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2154 :ISA GIVE :THEME MV2161 :BENEFICIARY MV2155 :PRESENT "PRESENT")
 (:VAR MV2161 :ISA EVIDENCE :STATEMENT MV2160 :HAS-DETERMINER "THE")
 (:VAR MV2160 :ISA REGULATE :AGENT MV2159 :OBJECT MV2153 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2159 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2153 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2155 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
219: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?"
 (:VAR MV2166 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88026>
   (PREDICATE
    (#<kinase 88025> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
220: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV2174 :ISA POLAR-QUESTION :STATEMENT MV2173)
 (:VAR MV2173 :ISA INHIBIT :AGENT MV2167 :AGENT MV2171 :PAST "PAST" :RAW-TEXT
  "inhibited")
 (:VAR MV2167 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV2171 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
221: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2183 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88040>
   (PREDICATE
    (#<transcription-factor 88039>
     (CONTROLLED-GENE
      (#<gene 87935>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
222: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2198 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88047>
   (PREDICATE
    (#<regulator 88046> (QUANTIFIER 1)
     (THEME
      (#<gene 87936> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<the 106>)) (RAW-TEXT "regulators"))))))

___________________
223: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e14   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV2206 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88056>
   (PREDICATE
    (#<inhibitor 88055>
     (PROTEIN
      (#<protein "MP2K1_HUMAN" 88050> (RAW-TEXT "MEK1") (UID "UP:Q02750")
       (NAME "MP2K1_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
224: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e13   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2214 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88060>
   (PREDICATE
    (#<inhibitor 88059>
     (TARGET-OR-PROTEIN
      (#<protein "BRAF_HUMAN" 86464> (RAW-TEXT "BRAF") (UID "UP:P15056")
       (NAME "BRAF_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
225: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase"
 (:VAR MV2219 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88026>
   (PREDICATE
    (#<kinase 88025> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
226: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase"
 (:VAR MV2224 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88026>
   (PREDICATE
    (#<kinase 88025> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
227: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e12   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2231 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88070>
   (PREDICATE
    (#<regulator 88069> (HAS-DETERMINER (#<an 108> (WORD "an")))
     (MODIFIER (#<apoptotic 86410>)) (RAW-TEXT "regulator"))))))

___________________
228: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV2242 :ISA POLAR-QUESTION :STATEMENT MV2241)
 (:VAR MV2241 :ISA INVOLVE :PARTICIPANT MV2232 :CONTEXT-OR-THEME MV2239 :PAST
  "PAST")
 (:VAR MV2232 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2239 :ISA PATHWAY :QUANTIFIER MV2236 :PROCESS MV2237 :RAW-TEXT
  "pathways")
 (:VAR MV2236 :ISA ANY :WORD "any")
 (:VAR MV2237 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV2252 :ISA POLAR-QUESTION :STATEMENT MV2251)
 (:VAR MV2251 :ISA INVOLVE :PARTICIPANT MV2243 :THEME MV2249 :PAST "PAST")
 (:VAR MV2243 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2249 :ISA REGULATE :AGENT MV2247 :RAW-TEXT "regulation")
 (:VAR MV2247 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
230: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV2261 :ISA POLAR-QUESTION :STATEMENT MV2260)
 (:VAR MV2260 :ISA INVOLVE :PARTICIPANT MV2253 :THEME MV2257 :PAST "PAST")
 (:VAR MV2253 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2257 :ISA REGULATE :AFFECTED-PROCESS MV2258 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV2258 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
231: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2266 :ISA PHOSPHORYLATE :AMINO-ACID MV2263 :AGENT MV2265 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV2263 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2265 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
232: "Is the first one a kinase"

                    SOURCE-START
e15   BE            1 "Is the first one a kinase" 7
                    END-OF-SOURCE
("Is the first one a kinase"
 (:VAR MV2276 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88026>
   (PREDICATE
    (#<kinase 88025> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
233: "Is there a drug that targets BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2286 :ISA THERE-EXISTS :VALUE MV2281 :PREDICATE MV2278)
 (:VAR MV2281 :ISA DRUG :PREDICATION MV2284 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV2284 :ISA TARGET :AGENT MV2281 :THAT-REL T :OBJECT MV2285 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV2285 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2278 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2297 :ISA THERE-EXISTS :VALUE MV2294 :PREDICATE MV2289)
 (:VAR MV2294 :ISA PATHWAY :PREDICATION MV2295 :HAS-DETERMINER "AN" :PROCESS
  MV2292 :RAW-TEXT "pathway")
 (:VAR MV2295 :ISA REGULATE :AFFECTED-PROCESS MV2294 :AGENT MV2287 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV2287 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2292 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2289 :ISA SYNTACTIC-THERE))

___________________
235: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2311 :ISA THERE-EXISTS :VALUE MV2306 :PREDICATE MV2301)
 (:VAR MV2306 :ISA PATHWAY :PREDICATION MV2312 :HAS-DETERMINER "AN" :PROCESS
  MV2304 :RAW-TEXT "pathway")
 (:VAR MV2312 :ISA REGULATE :AFFECTED-PROCESS MV2306 :THAT-REL T :AGENT MV2299
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2299 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2304 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2301 :ISA SYNTACTIC-THERE))

___________________
236: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2315 :ISA LET :COMPLEMENT MV2329 :PRESENT "PRESENT")
 (:VAR MV2329 :ISA KNOW :AGENT MV2316 :STATEMENT MV2328 :PRESENT "PRESENT")
 (:VAR MV2316 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2328 :ISA WH-QUESTION :STATEMENT MV2327 :WH IF)
 (:VAR MV2327 :ISA THERE-EXISTS :VALUE MV2325 :PREDICATE MV2321)
 (:VAR MV2325 :ISA GENE :PREDICATION MV2326 :QUANTIFIER MV2322 :MODIFIER MV2324
  :RAW-TEXT "genes")
 (:VAR MV2326 :ISA REGULATE :OBJECT MV2325 :AGENT MV2314 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2314 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2322 :ISA ANY :WORD "any") (:VAR MV2324 :ISA APOPTOTIC)
 (:VAR MV2321 :ISA BE))

___________________
237: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2331 :ISA LET :COMPLEMENT MV2337 :PRESENT "PRESENT")
 (:VAR MV2337 :ISA KNOW :AGENT MV2332 :STATEMENT MV2335 :PRESENT "PRESENT")
 (:VAR MV2332 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2335 :ISA GENE :PREDICATION MV2336 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV2336 :ISA REGULATE :OBJECT MV2335 :AGENT MV2330 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2330 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
238: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2339 :ISA LIST :THEME MV2342 :PRESENT "PRESENT")
 (:VAR MV2342 :ISA GENE :PREDICATION MV2343 :QUANTIFIER MV2340 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV2343 :ISA REGULATE :OBJECT MV2342 :AGENT MV2347 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2347 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2338 MV2346))
 (:VAR MV2338 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2346 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2340 :ISA ALL :WORD "all"))

___________________
239: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf"
 (:VAR MV2350 :ISA LIST :THEME MV2351 :PRESENT "PRESENT")
 (:VAR MV2351 :ISA GENE :PREDICATION MV2352 :RAW-TEXT "genes")
 (:VAR MV2352 :ISA REGULATE :OBJECT MV2351 :AGENT MV2356 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2356 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2349 MV2355))
 (:VAR MV2349 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2355 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
240: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2359 :ISA LIST :THEME MV2361 :PRESENT "PRESENT")
 (:VAR MV2361 :ISA GENE :PREDICATION MV2369 :QUANTIFIER MV2360 :RAW-TEXT
  "genes")
 (:VAR MV2369 :ISA REGULATE :OBJECT MV2361 :THAT-REL T :AGENT MV2368 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2368 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2358 MV2367))
 (:VAR MV2358 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2367 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2360 :ISA SOME :WORD "some"))

___________________
241: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2372 :ISA LIST :THEME MV2378 :PRESENT "PRESENT")
 (:VAR MV2378 :ISA EVIDENCE :STATEMENT MV2377 :HAS-DETERMINER "THE")
 (:VAR MV2377 :ISA DECREASE :AGENT MV2376 :OBJECT MV2371 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2376 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2371 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
242: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2380 :ISA NAME-SOMETHING :PATIENT MV2383 :PRESENT "PRESENT")
 (:VAR MV2383 :ISA GENE :PREDICATION MV2384 :RAW-TEXT "genes")
 (:VAR MV2384 :ISA REGULATE :OBJECT MV2383 :AGENT MV2388 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2388 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2379 MV2387))
 (:VAR MV2379 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2387 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
243: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e34   COPULAR-PREDICATION 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2405 :ISA COPULAR-PREDICATION :ITEM MV2395 :VALUE MV2400 :PREDICATE
  MV2399)
 (:VAR MV2395 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2396
  :HAS-DETERMINER "THE" :MODIFIER MV2394 :RAW-TEXT "genes")
 (:VAR MV2396 :ISA REGULATE :OBJECT MV2395 :AGENT MV2390 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2390 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2394 :ISA APOPTOTIC) (:VAR MV2400 :ISA ACTIVE :ORGAN MV2403)
 (:VAR MV2403 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2399 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2423 :ISA COPULAR-PREDICATION :ITEM MV2414 :VALUE MV2418 :PREDICATE
  MV2417)
 (:VAR MV2414 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2415
  :HAS-DETERMINER "THE" :MODIFIER MV2413 :RAW-TEXT "genes")
 (:VAR MV2415 :ISA REGULATE :OBJECT MV2414 :AGENT MV2409 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2409 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2413 :ISA APOPTOTIC) (:VAR MV2418 :ISA ACTIVE :ORGAN MV2421)
 (:VAR MV2421 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2417 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e29   COPULAR-PREDICATION 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2438 :ISA COPULAR-PREDICATION :ITEM MV2429 :VALUE MV2436 :PREDICATE
  MV2435)
 (:VAR MV2429 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2430
  :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV2430 :ISA REGULATE :OBJECT MV2429 :AGENT MV2426 :ORGAN MV2433 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2426 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2433 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2436 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2435 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2452 :ISA COPULAR-PREDICATION :ITEM MV2446 :VALUE MV2450 :PREDICATE
  MV2449)
 (:VAR MV2446 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2447
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2445 :RAW-TEXT "genes")
 (:VAR MV2447 :ISA REGULATE :OBJECT MV2446 :AGENT MV2442 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2442 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2445 :ISA LIVER) (:VAR MV2450 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2449 :ISA BE :PRESENT "PRESENT"))

___________________
247: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2465 :ISA COPULAR-PREDICATION :ITEM MV2459 :VALUE MV2463 :PREDICATE
  MV2462)
 (:VAR MV2459 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2460
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2458 :RAW-TEXT "genes")
 (:VAR MV2460 :ISA REGULATE :OBJECT MV2459 :AGENT MV2455 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2455 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2458 :ISA LIVER) (:VAR MV2463 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2462 :ISA BE :PRESENT "PRESENT"))

___________________
248: "Please find pathways involving SRF"

                    SOURCE-START
e8    FIND-OUT      1 "Please find pathways involving SRF" 6
                    END-OF-SOURCE
("Please find pathways involving SRF"
 (:VAR MV2474 :ISA FIND-OUT :STATEMENT MV2471 :PRESENT "PRESENT" :ADVERB
  MV2468)
 (:VAR MV2471 :ISA PATHWAY :PREDICATION MV2472 :RAW-TEXT "pathways")
 (:VAR MV2472 :ISA INVOLVE :PARTICIPANT MV2471 :THEME MV2473 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2473 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2468 :ISA PLEASE))

___________________
249: "Please show me KEGG pathways involving SRF"

                    SOURCE-START
e13   SHOW          1 "Please show me KEGG pathways involving SRF" 8
                    END-OF-SOURCE
("Please show me KEGG pathways involving SRF"
 (:VAR MV2476 :ISA SHOW :STATEMENT-OR-THEME MV2478 :BENEFICIARY MV2477 :PRESENT
  "PRESENT" :ADVERB MV2475)
 (:VAR MV2478 :ISA PATHWAY :PREDICATION MV2479 :MODIFIER MV2481 :RAW-TEXT
  "pathways")
 (:VAR MV2479 :ISA INVOLVE :PARTICIPANT MV2478 :THEME MV2480 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2480 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2481 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV2477 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV2475 :ISA PLEASE))

___________________
250: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2483 :ISA SHOW :STATEMENT-OR-THEME MV2485 :BENEFICIARY MV2484 :PRESENT
  "PRESENT" :ADVERB MV2482)
 (:VAR MV2485 :ISA PATHWAY :PREDICATION MV2486 :RAW-TEXT "pathways")
 (:VAR MV2486 :ISA INVOLVE :PARTICIPANT MV2485 :THEME MV2487 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2487 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2484 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV2482 :ISA PLEASE))

___________________
251: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2489 :ISA BIO-ACTIVATE :AGENT MV2488 :OBJECT MV2490 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2488 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2490 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
252: "Remove the fact that MEK activates ERK"

                    SOURCE-START
e14   REMOVE        1 "Remove the fact that MEK activates ERK" 8
                    END-OF-SOURCE
("Remove the fact that MEK activates ERK"
 (:VAR MV2491 :ISA REMOVE :OBJECT MV2498 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2498 :ISA FACT :STATEMENT MV2496 :HAS-DETERMINER "THE")
 (:VAR MV2496 :ISA BIO-ACTIVATE :AGENT MV2495 :OBJECT MV2497 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2495 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2497 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
253: "Let's build a model"

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    END-OF-SOURCE
("Let's build a model"
 (:VAR MV2503 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV2500 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV2500 :ISA BUILD :ARTIFACT MV2502 :PRESENT "PRESENT")
 (:VAR MV2502 :ISA MODEL :HAS-DETERMINER "A"))

___________________
254: "Inactive MEK activates ERK"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "Inactive MEK activates ERK" 5
                    END-OF-SOURCE
("Inactive MEK activates ERK"
 (:VAR MV2506 :ISA BIO-ACTIVATE :AGENT MV2505 :OBJECT MV2507 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2505 :ISA PROTEIN-FAMILY :PREDICATION MV2504 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2504 :ISA INACTIVE)
 (:VAR MV2507 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
255: "Remove the fact that inactive MEK activates ERK"

                    SOURCE-START
e16   REMOVE        1 "Remove the fact that inactive MEK activates ERK" 9
                    END-OF-SOURCE
("Remove the fact that inactive MEK activates ERK"
 (:VAR MV2508 :ISA REMOVE :OBJECT MV2516 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2516 :ISA FACT :STATEMENT MV2514 :HAS-DETERMINER "THE")
 (:VAR MV2514 :ISA BIO-ACTIVATE :AGENT MV2513 :OBJECT MV2515 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2513 :ISA PROTEIN-FAMILY :PREDICATION MV2512 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2512 :ISA INACTIVE)
 (:VAR MV2515 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
256: "Show immune system pathways"

                    SOURCE-START
e5    SHOW          1 "Show immune system pathways" 5
                    END-OF-SOURCE
("Show immune system pathways"
 (:VAR MV2518 :ISA SHOW :STATEMENT-OR-THEME MV2519 :PRESENT "PRESENT")
 (:VAR MV2519 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2517 :RAW-TEXT "pathways")
 (:VAR MV2517 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
257: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2520 :ISA SHOW :STATEMENT-OR-THEME MV2522 :BENEFICIARY MV2521 :PRESENT
  "PRESENT")
 (:VAR MV2522 :ISA PATHWAY :PREDICATION MV2523 :RAW-TEXT "pathways")
 (:VAR MV2523 :ISA INVOLVE :PARTICIPANT MV2522 :THEME MV2524 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2524 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2521 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2525 :ISA SHOW :STATEMENT-OR-THEME MV2527 :BENEFICIARY MV2526 :PRESENT
  "PRESENT")
 (:VAR MV2527 :ISA PATHWAY :PATHWAYCOMPONENT MV2529 :RAW-TEXT "pathways")
 (:VAR MV2529 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2531 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2531 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV2526 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2534 :ISA SHOW :STATEMENT-OR-THEME MV2536 :BENEFICIARY MV2535 :PRESENT
  "PRESENT")
 (:VAR MV2536 :ISA PATHWAY :PATHWAYCOMPONENT MV2538 :RAW-TEXT "pathways")
 (:VAR MV2538 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2535 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2541 :ISA SHOW :STATEMENT-OR-THEME MV2548 :BENEFICIARY MV2542 :PRESENT
  "PRESENT")
 (:VAR MV2548 :ISA EVIDENCE :STATEMENT MV2547 :HAS-DETERMINER "THE")
 (:VAR MV2547 :ISA DECREASE :AGENT MV2546 :OBJECT MV2540 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2546 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2540 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2542 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2550 :ISA SHOW :STATEMENT-OR-THEME MV2561 :BENEFICIARY MV2551 :PRESENT
  "PRESENT")
 (:VAR MV2561 :ISA EVIDENCE :STATEMENT MV2556 :HAS-DETERMINER "THE")
 (:VAR MV2556 :ISA DECREASE :AGENT MV2555 :AFFECTED-PROCESS-OR-OBJECT MV2558
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2555 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2558 :ISA BIO-AMOUNT :MEASURED-ITEM MV2549 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV2549 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2551 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
262: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2563 :ISA SHOW :STATEMENT-OR-THEME MV2570 :BENEFICIARY MV2564 :PRESENT
  "PRESENT")
 (:VAR MV2570 :ISA EVIDENCE :STATEMENT MV2569 :HAS-DETERMINER "THE")
 (:VAR MV2569 :ISA REGULATE :AGENT MV2568 :OBJECT MV2562 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2568 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2562 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2564 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
263: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2573 :ISA SHOW :STATEMENT-OR-THEME MV2571 :PRESENT "PRESENT")
 (:VAR MV2571 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2574 :RAW-TEXT
  "transcription factors")
 (:VAR MV2574 :ISA SHARE :OBJECT MV2571 :PARTICIPANT MV2578 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV2578 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2572 MV2577))
 (:VAR MV2572 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2577 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
264: "Tell me how stat3 regulates apoptosis"

                    SOURCE-START
e10   TELL          1 "Tell me " 3
e9    REGULATE      3 "how stat3 regulates apoptosis" 8
                    END-OF-SOURCE
                    SOURCE-START
e10   VP            1 "Tell me " 3
e9    HOWCOMP       3 "how stat3 regulates apoptosis" 8
                    END-OF-SOURCE


___________________
265: "Tell me what apoptotic pathways are regulated by stat3 in the liver"

                    SOURCE-START
e27   TELL          1 "Tell me what apoptotic pathways are regulated by stat3 in the liver" 14
                    END-OF-SOURCE
("Tell me what apoptotic pathways are regulated by stat3 in the liver"
 (:VAR MV2588 :ISA TELL :THEME MV2600 :BENEFICIARY MV2589 :PRESENT "PRESENT")
 (:VAR MV2600 :ISA REGULATE :AFFECTED-PROCESS MV2593 :AGENT MV2587 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2593 :ISA PATHWAY :HAS-DETERMINER "WHAT" :PROCESS MV2591 :RAW-TEXT
  "pathways")
 (:VAR MV2591 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2587 :ISA PROTEIN :ORGAN MV2599 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2599 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2589 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e14   TELL          1 "Tell me " 3
e12   GENE          3 "what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
                    SOURCE-START
e14   VP            1 "Tell me " 3
e12   NP            3 "what genes elk1 and srf regulate" 10
                    END-OF-SOURCE


___________________
267: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2613 :ISA TELL :THEME MV2623 :BENEFICIARY MV2614 :PRESENT "PRESENT")
 (:VAR MV2623 :ISA REGULATE :AFFECTED-PROCESS MV2616 :AGENT MV2612 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2616 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2612 :ISA PROTEIN :ORGAN MV2622 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2622 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2614 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
268: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2629 :ISA INVOLVE :PARTICIPANT MV2628 :THEME MV2631 :PRESENT
  "PRESENT")
 (:VAR MV2628 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2627 :RAW-TEXT
  "pathways")
 (:VAR MV2627 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV2631 :ISA SIGNAL :MODIFIER MV2630 :RAW-TEXT "signaling")
 (:VAR MV2630 :ISA IMMUNE))

___________________
269: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2639 :ISA REGULATE :OBJECT MV2635 :AGENT MV2633 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2635 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2632 :RAW-TEXT
  "phosphatases")
 (:VAR MV2632 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2633 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
270: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2646 :ISA BE :SUBJECT MV2645 :PREDICATE MV2647 :PRESENT "PRESENT")
 (:VAR MV2645 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2644 :RAW-TEXT
  "genes")
 (:VAR MV2644 :ISA APOPTOTIC)
 (:VAR MV2647 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2641 :RAW-TEXT
  "downstream")
 (:VAR MV2641 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2657 :ISA REGULATE :OBJECT MV2655 :AGENT MV2651 :ORGAN MV2660 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2655 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2654 :RAW-TEXT
  "genes")
 (:VAR MV2654 :ISA APOPTOTIC)
 (:VAR MV2651 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2660 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
272: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2668 :ISA REGULATE :OBJECT MV2666 :AGENT MV2662 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2666 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2665 :RAW-TEXT
  "genes")
 (:VAR MV2665 :ISA APOPTOTIC)
 (:VAR MV2662 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
273: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2674 :ISA BE :SUBJECT MV2673 :PREDICATE MV2675 :PRESENT "PRESENT")
 (:VAR MV2673 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2672 :RAW-TEXT
  "genes")
 (:VAR MV2672 :ISA APOPTOTIC)
 (:VAR MV2675 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2673 :MODIFIER MV2669
  :RAW-TEXT "upstream")
 (:VAR MV2673 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2672 :RAW-TEXT
  "genes")
 (:VAR MV2672 :ISA APOPTOTIC)
 (:VAR MV2669 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
274: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2683 :ISA INVOLVE :PARTICIPANT MV2682 :THEME MV2678 :PRESENT
  "PRESENT")
 (:VAR MV2682 :ISA PATHWAY :HAS-DETERMINER "WHAT" :PROCESS MV2680 :RAW-TEXT
  "pathways")
 (:VAR MV2680 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2678 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
275: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2685 :ISA BE :SUBJECT MV2684 :PREDICATE MV2688 :PRESENT "PRESENT")
 (:VAR MV2684 :ISA WHAT)
 (:VAR MV2688 :ISA TARGET-PROTEIN :AGENT MV2687 :RAW-TEXT "targets")
 (:VAR MV2687 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
276: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2692 :ISA BE :SUBJECT MV2691 :PREDICATE MV2694 :PRESENT "PRESENT")
 (:VAR MV2691 :ISA WHAT)
 (:VAR MV2694 :ISA INHIBITOR :QUANTIFIER MV2693 :PROTEIN MV2690 :RAW-TEXT
  "inhibitors")
 (:VAR MV2693 :ISA SOME :WORD "some")
 (:VAR MV2690 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
277: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2696 :ISA BE :SUBJECT MV2695 :PREDICATE MV2698 :PRESENT "PRESENT")
 (:VAR MV2695 :ISA WHAT)
 (:VAR MV2698 :ISA DRUG :PREDICATION MV2700 :QUANTIFIER MV2697 :RAW-TEXT
  "drugs")
 (:VAR MV2700 :ISA INHIBIT :AGENT MV2698 :THAT-REL T :OBJECT MV2701 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2701 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2697 :ISA SOME :WORD "some"))

___________________
278: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2704 :ISA BE :SUBJECT MV2703 :PREDICATE MV2706 :PRESENT "PRESENT")
 (:VAR MV2703 :ISA WHAT)
 (:VAR MV2706 :ISA GENE :CONTEXT MV2702 :QUANTIFIER MV2705 :RAW-TEXT "genes")
 (:VAR MV2702 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2709
  :RAW-TEXT "signaling pathway")
 (:VAR MV2709 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2705 :ISA SOME :WORD "some"))

___________________
279: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2713 :ISA BE :SUBJECT MV2712 :PREDICATE MV2715 :PRESENT "PRESENT")
 (:VAR MV2712 :ISA WHAT)
 (:VAR MV2715 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2711 :QUANTIFIER MV2714
  :RAW-TEXT "proteins")
 (:VAR MV2711 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2718
  :RAW-TEXT "signaling pathway")
 (:VAR MV2718 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2714 :ISA SOME :WORD "some"))

___________________
280: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2721 :ISA BE :SUBJECT MV2720 :PREDICATE MV2723 :PRESENT "PRESENT")
 (:VAR MV2720 :ISA WHAT)
 (:VAR MV2723 :ISA MEMBER :SET MV2725 :HAS-DETERMINER "THE")
 (:VAR MV2725 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663"))

___________________
281: "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2731 :ISA BE :SUBJECT MV2730 :PREDICATE MV2733 :PRESENT "PRESENT")
 (:VAR MV2730 :ISA WHAT)
 (:VAR MV2733 :ISA MICRO-RNA :PREDICATION MV2735 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAS")
 (:VAR MV2735 :ISA REGULATE :AGENT MV2733 :THAT-REL T :OBJECT MV2739 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2739 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2736 MV2737 MV2727 MV2728 MV2729))
 (:VAR MV2736 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2737 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2727 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2728 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2729 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
282: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2741 :ISA BE :SUBJECT MV2740 :PREDICATE MV2743 :PRESENT "PRESENT")
 (:VAR MV2740 :ISA WHAT)
 (:VAR MV2743 :ISA REGULATOR :THEME MV2749 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2749 :ISA BIO-ENTITY :ORGAN MV2748 :NAME "MAPPK14")
 (:VAR MV2748 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
283: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2754 :ISA BE :SUBJECT MV2753 :PREDICATE MV2756 :PRESENT "PRESENT")
 (:VAR MV2753 :ISA WHAT)
 (:VAR MV2756 :ISA REGULATOR :THEME MV2752 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2752 :ISA PROTEIN :ORGAN MV2759 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV2759 :ISA LIVER))

___________________
284: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2764 :ISA BE :SUBJECT MV2763 :PREDICATE MV2766 :PRESENT "PRESENT")
 (:VAR MV2763 :ISA WHAT)
 (:VAR MV2766 :ISA REGULATOR :THEME MV2762 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2762 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
285: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2771 :ISA BE :SUBJECT MV2770 :PREDICATE MV2773 :PRESENT "PRESENT")
 (:VAR MV2770 :ISA WHAT)
 (:VAR MV2773 :ISA REGULATOR :THEME MV2769 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2769 :ISA PROTEIN :ORGAN MV2776 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2776 :ISA LUNG))

___________________
286: "What are the regulators of mapk14 in bladeeer"

                    SOURCE-START
e20   IN            1 "What are the regulators of mapk14 in bladeeer" 10
                    END-OF-SOURCE
("What are the regulators of mapk14 in bladeeer"
 (:VAR MV2792 :ISA WH-QUESTION :STATEMENT MV2790 :WH WHAT)
 (:VAR MV2790 :ISA PREPOSITIONAL-PHRASE :POBJ MV2789 :PREP "IN")
 (:VAR MV2789 :ISA BIO-ENTITY :NAME "bladeeer"))

___________________
287: "What are the regulators of mapk14"

                    SOURCE-START
e13   BE            1 "What are the regulators of mapk14" 8
                    END-OF-SOURCE
("What are the regulators of mapk14"
 (:VAR MV2795 :ISA BE :SUBJECT MV2794 :PREDICATE MV2797 :PRESENT "PRESENT")
 (:VAR MV2794 :ISA WHAT)
 (:VAR MV2797 :ISA REGULATOR :THEME MV2793 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2793 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN"))

___________________
288: "What are the targets of PLX-4720?"

                    SOURCE-START
e14   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV2802 :ISA BE :SUBJECT MV2801 :PREDICATE MV2804 :PRESENT "PRESENT")
 (:VAR MV2801 :ISA WHAT)
 (:VAR MV2804 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV2800 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV2800 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
289: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2822 :ISA COPULAR-PREDICATION :ITEM MV2811 :VALUE MV2809 :PREDICATE
  MV2812)
 (:VAR MV2811 :ISA WHAT) (:VAR MV2809 :ISA IN-COMMON :THEME MV2819)
 (:VAR MV2819 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2820 :RAW-TEXT
  "genes")
 (:VAR MV2820 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV2816 MV2817 MV2810))
 (:VAR MV2816 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2817 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV2810 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2812 :ISA BE :PREDICATE MV2808 :PRESENT "PRESENT")
 (:VAR MV2808 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
290: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2825 :ISA BE :SUBJECT MV2824 :PREDICATE MV2823 :PRESENT "PRESENT")
 (:VAR MV2824 :ISA WHAT)
 (:VAR MV2823 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2828 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2828 :ISA REGULATE :AGENT MV2823 :THAT-REL T :OBJECT MV2834 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2834 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2833 MV2832))
 (:VAR MV2833 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2832 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
291: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2839 :ISA BE :SUBJECT MV2838 :PREDICATE MV2835 :PRESENT "PRESENT")
 (:VAR MV2838 :ISA WHAT)
 (:VAR MV2835 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2842 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2842 :ISA REGULATE :AGENT MV2835 :THAT-REL T :OBJECT MV2849 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2849 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2843 MV2844 MV2848 MV2836 MV2837))
 (:VAR MV2843 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2844 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2848 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2836 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2837 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
292: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2855 :ISA BE :SUBJECT MV2854 :PREDICATE MV2850 :PRESENT "PRESENT")
 (:VAR MV2854 :ISA WHAT)
 (:VAR MV2850 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2858 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2858 :ISA REGULATE :AGENT MV2850 :THAT-REL T :OBJECT MV2862 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2862 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2859 MV2860 MV2851 MV2852 MV2853))
 (:VAR MV2859 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2860 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2851 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2852 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2853 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
293: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2867 :ISA BE :SUBJECT MV2866 :PREDICATE MV2871 :PRESENT "PRESENT")
 (:VAR MV2866 :ISA WHAT)
 (:VAR MV2871 :ISA REGULATOR :THEME MV2875 :HAS-DETERMINER "THE" :CONTEXT
  MV2869 :RAW-TEXT "regulators")
 (:VAR MV2875 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS (MV2863 MV2864 MV2873 MV2865))
 (:VAR MV2863 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME
  "CCND1_HUMAN")
 (:VAR MV2864 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME
  "FOXM1_HUMAN")
 (:VAR MV2873 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2865 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME
  "KLF4_HUMAN")
 (:VAR MV2869 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
294: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2884 :ISA REGULATE :OBJECT MV2879 :AGENT MV2883 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2879 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2877 :RAW-TEXT
  "genes")
 (:VAR MV2877 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :UID "GO:0007049")
 (:VAR MV2883 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
295: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2889 :ISA REGULATE :OBJECT MV2886 :AGENT MV2888 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2886 :ISA WHAT)
 (:VAR MV2888 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
296: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2893 :ISA REGULATE :OBJECT MV2890 :AGENT-OR-CAUSE MV2892 :ORGAN MV2895
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2890 :ISA WHAT) (:VAR MV2892 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2895 :ISA LIVER))

___________________
297: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2901 :ISA TARGET :OBJECT MV2898 :AGENT MV2897 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2898 :ISA WHAT)
 (:VAR MV2897 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
298: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2905 :ISA REGULATE :OBJECT MV2903 :AGENT MV2902 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2903 :ISA WHAT)
 (:VAR MV2902 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
299: "What does rb1 regulate"

                    SOURCE-START
e7    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2910 :ISA REGULATE :OBJECT MV2906 :AGENT MV2911 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2906 :ISA WHAT)
 (:VAR MV2911 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
300: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2915 :ISA REGULATE :OBJECT MV2913 :AGENT MV2912 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2913 :ISA WHAT)
 (:VAR MV2912 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
301: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2919 :ISA REGULATE :OBJECT MV2916 :AGENT MV2918 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2916 :ISA WHAT)
 (:VAR MV2918 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
302: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2922 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2921 :OBJECT MV2920 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV2921 :ISA WHAT)
 (:VAR MV2920 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
303: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2936 :ISA BIO-USE :PATIENT MV2925 :MODAL MV2926 :AGENT MV2927 :THEME
  MV2935 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2925 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2926 :ISA COULD) (:VAR MV2927 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2935 :ISA TARGET :OBJECT MV2923 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2923 :ISA CANCER :UID "TS-0739"))

___________________
304: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV2948 :ISA BIO-USE :OBJECT WHAT :MODAL MV2940 :AGENT MV2941 :DISEASE
  MV2937 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2940 :ISA SHOULD) (:VAR MV2941 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2937 :ISA CANCER :UID "TS-0739"))

___________________
305: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2952 :ISA BE :SUBJECT MV2951 :PREDICATE MV2953 :PRESENT "PRESENT")
 (:VAR MV2951 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2953 :ISA INHIBITOR :PROTEIN MV2949 :RAW-TEXT "inhibitors")
 (:VAR MV2949 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
306: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2959 :ISA INHIBIT :AGENT MV2958 :OBJECT MV2956 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV2958 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2956 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
307: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2962 :ISA REGULATE :AGENT MV2961 :OBJECT MV2963 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2961 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2963 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
308: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2967 :ISA TARGET :AGENT MV2965 :OBJECT MV2968 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2965 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2968 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
309: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2972 :ISA BE :SUBJECT MV2971 :PREDICATE MV2973 :PRESENT "PRESENT")
 (:VAR MV2971 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2973 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2969 :RAW-TEXT
  "downstream")
 (:VAR MV2969 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
310: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2987 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2979 :VALUE MV2986 :PREP
  "IN" :PREDICATE MV2980)
 (:VAR MV2979 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2986 :ISA GENE :CONTEXT MV2977 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2977 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2983
  :RAW-TEXT "signaling pathway")
 (:VAR MV2983 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2980 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2999 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2991 :VALUE MV2998 :PREP
  "IN" :PREDICATE MV2992)
 (:VAR MV2991 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2998 :ISA GENE :CONTEXT MV2989 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2989 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2995
  :RAW-TEXT "signaling pathways")
 (:VAR MV2995 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2992 :ISA BE :PRESENT "PRESENT"))

___________________
312: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV3011 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3003 :VALUE MV3010 :PREP
  "IN" :PREDICATE MV3004)
 (:VAR MV3003 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3010 :ISA GENE :CONTEXT MV3007 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3007 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3001
  :RAW-TEXT "pathway")
 (:VAR MV3001 :ISA BIO-ORGAN :UID "UBERON:0002405")
 (:VAR MV3004 :ISA BE :PRESENT "PRESENT"))

___________________
313: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV3023 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3015 :VALUE MV3022 :PREP
  "IN" :PREDICATE MV3016)
 (:VAR MV3015 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3022 :ISA GENE :CONTEXT MV3013 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3013 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3019
  :RAW-TEXT "signaling pathway")
 (:VAR MV3019 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV3016 :ISA BE :PRESENT "PRESENT"))

___________________
314: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV3036 :ISA INVOLVE :THEME MV3028 :CONTEXT MV3033 :PRESENT "PRESENT")
 (:VAR MV3028 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3033 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3026 :RAW-TEXT
  "pathway")
 (:VAR MV3026 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
315: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3047 :ISA INVOLVE :THEME MV3038 :CONTEXT MV3044 :PRESENT "PRESENT")
 (:VAR MV3038 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3044 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3043 :RAW-TEXT
  "pathway")
 (:VAR MV3043 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
316: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3058 :ISA INVOLVE :THEME MV3050 :CONTEXT MV3055 :PRESENT "PRESENT")
 (:VAR MV3050 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3055 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3048 :RAW-TEXT
  "pathway")
 (:VAR MV3048 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12"))

___________________
317: "What genes are involved in the immune system pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the immune system pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the immune system pathway?"
 (:VAR MV3069 :ISA INVOLVE :THEME MV3061 :CONTEXT MV3066 :PRESENT "PRESENT")
 (:VAR MV3061 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3066 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3059
  :RAW-TEXT "pathway")
 (:VAR MV3059 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
318: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   BY            1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3084 :ISA WH-QUESTION :STATEMENT MV3083 :VAR NIL :WH WHAT)
 (:VAR MV3083 :ISA PREPOSITIONAL-PHRASE :POBJ MV3081 :PREP "BY")
 (:VAR MV3081 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS (MV3070 MV3071 MV3072))
 (:VAR MV3070 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3071 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3072 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437"))

___________________
319: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   BY            1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3100 :ISA WH-QUESTION :STATEMENT MV3099 :VAR NIL :WH WHAT)
 (:VAR MV3099 :ISA PREPOSITIONAL-PHRASE :POBJ MV3097 :PREP "BY")
 (:VAR MV3097 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS (MV3085 MV3086 MV3087 MV3088))
 (:VAR MV3085 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3086 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3087 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3088 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
320: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   BY            1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3116 :ISA WH-QUESTION :STATEMENT MV3115 :VAR NIL :WH WHAT)
 (:VAR MV3115 :ISA PREPOSITIONAL-PHRASE :POBJ MV3113 :PREP "BY")
 (:VAR MV3113 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS (MV3101 MV3102 MV3103 MV3104))
 (:VAR MV3101 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3102 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3103 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3104 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
321: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3123 :ISA REGULATE :OBJECT MV3118 :AGENT MV3122 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3118 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3122 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
322: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3134 :ISA REGULATE :OBJECT MV3127 :AGENT MV3133 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3127 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3133 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3125 MV3132))
 (:VAR MV3125 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV3132 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3145 :ISA REGULATE :OBJECT MV3139 :AGENT MV3144 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3139 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3144 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV3136 MV3137))
 (:VAR MV3136 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV3137 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME
  "microRNA 29b-1-5pm" :UID "MIMAT0004514"))

___________________
324: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3155 :ISA REGULATE :OBJECT MV3148 :AGENT MV3154 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3148 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3154 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
325: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3163 :ISA REGULATE :OBJECT MV3158 :AGENT MV3162 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3158 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3162 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
326: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3174 :ISA REGULATE :OBJECT MV3167 :AGENT MV3173 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3167 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3173 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3165 MV3172))
 (:VAR MV3165 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3172 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
327: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3182 :ISA TARGET :OBJECT MV3178 :CAUSE MV3176 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3178 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3176 :ISA CANCER :UID "TS-0571"))

___________________
328: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3196 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3186 :VALUE MV3195 :PREP
  "IN" :PREDICATE MV3187)
 (:VAR MV3186 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3195 :ISA GENE :CONTEXT MV3184 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3184 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3192
  :RAW-TEXT "signaling pathway")
 (:VAR MV3192 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV3187 :ISA BE :PRESENT "PRESENT"))

___________________
329: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3206 :ISA BIO-USE :OBJECT MV3200 :CONTEXT MV3198 :PRESENT "PRESENT"
  :RAW-TEXT "used")
 (:VAR MV3200 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3198 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3205
  :RAW-TEXT "signaling pathway")
 (:VAR MV3205 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019"))

___________________
330: "What genes does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What genes does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does lung cancer target?"
 (:VAR MV3213 :ISA TARGET :OBJECT MV3210 :CAUSE MV3208 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3210 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3208 :ISA CANCER :UID "TS-0571"))

___________________
331: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3219 :ISA TARGET :OBJECT MV3216 :AGENT MV3214 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3216 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3214 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
332: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3225 :ISA TARGET :OBJECT MV3222 :AGENT MV3220 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3222 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3220 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
333: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3230 :ISA UPREGULATE :OBJECT MV3228 :AGENT MV3226 :PRESENT "PRESENT"
  :RAW-TEXT "upregulate")
 (:VAR MV3228 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3226 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
334: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3235 :ISA REGULATE :OBJECT MV3233 :AGENT MV3231 :CELL-TYPE MV3238
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3233 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3231 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3238 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3237)
 (:VAR MV3237 :ISA LIVER))

___________________
335: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3244 :ISA REGULATE :OBJECT MV3242 :AGENT MV3240 :ORGAN MV3246 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3242 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3240 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3246 :ISA LIVER))

___________________
336: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3252 :ISA REGULATE :OBJECT MV3250 :AGENT MV3248 :ORGAN MV3254 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3250 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3248 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3254 :ISA LUNG))

___________________
337: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3260 :ISA REGULATE :OBJECT MV3258 :AGENT MV3256 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3258 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3256 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3268 :ISA REGULATE :OBJECT MV3263 :AGENT MV3261 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3263 :ISA GENE :ORGAN MV3266 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3266 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3261 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
339: "What genes is stat3 upstream from?"

                    SOURCE-START
e11   BE            1 "What genes is stat3 upstream " 7
e7    FROM          7 "from" 8
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e11   S             1 "What genes is stat3 upstream " 7
e7    PREPOSITION   7 "from" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
340: "What genes is stat3 upstream of?"

                    SOURCE-START
e12   BE            1 "What genes is stat3 upstream of" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream of?"
 (:VAR MV3280 :ISA BE :SUBJECT MV3279 :PREDICATE MV3281 :PRESENT "PRESENT")
 (:VAR MV3279 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3281 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3279 :MODIFIER MV3277
  :RAW-TEXT "upstream")
 (:VAR MV3279 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3277 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
341: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3289 :ISA BE :SUBJECT MV3285 :PREDICATE MV3290 :PRESENT "PRESENT")
 (:VAR MV3285 :ISA GENE :PREDICATION MV3286 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3286 :ISA REGULATE :OBJECT MV3285 :AGENT MV3288 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3288 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3290 :ISA KINASE :RAW-TEXT "kinases"))

___________________
342: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3297 :ISA BE :SUBJECT MV3294 :PREDICATE MV3298 :PRESENT "PRESENT")
 (:VAR MV3294 :ISA GENE :PREDICATION MV3295 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3295 :ISA REGULATE :OBJECT MV3294 :AGENT MV3292 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3292 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3298 :ISA KINASE :RAW-TEXT "kinases"))

___________________
343: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3304 :ISA INVOLVE :PARTICIPANT MV3303 :THEME MV3307 :PRESENT
  "PRESENT")
 (:VAR MV3303 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3302 :RAW-TEXT
  "pathways")
 (:VAR MV3302 :ISA IMMUNE)
 (:VAR MV3307 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3305 MV3300))
 (:VAR MV3305 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3300 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
344: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3311 :ISA INVOLVE :PARTICIPANT MV3310 :THEME MV3312 :PRESENT
  "PRESENT")
 (:VAR MV3310 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3309 :RAW-TEXT
  "pathways")
 (:VAR MV3309 :ISA IMMUNE)
 (:VAR MV3312 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
345: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3317 :ISA INVOLVE :PARTICIPANT MV3316 :THEME MV3320 :PRESENT
  "PRESENT")
 (:VAR MV3316 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3315 :RAW-TEXT
  "pathways")
 (:VAR MV3315 :ISA IMMUNE)
 (:VAR MV3320 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3318 MV3313))
 (:VAR MV3318 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3313 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
346: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3324 :ISA INVOLVE :PARTICIPANT MV3323 :THEME MV3334 :PRESENT
  "PRESENT")
 (:VAR MV3323 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3322 :RAW-TEXT
  "pathways")
 (:VAR MV3322 :ISA IMMUNE)
 (:VAR MV3334 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3332 MV3333))
 (:VAR MV3332 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3333 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
347: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3336 :ISA INHIBIT :AGENT-OR-CAUSE MV3335 :OBJECT MV3337 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV3335 :ISA WHAT)
 (:VAR MV3337 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
348: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?"
 (:VAR MV3340 :ISA BE :SUBJECT MV3339 :PREDICATE MV3338 :PRESENT "PRESENT")
 (:VAR MV3339 :ISA WHAT)
 (:VAR MV3338 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
349: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?"
 (:VAR MV3342 :ISA BE :SUBJECT MV3341 :PREDICATE MV3343 :PRESENT "PRESENT")
 (:VAR MV3341 :ISA WHAT)
 (:VAR MV3343 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
350: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3346 :ISA BE :SUBJECT MV3345 :PREDICATE MV3347 :PRESENT "PRESENT")
 (:VAR MV3345 :ISA WHAT)
 (:VAR MV3347 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3344 :RAW-TEXT
  "downstream")
 (:VAR MV3344 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
351: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?"
 (:VAR MV3352 :ISA BE :SUBJECT MV3351 :PREDICATE MV3353 :PRESENT "PRESENT")
 (:VAR MV3351 :ISA WHAT)
 (:VAR MV3353 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
352: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?"
 (:VAR MV3355 :ISA BE :SUBJECT MV3354 :PREDICATE MV3356 :PRESENT "PRESENT")
 (:VAR MV3354 :ISA WHAT) (:VAR MV3356 :ISA BIO-ENTITY :NAME "errb"))

___________________
353: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3362 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3358 :AGENT MV3357
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3358 :ISA WHAT)
 (:VAR MV3357 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
354: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3366 :ISA BE :SUBJECT MV3365 :PREDICATE MV3372 :PRESENT "PRESENT")
 (:VAR MV3365 :ISA WHAT)
 (:VAR MV3372 :ISA EVIDENCE :STATEMENT MV3371 :HAS-DETERMINER "THE")
 (:VAR MV3371 :ISA DECREASE :AGENT MV3370 :OBJECT MV3364 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3370 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3364 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
355: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3375 :ISA BE :SUBJECT MV3374 :PREDICATE MV3385 :PRESENT "PRESENT")
 (:VAR MV3374 :ISA WHAT)
 (:VAR MV3385 :ISA EVIDENCE :STATEMENT MV3380 :HAS-DETERMINER "THE")
 (:VAR MV3380 :ISA DECREASE :AGENT MV3379 :AFFECTED-PROCESS-OR-OBJECT MV3382
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3379 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3382 :ISA BIO-AMOUNT :MEASURED-ITEM MV3373 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV3373 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
356: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3387 :ISA BE :SUBJECT MV3386 :PREDICATE MV3389 :PRESENT "PRESENT")
 (:VAR MV3386 :ISA WHAT)
 (:VAR MV3389 :ISA TARGET-PROTEIN :AGENT MV3392 :HAS-DETERMINER "THE" :RAW-TEXT
  "target")
 (:VAR MV3392 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
357: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3398 :ISA REGULATE :OBJECT MV3396 :AGENT MV3394 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3396 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3394 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
358: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3406 :ISA REGULATE :AGENT MV3403 :OBJECT MV3410 :PRESENT "PRESENT"
  :ADVERB MV3404 :ADVERB MV3405 :RAW-TEXT "regulate")
 (:VAR MV3403 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3410 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3407 MV3408 MV3399 MV3400 MV3401))
 (:VAR MV3407 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3408 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3399 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3400 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3401 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV3404 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3405 :ISA FREQUENTLY))

___________________
359: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3416 :ISA REGULATE :AGENT MV3415 :OBJECT MV3420 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3415 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3420 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3417 MV3418 MV3411 MV3412 MV3413))
 (:VAR MV3417 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3418 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3411 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3412 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3413 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
360: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV3425 :ISA TARGET :AGENT MV3423 :OBJECT MV3421 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3423 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV3421 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
361: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3432 :ISA REGULATE :OBJECT MV3428 :AGENT MV3426 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3428 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3426 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
362: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3437 :ISA REGULATE :AGENT MV3436 :OBJECT MV3438 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3436 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3438 :ISA GENE :CONTEXT MV3434 :RAW-TEXT "genes")
 (:VAR MV3434 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3441
  :RAW-TEXT "signaling pathways")
 (:VAR MV3441 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019"))

___________________
363: "What pahtways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pahtways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pahtways involve SRF?"
 (:VAR MV3444 :ISA INVOLVE :PARTICIPANT MV3446 :THEME MV3445 :PRESENT
  "PRESENT")
 (:VAR MV3446 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3445 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3457 :ISA COPULAR-PREDICATION :ITEM MV3449 :VALUE MV3451 :PREDICATE
  MV3450)
 (:VAR MV3449 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3451 :ISA COMMON :THEME MV3455)
 (:VAR MV3455 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3447 MV3454))
 (:VAR MV3447 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3454 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3450 :ISA BE :PRESENT "PRESENT"))

___________________
365: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV3460 :ISA INVOLVE :PARTICIPANT MV3459 :THEME MV3461 :PRESENT
  "PRESENT")
 (:VAR MV3459 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3461 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
366: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3464 :ISA INVOLVE :PARTICIPANT MV3463 :THEME MV3465 :PRESENT
  "PRESENT")
 (:VAR MV3463 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3465 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
367: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3469 :ISA INVOLVE :PARTICIPANT MV3468 :THEME MV3472 :PRESENT
  "PRESENT")
 (:VAR MV3468 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3472 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3470 MV3466))
 (:VAR MV3470 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3466 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
368: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3476 :ISA INVOLVE :PARTICIPANT MV3475 :THEME MV3473 :PRESENT
  "PRESENT")
 (:VAR MV3475 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3473 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3478
  :RAW-TEXT "transcription factor")
 (:VAR MV3478 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
369: "What pathways utilize srf and is srf a kinase"

                    SOURCE-START
e16   KINASE        1 "What pathways utilize srf and is srf a kinase" 10
                    END-OF-SOURCE
("What pathways utilize srf and is srf a kinase"
 (:VAR MV3489 :ISA WH-QUESTION :STATEMENT MV3487 :VAR NIL :WH WHAT)
 (:VAR MV3487 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
370: "What proteins are in the MAPK family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What proteins are in the MAPK family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are in the MAPK family?"
 (:VAR MV3500 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3491 :VALUE MV3498 :PREP
  "IN" :PREDICATE MV3492)
 (:VAR MV3491 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3498 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV3492 :ISA BE :PRESENT "PRESENT"))

___________________
371: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3507 :ISA TARGET :OBJECT MV3503 :CAUSE MV3501 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3503 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3501 :ISA CANCER :UID "TS-0571"))

___________________
372: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3514 :ISA TARGET :OBJECT MV3511 :AGENT MV3509 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3511 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3509 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
373: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3520 :ISA TARGET :OBJECT MV3517 :CAUSE MV3515 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3517 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3515 :ISA CANCER :UID "TS-0571"))

___________________
374: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3526 :ISA TARGET :OBJECT MV3522 :AGENT MV3524 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3522 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3524 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib"))

___________________
375: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3531 :ISA LEAD :AGENT MV3529 :THEME MV3534 :MODAL MV3530 :RAW-TEXT
  "lead")
 (:VAR MV3529 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3534 :ISA DEVELOPMENT :DISEASE MV3527 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3527 :ISA CANCER :UID "TS-0571") (:VAR MV3530 :ISA MIGHT))

___________________
376: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3542 :ISA LEAD :AGENT MV3540 :THEME MV3545 :MODAL MV3541 :RAW-TEXT
  "lead")
 (:VAR MV3540 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3545 :ISA DEVELOPMENT :DISEASE MV3538 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3538 :ISA CANCER :UID "TS-0739") (:VAR MV3541 :ISA MIGHT))

___________________
377: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3551 :ISA INVOLVE :PARTICIPANT MV3550 :THEME MV3553 :PRESENT
  "PRESENT")
 (:VAR MV3550 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3554 :RAW-TEXT
  "pathways")
 (:VAR MV3554 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3553 :ISA SIGNAL :MODIFIER MV3552 :RAW-TEXT "signaling")
 (:VAR MV3552 :ISA IMMUNE))

___________________
378: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3556 :ISA REGULATE :AGENT-OR-CAUSE MV3555 :OBJECT MV3557 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3555 :ISA WHAT)
 (:VAR MV3557 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
379: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3560 :ISA REGULATE :AGENT-OR-CAUSE MV3559 :OBJECT MV3558 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3559 :ISA WHAT)
 (:VAR MV3558 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
380: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3563 :ISA REGULATE :AGENT-OR-CAUSE MV3562 :OBJECT MV3561 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3562 :ISA WHAT)
 (:VAR MV3561 :ISA PROTEIN :ORGAN MV3565 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3565 :ISA LIVER))

___________________
381: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3576 :ISA SHARE :OBJECT MV3567 :PARTICIPANT MV3575 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3567 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3575 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3573 MV3568))
 (:VAR MV3573 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME
  "TF65_HUMAN")
 (:VAR MV3568 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
382: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3587 :ISA SHARE :OBJECT MV3578 :PARTICIPANT MV3586 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3578 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3586 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3579 MV3585))
 (:VAR MV3579 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3585 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
383: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3599 :ISA SHARE :OBJECT MV3589 :PARTICIPANT MV3598 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3589 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3598 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3590 MV3591 MV3597))
 (:VAR MV3590 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3591 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3597 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
384: "What tissues is STAT3 expressed in?"

                    SOURCE-START
e8    TISSUE        1 "What tissues " 3
e4    BE            3 "is " 4
e1    PROTEIN       4 "STAT3 " 6
e5    GENE-TRANSCRIPT-EXPRESS 6 "expressed " 7
e7    IN            7 "in" 8
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e8    NP            1 "What tissues " 3
e4    VG            3 "is " 4
e1    PROPER-NOUN   4 "STAT3 " 6
e5    VG+ED         6 "expressed " 7
e7    SPATIAL-PREPOSITION 7 "in" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
385: "What transcription factor produces SMURF2?"

                    SOURCE-START
e8    BIO-PRODUCE   1 "What transcription factor produces SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor produces SMURF2?"
 (:VAR MV3610 :ISA BIO-PRODUCE :AGENT MV3607 :OBJECT MV3608 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV3607 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3608 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
386: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3614 :ISA TRANSCRIBE :AGENT MV3611 :OBJECT MV3612 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV3611 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3612 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
387: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3630 :ISA COPULAR-PREDICATION :ITEM MV3615 :VALUE MV3622 :PREDICATE
  MV3621)
 (:VAR MV3615 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3622 :ISA COMMON :THEME MV3627)
 (:VAR MV3627 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3628 :RAW-TEXT
  "genes")
 (:VAR MV3628 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3616 MV3617 MV3625 MV3618 MV3619))
 (:VAR MV3616 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3617 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3625 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3618 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3619 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3621 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3644 :ISA COPULAR-PREDICATION :ITEM MV3631 :VALUE MV3637 :PREDICATE
  MV3636)
 (:VAR MV3631 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3637 :ISA COMMON :THEME MV3641)
 (:VAR MV3641 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3642 :RAW-TEXT
  "genes")
 (:VAR MV3642 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3632 MV3633 MV3634))
 (:VAR MV3632 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3633 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3634 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3636 :ISA BE :PRESENT "PRESENT"))

___________________
389: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3649 :ISA REGULATE :OBJECT MV3647 :AGENT MV3645 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3647 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3645 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
390: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3658 :ISA COPULAR-PREDICATION :ITEM MV3650 :VALUE MV3653 :PREDICATE
  MV3652)
 (:VAR MV3650 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3653 :ISA COMMON :THEME MV3656)
 (:VAR MV3656 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3652 :ISA BE :PRESENT "PRESENT"))

___________________
391: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3674 :ISA COPULAR-PREDICATION :ITEM MV3659 :VALUE MV3660 :PREDICATE
  MV3666)
 (:VAR MV3659 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3660 :ISA IN-COMMON :THEME MV3671)
 (:VAR MV3671 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3672 :RAW-TEXT
  "genes")
 (:VAR MV3672 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3661 MV3662 MV3669 MV3663 MV3664))
 (:VAR MV3661 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3662 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3669 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3663 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3664 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3666 :ISA BE :PRESENT "PRESENT"))

___________________
392: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3688 :ISA COPULAR-PREDICATION :ITEM MV3675 :VALUE MV3676 :PREDICATE
  MV3681)
 (:VAR MV3675 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3676 :ISA IN-COMMON :THEME MV3685)
 (:VAR MV3685 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3686 :RAW-TEXT
  "genes")
 (:VAR MV3686 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3677 MV3678 MV3679))
 (:VAR MV3677 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3678 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3679 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3681 :ISA BE :PRESENT "PRESENT"))

___________________
393: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3692 :ISA BE :SUBJECT MV3689 :PREDICATE MV3693 :PRESENT "PRESENT")
 (:VAR MV3689 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3693 :ISA REGULATOR :THEME MV3690 :RAW-TEXT "regulators")
 (:VAR MV3690 :ISA PROTEIN :ORGAN MV3696 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3696 :ISA LIVER))

___________________
394: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3702 :ISA BE :SUBJECT MV3699 :PREDICATE MV3703 :PRESENT "PRESENT")
 (:VAR MV3699 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3703 :ISA REGULATOR :THEME MV3700 :RAW-TEXT "regulators")
 (:VAR MV3700 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
395: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3718 :ISA SHARE :OBJECT MV3706 :PARTICIPANT MV3716 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3706 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3716 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3717 :RAW-TEXT
  "genes")
 (:VAR MV3717 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3713 MV3714 MV3707))
 (:VAR MV3713 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3714 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV3707 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
396: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3723 :ISA REGULATE :AGENT MV3720 :OBJECT MV3721 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3720 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3721 :ISA PROTEIN :ORGAN MV3725 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3725 :ISA LIVER))

___________________
397: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3730 :ISA REGULATE :AGENT MV3727 :OBJECT MV3728 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3727 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3728 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
398: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3733 :ISA REGULATE :AGENT MV3731 :OBJECT MV3734 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3731 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3734 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
399: "What transcription factors regulate genes in the mapk signaling pathwya"

                    SOURCE-START
e19   REGULATE      1 "What transcription factors regulate genes in the mapk signaling pathwya" 11
                    END-OF-SOURCE
("What transcription factors regulate genes in the mapk signaling pathwya"
 (:VAR MV3737 :ISA REGULATE :AGENT MV3735 :THEME MV3743 :OBJECT MV3738 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3735 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3743 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3741 :MODIFIER
  MV3742 :NAME "pathwya")
 (:VAR MV3741 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV3742 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV3738 :ISA GENE :RAW-TEXT "genes"))

___________________
400: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3746 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3748 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3748 :ISA REGULATE :OBJECT MV3746 :AGENT MV3745 :RAW-TEXT "regulated")
 (:VAR MV3745 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
401: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3752 :ISA TRANSCRIBE :AGENT MV3749 :OBJECT MV3750 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV3749 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3750 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
402: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3755 :ISA UPREGULATE :AGENT-OR-CAUSE MV3754 :OBJECT MV3753 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV3754 :ISA WHAT)
 (:VAR MV3753 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
403: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3761 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3757 :OBJECT MV3756
  :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV3757 :ISA WHERE)
 (:VAR MV3756 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
404: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3765 :ISA INVOLVE :PARTICIPANT MV3764 :THEME MV3766 :PRESENT
  "PRESENT")
 (:VAR MV3764 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3763 :RAW-TEXT
  "pathways")
 (:VAR MV3763 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3766 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
405: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3771 :ISA BIO-USE :AGENT MV3769 :OBJECT MV3772 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3769 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3768 :RAW-TEXT
  "pathways")
 (:VAR MV3768 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3772 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
406: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3776 :ISA REGULATE :AGENT MV3773 :OBJECT MV3774 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3773 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3774 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
407: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3780 :ISA REGULATE :AGENT-OR-CAUSE MV3777 :OBJECT MV3781 :PRESENT
  "PRESENT" :ADVERB MV3778 :RAW-TEXT "regulate")
 (:VAR MV3777 :ISA WHICH)
 (:VAR MV3781 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3778 :ISA ALSO))

___________________
408: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3790 :ISA REGULATE :OBJECT MV3786 :AGENT MV3782 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3786 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV3785 :RAW-TEXT
  "genes")
 (:VAR MV3785 :ISA APOPTOTIC)
 (:VAR MV3782 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
409: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3797 :ISA BE :SUBJECT MV3796 :PREDICATE MV3798 :PRESENT "PRESENT")
 (:VAR MV3796 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV3795 :RAW-TEXT
  "genes")
 (:VAR MV3795 :ISA APOPTOTIC)
 (:VAR MV3798 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3796 :MODIFIER MV3792
  :RAW-TEXT "upstream")
 (:VAR MV3796 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV3795 :RAW-TEXT
  "genes")
 (:VAR MV3795 :ISA APOPTOTIC)
 (:VAR MV3792 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
410: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3807 :ISA TARGET :OBJECT MV3803 :AGENT MV3801 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3803 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3801 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
411: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3814 :ISA BE :SUBJECT MV3811 :PREDICATE MV3815 :PRESENT "PRESENT")
 (:VAR MV3811 :ISA GENE :PREDICATION MV3812 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV3812 :ISA REGULATE :OBJECT MV3811 :AGENT MV3809 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3809 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3815 :ISA KINASE :RAW-TEXT "kinases"))

___________________
412: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3831 :ISA SHARE :OBJECT MV3823 :PARTICIPANT MV3829 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3823 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3822 :RAW-TEXT
  "pathways")
 (:VAR MV3822 :ISA IMMUNE)
 (:VAR MV3829 :ISA GENE :EXPRESSES MV3830 :RAW-TEXT "genes")
 (:VAR MV3830 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3817 MV3818 MV3827 MV3819 MV3820))
 (:VAR MV3817 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3818 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3827 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3819 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3820 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
413: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3846 :ISA SHARE :OBJECT MV3838 :PARTICIPANT MV3844 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3838 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3837 :RAW-TEXT
  "pathways")
 (:VAR MV3837 :ISA IMMUNE)
 (:VAR MV3844 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3845 :RAW-TEXT
  "genes")
 (:VAR MV3845 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3833 MV3834 MV3835))
 (:VAR MV3833 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3834 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3835 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
414: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3851 :ISA UTILIZE :PARTICIPANT MV3850 :OBJECT MV3852 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3850 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3855 :RAW-TEXT
  "pathways")
 (:VAR MV3855 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV3852 :ISA GENE :PREDICATION MV3853 :RAW-TEXT "genes")
 (:VAR MV3853 :ISA REGULATE :OBJECT MV3852 :AGENT MV3848 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3848 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
415: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3860 :ISA UTILIZE :PARTICIPANT MV3859 :OBJECT MV3861 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3859 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3858 :RAW-TEXT
  "pathways")
 (:VAR MV3858 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3861 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
416: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3865 :ISA UTILIZE :PARTICIPANT MV3864 :OBJECT MV3866 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3864 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3863 :RAW-TEXT
  "pathways")
 (:VAR MV3863 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV3866 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
417: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3874 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3870 :AGENT MV3867
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3870 :ISA PRONOUN/PLURAL :QUANTIFIER MV3868 :WORD "them")
 (:VAR MV3868 :ISA WHICH)
 (:VAR MV3867 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
418: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3884 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3879 :ORGAN MV3883
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV3879 :ISA THESE :QUANTIFIER MV3877 :WORD "these")
 (:VAR MV3877 :ISA WHICH) (:VAR MV3883 :ISA LIVER))

___________________
419: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3895 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3889 :VALUE MV3893 :PREP
  "IN" :PREDICATE MV3890)
 (:VAR MV3889 :ISA THESE :QUANTIFIER MV3887 :WORD "these")
 (:VAR MV3887 :ISA WHICH)
 (:VAR MV3893 :ISA PATHWAY :MODIFIER MV3892 :RAW-TEXT "pathways")
 (:VAR MV3892 :ISA IMMUNE) (:VAR MV3890 :ISA BE :PRESENT "PRESENT"))

___________________
420: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3901 :ISA PHOSPHORYLATE :AMINO-ACID MV3898 :AGENT MV3900 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV3898 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3900 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
421: "Which of these are kinases"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    END-OF-SOURCE
("Which of these are kinases"
 (:VAR MV3905 :ISA BE :SUBJECT MV3904 :PREDICATE MV3906 :PRESENT "PRESENT")
 (:VAR MV3904 :ISA THESE :QUANTIFIER MV3902 :WORD "these")
 (:VAR MV3902 :ISA WHICH) (:VAR MV3906 :ISA KINASE :RAW-TEXT "kinases"))

___________________
422: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3915 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3911 :AGENT MV3908
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3911 :ISA THOSE :QUANTIFIER MV3909 :WORD "those")
 (:VAR MV3909 :ISA WHICH)
 (:VAR MV3908 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
423: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3925 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3921 :AGENT MV3918
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3921 :ISA THESE :QUANTIFIER MV3919 :WORD "these")
 (:VAR MV3919 :ISA WHICH)
 (:VAR MV3918 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
424: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3935 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3930 :AGENT MV3934
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3930 :ISA THESE :QUANTIFIER MV3928 :WORD "these")
 (:VAR MV3928 :ISA WHICH) (:VAR MV3934 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
425: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3951 :ISA SHARE :OBJECT MV3943 :PARTICIPANT MV3949 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3943 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3949 :ISA GENE :EXPRESSES MV3950 :RAW-TEXT "genes")
 (:VAR MV3950 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3938 MV3939 MV3947 MV3940 MV3941))
 (:VAR MV3938 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3939 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3947 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3940 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3941 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
426: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3965 :ISA SHARE :OBJECT MV3956 :PARTICIPANT MV3964 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3956 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3964 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3953 MV3954 MV3963))
 (:VAR MV3953 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3954 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3963 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
427: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3981 :ISA SHARE :OBJECT MV3972 :PARTICIPANT MV3979 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3972 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3979 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3980 :RAW-TEXT
  "genes")
 (:VAR MV3980 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3967 MV3968 MV3977 MV3969 MV3970))
 (:VAR MV3967 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3968 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3977 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3969 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3970 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
428: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3987 :ISA INVOLVE :PARTICIPANT MV3986 :THEME MV3989 :PRESENT
  "PRESENT")
 (:VAR MV3986 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3989 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3983 MV3984))
 (:VAR MV3983 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3984 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
429: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3992 :ISA INVOLVE :PARTICIPANT MV3991 :THEME MV3993 :PRESENT
  "PRESENT")
 (:VAR MV3991 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3993 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
430: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3997 :ISA BIO-USE :AGENT MV3995 :OBJECT MV3998 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3995 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3998 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV4002 :ISA BIO-USE :AGENT MV4000 :OBJECT MV4003 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV4000 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4003 :ISA THESE :WORD "these"))

___________________
432: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV4006 :ISA UTILIZE :PARTICIPANT MV4005 :OBJECT MV4007 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV4005 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4007 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
433: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV4010 :ISA UTILIZE :PARTICIPANT MV4009 :OBJECT MV4012 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV4009 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4012 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
434: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV4019 :ISA TARGET :OBJECT MV4015 :AGENT MV4013 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV4015 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV4013 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
435: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV4024 :ISA UTILIZE :PARTICIPANT MV4023 :OBJECT MV4025 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV4023 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV4022 :RAW-TEXT
  "pathways")
 (:VAR MV4022 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV4025 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
436: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV4036 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4026 :VALUE MV4035 :PREP
  "IN" :PREDICATE MV4029)
 (:VAR MV4026 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4035 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV4027
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV4027 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4032
  :RAW-TEXT "signaling pathway")
 (:VAR MV4032 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV4029 :ISA BE :PRESENT "PRESENT"))

___________________
437: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV4041 :ISA REGULATE :AGENT MV4038 :OBJECT MV4039 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4038 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4039 :ISA PROTEIN :ORGAN MV4044 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV4044 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
438: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV4049 :ISA REGULATE :AGENT MV4046 :OBJECT MV4047 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4046 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4047 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
439: "Let's move AKT1 on top."

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV4057 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4052 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4052 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV4054 :THEME
  MV4051 :PRESENT "PRESENT")
 (:VAR MV4054 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4051 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
440: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4067 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4060 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4060 :ISA SHOW :AT-RELATIVE-LOCATION MV4064 :STATEMENT-OR-THEME MV4059
  :PRESENT "PRESENT")
 (:VAR MV4064 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4059 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4062 :RAW-TEXT
  "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4062 :ISA PHOSPHORYLATE :SUBSTRATE MV4059 :RAW-TEXT "phosphorylated"))

___________________
441: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4070 :ISA BE :SUBJECT MV4069 :PREDICATE MV4073 :PRESENT "PRESENT")
 (:VAR MV4069 :ISA WHAT)
 (:VAR MV4073 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4077 :HAS-DETERMINER
  "THE" :PREDICATION MV4072 :RAW-TEXT "upstreams")
 (:VAR MV4077 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV4068 MV4076))
 (:VAR MV4068 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4076 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV4072 :ISA COMMON))

___________________
442: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4086 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4084 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4084 :ISA LIVER))

___________________
443: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4093 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4091 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4091 :ISA SPLEEN))

___________________
444: "Show phosphorylated akt1 on top."

                    SOURCE-START
e12   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4095 :ISA SHOW :AT-RELATIVE-LOCATION MV4098 :STATEMENT-OR-THEME MV4094
  :PRESENT "PRESENT")
 (:VAR MV4098 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4094 :ISA PROTEIN :PREDICATION MV4096 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4096 :ISA PHOSPHORYLATE :SUBSTRATE MV4094 :RAW-TEXT "phosphorylated"))

___________________
445: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4103 :ISA BE :SUBJECT MV4102 :PREDICATE MV4106 :PRESENT "PRESENT")
 (:VAR MV4102 :ISA WHAT)
 (:VAR MV4106 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4110 :HAS-DETERMINER
  "THE" :PREDICATION MV4105 :RAW-TEXT "upstreams")
 (:VAR MV4110 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4101 MV4109))
 (:VAR MV4101 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4109 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4105 :ISA COMMON))

___________________
446: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4119 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV4113 MV4117))
 (:VAR MV4113 :ISA BIO-ACTIVATE :AGENT MV4112 :OBJECT MV4114 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4112 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4114 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4117 :ISA BIO-ACTIVATE :AGENT MV4116 :OBJECT MV4118 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4116 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4118 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
447: "What is the path from RAF to MEK?"

                    SOURCE-START
e16   BE            1 "What is the path from RAF to MEK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path from RAF to MEK?"
 (:VAR MV4121 :ISA BE :SUBJECT MV4120 :PREDICATE MV4123 :PRESENT "PRESENT")
 (:VAR MV4120 :ISA WHAT)
 (:VAR MV4123 :ISA PATH :END MV4127 :START MV4125 :HAS-DETERMINER "THE")
 (:VAR MV4127 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4125 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
448: "remove the fact that mek activates erk"

                    SOURCE-START
e14   REMOVE        1 "remove the fact that mek activates erk" 8
                    END-OF-SOURCE
("remove the fact that mek activates erk"
 (:VAR MV4130 :ISA REMOVE :OBJECT MV4137 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4137 :ISA FACT :STATEMENT MV4135 :HAS-DETERMINER "THE")
 (:VAR MV4135 :ISA BIO-ACTIVATE :AGENT MV4134 :OBJECT MV4136 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4134 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4136 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
449: "What tissues can I ask about?"

                    SOURCE-START
e12   ASK           1 "What tissues can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues can I ask about?"
 (:VAR MV4147 :ISA ASK :PATIENT MV4139 :MODAL MV4140 :AGENT MV4141 :PRESENT
  "PRESENT")
 (:VAR MV4139 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV4140 :ISA CAN)
 (:VAR MV4141 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
450: "let's show phosphorylated akt1 on top."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 on top" 10
                    PERIOD
                    END-OF-SOURCE
("let's show phosphorylated akt1 on top."
 (:VAR MV4156 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4150 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4150 :ISA SHOW :AT-RELATIVE-LOCATION MV4153 :STATEMENT-OR-THEME MV4149
  :PRESENT "PRESENT")
 (:VAR MV4153 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4149 :ISA PROTEIN :PREDICATION MV4151 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4151 :ISA PHOSPHORYLATE :SUBSTRATE MV4149 :RAW-TEXT "phosphorylated"))

___________________
451: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4159 :ISA BE :SUBJECT MV4158 :PREDICATE MV4157 :PRESENT "PRESENT")
 (:VAR MV4158 :ISA WHAT)
 (:VAR MV4157 :ISA POSITIVE-REGULATOR :THEME MV4163 :RAW-TEXT
  "positive regulators")
 (:VAR MV4163 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4162 :RAW-TEXT
  "gene")
 (:VAR MV4162 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
452: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e14   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4167 :ISA REGULATE :AGENT MV4165 :OBJECT MV4168 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4165 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4168 :ISA PROTEIN :NON-CELLULAR-LOCATION MV4172 :RAW-TEXT "FOS" :UID
  "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV4172 :ISA TISSUE))

___________________
453: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4181 :ISA THERE-EXISTS :VALUE MV4178 :PREDICATE MV4175)
 (:VAR MV4178 :ISA DRUG :PREDICATION MV4179 :QUANTIFIER MV4177 :RAW-TEXT
  "drugs")
 (:VAR MV4179 :ISA INHIBIT :AGENT MV4178 :OBJECT MV4180 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV4180 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4177 :ISA ANY :WORD "any") (:VAR MV4175 :ISA SYNTACTIC-THERE))

___________________
454: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4189 :ISA THERE-EXISTS :VALUE MV4186 :PREDICATE MV4183)
 (:VAR MV4186 :ISA DRUG :PREDICATION MV4187 :QUANTIFIER MV4185 :RAW-TEXT
  "drugs")
 (:VAR MV4187 :ISA TARGET :AGENT MV4186 :OBJECT MV4188 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV4188 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4185 :ISA ANY :WORD "any") (:VAR MV4183 :ISA SYNTACTIC-THERE))

___________________
455: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4203 :ISA THERE-EXISTS :VALUE MV4195 :PREDICATE MV4192)
 (:VAR MV4195 :ISA GENE :PREDICATION MV4204 :ORGAN MV4198 :QUANTIFIER MV4194
  :RAW-TEXT "genes")
 (:VAR MV4204 :ISA REGULATE :OBJECT MV4195 :THAT-REL T :AGENT MV4190 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4190 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4198 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4194 :ISA ANY :WORD "any") (:VAR MV4192 :ISA SYNTACTIC-THERE))

___________________
456: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4220 :ISA THERE-EXISTS :VALUE MV4212 :PREDICATE MV4209)
 (:VAR MV4212 :ISA GENE :PREDICATION MV4213 :QUANTIFIER MV4211 :RAW-TEXT
  "genes")
 (:VAR MV4213 :ISA INVOLVE :THEME MV4212 :THEME MV4215 :PAST "PAST")
 (:VAR MV4215 :ISA APOPTOSIS :PREDICATION MV4221 :RAW-TEXT "apoptosis")
 (:VAR MV4221 :ISA REGULATE :AFFECTED-PROCESS MV4215 :THAT-REL T :AGENT MV4207
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4207 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4211 :ISA ANY :WORD "any") (:VAR MV4209 :ISA SYNTACTIC-THERE))

___________________
457: "Are there any genes stat3 is upstream of?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there " 3
e17   BE            3 "any genes stat3 is upstream " 9
e12   OF            9 "of" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   SUBJ+VERB     1 "Are there " 3
e17   S             3 "any genes stat3 is upstream " 9
e12   PREPOSITION   9 "of" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
458: "Are there any inhibitors for JAK1?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any inhibitors for JAK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any inhibitors for JAK1?"
 (:VAR MV4242 :ISA THERE-EXISTS :VALUE MV4240 :PREDICATE MV4237)
 (:VAR MV4240 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4235 :QUANTIFIER MV4239
  :RAW-TEXT "inhibitors")
 (:VAR MV4235 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV4239 :ISA ANY :WORD "any") (:VAR MV4237 :ISA SYNTACTIC-THERE))

___________________
459: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4253 :ISA THERE-EXISTS :VALUE MV4248 :PREDICATE MV4246)
 (:VAR MV4248 :ISA GENE :PREDICATION MV4249 :RAW-TEXT "genes")
 (:VAR MV4249 :ISA REGULATE :OBJECT MV4248 :AGENT MV4254 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4254 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4244 MV4252))
 (:VAR MV4244 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4252 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4246 :ISA SYNTACTIC-THERE))

___________________
460: "Can you find any apoptotic pathways stat3 is involved in?"

                    SOURCE-START
e24   BIO-FIND      1 "Can you find any apoptotic pathways stat3 " 9
e21   INVOLVE       9 "is involved " 11
e13   IN            11 "in" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e24   S             1 "Can you find any apoptotic pathways stat3 " 9
e21   VG+PASSIVE    9 "is involved " 11
e13   SPATIAL-PREPOSITION 11 "in" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
461: "Can you find any apoptotic pathways that stat3 is involved in?"

                    SOURCE-START
e28   BIO-FIND      1 "Can you find any apoptotic pathways that stat3 is involved " 12
e15   IN            12 "in" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e28   S             1 "Can you find any apoptotic pathways that stat3 is involved " 12
e15   SPATIAL-PREPOSITION 12 "in" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
462: "Can you look up which genes targeted by stat3 are involved in apoptosis?"

                    SOURCE-START
e31   LOOK-UP       1 "Can you look up " 5
e7    WHICH         5 "which " 6
e29   INVOLVE       6 "genes targeted by stat3 are involved in apoptosis" 15
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e31   TRANSITIVE-CLAUSE-WITHOUT-OBJECT  1 "Can you look up " 5
e7    WH-PRONOUN    5 "which " 6
e29   S             6 "genes targeted by stat3 are involved in apoptosis" 15
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
463: "Can you show me genes regulated by ELK1"

                    SOURCE-START
e19   SHOW          1 "Can you show me genes regulated by ELK1" 10
                    END-OF-SOURCE
("Can you show me genes regulated by ELK1"
 (:VAR MV4314 :ISA POLAR-QUESTION :STATEMENT MV4308)
 (:VAR MV4308 :ISA SHOW :AGENT MV4307 :STATEMENT-OR-THEME MV4310 :BENEFICIARY
  MV4309 :MODAL "CAN")
 (:VAR MV4307 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4310 :ISA GENE :PREDICATION MV4311 :RAW-TEXT "genes")
 (:VAR MV4311 :ISA REGULATE :OBJECT MV4310 :AGENT MV4305 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4305 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4309 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4327 :ISA POLAR-QUESTION :STATEMENT MV4318)
 (:VAR MV4318 :ISA SHOW :AGENT MV4317 :STATEMENT-OR-THEME MV4320 :BENEFICIARY
  MV4319 :MODAL "CAN")
 (:VAR MV4317 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4320 :ISA GENE :PREDICATION MV4325 :RAW-TEXT "genes")
 (:VAR MV4325 :ISA REGULATE :OBJECT MV4320 :THAT-REL T :AGENT MV4315 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4315 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4319 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4337 :ISA POLAR-QUESTION :STATEMENT MV4330)
 (:VAR MV4330 :ISA SHOW :AGENT MV4329 :STATEMENT-OR-THEME MV4333 :BENEFICIARY
  MV4331 :MODAL "CAN")
 (:VAR MV4329 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4333 :ISA BIO-ENTITY :PREDICATION MV4335 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4335 :ISA INVOLVE :PARTICIPANT MV4333 :THAT-REL T :THEME MV4336 :MODAL
  "CAN")
 (:VAR MV4336 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4331 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e21   TELL          1 "Can you tell me " 5
e17   GENE          5 "the genes regulated by STAT3" 11
                    END-OF-SOURCE
                    SOURCE-START
e21   S             1 "Can you tell me " 5
e17   NP            5 "the genes regulated by STAT3" 11
                    END-OF-SOURCE


___________________
467: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e21   TELL          1 "Can you tell me " 5
e17   GENE          5 "the genes that STAT3 regulates" 11
                    END-OF-SOURCE
                    SOURCE-START
e21   S             1 "Can you tell me " 5
e17   NP            5 "the genes that STAT3 regulates" 11
                    END-OF-SOURCE


___________________
468: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me " 5
e24   GENE          5 "the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
                    SOURCE-START
e28   S             1 "Can you tell me " 5
e24   NP            5 "the genes that are regulated by STAT3" 13
                    END-OF-SOURCE


___________________
469: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e27   TELL          1 "Can you tell me " 5
e23   GENE          5 "the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
                    SOURCE-START
e27   S             1 "Can you tell me " 5
e23   NP            5 "the genes which are regulated by STAT3" 13
                    END-OF-SOURCE


___________________
470: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4403 :ISA POLAR-QUESTION :STATEMENT MV4392)
 (:VAR MV4392 :ISA TELL :AGENT MV4391 :THEME MV4401 :BENEFICIARY MV4393 :MODAL
  "CAN")
 (:VAR MV4391 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4401 :ISA SHARE :OBJECT MV4388 :PARTICIPANT MV4400 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV4388 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4400 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4389 MV4399))
 (:VAR MV4389 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4399 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4393 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
471: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4416 :ISA POLAR-QUESTION :STATEMENT MV4407)
 (:VAR MV4407 :ISA TELL :AGENT MV4406 :THEME MV4414 :BENEFICIARY MV4408 :MODAL
  "CAN")
 (:VAR MV4406 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4414 :ISA REGULATE :OBJECT MV4410 :AGENT MV4404 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4410 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4404 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4408 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
472: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4433 :ISA POLAR-QUESTION :STATEMENT MV4420)
 (:VAR MV4420 :ISA TELL :AGENT MV4419 :THEME MV4430 :BENEFICIARY MV4421 :MODAL
  "CAN")
 (:VAR MV4419 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4430 :ISA REGULATE :OBJECT MV4423 :AGENT MV4417 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4423 :ISA GENE :ORGAN MV4426 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4426 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4417 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4421 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
473: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e17   TELL          1 "Can you tell me " 5
e13   GENE          5 "which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e17   S             1 "Can you tell me " 5
e13   NP            5 "which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
474: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?"
 (:VAR MV4452 :ISA POLAR-QUESTION :STATEMENT MV4450)
 (:VAR MV4450 :ISA AFFECT :AGENT MV4443 :AFFECTED-PROCESS MV4448 :RAW-TEXT
  "affect")
 (:VAR MV4443 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4448 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4444 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4444 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
475: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4464 :ISA POLAR-QUESTION :STATEMENT MV4462)
 (:VAR MV4462 :ISA AFFECT :AGENT MV4453 :AFFECTED-PROCESS MV4458 :RAW-TEXT
  "affect")
 (:VAR MV4453 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4458 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4461 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4461 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4454 :RAW-TEXT
  "gene")
 (:VAR MV4454 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
476: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4477 :ISA POLAR-QUESTION :STATEMENT MV4475)
 (:VAR MV4475 :ISA INCREASE :AGENT MV4465 :AFFECTED-PROCESS MV4471 :RAW-TEXT
  "increase")
 (:VAR MV4465 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4471 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4474 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4474 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4466 :RAW-TEXT
  "gene")
 (:VAR MV4466 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
477: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4489 :ISA POLAR-QUESTION :STATEMENT MV4487)
 (:VAR MV4487 :ISA INCREASE :AGENT MV4478 :AFFECTED-PROCESS MV4483 :RAW-TEXT
  "increase")
 (:VAR MV4478 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4483 :ISA TRANSCRIBE :OBJECT MV4486 :RAW-TEXT "transcription")
 (:VAR MV4486 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4479 :RAW-TEXT
  "gene")
 (:VAR MV4479 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
478: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?"
 (:VAR MV4499 :ISA POLAR-QUESTION :STATEMENT MV4497)
 (:VAR MV4497 :ISA AFFECT :AGENT MV4490 :AFFECTED-PROCESS MV4494 :RAW-TEXT
  "affect")
 (:VAR MV4490 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4494 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4496 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4496 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
479: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?"
 (:VAR MV4509 :ISA POLAR-QUESTION :STATEMENT MV4508)
 (:VAR MV4508 :ISA CONTAIN :PARTICIPANT MV4506 :THEME MV4500)
 (:VAR MV4506 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4503 :RAW-TEXT
  "pathway")
 (:VAR MV4503 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV4500 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
480: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4512 :ISA BIO-FIND :OBJECT MV4514 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4514 :ISA TREATMENT :DISEASE MV4510 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV4510 :ISA CANCER :UID "TS-0739"))

___________________
481: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4519 :ISA BIO-FIND :OBJECT MV4520 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4520 :ISA GENE :PREDICATION MV4524 :ORGAN MV4523 :RAW-TEXT "genes")
 (:VAR MV4524 :ISA REGULATE :OBJECT MV4520 :AGENT MV4517 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4517 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4523 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4530 :ISA BIO-FIND :OBJECT MV4531 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4531 :ISA GENE :PREDICATION MV4533 :RAW-TEXT "genes")
 (:VAR MV4533 :ISA REGULATE :OBJECT MV4531 :THAT-REL T :AGENT MV4528 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4528 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
483: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4537 :ISA BIO-FIND :OBJECT MV4534 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4534 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4538 :RAW-TEXT
  "transcription factors")
 (:VAR MV4538 :ISA SHARE :OBJECT MV4534 :PARTICIPANT MV4542 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV4542 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4535 MV4541))
 (:VAR MV4535 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4541 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
484: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4548 :ISA BIO-ACTIVATE :MANNER MV4545 :AGENT MV4547 :OBJECT MV4544
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV4545 :ISA HOW)
 (:VAR MV4547 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4544 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
485: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4553 :ISA REGULATE :MANNER MV4551 :AGENT MV4549 :OBJECT MV4555
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4551 :ISA HOW)
 (:VAR MV4549 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4555 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4550 :RAW-TEXT
  "gene")
 (:VAR MV4550 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
486: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    SOURCE-START
e25   KNOCK-OUT     1 "How does knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("How does knocking out p53 cause cancer via its effect on miRNAs?"
 (:VAR MV4570 :ISA KNOCK-OUT :RAW-TEXT "knocking out" :CAUSE MV4557
  :BY-MEANS-OF MV4572 :OBJECT MV4563)
 (:VAR MV4557 :ISA HOW)
 (:VAR MV4572 :ISA EFFECT :OBJECT MV4569 :PARTICIPANT MV4565 :RAW-TEXT
  "effect")
 (:VAR MV4569 :ISA MICRO-RNA :RAW-TEXT "miRNAs")
 (:VAR MV4565 :ISA PRONOUN/INANIMATE :WORD "its")
 (:VAR MV4563 :ISA CANCER :MODIFIER MV4556 :MODIFIER MV4561)
 (:VAR MV4556 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV4561 :ISA CAUSE :RAW-TEXT "cause"))

___________________
487: "How does stat3 regulate apoptosis in the liver?"

                    SOURCE-START
e16   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis in the liver?"
 (:VAR MV4577 :ISA REGULATE :MANNER MV4575 :AGENT MV4574 :AFFECTED-PROCESS
  MV4578 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4575 :ISA HOW)
 (:VAR MV4574 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4578 :ISA APOPTOSIS :ORGAN MV4581 :RAW-TEXT "apoptosis")
 (:VAR MV4581 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
488: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4586 :ISA REGULATE :MANNER MV4584 :AGENT MV4583 :AFFECTED-PROCESS
  MV4587 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4584 :ISA HOW)
 (:VAR MV4583 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4587 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
489: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4591 :ISA REGULATE :MANNER MV4589 :AGENT MV4588 :OBJECT MV4594
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4589 :ISA HOW)
 (:VAR MV4588 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4594 :ISA GENE :MODIFIER MV4593 :RAW-TEXT "genes")
 (:VAR MV4593 :ISA APOPTOTIC))

___________________
490: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e15   INVOLVE       1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4605 :ISA INVOLVE :MANNER MV4596 :THEME MV4595 :THEME MV4602 :PAST
  "PAST")
 (:VAR MV4596 :ISA HOW)
 (:VAR MV4595 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4602 :ISA REGULATE :AGENT MV4600 :RAW-TEXT "regulation")
 (:VAR MV4600 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
491: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e22   INVOLVE       1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4619 :ISA INVOLVE :MANNER MV4607 :THEME MV4606 :THEME MV4611 :PAST
  "PAST")
 (:VAR MV4607 :ISA HOW)
 (:VAR MV4606 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4611 :ISA REGULATE :OBJECT MV4615 :ORGAN MV4614 :AGENT-OR-OBJECT
  MV4615 :RAW-TEXT "regulation")
 (:VAR MV4615 :ISA BIO-ENTITY :NAME "apoptotis")
 (:VAR MV4614 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4615 :ISA BIO-ENTITY :NAME "apoptotis"))

___________________
492: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e14   INVOLVE       1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4629 :ISA INVOLVE :MANNER MV4621 :THEME MV4620 :THEME MV4625 :PAST
  "PAST")
 (:VAR MV4621 :ISA HOW)
 (:VAR MV4620 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4625 :ISA REGULATE :AFFECTED-PROCESS MV4626 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV4626 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
493: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e14   BIO-USE       1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4639 :ISA BIO-USE :MANNER MV4631 :OBJECT MV4630 :THEME MV4637 :PAST
  "PAST" :RAW-TEXT "used")
 (:VAR MV4631 :ISA HOW)
 (:VAR MV4630 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4637 :ISA REGULATE :AFFECTED-PROCESS MV4636 :RAW-TEXT "regulate")
 (:VAR MV4636 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
494: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4651 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4643 :VALUE MV4650 :PREP
  "IN" :PREDICATE MV4644)
 (:VAR MV4643 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4642 :RAW-TEXT
  "genes")
 (:VAR MV4642 :ISA MANY :WORD "many")
 (:VAR MV4650 :ISA GENE :CONTEXT MV4640 :HAS-DETERMINER "HOW" :QUANTIFIER
  MV4642 :RAW-TEXT "genes")
 (:VAR MV4640 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4647
  :RAW-TEXT "signaling pathway")
 (:VAR MV4647 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV4642 :ISA MANY :WORD "many") (:VAR MV4644 :ISA BE :PRESENT "PRESENT"))

___________________
495: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4660 :ISA AFFECT :MANNER MV4655 :MODAL MV4656 :AGENT MV4658 :OBJECT
  MV4654 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4655 :ISA HOW) (:VAR MV4656 :ISA MIGHT)
 (:VAR MV4658 :ISA MUTATION :OBJECT MV4653 :HAS-DETERMINER "A" :AGENT-OR-OBJECT
  MV4653 :RAW-TEXT "mutation")
 (:VAR MV4653 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4653 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4654 :ISA CANCER :UID "TS-0591"))

___________________
496: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4668 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89672>
   (PREDICATE
    (#<regulator 89671>
     (THEME
      (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
497: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4676 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89672>
   (PREDICATE
    (#<regulator 89671>
     (THEME
      (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
498: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4686 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89676>
   (PREDICATE
    (#<regulator 89675>
     (THEME
      (#<gene 87936> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
499: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV4696 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89676>
   (PREDICATE
    (#<regulator 89675>
     (THEME
      (#<gene 87936> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
500: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4705 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88040>
   (PREDICATE
    (#<transcription-factor 88039>
     (CONTROLLED-GENE
      (#<gene 87935>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
501: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV4713 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89680>
   (PREDICATE
    (#<transcription-factor 89679>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
502: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV4721 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89680>
   (PREDICATE
    (#<transcription-factor 89679>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
503: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV4731 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89685>
   (PREDICATE
    (#<transcription-factor 89684>
     (CONTROLLED-GENE
      (#<gene 87936> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
504: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e12   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?"
 (:VAR MV4739 :ISA POLAR-QUESTION :STATEMENT MV4738)
 (:VAR MV4738 :ISA REGULATE :AGENT MV4732 :AGENT MV4733 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4732 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4733 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
505: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4749 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89685>
   (PREDICATE
    (#<transcription-factor 89684>
     (CONTROLLED-GENE
      (#<gene 87936> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86584> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
506: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1"
 (:VAR MV4751 :ISA LIST :THEME MV4752 :PRESENT "PRESENT")
 (:VAR MV4752 :ISA GENE :PREDICATION MV4753 :RAW-TEXT "genes")
 (:VAR MV4753 :ISA REGULATE :OBJECT MV4752 :AGENT MV4750 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4750 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
507: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1"
 (:VAR MV4757 :ISA LIST :THEME MV4758 :PRESENT "PRESENT")
 (:VAR MV4758 :ISA GENE :PREDICATION MV4763 :RAW-TEXT "genes")
 (:VAR MV4763 :ISA REGULATE :OBJECT MV4758 :THAT-REL T :AGENT MV4756 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4756 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
508: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates"
 (:VAR MV4766 :ISA LIST :THEME MV4768 :PRESENT "PRESENT")
 (:VAR MV4768 :ISA GENE :PREDICATION MV4770 :QUANTIFIER MV4767 :RAW-TEXT
  "genes")
 (:VAR MV4770 :ISA REGULATE :OBJECT MV4768 :THAT-REL T :AGENT MV4765 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4765 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4767 :ISA SOME :WORD "some"))

___________________
509: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates"
 (:VAR MV4772 :ISA LIST :THEME MV4774 :PRESENT "PRESENT")
 (:VAR MV4774 :ISA GENE :PREDICATION MV4775 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4775 :ISA REGULATE :OBJECT MV4774 :AGENT MV4771 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4771 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
510: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4777 :ISA LIST :THEME MV4779 :PRESENT "PRESENT")
 (:VAR MV4779 :ISA GENE :PREDICATION MV4784 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4784 :ISA REGULATE :OBJECT MV4779 :THAT-REL T :AGENT MV4776 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4776 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
511: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates"
 (:VAR MV4787 :ISA LIST :THEME MV4789 :PRESENT "PRESENT")
 (:VAR MV4789 :ISA GENE :PREDICATION MV4791 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4791 :ISA REGULATE :OBJECT MV4789 :AGENT MV4786 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4786 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
512: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF"
 (:VAR MV4792 :ISA LIST :THEME MV4794 :PRESENT "PRESENT")
 (:VAR MV4794 :ISA BIO-ENTITY :PREDICATION MV4796 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4796 :ISA INVOLVE :PARTICIPANT MV4794 :THAT-REL T :THEME MV4797
  :PRESENT "PRESENT")
 (:VAR MV4797 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
513: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4799 :ISA SHOW :STATEMENT-OR-THEME MV4801 :BENEFICIARY MV4800 :PRESENT
  "PRESENT")
 (:VAR MV4801 :ISA GENE :PREDICATION MV4802 :RAW-TEXT "genes")
 (:VAR MV4802 :ISA REGULATE :OBJECT MV4801 :AGENT MV4798 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4798 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4800 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
514: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4806 :ISA SHOW :STATEMENT-OR-THEME MV4808 :BENEFICIARY MV4807 :PRESENT
  "PRESENT")
 (:VAR MV4808 :ISA GENE :PREDICATION MV4813 :RAW-TEXT "genes")
 (:VAR MV4813 :ISA REGULATE :OBJECT MV4808 :THAT-REL T :AGENT MV4805 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4805 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4807 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
515: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4816 :ISA SHOW :STATEMENT-OR-THEME MV4818 :BENEFICIARY MV4817 :PRESENT
  "PRESENT")
 (:VAR MV4818 :ISA GENE :PREDICATION MV4820 :RAW-TEXT "genes")
 (:VAR MV4820 :ISA REGULATE :OBJECT MV4818 :THAT-REL T :AGENT MV4815 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4815 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4817 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
516: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4821 :ISA SHOW :STATEMENT-OR-THEME MV4824 :BENEFICIARY MV4822 :PRESENT
  "PRESENT")
 (:VAR MV4824 :ISA BIO-ENTITY :PREDICATION MV4826 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4826 :ISA INVOLVE :PARTICIPANT MV4824 :THAT-REL T :THEME MV4827
  :PRESENT "PRESENT")
 (:VAR MV4827 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4822 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4841 :ISA SHOW :STATEMENT MV4839 :THEME MV4831 :PRESENT "PRESENT")
 (:VAR MV4839 :ISA SHARE :OBJECT MV4828 :PARTICIPANT MV4838 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4828 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4838 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4829 MV4837))
 (:VAR MV4829 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4837 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4831 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4852 :ISA SHOW :STATEMENT MV4850 :THEME MV4844 :PRESENT "PRESENT")
 (:VAR MV4850 :ISA REGULATE :OBJECT MV4846 :AGENT MV4842 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4846 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4842 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4844 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4854 :ISA SHOW :STATEMENT-OR-THEME MV4856 :PRESENT "PRESENT")
 (:VAR MV4856 :ISA GENE :PREDICATION MV4858 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4858 :ISA REGULATE :OBJECT MV4856 :AGENT MV4853 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4853 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
520: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4859 :ISA SHOW :STATEMENT-OR-THEME MV4861 :PRESENT "PRESENT")
 (:VAR MV4861 :ISA BIO-ENTITY :PREDICATION MV4863 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4863 :ISA INVOLVE :PARTICIPANT MV4861 :THAT-REL T :THEME MV4864
  :PRESENT "PRESENT")
 (:VAR MV4864 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
521: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4867 :ISA SHOW :STATEMENT-OR-THEME MV4865 :PRESENT "PRESENT")
 (:VAR MV4865 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4875 :RAW-TEXT
  "transcription factors")
 (:VAR MV4875 :ISA SHARE :OBJECT MV4865 :THAT-REL T :PARTICIPANT MV4874
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4874 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4866 MV4873))
 (:VAR MV4866 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4873 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
522: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e19   TELL          1 "Tell me " 3
e17   GENE          3 "the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
                    SOURCE-START
e19   VP            1 "Tell me " 3
e17   NP            3 "the genes which are regulated by STAT3" 11
                    END-OF-SOURCE


___________________
523: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4890 :ISA TELL :THEME MV4900 :BENEFICIARY MV4891 :PRESENT "PRESENT")
 (:VAR MV4900 :ISA REGULATE :OBJECT MV4893 :AGENT MV4899 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4893 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4899 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4889 MV4898))
 (:VAR MV4889 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4898 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4891 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
524: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4903 :ISA TELL :THEME MV4910 :BENEFICIARY MV4904 :PRESENT "PRESENT")
 (:VAR MV4910 :ISA REGULATE :OBJECT MV4906 :AGENT MV4902 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4906 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4902 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4904 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
525: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4914 :ISA BE :SUBJECT MV4913 :PREDICATE MV4912 :PRESENT "PRESENT")
 (:VAR MV4913 :ISA WHAT)
 (:VAR MV4912 :ISA POSITIVE-REGULATOR :THEME MV4916 :RAW-TEXT
  "positive regulators")
 (:VAR MV4916 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
526: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4920 :ISA BE :SUBJECT MV4919 :PREDICATE MV4922 :PRESENT "PRESENT")
 (:VAR MV4919 :ISA WHAT)
 (:VAR MV4922 :ISA REGULATOR :THEME MV4918 :QUANTIFIER MV4921 :RAW-TEXT
  "regulators")
 (:VAR MV4918 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV4921 :ISA SOME :WORD "some"))

___________________
527: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4931 :ISA BE :SUBJECT MV4930 :PREDICATE MV4934 :PRESENT "PRESENT")
 (:VAR MV4930 :ISA WHAT)
 (:VAR MV4934 :ISA REGULATOR :THEME MV4938 :HAS-DETERMINER "THE" :PREDICATION
  MV4933 :RAW-TEXT "regulators")
 (:VAR MV4938 :ISA COLLECTION :RAW-TEXT
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE PROTEIN :NUMBER 6 :ITEMS
  (MV4925 MV4926 MV4936 MV4927 MV4928 MV4929))
 (:VAR MV4925 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME
  "ABI2_HUMAN")
 (:VAR MV4926 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME
  "ABL1_HUMAN")
 (:VAR MV4936 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME
  "ACDSB_HUMAN")
 (:VAR MV4927 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME
  "AGRL1_HUMAN")
 (:VAR MV4928 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME
  "ADRM1_HUMAN")
 (:VAR MV4929 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME
  "AGAP1_HUMAN")
 (:VAR MV4933 :ISA COMMON))

___________________
528: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4942 :ISA BE :SUBJECT MV4941 :PREDICATE MV4945 :PRESENT "PRESENT")
 (:VAR MV4941 :ISA WHAT)
 (:VAR MV4945 :ISA REGULATOR :THEME MV4949 :HAS-DETERMINER "THE" :PREDICATION
  MV4944 :RAW-TEXT "regulators")
 (:VAR MV4949 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4940 MV4948))
 (:VAR MV4940 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4948 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4944 :ISA COMMON))

___________________
529: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4953 :ISA BE :SUBJECT MV4952 :PREDICATE MV4956 :PRESENT "PRESENT")
 (:VAR MV4952 :ISA WHAT)
 (:VAR MV4956 :ISA REGULATOR :THEME MV4960 :HAS-DETERMINER "THE" :PREDICATION
  MV4955 :RAW-TEXT "regulators")
 (:VAR MV4960 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4951 MV4959))
 (:VAR MV4951 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4959 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4955 :ISA COMMON))

___________________
530: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4963 :ISA BE :SUBJECT MV4962 :PREDICATE MV4966 :PRESENT "PRESENT")
 (:VAR MV4962 :ISA WHAT)
 (:VAR MV4966 :ISA REGULATOR :THEME MV4969 :HAS-DETERMINER "THE" :PREDICATION
  MV4965 :RAW-TEXT "regulators")
 (:VAR MV4969 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV4965 :ISA COMMON))

___________________
531: "What are the genes regulated by STAT3?"

                    SOURCE-START
e13   REGULATE      1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4976 :ISA REGULATE :OBJECT
  (#<gene 89851> (HAS-DETERMINER (#<what 86379>))
   (HAS-DETERMINER (#<the 106> (WORD "the"))) (RAW-TEXT "genes"))
  :AGENT MV4971 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4971 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
532: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4981 :ISA BE :SUBJECT MV4980 :PREDICATE MV4983 :PRESENT "PRESENT")
 (:VAR MV4980 :ISA WHAT)
 (:VAR MV4983 :ISA GENE :PREDICATION MV4985 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4985 :ISA REGULATE :OBJECT MV4983 :AGENT MV4979 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4979 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
533: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4990 :ISA BE :SUBJECT MV4989 :PREDICATE MV4994 :PRESENT "PRESENT")
 (:VAR MV4989 :ISA WHAT)
 (:VAR MV4994 :ISA REGULATOR :THEME MV4999 :HAS-DETERMINER "THE" :MODIFIER
  MV4993 :RAW-TEXT "regulators")
 (:VAR MV4999 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4996 MV4997 MV4986 MV4987 MV4988))
 (:VAR MV4996 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4997 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4986 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4987 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4988 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV4993 :ISA FREQUENT :COMPARATIVE MV4992)
 (:VAR MV4992 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
534: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV5006 :ISA BE :SUBJECT MV5005 :PREDICATE MV5001 :PRESENT "PRESENT")
 (:VAR MV5005 :ISA WHAT)
 (:VAR MV5001 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV5009 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV5009 :ISA REGULATE :AGENT MV5001 :THAT-REL T :OBJECT MV5013 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5013 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV5010 MV5011 MV5002 MV5003 MV5004))
 (:VAR MV5010 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV5011 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5002 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5003 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV5004 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
535: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV5025 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5016 :VALUE MV5024 :PREP
  "IN" :PREDICATE MV5017)
 (:VAR MV5016 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV5015 :RAW-TEXT
  "genes")
 (:VAR MV5015 :ISA OTHER :WORD "other")
 (:VAR MV5024 :ISA GENE :CONTEXT MV5021 :HAS-DETERMINER "WHAT" :QUANTIFIER
  MV5015 :RAW-TEXT "genes")
 (:VAR MV5021 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5020 :RAW-TEXT
  "pathway")
 (:VAR MV5020 :ISA ORDINAL :WORD "first" :NUMBER 1)
 (:VAR MV5015 :ISA OTHER :WORD "other")
 (:VAR MV5017 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV5038 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5029 :VALUE MV5037 :PREP
  "IN" :PREDICATE MV5030)
 (:VAR MV5029 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV5028 :RAW-TEXT
  "proteins")
 (:VAR MV5028 :ISA OTHER :WORD "other")
 (:VAR MV5037 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV5034 :HAS-DETERMINER "WHAT"
  :QUANTIFIER MV5028 :RAW-TEXT "proteins")
 (:VAR MV5034 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5033 :RAW-TEXT
  "pathway")
 (:VAR MV5033 :ISA ORDINAL :WORD "first" :NUMBER 1)
 (:VAR MV5028 :ISA OTHER :WORD "other")
 (:VAR MV5030 :ISA BE :PRESENT "PRESENT"))

___________________
537: "What pathways are they in?"

                    SOURCE-START
e8    BE            1 "What pathways are they " 5
e5    IN            5 "in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e8    S             1 "What pathways are they " 5
e5    SPATIAL-PREPOSITION 5 "in" 6
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
538: "What pathways involve SOARING?"

                    SOURCE-START
e6    SOAR          1 "What pathways involve SOARING" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SOARING?"
 (:VAR MV5048 :ISA WH-QUESTION :STATEMENT
  (#<soar 89916> (PRESENT #<ref-category PRESENT>)) :VAR NIL :WH WHAT))

___________________
539: "What proteins are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    END-OF-SOURCE
("What proteins are in the first pathway"
 (:VAR MV5059 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5050 :VALUE MV5058 :PREP
  "IN" :PREDICATE MV5051)
 (:VAR MV5050 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV5058 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV5055 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "proteins")
 (:VAR MV5055 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5054 :RAW-TEXT
  "pathway")
 (:VAR MV5054 :ISA ORDINAL :WORD "first" :NUMBER 1)
 (:VAR MV5051 :ISA BE :PRESENT "PRESENT"))

___________________
540: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV5064 :ISA INVOLVE :PARTICIPANT MV5063 :THEME MV5061 :PRESENT
  "PRESENT")
 (:VAR MV5063 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5061 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
541: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5075 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5066 :VALUE MV5074 :PREP
  "IN" :PREDICATE MV5067)
 (:VAR MV5066 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5074 :ISA GENE :CONTEXT MV5071 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV5071 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5070 :RAW-TEXT
  "pathway")
 (:VAR MV5070 :ISA ORDINAL :WORD "first" :NUMBER 1)
 (:VAR MV5067 :ISA BE :PRESENT "PRESENT"))

___________________
542: "What questions can you answer about microRNAs?"

                    SOURCE-START
e14   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5088 :ISA ANSWER :PATIENT MV5078 :MODAL MV5080 :AGENT MV5081 :THEME
  MV5086 :PRESENT "PRESENT")
 (:VAR MV5078 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5080 :ISA CAN)
 (:VAR MV5081 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5086 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
543: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5092 :ISA REGULATE :AGENT MV5089 :OBJECT MV5090 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5089 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5090 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
  :NAME "SMAD" :COUNT 8 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "SMAD6_HUMAN") (:UID "UP:O43541"))
   (PROTEIN (:NAME "SMAD9_HUMAN") (:UID "UP:O15198"))
   (PROTEIN (:NAME "SMAD7_HUMAN") (:UID "UP:O15105"))
   (PROTEIN (:NAME "SMAD5_HUMAN") (:UID "UP:Q99717"))
   (PROTEIN (:NAME "SMAD1_HUMAN") (:UID "UP:Q15797"))
   (PROTEIN (:NAME "SMAD2_HUMAN") (:UID "UP:Q15796"))
   (PROTEIN (:NAME "SMAD4_HUMAN") (:UID "UP:Q13485"))
   (PROTEIN (:NAME "SMAD3_HUMAN") (:UID "UP:P84022")))
  :UID "FPLX:SMAD"))

___________________
544: "Where does stat3 regulate cfos"

                    SOURCE-START
e8    REGULATE      1 "Where does stat3 regulate cfos" 7
                    END-OF-SOURCE
("Where does stat3 regulate cfos"
 (:VAR MV5096 :ISA REGULATE :LOCATION MV5094 :AGENT MV5093 :OBJECT MV5097
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5094 :ISA WHERE)
 (:VAR MV5093 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5097 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
545: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5101 :ISA INVOLVE :PARTICIPANT MV5100 :THEME MV5102 :PRESENT
  "PRESENT")
 (:VAR MV5100 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5099 :RAW-TEXT
  "pathways")
 (:VAR MV5099 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5102 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :UID "PCID:5957"))

___________________
546: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5113 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5105 :VALUE MV5112 :PREP
  "IN" :PREDICATE MV5106)
 (:VAR MV5105 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5112 :ISA GENE :CONTEXT MV5103 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV5103 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5109
  :RAW-TEXT "signaling pathway")
 (:VAR MV5109 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV5106 :ISA BE :PRESENT "PRESENT"))

___________________
547: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5126 :ISA INVOLVE :THEME MV5117 :CONTEXT MV5115 :PRESENT "PRESENT")
 (:VAR MV5117 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5115 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5122
  :MODIFIER MV5123 :RAW-TEXT "signaling pathway")
 (:VAR MV5122 :ISA ONCOGENIC)
 (:VAR MV5123 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019"))

___________________
548: "Which kinases regulate x?"

                    SOURCE-START
e6    REGULATE      1 "Which kinases regulate x" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate x?"
 (:VAR MV5129 :ISA REGULATE :AGENT MV5128 :OBJECT MV5130 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5128 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5130 :ISA BIO-ENTITY :NAME "x"))

___________________
549: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5131 :ISA DOWNREGULATE :AGENT MV5133 :OBJECT MV5134 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5133 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5134 :ISA BIO-ENTITY :NAME "x"))

___________________
550: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5135 :ISA UPREGULATE :AGENT MV5137 :OBJECT MV5138 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulate")
 (:VAR MV5137 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5138 :ISA BIO-ENTITY :NAME "x"))

___________________
551: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5147 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5141 :VALUE MV5145 :PREP
  "IN" :PREDICATE MV5142)
 (:VAR MV5141 :ISA THESE :QUANTIFIER MV5139 :WORD "these")
 (:VAR MV5139 :ISA WHICH)
 (:VAR MV5145 :ISA PATHWAY :MODIFIER MV5144 :RAW-TEXT "pathways")
 (:VAR MV5144 :ISA IMMUNE) (:VAR MV5142 :ISA BE :PRESENT "PRESENT"))

___________________
552: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5157 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5152 :VALUE MV5155 :PREP
  "IN" :PREDICATE MV5153)
 (:VAR MV5152 :ISA THESE :QUANTIFIER MV5150 :WORD "these")
 (:VAR MV5150 :ISA WHICH)
 (:VAR MV5155 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5149 :RAW-TEXT "pathways")
 (:VAR MV5149 :ISA BIO-ORGAN :UID "UBERON:0002405")
 (:VAR MV5153 :ISA BE :PRESENT "PRESENT"))

___________________
553: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5161 :ISA BE :SUBJECT MV5160 :PREDICATE MV5163 :PRESENT "PRESENT")
 (:VAR MV5160 :ISA WHAT)
 (:VAR MV5163 :ISA GENE :PREDICATION MV5164 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV5164 :ISA REGULATE :OBJECT MV5163 :AGENT MV5159 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5159 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
554: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5174 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5167 :VALUE MV5172 :PREP
  "IN" :PREDICATE MV5168)
 (:VAR MV5167 :ISA THOSE :QUANTIFIER MV5165 :WORD "those")
 (:VAR MV5165 :ISA WHICH)
 (:VAR MV5172 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5171 :RAW-TEXT
  "pathway")
 (:VAR MV5171 :ISA IMMUNE) (:VAR MV5168 :ISA BE :PRESENT "PRESENT"))

___________________
555: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5179 :ISA INVOLVE :PARTICIPANT MV5178 :THEME MV5176 :PRESENT
  "PRESENT")
 (:VAR MV5178 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5176 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
556: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5189 :ISA POLAR-QUESTION :STATEMENT MV5182)
 (:VAR MV5182 :ISA SHOW :AGENT MV5181 :STATEMENT-OR-THEME MV5185 :BENEFICIARY
  MV5183 :MODAL "CAN")
 (:VAR MV5181 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5185 :ISA BIO-ENTITY :PREDICATION MV5187 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV5187 :ISA INVOLVE :PARTICIPANT MV5185 :THAT-REL T :THEME MV5188 :MODAL
  "CAN")
 (:VAR MV5188 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5183 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
557: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV5195 :ISA POLAR-QUESTION :STATEMENT MV5194)
 (:VAR MV5194 :ISA INHIBIT :AGENT MV5192 :OBJECT MV5190 :RAW-TEXT "inhibit")
 (:VAR MV5192 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV5190 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
558: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5205 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5197 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5197 :ISA BUILD :ARTIFACT MV5199 :PRESENT "PRESENT")
 (:VAR MV5199 :ISA MODEL :OBJECT MV5203 :HAS-DETERMINER "A")
 (:VAR MV5203 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5202)
 (:VAR MV5202 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN"))

___________________
559: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5223 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5221 MV5222))
 (:VAR MV5221 :ISA KNOW :AGENT MV5206 :STATEMENT MV5212 :PRESENT "PRESENT")
 (:VAR MV5206 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5212 :ISA BIO-ACTIVATE :AGENT MV5211 :OBJECT MV5213 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5211 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5213 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5222 :ISA COLLECTION :RAW-TEXT
  "Raf activates Mek and Mek activates Erk" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV5215 MV5219))
 (:VAR MV5215 :ISA BIO-ACTIVATE :AGENT MV5214 :OBJECT MV5216 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5214 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5216 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5219 :ISA BIO-ACTIVATE :AGENT MV5218 :OBJECT MV5220 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5218 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5220 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
560: "MAP2K1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "MAP2K1 phosphorylates MAPK1" 8
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylates MAPK1."
 (:VAR MV5226 :ISA PHOSPHORYLATE :AGENT MV5224 :SUBSTRATE MV5225 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV5224 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV5225 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
561: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5229 :ISA DEPHOSPHORYLATE :AGENT MV5227 :SUBSTRATE MV5228 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV5227 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5228 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
562: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5240 :ISA POLAR-QUESTION :STATEMENT MV5239)
 (:VAR MV5239 :ISA COPULAR-PREDICATION :ITEM MV5233 :VALUE MV5237 :PREDICATE
  MV5231)
 (:VAR MV5233 :ISA BIO-AMOUNT :MEASURED-ITEM MV5230 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5230 :ISA PROTEIN :PREDICATION MV5235 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5235 :ISA PHOSPHORYLATE :SUBSTRATE MV5230 :RAW-TEXT "phosphorylated")
 (:VAR MV5237 :ISA HIGH :ADVERB MV5236) (:VAR MV5236 :ISA ALWAYS)
 (:VAR MV5231 :ISA BE))

___________________
563: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5251 :ISA POLAR-QUESTION :STATEMENT MV5250)
 (:VAR MV5250 :ISA COPULAR-PREDICATION :ITEM MV5244 :VALUE MV5248 :PREDICATE
  MV5242)
 (:VAR MV5244 :ISA BIO-AMOUNT :MEASURED-ITEM MV5241 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5241 :ISA PROTEIN :PREDICATION MV5246 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5246 :ISA PHOSPHORYLATE :SUBSTRATE MV5241 :RAW-TEXT "phosphorylated")
 (:VAR MV5248 :ISA LOW :ADVERB MV5247) (:VAR MV5247 :ISA ALWAYS)
 (:VAR MV5242 :ISA BE))

___________________
564: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV5261 :ISA POLAR-QUESTION :STATEMENT MV5260)
 (:VAR MV5260 :ISA VANISH :AGENT MV5259 :RAW-TEXT "vanish")
 (:VAR MV5259 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV5253 :COMPONENT MV5252)
 (:VAR MV5253 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5252 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
565: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV5271 :ISA POLAR-QUESTION :STATEMENT MV5270)
 (:VAR MV5270 :ISA VANISH :AGENT MV5269 :RAW-TEXT "vanish")
 (:VAR MV5269 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV5263 :COMPONENT MV5262)
 (:VAR MV5263 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5262 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
566: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5299 :ISA POLAR-QUESTION :STATEMENT MV5298)
 (:VAR MV5298 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5295 :EVENT MV5291)
 (:VAR MV5295 :ISA WH-QUESTION :STATEMENT MV5292 :WH IF)
 (:VAR MV5292 :ISA INCREASE :AGENT-OR-CAUSE MV5281 :MULTIPLIER MV5290
  :AFFECTED-PROCESS-OR-OBJECT MV5285 :RAW-TEXT "increase")
 (:VAR MV5281 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5290 :ISA N-FOLD :NUMBER MV5289) (:VAR MV5289 :ISA NUMBER :VALUE 10)
 (:VAR MV5285 :ISA BIO-AMOUNT :MEASURED-ITEM MV5273 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5273 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5291 :ISA VANISH :CAUSE MV5276 :RAW-TEXT "vanish")
 (:VAR MV5276 :ISA BIO-AMOUNT :MEASURED-ITEM MV5272 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5272 :ISA PROTEIN :PREDICATION MV5278 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5278 :ISA PHOSPHORYLATE :SUBSTRATE MV5272 :RAW-TEXT "phosphorylated"))

___________________
567: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5301 :ISA SHOW :STATEMENT-OR-THEME MV5308 :BENEFICIARY MV5302 :PRESENT
  "PRESENT")
 (:VAR MV5308 :ISA EVIDENCE :STATEMENT MV5307 :HAS-DETERMINER "THE")
 (:VAR MV5307 :ISA REGULATE :AGENT MV5306 :OBJECT MV5300 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5306 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5300 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV5302 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
568: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5312 :ISA INCREASE :AGENT-OR-CAUSE MV5310 :AFFECTED-PROCESS-OR-OBJECT
  MV5314 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5310 :ISA WHAT)
 (:VAR MV5314 :ISA BIO-AMOUNT :MEASURED-ITEM MV5309 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5309 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
569: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5327 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5319 :VALUE MV5326 :PREP
  "IN" :PREDICATE MV5320)
 (:VAR MV5319 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5326 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5317 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV5317 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5323
  :RAW-TEXT "signaling pathway")
 (:VAR MV5323 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV5320 :ISA BE :PRESENT "PRESENT"))

___________________
570: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5340 :ISA POLAR-QUESTION :STATEMENT MV5338)
 (:VAR MV5338 :ISA REGULATE :AGENT MV5329 :OBJECT MV5334 :RAW-TEXT "regulate")
 (:VAR MV5329 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5334 :ISA GENE :ORGAN MV5337 :HAS-DETERMINER "THE" :EXPRESSES MV5330
  :RAW-TEXT "gene")
 (:VAR MV5337 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5330 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
571: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5347 :ISA REGULATE :OBJECT MV5343 :AGENT MV5341 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5343 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5341 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
572: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5356 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5352 :AGENT MV5349
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5352 :ISA THESE :QUANTIFIER MV5350 :WORD "these")
 (:VAR MV5350 :ISA WHICH)
 (:VAR MV5349 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
573: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5364 :ISA REGULATE :AGENT-OR-CAUSE MV5361 :OBJECT MV5365 :PRESENT
  "PRESENT" :ADVERB MV5362 :RAW-TEXT "regulate")
 (:VAR MV5361 :ISA THESE :QUANTIFIER MV5359 :WORD "these")
 (:VAR MV5359 :ISA WHICH)
 (:VAR MV5365 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5362 :ISA ALSO))

___________________
574: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5370 :ISA TRANSCRIBE :AGENT MV5367 :OBJECT MV5368 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV5367 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5368 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
575: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5374 :ISA TRANSCRIBE :AGENT MV5371 :OBJECT MV5372 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV5371 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV5372 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
576: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5378 :ISA UTILIZE :PARTICIPANT MV5377 :OBJECT MV5379 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV5377 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5376 :RAW-TEXT
  "pathways")
 (:VAR MV5376 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5379 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
577: "What transcription factors are in the calcium regulated pathways?"

                    SOURCE-START
e17   REGULATE      1 "What transcription factors are in the calcium regulated pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in the calcium regulated pathways?"
 (:VAR MV5390 :ISA WH-QUESTION :STATEMENT MV5386 :VAR NIL :WH WHAT)
 (:VAR MV5386 :ISA REGULATE :AFFECTED-PROCESS MV5387 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV5387 :ISA PATHWAY :RAW-TEXT "pathways"))

___________________
578: "What pathways involve the immune system?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the immune system?"
 (:VAR MV5394 :ISA INVOLVE :PARTICIPANT MV5393 :THEME MV5391 :PRESENT
  "PRESENT")
 (:VAR MV5393 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5391 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :UID "UBERON:0002405"))

___________________
579: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5401 :ISA INVOLVE :PARTICIPANT MV5400 :THEME MV5404 :PRESENT
  "PRESENT")
 (:VAR MV5400 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5399 :RAW-TEXT
  "pathways")
 (:VAR MV5399 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5404 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5396 MV5402 MV5397))
 (:VAR MV5396 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME
  "ERBB2_HUMAN")
 (:VAR MV5402 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5397 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME
  "MK08_HUMAN"))

___________________
580: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5412 :ISA SHARE :OBJECT MV5406 :PARTICIPANT MV5411 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5406 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5411 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
581: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5420 :ISA REGULATE :OBJECT MV5415 :AGENT MV5419 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5415 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5419 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
582: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5423 :ISA BE :SUBJECT MV5422 :PREDICATE MV5425 :PRESENT "PRESENT")
 (:VAR MV5422 :ISA WHAT)
 (:VAR MV5425 :ISA PATHWAY :PATHWAYCOMPONENT MV5428 :PREDICATION MV5424
  :RAW-TEXT "pathways")
 (:VAR MV5428 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV5424 :ISA COMMON))

___________________
583: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5442 :ISA SHARE :OBJECT MV5435 :PARTICIPANT MV5440 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5435 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5434 :RAW-TEXT
  "pathways")
 (:VAR MV5434 :ISA IMMUNE)
 (:VAR MV5440 :ISA GENE :EXPRESSES MV5441 :RAW-TEXT "genes")
 (:VAR MV5441 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5430 MV5431 MV5432))
 (:VAR MV5430 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5431 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV5432 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
584: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5451 :ISA REGULATE :OBJECT MV5447 :AGENT MV5445 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5447 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5444 :RAW-TEXT
  "phosphatase")
 (:VAR MV5444 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV5445 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
585: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5457 :ISA INVOLVE :PARTICIPANT MV5456 :THEME MV5453 :PRESENT
  "PRESENT")
 (:VAR MV5456 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5455 :RAW-TEXT
  "pathways")
 (:VAR MV5455 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV5453 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
586: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?"
 (:VAR MV5462 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88026>
   (PREDICATE
    (#<kinase 88025> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
587: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5467 :ISA POLAR-QUESTION :STATEMENT
  (#<be 90124>
   (PREDICATE
    (#<transcription-factor 88037> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
588: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5471 :ISA BE :SUBJECT MV5470 :PREDICATE MV5473 :PRESENT "PRESENT")
 (:VAR MV5470 :ISA THESE :QUANTIFIER MV5468 :WORD "these")
 (:VAR MV5468 :ISA WHICH)
 (:VAR MV5473 :ISA KINASE :ENZYME MV5472 :RAW-TEXT "kinases")
 (:VAR MV5472 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
589: "Which of these are tyrosine kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5478 :ISA BE :SUBJECT MV5477 :PREDICATE MV5480 :PRESENT "PRESENT")
 (:VAR MV5477 :ISA THESE :QUANTIFIER MV5475 :WORD "these")
 (:VAR MV5475 :ISA WHICH)
 (:VAR MV5480 :ISA KINASE :AMINO-ACID MV5479 :RAW-TEXT "kinases")
 (:VAR MV5479 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
590: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5485 :ISA BE :SUBJECT MV5484 :PREDICATE MV5488 :PRESENT "PRESENT")
 (:VAR MV5484 :ISA THESE :QUANTIFIER MV5482 :WORD "these")
 (:VAR MV5482 :ISA WHICH)
 (:VAR MV5488 :ISA KINASE :AMINO-ACID MV5489 :RAW-TEXT "kinases")
 (:VAR MV5489 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5486 MV5487))
 (:VAR MV5486 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5487 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
591: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5494 :ISA BE :SUBJECT MV5493 :PREDICATE MV5495 :PRESENT "PRESENT")
 (:VAR MV5493 :ISA THESE :QUANTIFIER MV5491 :WORD "these")
 (:VAR MV5491 :ISA WHICH)
 (:VAR MV5495 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
592: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5500 :ISA BE :SUBJECT MV5499 :PREDICATE MV5501 :PRESENT "PRESENT")
 (:VAR MV5499 :ISA THESE :QUANTIFIER MV5497 :WORD "these")
 (:VAR MV5497 :ISA WHICH)
 (:VAR MV5501 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME
  "VPK9_HUMAN"))

___________________
593: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5506 :ISA BE :SUBJECT MV5505 :PREDICATE MV5507 :PRESENT "PRESENT")
 (:VAR MV5505 :ISA THESE :QUANTIFIER MV5503 :WORD "these")
 (:VAR MV5503 :ISA WHICH) (:VAR MV5507 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
594: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e13   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5512 :ISA BE :SUBJECT MV5511 :PREDICATE MV5515 :PRESENT "PRESENT")
 (:VAR MV5511 :ISA THESE :QUANTIFIER MV5509 :WORD "these")
 (:VAR MV5509 :ISA WHICH)
 (:VAR MV5515 :ISA RECEPTOR :MODIFIER MV5513 :MODIFIER MV5514 :RAW-TEXT
  "receptors")
 (:VAR MV5513 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine")
 (:VAR MV5514 :ISA KINASE :RAW-TEXT "kinase"))

___________________
595: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5521 :ISA BE :SUBJECT MV5520 :PREDICATE MV5517 :PRESENT "PRESENT")
 (:VAR MV5520 :ISA THESE :QUANTIFIER MV5518 :WORD "these")
 (:VAR MV5518 :ISA WHICH)
 (:VAR MV5517 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
596: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5527 :ISA BE :SUBJECT MV5526 :PREDICATE MV5523 :PRESENT "PRESENT")
 (:VAR MV5526 :ISA THESE :QUANTIFIER MV5524 :WORD "these")
 (:VAR MV5524 :ISA WHICH)
 (:VAR MV5523 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
597: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5533 :ISA BE :SUBJECT MV5532 :PREDICATE MV5529 :PRESENT "PRESENT")
 (:VAR MV5532 :ISA THESE :QUANTIFIER MV5530 :WORD "these")
 (:VAR MV5530 :ISA WHICH)
 (:VAR MV5529 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
598: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5538 :ISA BE :SUBJECT MV5537 :PREDICATE MV5539 :PRESENT "PRESENT")
 (:VAR MV5537 :ISA THESE :QUANTIFIER MV5535 :WORD "these")
 (:VAR MV5535 :ISA WHICH)
 (:VAR MV5539 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
599: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5544 :ISA BE :SUBJECT MV5543 :PREDICATE MV5545 :PRESENT "PRESENT")
 (:VAR MV5543 :ISA THESE :QUANTIFIER MV5541 :WORD "these")
 (:VAR MV5541 :ISA WHICH)
 (:VAR MV5545 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
600: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5550 :ISA BE :SUBJECT MV5549 :PREDICATE MV5551 :PRESENT "PRESENT")
 (:VAR MV5549 :ISA THESE :QUANTIFIER MV5547 :WORD "these")
 (:VAR MV5547 :ISA WHICH)
 (:VAR MV5551 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
601: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5556 :ISA BE :SUBJECT MV5555 :PREDICATE MV5558 :PRESENT "PRESENT")
 (:VAR MV5555 :ISA THESE :QUANTIFIER MV5553 :WORD "these")
 (:VAR MV5553 :ISA WHICH)
 (:VAR MV5558 :ISA RECEPTOR :MODIFIER MV5557 :RAW-TEXT "receptors")
 (:VAR MV5557 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
602: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5564 :ISA BE :SUBJECT MV5563 :PREDICATE MV5560 :PRESENT "PRESENT")
 (:VAR MV5563 :ISA THESE :QUANTIFIER MV5561 :WORD "these")
 (:VAR MV5561 :ISA WHICH)
 (:VAR MV5560 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
  "receptor tyrosine kinase" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TKTL1_HUMAN") (:UID "UP:P51854"))
   (PROTEIN (:NAME "NTRK1_HUMAN") (:UID "UP:P04629")))
  :UID "NCIT:C17660"))

___________________
603: "Which of these are transcription factors?"

                    SOURCE-START
e10   BE            1 "Which of these are transcription factors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are transcription factors?"
 (:VAR MV5570 :ISA BE :SUBJECT MV5569 :PREDICATE MV5566 :PRESENT "PRESENT")
 (:VAR MV5569 :ISA THESE :QUANTIFIER MV5567 :WORD "these")
 (:VAR MV5567 :ISA WHICH)
 (:VAR MV5566 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
604: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5576 :ISA BE :SUBJECT MV5575 :PREDICATE MV5577 :PRESENT "PRESENT")
 (:VAR MV5575 :ISA THESE :QUANTIFIER MV5573 :WORD "these")
 (:VAR MV5573 :ISA WHICH)
 (:VAR MV5577 :ISA PROTEIN :MODIFIER MV5572 :RAW-TEXT "proteins")
 (:VAR MV5572 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
605: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5582 :ISA BE :SUBJECT MV5581 :PREDICATE MV5585 :PRESENT "PRESENT")
 (:VAR MV5581 :ISA THESE :QUANTIFIER MV5579 :WORD "these")
 (:VAR MV5579 :ISA WHICH)
 (:VAR MV5585 :ISA PHOSPHATASE :MODIFIER MV5586 :RAW-TEXT "phosphatases")
 (:VAR MV5586 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5583 MV5584))
 (:VAR MV5583 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5584 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
606: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5591 :ISA BE :SUBJECT MV5590 :PREDICATE MV5593 :PRESENT "PRESENT")
 (:VAR MV5590 :ISA THESE :QUANTIFIER MV5588 :WORD "these")
 (:VAR MV5588 :ISA WHICH)
 (:VAR MV5593 :ISA PHOSPHATASE :MODIFIER MV5592 :RAW-TEXT "phosphatases")
 (:VAR MV5592 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
607: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5598 :ISA PHOSPHORYLATE :AMINO-ACID MV5595 :AGENT MV5597 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV5595 :ISA WHAT)
 (:VAR MV5597 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
608: "which of these are exclusively expressed in liver?"

                    SOURCE-START
e16   GENE-TRANSCRIPT-EXPRESS 1 "which of these are exclusively expressed in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("which of these are exclusively expressed in liver?"
 (:VAR MV5607 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5601 :ORGAN MV5606
  :PRESENT "PRESENT" :ADVERB MV5603 :RAW-TEXT "expressed")
 (:VAR MV5601 :ISA THESE :QUANTIFIER MV5599 :WORD "these")
 (:VAR MV5599 :ISA WHICH) (:VAR MV5606 :ISA LIVER)
 (:VAR MV5603 :ISA EXCLUSIVELY))

___________________
609: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5612 :ISA REGULATE :AGENT-OR-CAUSE MV5611 :OBJECT MV5610 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5611 :ISA WHAT)
 (:VAR MV5610 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
610: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5615 :ISA INCREASE :AGENT-OR-CAUSE MV5613 :AFFECTED-PROCESS-OR-OBJECT
  MV5617 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5613 :ISA WHAT)
 (:VAR MV5617 :ISA BIO-AMOUNT :MEASURED-ITEM MV5619 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5619 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
611: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5622 :ISA UPREGULATE :AGENT-OR-CAUSE MV5621 :OBJECT MV5623 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV5621 :ISA WHAT)
 (:VAR MV5623 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
612: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5625 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5624 :OBJECT MV5626 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV5624 :ISA WHAT)
 (:VAR MV5626 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
613: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5628 :ISA DECREASE :AGENT-OR-CAUSE MV5627 :AFFECTED-PROCESS-OR-OBJECT
  MV5630 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5627 :ISA WHAT)
 (:VAR MV5630 :ISA BIO-AMOUNT :MEASURED-ITEM MV5632 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5632 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
614: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5635 :ISA REGULATE :AGENT-OR-CAUSE MV5634 :OBJECT MV5636 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5634 :ISA WHAT)
 (:VAR MV5636 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
  "GLNA_HUMAN"))

___________________
615: "What regulates GLUL from the literature?"

                    SOURCE-START
e11   FROM          1 "What regulates GLUL from the literature" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the literature?"
 (:VAR MV5644 :ISA WH-QUESTION :STATEMENT MV5643 :WH WHAT)
 (:VAR MV5643 :ISA PREPOSITIONAL-PHRASE :POBJ MV5642 :PREP "FROM")
 (:VAR MV5642 :ISA LITERATURE :HAS-DETERMINER "THE"))

___________________
616: "What regulates GLUL from the GEO RNAi database?"

                    SOURCE-START
e15   FROM          1 "What regulates GLUL from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the GEO RNAi database?"
 (:VAR MV5654 :ISA WH-QUESTION :STATEMENT MV5653 :WH WHAT)
 (:VAR MV5653 :ISA PREPOSITIONAL-PHRASE :POBJ MV5652 :PREP "FROM")
 (:VAR MV5652 :ISA DATABASE :HAS-DETERMINER "THE"))

___________________
617: "Which kinases regulate the cfos gene?"

                    SOURCE-START
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate the cfos gene?"
 (:VAR MV5657 :ISA REGULATE :AGENT MV5656 :OBJECT MV5660 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5656 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5660 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5659 :RAW-TEXT
  "gene")
 (:VAR MV5659 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
618: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5661 :ISA DOWNREGULATE :AGENT MV5663 :OBJECT MV5666 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5663 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5666 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5665 :RAW-TEXT
  "gene")
 (:VAR MV5665 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5669 :ISA BE :SUBJECT MV5668 :PREDICATE MV5667 :PRESENT "PRESENT")
 (:VAR MV5668 :ISA WHAT)
 (:VAR MV5667 :ISA POSITIVE-REGULATOR :THEME MV5673 :RAW-TEXT
  "positive regulators")
 (:VAR MV5673 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5672 :RAW-TEXT
  "gene")
 (:VAR MV5672 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
620: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5677 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5676 :OBJECT MV5675 :PRESENT
  "PRESENT" :RAW-TEXT "transcribes")
 (:VAR MV5676 :ISA WHAT)
 (:VAR MV5675 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
621: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5680 :ISA SHOW :STATEMENT-OR-THEME MV5691 :BENEFICIARY MV5681 :PRESENT
  "PRESENT")
 (:VAR MV5691 :ISA EVIDENCE :STATEMENT MV5686 :HAS-DETERMINER "THE")
 (:VAR MV5686 :ISA INCREASE :AGENT MV5678 :AFFECTED-PROCESS-OR-OBJECT MV5688
  :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5678 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5688 :ISA BIO-AMOUNT :MEASURED-ITEM MV5679 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5679 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME
  "SOCS1_HUMAN")
 (:VAR MV5681 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
622: "Show me the evidence that KRAS decreasse the amount of FZD8."

                    SOURCE-START
e22   SHOW          1 "Show me the evidence " 5
e8    THAT          5 "that " 6
e17   BIO-ENTITY    6 "KRAS decreasse " 8
e20   BIO-AMOUNT    8 "the amount of FZD8" 13
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e22   VP            1 "Show me the evidence " 5
e8    DET           5 "that " 6
e17   NP            6 "KRAS decreasse " 8
e20   NP            8 "the amount of FZD8" 13
                    PERIOD
                    END-OF-SOURCE


___________________
623: "What is the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras regulates frizzled8?"
 (:VAR MV5706 :ISA BE :SUBJECT MV5705 :PREDICATE MV5712 :PRESENT "PRESENT")
 (:VAR MV5705 :ISA WHAT)
 (:VAR MV5712 :ISA EVIDENCE :STATEMENT MV5711 :HAS-DETERMINER "THE")
 (:VAR MV5711 :ISA REGULATE :AGENT MV5710 :OBJECT MV5704 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5710 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5704 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
624: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5714 :ISA BE :SUBJECT MV5713 :PREDICATE MV5723 :PRESENT "PRESENT")
 (:VAR MV5713 :ISA WHAT)
 (:VAR MV5723 :ISA EVIDENCE :STATEMENT MV5719 :HAS-DETERMINER "THE")
 (:VAR MV5719 :ISA BINDING :BINDER MV5718 :DIRECT-BINDEE MV5722 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV5718 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5722 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5721 :RAW-TEXT
  "gene")
 (:VAR MV5721 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
625: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5731 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5725 :ORGAN MV5730
  :PRESENT "PRESENT" :ADVERB MV5727 :RAW-TEXT "expressed")
 (:VAR MV5725 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5730 :ISA LIVER) (:VAR MV5727 :ISA EXCLUSIVELY))

___________________
626: "Is stat3 expressed in liver?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV5739 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV5737 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV5737 :ISA LIVER))

___________________
627: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV5748 :ISA POLAR-QUESTION :STATEMENT MV5746)
 (:VAR MV5746 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5740 :ORGAN MV5745 :ADVERB
  MV5742 :RAW-TEXT "expressed")
 (:VAR MV5740 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5745 :ISA LIVER) (:VAR MV5742 :ISA EXCLUSIVELY))

___________________
628: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV5753 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5750 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5750 :ISA BUILD :ARTIFACT MV5752 :PRESENT "PRESENT")
 (:VAR MV5752 :ISA MODEL :HAS-DETERMINER "A"))

___________________
629: "What are the targets of NG25?"

                    SOURCE-START
e16   OF            1 "What are the targets of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of NG25?"
 (:VAR MV5764 :ISA WH-QUESTION :STATEMENT MV5763 :WH WHAT)
 (:VAR MV5763 :ISA PREPOSITIONAL-PHRASE :POBJ MV5762 :PREP "OF")
 (:VAR MV5762 :ISA BIO-ENTITY :NAME "NG25"))

___________________
630: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5769 :ISA AFFECT :MANNER MV5767 :AGENT MV5765 :OBJECT MV5766 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5767 :ISA HOW)
 (:VAR MV5765 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME
  "M4K2_HUMAN")
 (:VAR MV5766 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
631: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5774 :ISA AFFECT :MANNER MV5771 :AGENT MV5773 :OBJECT MV5770 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5771 :ISA HOW)
 (:VAR MV5773 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5770 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
632: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5778 :ISA BE :SUBJECT MV5777 :PREDICATE MV5783 :PRESENT "PRESENT")
 (:VAR MV5777 :ISA WHAT)
 (:VAR MV5783 :ISA REGULATOR :THEME MV5786 :HAS-DETERMINER "THE" :PREDICATION
  MV5780 :CONTEXT MV5781 :RAW-TEXT "regulators")
 (:VAR MV5786 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5775 MV5776))
 (:VAR MV5775 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5776 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5780 :ISA COMMON)
 (:VAR MV5781 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
633: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5791 :ISA BE :SUBJECT MV5790 :PREDICATE MV5793 :PRESENT "PRESENT")
 (:VAR MV5790 :ISA WHAT)
 (:VAR MV5793 :ISA PATH :ENDPOINTS MV5796 :HAS-DETERMINER "THE")
 (:VAR MV5796 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5788 MV5789))
 (:VAR MV5788 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5789 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
634: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5803 :ISA POLAR-QUESTION :STATEMENT MV5802)
 (:VAR MV5802 :ISA AFFECT :AGENT MV5798 :OBJECT MV5801 :RAW-TEXT "affect")
 (:VAR MV5798 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5801 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
635: "MAP3K7 regulates IKK"

                    SOURCE-START
e5    REGULATE      1 "MAP3K7 regulates IKK" 7
                    END-OF-SOURCE
("MAP3K7 regulates IKK"
 (:VAR MV5805 :ISA REGULATE :AGENT MV5804 :OBJECT MV5806 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5804 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5806 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
636: "MAP3K7 positively regulates IKK"

                    SOURCE-START
e6    UPREGULATE    1 "MAP3K7 positively regulates IKK" 8
                    END-OF-SOURCE
("MAP3K7 positively regulates IKK"
 (:VAR MV5808 :ISA UPREGULATE :AGENT MV5807 :OBJECT MV5809 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5807 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5809 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
637: "NFkappaB positively regulates CXCL8."

                    SOURCE-START
e7    UPREGULATE    1 "NFkappaB positively regulates CXCL8" 6
                    PERIOD
                    END-OF-SOURCE
("NFkappaB positively regulates CXCL8."
 (:VAR MV5810 :ISA UPREGULATE :AGENT MV5812 :OBJECT MV5811 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5812 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5811 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
638: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?"
 (:VAR MV5822 :ISA POLAR-QUESTION :STATEMENT MV5821)
 (:VAR MV5821 :ISA REGULATE :AGENT MV5816 :OBJECT MV5820 :RAW-TEXT "regulate")
 (:VAR MV5816 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5820 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5814 :RAW-TEXT
  "gene")
 (:VAR MV5814 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
639: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5824 :ISA SHOW :STATEMENT-OR-THEME MV5832 :BENEFICIARY MV5825 :PRESENT
  "PRESENT")
 (:VAR MV5832 :ISA EVIDENCE :STATEMENT MV5831 :HAS-DETERMINER "THE")
 (:VAR MV5831 :ISA REGULATE :AGENT MV5829 :OBJECT MV5823 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5829 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5823 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5825 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
640: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?"
 (:VAR MV5840 :ISA POLAR-QUESTION :STATEMENT MV5839)
 (:VAR MV5839 :ISA REGULATE :AGENT MV5835 :OBJECT MV5838 :RAW-TEXT "regulate")
 (:VAR MV5835 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5838 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5833 :RAW-TEXT
  "gene")
 (:VAR MV5833 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
641: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5843 :ISA DECREASE :AGENT MV5842 :AFFECTED-PROCESS-OR-OBJECT MV5845
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5842 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5845 :ISA BIO-AMOUNT :MEASURED-ITEM MV5841 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5841 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
642: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5853 :ISA POLAR-QUESTION :STATEMENT MV5852)
 (:VAR MV5852 :ISA REGULATE :AGENT MV5851 :OBJECT MV5850 :RAW-TEXT "regulate")
 (:VAR MV5851 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5850 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
643: "Does TNF regulate the ERK gene?"

                    SOURCE-START
e13   REGULATE      1 "Does TNF regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNF regulate the ERK gene?"
 (:VAR MV5861 :ISA POLAR-QUESTION :STATEMENT MV5860)
 (:VAR MV5860 :ISA REGULATE :AGENT MV5855 :OBJECT MV5859 :RAW-TEXT "regulate")
 (:VAR MV5855 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5859 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5858 :RAW-TEXT
  "gene")
 (:VAR MV5858 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
644: "What are the pathways between TNG and ERK?"

                    SOURCE-START
e14   BE            1 "What are the pathways between TNG and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the pathways between TNG and ERK?"
 (:VAR MV5863 :ISA BE :SUBJECT MV5862 :PREDICATE MV5865 :PRESENT "PRESENT")
 (:VAR MV5862 :ISA WHAT)
 (:VAR MV5865 :ISA PATHWAY :PATHWAYCOMPONENT MV5870 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5870 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5867 MV5869))
 (:VAR MV5867 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5869 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
645: "What are the pathways between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the pathways between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the pathways between TNF and ERK?"
 (:VAR MV5873 :ISA BE :SUBJECT MV5872 :PREDICATE MV5875 :PRESENT "PRESENT")
 (:VAR MV5872 :ISA WHAT)
 (:VAR MV5875 :ISA PATHWAY :PATHWAYCOMPONENT MV5880 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5880 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5877 MV5879))
 (:VAR MV5877 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5879 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
646: "Does NFkappaB regulate ERK?"

                    SOURCE-START
e9    REGULATE      1 "Does NFkappaB regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate ERK?"
 (:VAR MV5888 :ISA POLAR-QUESTION :STATEMENT MV5887)
 (:VAR MV5887 :ISA REGULATE :AGENT MV5883 :OBJECT MV5886 :RAW-TEXT "regulate")
 (:VAR MV5883 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5886 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
647: "Does NFkappaB regulate the ERK gene?"

                    SOURCE-START
e14   REGULATE      1 "Does NFkappaB regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the ERK gene?"
 (:VAR MV5897 :ISA POLAR-QUESTION :STATEMENT MV5896)
 (:VAR MV5896 :ISA REGULATE :AGENT MV5890 :OBJECT MV5895 :RAW-TEXT "regulate")
 (:VAR MV5890 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5895 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5894 :RAW-TEXT
  "gene")
 (:VAR MV5894 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
648: "What pathways exist between NFkappaB and ERK?"

                    SOURCE-START
e14   COPULAR-PREDICATE 1 "What pathways exist between NFkappaB and ERK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways exist between NFkappaB and ERK?"
 (:VAR MV5910 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5899 :VALUE MV5909 :PREP
  "BETWEEN" :PREDICATE MV5900)
 (:VAR MV5899 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5909 :ISA PATHWAY :PATHWAYCOMPONENT MV5906 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "pathways")
 (:VAR MV5906 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5903 MV5905))
 (:VAR MV5903 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5905 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5900 :ISA EXIST :PRESENT "PRESENT"))

___________________
649: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5916 :ISA AFFECT :MANNER MV5912 :AGENT MV5914 :OBJECT MV5917 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5912 :ISA HOW)
 (:VAR MV5914 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5917 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
650: "MAP3K7 activates IKK"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "MAP3K7 activates IKK" 7
                    END-OF-SOURCE
("MAP3K7 activates IKK"
 (:VAR MV5919 :ISA BIO-ACTIVATE :AGENT MV5918 :OBJECT MV5920 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5918 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5920 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
651: "IKK activates TNF"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "IKK activates TNF" 4
                    END-OF-SOURCE
("IKK activates TNF"
 (:VAR MV5922 :ISA BIO-ACTIVATE :AGENT MV5921 :OBJECT MV5923 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5921 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5923 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
652: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5925 :ISA BE :SUBJECT MV5924 :PREDICATE MV5927 :PRESENT "PRESENT")
 (:VAR MV5924 :ISA WHAT)
 (:VAR MV5927 :ISA PATH :ENDPOINTS MV5932 :HAS-DETERMINER "THE")
 (:VAR MV5932 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5929 MV5931))
 (:VAR MV5929 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5931 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
653: "Does TNF regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNF regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNF regulate ERK?" (:VAR MV5939 :ISA POLAR-QUESTION :STATEMENT MV5938)
 (:VAR MV5938 :ISA REGULATE :AGENT MV5935 :OBJECT MV5937 :RAW-TEXT "regulate")
 (:VAR MV5935 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5937 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
654: "How does MAP3K7 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3K7 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3K7 affect CXCL8?"
 (:VAR MV5944 :ISA AFFECT :MANNER MV5942 :AGENT MV5940 :OBJECT MV5941 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5942 :ISA HOW)
 (:VAR MV5940 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5941 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
655: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5946 :ISA BIO-ACTIVATE :AGENT MV5945 :OBJECT MV5947 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5945 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5947 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
656: " Active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL8"
 (:VAR MV5951 :ISA DECREASE :AGENT MV5950 :AFFECTED-PROCESS-OR-OBJECT MV5953
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5950 :ISA PROTEIN-FAMILY :PREDICATION MV5949 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5949 :ISA ACTIVE)
 (:VAR MV5953 :ISA BIO-AMOUNT :MEASURED-ITEM MV5948 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5948 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
657: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5959 :ISA BE :SUBJECT MV5958 :PREDICATE MV5962 :PRESENT "PRESENT")
 (:VAR MV5958 :ISA WHAT)
 (:VAR MV5962 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5965 :HAS-DETERMINER
  "THE" :PREDICATION MV5961 :RAW-TEXT "upstreams")
 (:VAR MV5965 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5956 MV5957))
 (:VAR MV5956 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5957 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5961 :ISA COMMON))

___________________
658: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5971 :ISA AFFECT :MANNER MV5969 :AGENT MV5967 :OBJECT MV5968 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5969 :ISA HOW)
 (:VAR MV5967 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5968 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
659: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?"
 (:VAR MV5977 :ISA POLAR-QUESTION :STATEMENT MV5976)
 (:VAR MV5976 :ISA REGULATE :AGENT MV5972 :OBJECT MV5973 :RAW-TEXT "regulate")
 (:VAR MV5972 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5973 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
660: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?"
 (:VAR MV5985 :ISA POLAR-QUESTION :STATEMENT MV5984)
 (:VAR MV5984 :ISA REGULATE :AGENT MV5978 :OBJECT MV5983 :RAW-TEXT "regulate")
 (:VAR MV5978 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5983 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5979 :RAW-TEXT
  "gene")
 (:VAR MV5979 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
661: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5990 :ISA AFFECT :MANNER MV5988 :AGENT MV5986 :OBJECT MV5987 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5988 :ISA HOW)
 (:VAR MV5986 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5987 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
662: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5993 :ISA BE :SUBJECT MV5992 :PREDICATE MV5995 :PRESENT "PRESENT")
 (:VAR MV5992 :ISA WHAT)
 (:VAR MV5995 :ISA PATH :ENDPOINTS MV5999 :HAS-DETERMINER "THE")
 (:VAR MV5999 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV5997 MV5991))
 (:VAR MV5997 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5991 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
663: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?"
 (:VAR MV6010 :ISA POLAR-QUESTION :STATEMENT MV6008)
 (:VAR MV6008 :ISA REGULATE :AGENT MV6003 :AFFECTED-PROCESS MV6006 :RAW-TEXT
  "regulate")
 (:VAR MV6003 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6006 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6001 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV6001 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
664: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV6014 :ISA DECREASE :AGENT MV6013 :AFFECTED-PROCESS MV6016 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6013 :ISA PROTEIN-FAMILY :PREDICATION MV6012 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6012 :ISA ACTIVE)
 (:VAR MV6016 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6011 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV6011 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
665: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV6022 :ISA DECREASE :AGENT MV6021 :AFFECTED-PROCESS-OR-OBJECT MV6024
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6021 :ISA PROTEIN-FAMILY :PREDICATION MV6020 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6020 :ISA ACTIVE)
 (:VAR MV6024 :ISA BIO-AMOUNT :MEASURED-ITEM MV6019 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6019 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
666: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV6030 :ISA DECREASE :AGENT MV6029 :AFFECTED-PROCESS-OR-OBJECT MV6032
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6029 :ISA PROTEIN-FAMILY :PREDICATION MV6028 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6028 :ISA ACTIVE)
 (:VAR MV6032 :ISA BIO-AMOUNT :MEASURED-ITEM MV6027 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6027 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
667: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e14   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV6037 :ISA INHIBIT :AGENT MV6035 :AFFECTED-PROCESS MV6039 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6035 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV6039 :ISA BIO-ACTIVITY :PARTICIPANT MV6036 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV6036 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
668: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?"
 (:VAR MV6053 :ISA POLAR-QUESTION :STATEMENT MV6051)
 (:VAR MV6051 :ISA DECREASE :AGENT MV6042 :OBJECT MV6043 :RAW-TEXT "decrease")
 (:VAR MV6042 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV6043 :ISA PROTEIN :INFO-CONTEXT MV6050 :HAS-DETERMINER "THE" :RAW-TEXT
  "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV6050 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
669: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?"
 (:VAR MV6064 :ISA POLAR-QUESTION :STATEMENT MV6062)
 (:VAR MV6062 :ISA DECREASE :AGENT MV6054 :OBJECT MV6055 :RAW-TEXT "decrease")
 (:VAR MV6054 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV6055 :ISA PROTEIN :INFO-CONTEXT MV6061 :RAW-TEXT "CXCL10" :UID
  "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV6061 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
670: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV6066 :ISA BIO-ACTIVATE :AGENT MV6065 :OBJECT MV6067 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6065 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6067 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB"))

___________________
671: "I want to find out how tofacitinib decreases IL2"

                    SOURCE-START
e22   WANT          1 "I want to find out how tofacitinib decreases IL2" 11
                    END-OF-SOURCE
("I want to find out how tofacitinib decreases IL2"
 (:VAR MV6073 :ISA WANT :AGENT MV6070 :THEME MV6084 :PRESENT "PRESENT")
 (:VAR MV6070 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6084 :ISA FIND-OUT :AGENT MV6070 :STATEMENT MV6081)
 (:VAR MV6070 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6081 :ISA WH-QUESTION :STATEMENT MV6080 :VAR NIL :WH HOW)
 (:VAR MV6080 :ISA DECREASE :AGENT MV6079 :OBJECT MV6069 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6079 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tofacitinib")
 (:VAR MV6069 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
672: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6088 :ISA WANT :AGENT MV6085 :THEME MV6107 :PRESENT "PRESENT")
 (:VAR MV6085 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6107 :ISA FIND-OUT :AGENT MV6085 :STATEMENT MV6104)
 (:VAR MV6085 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6104 :ISA WH-QUESTION :STATEMENT MV6095 :VAR NIL :WH HOW)
 (:VAR MV6095 :ISA DECREASE :AGENT MV6094 :OBJECT MV6096 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6094 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6096 :ISA PROTEIN :CELL-TYPE MV6101 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6101 :ISA CELL-TYPE :MODIFIER MV6102)
 (:VAR MV6102 :ISA BIO-ENTITY :NAME "BT20"))

___________________
673: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6113 :ISA WANT :AGENT MV6110 :THEME MV6127 :PRESENT "PRESENT")
 (:VAR MV6110 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6127 :ISA FIND-OUT :AGENT MV6110 :STATEMENT MV6124)
 (:VAR MV6110 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6124 :ISA WH-QUESTION :STATEMENT MV6119 :VAR NIL :WH HOW)
 (:VAR MV6119 :ISA BIO-ACTIVATE :AGENT MV6108 :OBJECT MV6120 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6108 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV6120 :ISA PROTEIN :CELL-TYPE MV6122 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV6122 :ISA CELL-TYPE :CELL-LINE MV6109)
 (:VAR MV6109 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
674: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?"
 (:VAR MV6133 :ISA POLAR-QUESTION :STATEMENT MV6132)
 (:VAR MV6132 :ISA PHOSPHORYLATE :AGENT MV6129 :SUBSTRATE MV6131 :RAW-TEXT
  "phosphorylate")
 (:VAR MV6129 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6131 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
675: "Does STAT3 inhibit the c-fos gene?"

                    SOURCE-START
e15   INHIBIT       1 "Does STAT3 inhibit the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 inhibit the c-fos gene?"
 (:VAR MV6141 :ISA POLAR-QUESTION :STATEMENT MV6140)
 (:VAR MV6140 :ISA INHIBIT :AGENT MV6134 :OBJECT MV6139 :RAW-TEXT "inhibit")
 (:VAR MV6134 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6139 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6135 :RAW-TEXT
  "gene")
 (:VAR MV6135 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
676: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?"
 (:VAR MV6149 :ISA POLAR-QUESTION :STATEMENT MV6148)
 (:VAR MV6148 :ISA STIMULATE :AGENT MV6142 :OBJECT MV6147 :RAW-TEXT
  "stimulate")
 (:VAR MV6142 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6147 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6143 :RAW-TEXT
  "gene")
 (:VAR MV6143 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
677: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e33   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6153 :ISA WANT :AGENT MV6150 :THEME MV6171 :PRESENT "PRESENT")
 (:VAR MV6150 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6171 :ISA FIND-OUT :AGENT MV6150 :STATEMENT MV6168)
 (:VAR MV6150 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6168 :ISA WH-QUESTION :STATEMENT MV6160 :VAR NIL :WH HOW)
 (:VAR MV6160 :ISA DECREASE :AGENT MV6159 :OBJECT MV6161 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6159 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6161 :ISA PROTEIN :CELL-TYPE MV6165 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6165 :ISA CELL-TYPE :MODIFIER MV6166 :CONTEXT-OR-ASSOCIATED-DISEASE
  MV6164)
 (:VAR MV6166 :ISA BIO-ENTITY :NAME "SKMEL-133") (:VAR MV6164 :ISA MELANOMA))

___________________
678: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6176 :ISA POLAR-QUESTION :STATEMENT
  (#<be 90124>
   (PREDICATE
    (#<transcription-factor 88037> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
679: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6178 :ISA LIST :THEME MV6181 :PRESENT "PRESENT")
 (:VAR MV6181 :ISA GENE :PREDICATION MV6182 :QUANTIFIER MV6179 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6182 :ISA REGULATE :OBJECT MV6181 :AGENT MV6186 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6186 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6177 MV6185))
 (:VAR MV6177 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6185 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6179 :ISA ALL :WORD "all"))

___________________
680: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6189 :ISA LIST :THEME MV6193 :PRESENT "PRESENT")
 (:VAR MV6193 :ISA GENE :PREDICATION MV6194 :QUANTIFIER MV6190 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6194 :ISA REGULATE :OBJECT MV6193 :AGENT MV6198 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6198 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6188 MV6197))
 (:VAR MV6188 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6197 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6190 :ISA SOME :WORD "some"))

___________________
681: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6204 :ISA SHOW :STATEMENT-OR-THEME MV6207 :BENEFICIARY MV6205 :PRESENT
  "PRESENT")
 (:VAR MV6207 :ISA MUTATION :OBJECT MV6212 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6212 :ISA COLLECTION :CONTEXT MV6203 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6202 MV6210))
 (:VAR MV6203 :ISA CANCER :UID "TS-1223")
 (:VAR MV6202 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6210 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6205 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
682: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6218 :ISA BE :SUBJECT MV6217 :PREDICATE MV6220 :PRESENT "PRESENT")
 (:VAR MV6217 :ISA WHAT)
 (:VAR MV6220 :ISA MUTATION :OBJECT MV6225 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6225 :ISA COLLECTION :CONTEXT MV6216 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6215 MV6223))
 (:VAR MV6216 :ISA CANCER :UID "TS-1223")
 (:VAR MV6215 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6223 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
683: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e21   BE            1 "What are the mutually exclusive genes " 7
e19   WITH          7 "with CDH1 " 10
e18   FOR           10 "for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e21   S             1 "What are the mutually exclusive genes " 7
e19   PP            7 "with CDH1 " 10
e18   PP            10 "for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
684: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e23   WITH          1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV6254 :ISA WH-QUESTION :STATEMENT MV6253 :WH WHAT)
 (:VAR MV6253 :ISA PREPOSITIONAL-PHRASE :POBJ MV6241 :PREP "WITH")
 (:VAR MV6241 :ISA PROTEIN :CONTEXT MV6242 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6242 :ISA CANCER :UID "TS-0591"))

___________________
685: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6256 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6255
  :AFFECTED-PROCESS-OR-OBJECT MV6257 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6255 :ISA WHAT) (:VAR MV6257 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
686: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   OF            1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6271 :ISA WH-QUESTION :STATEMENT MV6270 :VAR NIL :WH WHAT)
 (:VAR MV6270 :ISA PREPOSITIONAL-PHRASE :COMP MV6266 :PREP #<ref-category OF>)
 (:VAR MV6266 :ISA REGULATE :AGENT MV6258 :PROGRESSIVE MV6265 :RAW-TEXT
  "regulated")
 (:VAR MV6258 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p"
  :UID "MIMAT0000421")
 (:VAR MV6265 :ISA BE))

___________________
687: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6274 :ISA INCREASE :AGENT-OR-CAUSE MV6272 :AFFECTED-PROCESS-OR-OBJECT
  MV6276 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6272 :ISA WHAT)
 (:VAR MV6276 :ISA BIO-AMOUNT :MEASURED-ITEM MV6278 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6278 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
688: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6282 :ISA INHIBIT :AGENT-OR-CAUSE MV6281 :OBJECT MV6280 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6281 :ISA WHAT)
 (:VAR MV6280 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
689: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6286 :ISA BE :SUBJECT MV6285 :PREDICATE MV6298 :PRESENT "PRESENT")
 (:VAR MV6285 :ISA WHAT)
 (:VAR MV6298 :ISA QUALITY-PREDICATE :ITEM MV6296 :ATTRIBUTE MV6292)
 (:VAR MV6296 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6283 MV6294 MV6284))
 (:VAR MV6283 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6294 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6284 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6292 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6290
  :MODIFIER MV6291)
 (:VAR MV6290 :ISA LIKELY :COMPARATIVE MV6288)
 (:VAR MV6288 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6291 :ISA CELLULAR))

___________________
690: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6301 :ISA BE :SUBJECT MV6300 :PREDICATE MV6310 :PRESENT "PRESENT")
 (:VAR MV6300 :ISA WHAT)
 (:VAR MV6310 :ISA QUALITY-PREDICATE :ITEM MV6299 :ATTRIBUTE MV6307)
 (:VAR MV6299 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6307 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6305
  :MODIFIER MV6306)
 (:VAR MV6305 :ISA LIKELY :COMPARATIVE MV6303)
 (:VAR MV6303 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6306 :ISA CELLULAR))

___________________
691: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6314 :ISA BE :SUBJECT MV6313 :PREDICATE MV6317 :PRESENT "PRESENT")
 (:VAR MV6313 :ISA WHAT)
 (:VAR MV6317 :ISA SIGNIFICANCE :AGENT MV6311 :HAS-DETERMINER "THE" :MODIFIER
  MV6316)
 (:VAR MV6311 :ISA PROTEIN :CONTEXT MV6312 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6312 :ISA CANCER :UID "TS-0571")
 (:VAR MV6316 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
692: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6329 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6325 :AGENT MV6322
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6325 :ISA THOSE :QUANTIFIER MV6323 :WORD "those")
 (:VAR MV6323 :ISA WHICH)
 (:VAR MV6322 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
693: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?"
 (:VAR MV6339 :ISA THERE-EXISTS :VALUE MV6337 :PREDICATE MV6334)
 (:VAR MV6337 :ISA INHIBITOR :PROTEIN MV6332 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV6332 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV6334 :ISA SYNTACTIC-THERE))

___________________
694: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6342 :ISA NAME-SOMETHING :PATIENT MV6346 :PRESENT "PRESENT")
 (:VAR MV6346 :ISA DRUG :PREDICATION MV6348 :QUANTIFIER MV6345 :RAW-TEXT
  "drugs")
 (:VAR MV6348 :ISA INHIBIT :AGENT MV6346 :THAT-REL T :OBJECT MV6341 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6341 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6345 :ISA SOME :WORD "some"))

___________________
695: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?"
 (:VAR MV6359 :ISA THERE-EXISTS :VALUE MV6357 :PREDICATE MV6351)
 (:VAR MV6357 :ISA INHIBITOR :QUANTIFIER MV6353 :PROTEIN MV6358 :RAW-TEXT
  "inhibitors")
 (:VAR MV6353 :ISA ANY :WORD "any")
 (:VAR MV6358 :ISA PROTEIN :RAW-TEXT "Map2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6351 :ISA SYNTACTIC-THERE))

___________________
696: "Are there targets of Selumetinib?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6367 :ISA THERE-EXISTS :VALUE MV6363 :PREDICATE MV6361)
 (:VAR MV6363 :ISA TARGET-PROTEIN :AGENT MV6366 :RAW-TEXT "targets")
 (:VAR MV6366 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6361 :ISA SYNTACTIC-THERE))

___________________
697: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6372 :ISA INHIBIT :OBJECT MV6369 :AGENT MV6371 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV6369 :ISA WHAT)
 (:VAR MV6371 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
698: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6377 :ISA TARGET :OBJECT MV6373 :AGENT MV6375 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6373 :ISA WHAT)
 (:VAR MV6375 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
699: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?"
 (:VAR MV6384 :ISA POLAR-QUESTION :STATEMENT MV6383)
 (:VAR MV6383 :ISA TARGET :AGENT MV6379 :OBJECT MV6382 :RAW-TEXT "target")
 (:VAR MV6379 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6382 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
700: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   FOR           1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV6394 :ISA WH-QUESTION :STATEMENT MV6393 :WH WHAT)
 (:VAR MV6393 :ISA PREPOSITIONAL-PHRASE :POBJ MV6392 :PREP "FOR")
 (:VAR MV6392 :ISA TREATMENT :DISEASE MV6385 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6385 :ISA CANCER :UID "TS-0739"))

___________________
701: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   FOR           1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6403 :ISA WH-QUESTION :STATEMENT MV6402 :WH WHAT)
 (:VAR MV6402 :ISA PREPOSITIONAL-PHRASE :POBJ MV6395 :PREP "FOR")
 (:VAR MV6395 :ISA CANCER :UID "TS-0739"))

___________________
702: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6409 :ISA LEAD :AGENT MV6406 :THEME MV6412 :MODAL MV6408 :RAW-TEXT
  "lead")
 (:VAR MV6406 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6412 :ISA DEVELOPMENT :DISEASE MV6404 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6404 :ISA CANCER :UID "TS-0739") (:VAR MV6408 :ISA COULD))

___________________
703: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6420 :ISA LEAD :AGENT MV6418 :THEME MV6423 :MODAL MV6419 :RAW-TEXT
  "lead")
 (:VAR MV6418 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6423 :ISA DEVELOPMENT :DISEASE MV6416 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6416 :ISA CANCER :UID "TS-0739") (:VAR MV6419 :ISA COULD))

___________________
704: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6432 :ISA LEAD :AGENT MV6430 :THEME MV6427 :MODAL MV6431 :RAW-TEXT
  "lead")
 (:VAR MV6430 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6429 :RAW-TEXT
  "genes")
 (:VAR MV6429 :ISA MUTATION :OBJECT MV6430 :RAW-TEXT "mutated")
 (:VAR MV6427 :ISA CANCER :UID "TS-0739") (:VAR MV6431 :ISA COULD))

___________________
705: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e24   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6437 :ISA BE :SUBJECT MV6436 :PREDICATE MV6442 :PRESENT "PRESENT")
 (:VAR MV6436 :ISA WHAT)
 (:VAR MV6442 :ISA MUTATION :AGENT MV6441 :OBJECT MV6439 :PREDICATION MV6444
  :HAS-DETERMINER "THE" :AGENT-OR-OBJECT MV6439 :AGENT-OR-OBJECT MV6441
  :RAW-TEXT "mutation")
 (:VAR MV6441 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6439 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6444 :ISA LEAD :AGENT MV6442 :THAT-REL T :THEME MV6435 :PRESENT
  "PRESENT" :RAW-TEXT "leads")
 (:VAR MV6435 :ISA CANCER :UID "TS-0739")
 (:VAR MV6439 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6441 :ISA GENE :RAW-TEXT "gene"))

___________________
706: "I would like to find a treatement for pancreatic cancer."

                    SOURCE-START
e2 e3 e4 e5         "i" :: #<word "I">, PRONOUN/FIRST/SINGULAR, POST-ORDINAL, SINGLE-CAPITALIZED-LETTER
e6    MODAL         2 "would " 3
e7    LIKE          3 "like " 4
e19   FIND-OUT      4 "to find " 6
e17   TREATEMENT    6 "a treatement " 8
e18   FOR           8 "for pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e2 e3 e4 e5         "i" :: #<word "I">, PRONOUN/FIRST/SINGULAR, POST-ORDINAL, SINGLE-CAPITALIZED-LETTER
e6    MODAL         2 "would " 3
e7    PREPOSITION   3 "like " 4
e19   INFINITIVE    4 "to find " 6
e17   NP            6 "a treatement " 8
e18   PP            8 "for pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE


___________________
707: "What drug could I use to treat pancreatic cancer?"

                    SOURCE-START
e19   BIO-USE       1 "What drug could I use to treat pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to treat pancreatic cancer?"
 (:VAR MV6473 :ISA BIO-USE :PATIENT MV6463 :MODAL MV6464 :AGENT MV6465 :THEME
  MV6472 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV6463 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV6464 :ISA COULD) (:VAR MV6465 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6472 :ISA TREATMENT :DISEASE MV6461 :RAW-TEXT "treat")
 (:VAR MV6461 :ISA CANCER :UID "TS-0739"))

___________________
708: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   FOR           1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV6482 :ISA WH-QUESTION :STATEMENT MV6481 :WH WHAT)
 (:VAR MV6481 :ISA PREPOSITIONAL-PHRASE :POBJ MV6480 :PREP "FOR")
 (:VAR MV6480 :ISA TREATMENT :DISEASE MV6474 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6474 :ISA CANCER :UID "TS-0739"))

___________________
709: "I'd like to find a treatement for pancreatic cancer."

                    SOURCE-START
e2 e3 e4 e5         "i" :: #<word "I">, PRONOUN/FIRST/SINGULAR, POST-ORDINAL, SINGLE-CAPITALIZED-LETTER
e6                  "SINGLE-QUOTE"
e7                  "d"
e8    LIKE          4 "like " 5
e20   FIND-OUT      5 "to find " 7
e18   TREATEMENT    7 "a treatement " 9
e19   FOR           9 "for pancreatic cancer" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e2 e3 e4 e5         "i" :: #<word "I">, PRONOUN/FIRST/SINGULAR, POST-ORDINAL, SINGLE-CAPITALIZED-LETTER
e6                  "SINGLE-QUOTE"
e7                  "d"
e8    PREPOSITION   4 "like " 5
e20   INFINITIVE    5 "to find " 7
e18   NP            7 "a treatement " 9
e19   PP            9 "for pancreatic cancer" 12
                    PERIOD
                    END-OF-SOURCE


___________________
710: "How can i treat pancreatic cancer?"

                    SOURCE-START
e2    HOW           1 "How " 2
e3    MODAL         2 "can " 3
                    "i"
e5    TREATMENT     4 "treat pancreatic cancer" 7
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e2    WH-PRONOUN    1 "How " 2
e3    MODAL         2 "can " 3
                    "i"
e5    VP            4 "treat pancreatic cancer" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
711: "Does MEK act on ERK?"

                    SOURCE-START
e11   BIO-ACT       1 "Does MEK act on ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK act on ERK?" (:VAR MV6507 :ISA POLAR-QUESTION :STATEMENT MV6505)
 (:VAR MV6505 :ISA BIO-ACT :AGENT MV6501 :ACTED-ON MV6504 :RAW-TEXT "act")
 (:VAR MV6501 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6504 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
712: "Mek activates MAPK3"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    END-OF-SOURCE
("Mek activates MAPK3"
 (:VAR MV6510 :ISA BIO-ACTIVATE :AGENT MV6509 :OBJECT MV6508 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6509 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6508 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
713: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6512 :ISA BIO-ACTIVATE :AGENT MV6511 :OBJECT MV6513 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6511 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6513 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
714: "Remove the fact that hras activates ras"

                    SOURCE-START
e14   REMOVE        1 "Remove the fact that hras activates ras" 8
                    END-OF-SOURCE
("Remove the fact that hras activates ras"
 (:VAR MV6514 :ISA REMOVE :OBJECT MV6521 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6521 :ISA FACT :STATEMENT MV6519 :HAS-DETERMINER "THE")
 (:VAR MV6519 :ISA BIO-ACTIVATE :AGENT MV6518 :OBJECT MV6520 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6518 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6520 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663"))

___________________
715: "Can you tell me what is in the model?"

                    SOURCE-START
e20   TELL          1 "Can you tell me what is in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what is in the model?"
 (:VAR MV6533 :ISA POLAR-QUESTION :STATEMENT MV6524)
 (:VAR MV6524 :ISA TELL :AGENT MV6523 :THEME MV6532 :BENEFICIARY MV6525 :MODAL
  "CAN")
 (:VAR MV6523 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6532 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6526 :VALUE MV6530 :PREP
  "IN" :PREDICATE MV6527)
 (:VAR MV6526 :ISA WHAT) (:VAR MV6530 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6527 :ISA BE :PRESENT "PRESENT")
 (:VAR MV6525 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
716: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model."
 (:VAR MV6537 :ISA SUMMARIZE :STATEMENT MV6536 :PRESENT "PRESENT")
 (:VAR MV6536 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
717: "Summarize the current model."

                    SOURCE-START
e6    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model."
 (:VAR MV6543 :ISA SUMMARIZE :STATEMENT MV6542 :PRESENT "PRESENT")
 (:VAR MV6542 :ISA MODEL))

___________________
718: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV6545 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV6544 :SUBSTRATE MV6546
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6544 :ISA WHAT)
 (:VAR MV6546 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
719: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6548 :ISA BINDING :BINDER MV6547 :DIRECT-BINDEE MV6549 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6547 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6549 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
720: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6554 :ISA BIO-ACTIVATE :OBJECT MV6550 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6550 :ISA PROTEIN :PREDICATION MV6551 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6551 :ISA PHOSPHORYLATE :SUBSTRATE MV6550 :RAW-TEXT "Phosphorylated"))

___________________
721: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6558 :ISA DEPHOSPHORYLATE :AGENT MV6555 :SUBSTRATE MV6556 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6555 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6556 :ISA PROTEIN :PREDICATION MV6564 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6564 :ISA BINDING :DIRECT-BINDEE MV6556 :THAT-REL T :BINDEE MV6557
  :PRESENT "PRESENT" :NEGATION MV6561 :RAW-TEXT "bound")
 (:VAR MV6557 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6561 :ISA NOT :WORD "not"))

___________________
722: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6575 :ISA PHOSPHORYLATE :AGENT MV6566 :SUBSTRATE MV6568 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6566 :ISA PROTEIN :PREDICATION MV6576 :PREDICATION MV6569 :RAW-TEXT
  "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6576 :ISA BINDING :DIRECT-BINDEE MV6566 :THAT-REL T :BINDEE MV6567
  :PRESENT "PRESENT" :NEGATION MV6572 :RAW-TEXT "bound")
 (:VAR MV6567 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6572 :ISA NOT :WORD "not") (:VAR MV6569 :ISA ACTIVE)
 (:VAR MV6568 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
723: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6582 :ISA BIO-ACTIVATE :OBJECT MV6578 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6578 :ISA PROTEIN :PREDICATION MV6579 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6579 :ISA PHOSPHORYLATE :SUBSTRATE MV6578 :RAW-TEXT "Phosphorylated"))

___________________
724: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6586 :ISA DEPHOSPHORYLATE :AGENT MV6583 :SUBSTRATE MV6584 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6583 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV6584 :ISA PROTEIN :PREDICATION MV6592 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6592 :ISA BINDING :DIRECT-BINDEE MV6584 :THAT-REL T :BINDEE MV6585
  :PRESENT "PRESENT" :NEGATION MV6589 :RAW-TEXT "bound")
 (:VAR MV6585 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6589 :ISA NOT :WORD "not"))

___________________
725: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6606 :ISA PHOSPHORYLATE :AGENT MV6595 :SUBSTRATE MV6594 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6595 :ISA PROTEIN :PREDICATION MV6609 :MUTATION MV6608 :RAW-TEXT
  "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6609 :ISA BINDING :DIRECT-BINDEE MV6595 :THAT-REL T :BINDEE MV6605
  :PRESENT "PRESENT" :NEGATION MV6602 :RAW-TEXT "bound")
 (:VAR MV6605 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6602 :ISA NOT :WORD "not")
 (:VAR MV6608 :ISA POINT-MUTATED-PROTEIN :POSITION MV6597 :NEW-AMINO-ACID
  MV6599 :ORIGINAL-AMINO-ACID MV6596)
 (:VAR MV6597 :ISA NUMBER :VALUE 600)
 (:VAR MV6599 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6596 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6594 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
726: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6615 :ISA COPULAR-PREDICATION :ITEM MV6611 :VALUE MV6614 :PREDICATE
  MV6613)
 (:VAR MV6611 :ISA PROTEIN :PREDICATION MV6612 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6612 :ISA PHOSPHORYLATE :SUBSTRATE MV6611 :RAW-TEXT "Phosphorylated")
 (:VAR MV6614 :ISA ACTIVE) (:VAR MV6613 :ISA BE :PRESENT "PRESENT"))

___________________
727: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV6618 :ISA PHOSPHORYLATE :AGENT MV6616 :SUBSTRATE MV6617 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6616 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME
  "PDPK1_HUMAN")
 (:VAR MV6617 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
728: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV6628 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6621 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6621 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6625 :THEME MV6620 :PRESENT
  "PRESENT")
 (:VAR MV6625 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6620 :ISA PROTEIN :PREDICATION MV6622 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6622 :ISA PHOSPHORYLATE :SUBSTRATE MV6620 :RAW-TEXT "phosphorylated"))

___________________
729: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6637 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6631 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6631 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV6634 :THEME
  MV6630 :PRESENT "PRESENT")
 (:VAR MV6634 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6630 :ISA PROTEIN :PREDICATION MV6632 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6632 :ISA PHOSPHORYLATE :SUBSTRATE MV6630 :RAW-TEXT "phosphorylated"))

___________________
730: "show AKT1 on top"

                    SOURCE-START
e9    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV6639 :ISA SHOW :AT-RELATIVE-LOCATION MV6641 :STATEMENT-OR-THEME MV6638
  :PRESENT "PRESENT")
 (:VAR MV6641 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6638 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
731: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6651 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6646 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6646 :ISA HIGHLIGHT :THEME MV6647 :PRESENT "PRESENT")
 (:VAR MV6647 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6645 :RAW-TEXT
  "upstream")
 (:VAR MV6645 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
732: "Let's move nucleus elements to the top"

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6661 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6653 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6653 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6658 :THEME MV6655 :PRESENT
  "PRESENT")
 (:VAR MV6658 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6655 :ISA ELEMENT :MODIFIER MV6654)
 (:VAR MV6654 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
733: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV6664 :ISA BE :SUBJECT MV6663 :PREDICATE MV6667 :PRESENT "PRESENT")
 (:VAR MV6663 :ISA WHAT)
 (:VAR MV6667 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV6671 :HAS-DETERMINER
  "THE" :PREDICATION MV6666 :RAW-TEXT "downstreams")
 (:VAR MV6671 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6662 MV6670))
 (:VAR MV6662 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6670 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6666 :ISA COMMON))

___________________
734: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6683 :ISA THERE-EXISTS :VALUE MV6679 :PREDICATE MV6676)
 (:VAR MV6679 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6684 :PREDICATION
  MV6678 :RAW-TEXT "upstreams")
 (:VAR MV6684 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6673 MV6681 MV6674))
 (:VAR MV6673 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6681 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6674 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6678 :ISA COMMON) (:VAR MV6676 :ISA SYNTACTIC-THERE))

___________________
735: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6690 :ISA BE :SUBJECT MV6689 :PREDICATE MV6695 :PRESENT "PRESENT")
 (:VAR MV6689 :ISA WHAT)
 (:VAR MV6695 :ISA REGULATOR :THEME MV6698 :HAS-DETERMINER "THE" :PREDICATION
  MV6692 :CONTEXT MV6693 :RAW-TEXT "regulators")
 (:VAR MV6698 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6686 MV6687 MV6688))
 (:VAR MV6686 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6687 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6688 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6692 :ISA COMMON)
 (:VAR MV6693 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
736: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   REGULATOR     1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6713 :ISA WH-QUESTION :STATEMENT MV6707 :WH WHAT)
 (:VAR MV6707 :ISA REGULATOR :THEME MV6710 :CONTEXT MV6705 :RAW-TEXT
  "regulators")
 (:VAR MV6710 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6700 MV6701))
 (:VAR MV6700 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6701 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6705 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
737: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   PROTEIN       1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6728 :ISA WH-QUESTION :STATEMENT MV6714 :WH WHAT)
 (:VAR MV6714 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6725 :CONTEXT MV6721
  :RAW-TEXT "transcriptional regulators" :NAME "transcriptional regulator" :UID
  "XFAM:PF02082")
 (:VAR MV6725 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6715 MV6716 MV6717))
 (:VAR MV6715 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6716 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6717 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6721 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6732 :ISA BE :SUBJECT MV6731 :PREDICATE MV6734 :PRESENT "PRESENT")
 (:VAR MV6731 :ISA WHAT)
 (:VAR MV6734 :ISA MUTATION :OBJECT MV6740 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6740 :ISA COLLECTION :CONTEXT MV6730 :RAW-TEXT "PTEN, TP53 and BRAF"
  :TYPE PROTEIN :NUMBER 3 :ITEMS (MV6736 MV6729 MV6738))
 (:VAR MV6730 :ISA CANCER :UID "TS-1223")
 (:VAR MV6736 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6729 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6738 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
739: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6746 :ISA BE :SUBJECT MV6745 :PREDICATE MV6749 :PRESENT "PRESENT")
 (:VAR MV6745 :ISA WHAT)
 (:VAR MV6749 :ISA FREQUENCY :MEASURED-ITEM MV6743 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV6748 :RAW-TEXT "frequency")
 (:VAR MV6743 :ISA PROTEIN :CONTEXT MV6744 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6744 :ISA CANCER :UID "TS-1223")
 (:VAR MV6748 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
740: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive " 6
e16   WITH          6 "with CDH1 " 9
e15   FOR           9 "for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e18   S             1 "Which genes are mutually exclusive " 6
e16   PP            6 "with CDH1 " 9
e15   PP            9 "for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
741: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e20   WITH          1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6780 :ISA WH-QUESTION :STATEMENT MV6778 :VAR NIL :WH WHICH)
 (:VAR MV6778 :ISA PREPOSITIONAL-PHRASE :POBJ MV6767 :PREP "WITH")
 (:VAR MV6767 :ISA PROTEIN :CONTEXT MV6768 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6768 :ISA CANCER :UID "TS-0591"))

___________________
742: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6783 :ISA BE :SUBJECT MV6782 :PREDICATE MV6789 :PRESENT "PRESENT")
 (:VAR MV6782 :ISA WHAT)
 (:VAR MV6789 :ISA QUALITY-PREDICATE :ITEM MV6781 :ATTRIBUTE MV6786)
 (:VAR MV6781 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6786 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6785)
 (:VAR MV6785 :ISA CELLULAR))

___________________
743: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6793 :ISA REGULATE :MANNER MV6790 :AGENT MV6792 :OBJECT MV6794
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6790 :ISA HOW)
 (:VAR MV6792 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV6794 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
744: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?"
 (:VAR MV6796 :ISA BE :SUBJECT MV6795 :PREDICATE MV6797 :PRESENT "PRESENT")
 (:VAR MV6795 :ISA WHAT)
 (:VAR MV6797 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
745: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6809 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91028>
   (PREDICATE
    (#<member 91027>
     (SET
      (#<protein-family Raf 86555> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (RAW-TEXT "RAF") (NAME "Raf")
       (FAMILY-MEMBERS
        (#<collection #<"RAF1_HUMAN" 10410> #<"BRAF_HUMAN" 13720> #<"ARAF_HUMAN" 12660> 80140>
         (TYPE #<ref-category PROTEIN>)
         (ITEMS
          (COLLECTION
           (:MEMBERS
            ((#<protein "RAF1_HUMAN" 10410> (UID "UP:P04049")
              (NAME "RAF1_HUMAN"))
             (#<protein "BRAF_HUMAN" 13720> (UID "UP:P15056")
              (NAME "BRAF_HUMAN"))
             (#<protein "ARAF_HUMAN" 12660> (UID "UP:P10398")
              (NAME "ARAF_HUMAN"))))))
         (NUMBER 3)))
       (UID "FA:03114")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))))))))

___________________
746: "What genes are in RAS?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "What genes are in RAS" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in RAS?"
 (:VAR MV6816 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6811 :VALUE MV6814 :PREP
  "IN" :PREDICATE MV6812)
 (:VAR MV6811 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6814 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6812 :ISA BE :PRESENT "PRESENT"))

___________________
747: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6827 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6818 :VALUE MV6825 :PREP
  "IN" :PREDICATE MV6819)
 (:VAR MV6818 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6825 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6819 :ISA BE :PRESENT "PRESENT"))

___________________
748: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6829 :ISA BE :SUBJECT MV6828 :PREDICATE MV6833 :PRESENT "PRESENT")
 (:VAR MV6828 :ISA WHAT)
 (:VAR MV6833 :ISA HAS-NAME :QUANTIFIER MV6830 :QUANTIFIER MV6831 :ITEM MV6836)
 (:VAR MV6830 :ISA SOME :WORD "some") (:VAR MV6831 :ISA OTHER :WORD "other")
 (:VAR MV6836 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
749: "What are synonyms for ERK?"

                    SOURCE-START
e9    FOR           1 "What are synonyms for ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for ERK?"
 (:VAR MV6844 :ISA WH-QUESTION :STATEMENT MV6843 :WH WHAT)
 (:VAR MV6843 :ISA PREPOSITIONAL-PHRASE :POBJ MV6842 :PREP "FOR")
 (:VAR MV6842 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))
749 sentences in *list-of-bio-utterances*
