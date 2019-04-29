

___________________
0: "What genes does mir-128 regulate?"

                    SOURCE-START
e10   REGULATE      1 "What genes does mir-128 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does mir-128 regulate?"
 (:VAR MV16 :ISA REGULATE :OBJECT MV13 :AGENT MV17 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV13 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV17 :ISA BIO-ENTITY :NAME "mir-128"))

___________________
1: "what transcription factors does miR-200c regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c regulate?"
 (:VAR MV22 :ISA REGULATE :OBJECT MV18 :AGENT MV19 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV18 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV19 :ISA MICRO-RNA :RAW-TEXT "miR-200c" :NAME "MIR200C" :UID
  "NCIT:C82157"))

___________________
2: "Tell me about stat3's involvement in apoptosis"

                    SOURCE-START
e16   TELL          1 "Tell me about stat3's involvement in apoptosis" 11
                    END-OF-SOURCE
("Tell me about stat3's involvement in apoptosis"
 (:VAR MV24 :ISA TELL :THEME MV28 :THEME MV25 :PRESENT "PRESENT")
 (:VAR MV28 :ISA INVOLVE :THEME MV30 :PARTICIPANT MV27)
 (:VAR MV30 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV27 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV25 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
3: "What are the genes that have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e30   BE            1 "What are the genes that have strong evidence of being regulated by mir-122-5p" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV35 :ISA BE :SUBJECT MV34 :PREDICATE MV37 :PRESENT "PRESENT")
 (:VAR MV34 :ISA WHAT)
 (:VAR MV37 :ISA GENE :PREDICATION MV39 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV39 :ISA HAVE :POSSESSOR MV37 :THAT-REL T :THING-POSSESSED MV41
  :PRESENT "PRESENT")
 (:VAR MV41 :ISA EVIDENCE :FACT MV44 :PREDICATION MV40)
 (:VAR MV44 :ISA REGULATE :AGENT MV33 :PROGRESSIVE MV43 :RAW-TEXT "regulated")
 (:VAR MV33 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID
  "MIMAT0000421")
 (:VAR MV43 :ISA BE) (:VAR MV40 :ISA STRONG))

___________________
4: "What is stat3's involvement in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's involvement in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's involvement in apoptosis?"
 (:VAR MV50 :ISA BE :SUBJECT MV49 :PREDICATE MV52 :PRESENT "PRESENT")
 (:VAR MV49 :ISA WHAT) (:VAR MV52 :ISA INVOLVE :THEME MV54 :PARTICIPANT MV51)
 (:VAR MV54 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV51 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
5: "What is stat3's role in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's role in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptosis?"
 (:VAR MV58 :ISA BE :SUBJECT MV57 :PREDICATE MV60 :PRESENT "PRESENT")
 (:VAR MV57 :ISA WHAT) (:VAR MV60 :ISA ROLE :PROCESS MV62 :PARTICIPANT MV59)
 (:VAR MV62 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV59 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
6: "What is stat3's role in apoptotic regulation?"

                    SOURCE-START
e17   BE            1 "What is stat3's role in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptotic regulation?"
 (:VAR MV66 :ISA BE :SUBJECT MV65 :PREDICATE MV68 :PRESENT "PRESENT")
 (:VAR MV65 :ISA WHAT) (:VAR MV68 :ISA ROLE :PROCESS MV72 :PARTICIPANT MV67)
 (:VAR MV72 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV70 :RAW-TEXT
  "regulation")
 (:VAR MV70 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV67 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
7: "What is the evidence that miR-148a-3p targets DNMT1?"

                    SOURCE-START
e19   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:VAR MV77 :ISA BE :SUBJECT MV76 :PREDICATE MV83 :PRESENT "PRESENT")
 (:VAR MV76 :ISA WHAT)
 (:VAR MV83 :ISA EVIDENCE :STATEMENT MV82 :HAS-DETERMINER "THE")
 (:VAR MV82 :ISA TARGET :AGENT MV74 :OBJECT MV75 :PRESENT "PRESENT" :RAW-TEXT
  "targets")
 (:VAR MV74 :ISA MICRO-RNA :RAW-TEXT "miR-148a-3p" :NAME "microRNA 148a-3p"
  :UID "MIMAT0000243")
 (:VAR MV75 :ISA PROTEIN :RAW-TEXT "DNMT1" :UID "UP:P26358" :NAME
  "DNMT1_HUMAN"))

___________________
8: "what transcription factors does miR-124-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-124-3p regulate?"
 (:VAR MV88 :ISA REGULATE :OBJECT MV84 :AGENT MV85 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV84 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV85 :ISA MICRO-RNA :RAW-TEXT "miR-124-3p" :NAME "microRNA 124-3p" :UID
  "MIMAT0000422"))

___________________
9: "what transcription factors does miR-200c-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c-3p regulate?"
 (:VAR MV93 :ISA REGULATE :OBJECT MV89 :AGENT MV90 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV89 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV90 :ISA MICRO-RNA :RAW-TEXT "miR-200c-3p" :NAME "microRNA 200c-3p"
  :UID "MIMAT0000617"))

___________________
10: "What is the mutation significance of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian cancer?"
 (:VAR MV97 :ISA BE :SUBJECT MV96 :PREDICATE MV100 :PRESENT "PRESENT")
 (:VAR MV96 :ISA WHAT)
 (:VAR MV100 :ISA SIGNIFICANCE :AGENT MV94 :HAS-DETERMINER "THE" :MODIFIER
  MV99)
 (:VAR MV94 :ISA PROTEIN :CONTEXT MV95 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME
  "P53_HUMAN")
 (:VAR MV95 :ISA CANCER :UID "TS-1223")
 (:VAR MV99 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
11: "What is the mutation significance of TP53 for ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for ovarian cancer?"
 (:VAR MV108 :ISA BE :SUBJECT MV107 :PREDICATE MV111 :PRESENT "PRESENT")
 (:VAR MV107 :ISA WHAT)
 (:VAR MV111 :ISA SIGNIFICANCE :RESULT MV106 :AGENT MV105 :HAS-DETERMINER "THE"
  :MODIFIER MV110)
 (:VAR MV106 :ISA CANCER :UID "TS-1223")
 (:VAR MV105 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV110 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
12: "What are synonyms for BRAF?"

                    SOURCE-START
e8    BE            1 "What are synonyms " 4
e6    FOR           4 "for BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e8    S             1 "What are synonyms " 4
e6    PP            4 "for BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
13: "What are some genes that are mutated in breast cancer?"

                    SOURCE-START
e20   BE            1 "What are some genes that are mutated in breast cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are mutated in breast cancer?"
 (:VAR MV124 :ISA BE :SUBJECT MV123 :PREDICATE MV126 :PRESENT "PRESENT")
 (:VAR MV123 :ISA WHAT)
 (:VAR MV126 :ISA GENE :PREDICATION MV131 :QUANTIFIER MV125 :RAW-TEXT "genes")
 (:VAR MV131 :ISA MUTATION :OBJECT MV126 :THAT-REL T :CONTEXT MV122 :PRESENT
  "PRESENT" :RAW-TEXT "mutated")
 (:VAR MV122 :ISA CANCER :UID "TS-0591") (:VAR MV125 :ISA SOME :WORD "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    SOURCE-START
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are mutated in breast cancer?"
 (:VAR MV139 :ISA MUTATION :OBJECT MV135 :CONTEXT MV133 :PRESENT "PRESENT"
  :RAW-TEXT "mutated")
 (:VAR MV135 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV133 :ISA CANCER :UID "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S221 activate MAP2K2?"
 (:VAR MV152 :ISA POLAR-QUESTION :STATEMENT MV150)
 (:VAR MV150 :ISA BIO-ACTIVATE :AGENT MV143 :OBJECT MV141 :RAW-TEXT "activate")
 (:VAR MV143 :ISA PHOSPHORYLATE :SITE MV149 :RAW-TEXT "phosphorylation")
 (:VAR MV149 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S221" :POSITION MV147
  :AMINO-ACID MV146)
 (:VAR MV147 :ISA NUMBER :VALUE 221)
 (:VAR MV146 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV141 :ISA PROTEIN :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S222 activate MAP2K1?"
 (:VAR MV164 :ISA POLAR-QUESTION :STATEMENT MV162)
 (:VAR MV162 :ISA BIO-ACTIVATE :AGENT MV155 :OBJECT MV153 :RAW-TEXT "activate")
 (:VAR MV155 :ISA PHOSPHORYLATE :SITE MV161 :RAW-TEXT "phosphorylation")
 (:VAR MV161 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S222" :POSITION MV159
  :AMINO-ACID MV158)
 (:VAR MV159 :ISA NUMBER :VALUE 222)
 (:VAR MV158 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV153 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    SOURCE-START
e12   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    END-OF-SOURCE
("Simulate the MAP2K1-MAPK1 complex"
 (:VAR MV167 :ISA SIMULATE :OBJECT MV171 :PRESENT "PRESENT" :RAW-TEXT
  "Simulate")
 (:VAR MV171 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV166 :COMPONENT MV165)
 (:VAR MV166 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV165 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
18: "What are the members of ERK?"

                    SOURCE-START
e12   BE            1 "What are the members of ERK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of ERK?"
 (:VAR MV173 :ISA BE :SUBJECT MV172 :PREDICATE MV175 :PRESENT "PRESENT")
 (:VAR MV172 :ISA WHAT)
 (:VAR MV175 :ISA MEMBER :SET MV177 :HAS-DETERMINER "THE")
 (:VAR MV177 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV180 :ISA BE :SUBJECT MV179 :PREDICATE MV182 :PRESENT "PRESENT")
 (:VAR MV179 :ISA WHAT)
 (:VAR MV182 :ISA MEMBER :SET MV184 :HAS-DETERMINER "THE")
 (:VAR MV184 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV187 :ISA BE :SUBJECT MV186 :PREDICATE MV189 :PRESENT "PRESENT")
 (:VAR MV186 :ISA WHAT)
 (:VAR MV189 :ISA MEMBER :SET MV191 :HAS-DETERMINER "THE")
 (:VAR MV191 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV194 :ISA BE :SUBJECT MV193 :PREDICATE MV196 :PRESENT "PRESENT")
 (:VAR MV193 :ISA WHAT)
 (:VAR MV196 :ISA MEMBER :SET MV202 :HAS-DETERMINER "THE")
 (:VAR MV202 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
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
 (:VAR MV206 :ISA BE :SUBJECT MV205 :PREDICATE MV208 :PRESENT "PRESENT")
 (:VAR MV205 :ISA WHAT)
 (:VAR MV208 :ISA MEMBER :SET MV204 :HAS-DETERMINER "THE")
 (:VAR MV204 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAS family"
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
 (:VAR MV213 :ISA BE :SUBJECT MV212 :PREDICATE MV216 :PRESENT "PRESENT")
 (:VAR MV212 :ISA WHAT)
 (:VAR MV216 :ISA HAS-NAME :ITEM MV219 :QUANTIFIER MV214)
 (:VAR MV219 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV214 :ISA ANOTHER :WORD "another"))

___________________
24: "What is another name for MAP2K1?"

                    SOURCE-START
e14   BE            1 "What is another name for MAP2K1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is another name for MAP2K1?"
 (:VAR MV223 :ISA BE :SUBJECT MV222 :PREDICATE MV226 :PRESENT "PRESENT")
 (:VAR MV222 :ISA WHAT)
 (:VAR MV226 :ISA HAS-NAME :ITEM MV221 :QUANTIFIER MV224)
 (:VAR MV221 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV224 :ISA ANOTHER :WORD "another"))

___________________
25: "How does STAT3 affect c-fos"

                    SOURCE-START
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    END-OF-SOURCE
("How does STAT3 affect c-fos"
 (:VAR MV234 :ISA AFFECT :MANNER MV232 :AGENT MV230 :OBJECT MV231 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV232 :ISA HOW)
 (:VAR MV230 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV231 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    SOURCE-START
e11   LIST          1 "List some genes regulated by elk1" 8
                    END-OF-SOURCE
("List some genes regulated by elk1"
 (:VAR MV236 :ISA LIST :THEME MV238 :PRESENT "PRESENT")
 (:VAR MV238 :ISA GENE :PREDICATION MV239 :QUANTIFIER MV237 :RAW-TEXT "genes")
 (:VAR MV239 :ISA REGULATE :OBJECT MV238 :AGENT MV235 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV235 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV237 :ISA SOME :WORD "some"))

___________________
27: "List some of the genes regulated by elk1"

                    SOURCE-START
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    END-OF-SOURCE
("List some of the genes regulated by elk1"
 (:VAR MV243 :ISA LIST :THEME MV247 :PRESENT "PRESENT")
 (:VAR MV247 :ISA GENE :PREDICATION MV248 :QUANTIFIER MV244 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV248 :ISA REGULATE :OBJECT MV247 :AGENT MV242 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV242 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV244 :ISA SOME :WORD "some"))

___________________
28: "List the genes regulated by elk1"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by elk1" 8
                    END-OF-SOURCE
("List the genes regulated by elk1"
 (:VAR MV254 :ISA LIST :THEME MV256 :PRESENT "PRESENT")
 (:VAR MV256 :ISA GENE :PREDICATION MV257 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV257 :ISA REGULATE :OBJECT MV256 :AGENT MV253 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV253 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    SOURCE-START
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of AKT1 and BRAF?"
 (:VAR MV262 :ISA BE :SUBJECT MV261 :PREDICATE MV267 :PRESENT "PRESENT")
 (:VAR MV261 :ISA WHAT)
 (:VAR MV267 :ISA REGULATOR :THEME MV271 :HAS-DETERMINER "THE" :PREDICATION
  MV264 :CONTEXT MV265 :RAW-TEXT "regulators")
 (:VAR MV271 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV260 MV270))
 (:VAR MV260 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV270 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV264 :ISA COMMON)
 (:VAR MV265 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT and BRAF?"
 (:VAR MV274 :ISA BE :SUBJECT MV273 :PREDICATE MV277 :PRESENT "PRESENT")
 (:VAR MV273 :ISA WHAT)
 (:VAR MV277 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV282 :HAS-DETERMINER
  "THE" :PREDICATION MV276 :RAW-TEXT "upstreams")
 (:VAR MV282 :ISA COLLECTION :RAW-TEXT "AKT and BRAF" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV279 MV281))
 (:VAR MV279 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "AKT3_HUMAN") (:UID "UP:Q9Y243"))
   (PROTEIN (:NAME "AKT2_HUMAN") (:UID "UP:P31751"))
   (PROTEIN (:NAME "AKT1_HUMAN") (:UID "UP:P31749")))
  :UID "FA:03066")
 (:VAR MV281 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV276 :ISA COMMON))

___________________
31: "What are the common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and BRAF?"
 (:VAR MV286 :ISA BE :SUBJECT MV285 :PREDICATE MV289 :PRESENT "PRESENT")
 (:VAR MV285 :ISA WHAT)
 (:VAR MV289 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV293 :HAS-DETERMINER
  "THE" :PREDICATION MV288 :RAW-TEXT "upstreams")
 (:VAR MV293 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV284 MV292))
 (:VAR MV284 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV292 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV288 :ISA COMMON))

___________________
32: "What are the genes that smad2 regulates?"

                    SOURCE-START
e16   BE            1 "What are the genes that smad2 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that smad2 regulates?"
 (:VAR MV297 :ISA BE :SUBJECT MV296 :PREDICATE MV299 :PRESENT "PRESENT")
 (:VAR MV296 :ISA WHAT)
 (:VAR MV299 :ISA GENE :PREDICATION MV301 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV301 :ISA REGULATE :OBJECT MV299 :THAT-REL T :AGENT MV295 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV295 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV306 :ISA BE :SUBJECT MV305 :PREDICATE MV308 :PRESENT "PRESENT")
 (:VAR MV305 :ISA WHAT)
 (:VAR MV308 :ISA MICRO-RNA :PREDICATION MV310 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV310 :ISA REGULATE :AGENT MV308 :THAT-REL T :OBJECT MV314 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV314 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE
  PROTEIN :NUMBER 5 :ITEMS (MV311 MV312 MV302 MV303 MV304))
 (:VAR MV311 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV312 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV302 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV303 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV304 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    SOURCE-START
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:VAR MV317 :ISA BE :SUBJECT MV316 :PREDICATE MV319 :PRESENT "PRESENT")
 (:VAR MV316 :ISA WHAT)
 (:VAR MV319 :ISA MICRO-RNA :PREDICATION MV321 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV321 :ISA REGULATE :AGENT MV319 :THAT-REL T :OBJECT MV325 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV325 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, and STAT3" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV322 MV323 MV315))
 (:VAR MV322 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV323 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV315 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "What are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SRF?"
 (:VAR MV327 :ISA BE :SUBJECT MV326 :PREDICATE MV329 :PRESENT "PRESENT")
 (:VAR MV326 :ISA WHAT)
 (:VAR MV329 :ISA REGULATOR :THEME MV331 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV331 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate in the liver?"
 (:VAR MV336 :ISA REGULATE :OBJECT MV334 :AGENT MV333 :ORGAN MV339 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV334 :ISA WHAT)
 (:VAR MV333 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV339 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
37: "What does it regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does it regulate in the liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it regulate in the liver?"
 (:VAR MV344 :ISA REGULATE :OBJECT MV341 :AGENT-OR-CAUSE MV343 :ORGAN MV347
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV341 :ISA WHAT) (:VAR MV343 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV347 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMAD2?"
 (:VAR MV355 :ISA REGULATE :OBJECT MV351 :AGENT MV349 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV351 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV349 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMDA2?"
 (:VAR MV365 :ISA REGULATE :OBJECT MV358 :AGENT MV364 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV358 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV364 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SRF?"
 (:VAR MV373 :ISA REGULATE :OBJECT MV368 :AGENT MV372 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV368 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV372 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
41: "Which of these are regulated by SMAD2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMAD2?"
 (:VAR MV382 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV378 :AGENT MV375
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV378 :ISA THESE :QUANTIFIER MV376 :WORD "these")
 (:VAR MV376 :ISA WHICH)
 (:VAR MV375 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
42: "Which of these are regulated by SMDA2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMDA2?"
 (:VAR MV392 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV388 :AGENT MV385
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV388 :ISA THESE :QUANTIFIER MV386 :WORD "these")
 (:VAR MV386 :ISA WHICH) (:VAR MV385 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
43: "Which pathways use these?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use these?"
 (:VAR MV398 :ISA BIO-USE :AGENT MV396 :OBJECT MV399 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV396 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV399 :ISA THESE :WORD "these"))

___________________
44: "Where does STAT3 regulate the expression of c-fos?"

                    SOURCE-START
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Where does STAT3 regulate the expression of c-fos?"
 (:VAR MV404 :ISA REGULATE :LOCATION MV402 :AGENT MV400 :AFFECTED-PROCESS MV406
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV402 :ISA WHERE)
 (:VAR MV400 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV406 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV401 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV401 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
45: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e35   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:VAR MV426 :ISA POLAR-QUESTION :STATEMENT MV413)
 (:VAR MV413 :ISA TELL :AGENT MV412 :THEME MV409 :BENEFICIARY MV414 :MODAL
  "CAN")
 (:VAR MV412 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV409 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV424 :QUANTIFIER MV415
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV424 :ISA SHARE :OBJECT MV409 :THAT-REL T :PARTICIPANT MV423 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV423 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV410 MV422))
 (:VAR MV410 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV422 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV415 :ISA ALL :WORD "all")
 (:VAR MV414 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
46: "can you tell me which transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("can you tell me which transcription factors are shared by elk1 and srf"
 (:VAR MV442 :ISA POLAR-QUESTION :STATEMENT MV431)
 (:VAR MV431 :ISA TELL :AGENT MV430 :THEME MV440 :THEME MV432 :MODAL "CAN")
 (:VAR MV430 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV440 :ISA SHARE :OBJECT MV427 :PARTICIPANT MV439 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV427 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV439 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV428 MV438))
 (:VAR MV428 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV438 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV432 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
47: "what are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "what are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what are the regulators of SRF?"
 (:VAR MV444 :ISA BE :SUBJECT MV443 :PREDICATE MV446 :PRESENT "PRESENT")
 (:VAR MV443 :ISA WHAT)
 (:VAR MV446 :ISA REGULATOR :THEME MV448 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV448 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
48: "what does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "what does stat regulate" 5
                    END-OF-SOURCE
("what does stat regulate"
 (:VAR MV453 :ISA REGULATE :OBJECT MV450 :AGENT MV452 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV450 :ISA WHAT)
 (:VAR MV452 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
49: "what is erbb?"

                    SOURCE-START
e4    BE            1 "what is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("what is erbb?"
 (:VAR MV455 :ISA BE :SUBJECT MV454 :PREDICATE MV456 :PRESENT "PRESENT")
 (:VAR MV454 :ISA WHAT)
 (:VAR MV456 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
50: "Is STAT3 involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?"
 (:VAR MV464 :ISA POLAR-QUESTION :STATEMENT MV463)
 (:VAR MV463 :ISA INVOLVE :THEME MV457 :THEME MV461 :PAST "PAST")
 (:VAR MV457 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV461 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
51: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?"
 (:VAR MV474 :ISA POLAR-QUESTION :STATEMENT MV473)
 (:VAR MV473 :ISA INVOLVE :THEME MV465 :THEME MV471 :PAST "PAST")
 (:VAR MV465 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV471 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV469 :RAW-TEXT
  "regulation")
 (:VAR MV469 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
52: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?"
 (:VAR MV483 :ISA POLAR-QUESTION :STATEMENT MV482)
 (:VAR MV482 :ISA INVOLVE :THEME MV475 :THEME MV479 :PAST "PAST")
 (:VAR MV475 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV479 :ISA REGULATE :AFFECTED-PROCESS MV480 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV480 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
53: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV492 :ISA REGULATE :OBJECT MV488 :AGENT MV484 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV488 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV486 :RAW-TEXT
  "genes")
 (:VAR MV486 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV484 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
54: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes"
 (:VAR MV494 :ISA LIST :THEME MV498 :PRESENT "PRESENT")
 (:VAR MV498 :ISA GENE :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV496 :RAW-TEXT
  "genes")
 (:VAR MV496 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
55: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV508 :ISA INVOLVE :THEME MV501 :THEME MV507 :PRESENT "PRESENT")
 (:VAR MV501 :ISA GENE :PREDICATION MV502 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV502 :ISA REGULATE :OBJECT MV501 :AGENT MV499 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV499 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV507 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
56: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3"
 (:VAR MV512 :ISA LIST :THEME MV513 :PRESENT "PRESENT")
 (:VAR MV513 :ISA GENE :PREDICATION MV514 :RAW-TEXT "genes")
 (:VAR MV514 :ISA REGULATE :OBJECT MV513 :AGENT MV511 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV511 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
57: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV523 :ISA INVOLVE :THEME MV518 :THEME MV522 :PRESENT "PRESENT")
 (:VAR MV518 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV522 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
58: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV534 :ISA INVOLVE :THEME MV527 :THEME MV533 :PRESENT "PRESENT")
 (:VAR MV527 :ISA GENE :PREDICATION MV529 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV529 :ISA REGULATE :OBJECT MV527 :THAT-REL T :AGENT MV525 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV525 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV533 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
59: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3"
 (:VAR MV537 :ISA LIST :THEME MV539 :PRESENT "PRESENT")
 (:VAR MV539 :ISA GENE :PREDICATION MV540 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV540 :ISA REGULATE :OBJECT MV539 :AGENT MV536 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV536 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
60: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes"
 (:VAR MV544 :ISA LIST :THEME MV547 :PRESENT "PRESENT")
 (:VAR MV547 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV546 :RAW-TEXT
  "genes")
 (:VAR MV546 :ISA REGULATE :OBJECT MV547 :AGENT MV543 :RAW-TEXT "regulated")
 (:VAR MV543 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
61: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV554 :ISA REGULATE :OBJECT MV550 :AGENT MV548 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV550 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV548 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
62: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV562 :ISA INVOLVE :THEME MV557 :THEME MV561 :PRESENT "PRESENT")
 (:VAR MV557 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV561 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
63: "What STAT3 regulated genes are involved in aptosis"

                    SOURCE-START
e16   INVOLVE       1 "What STAT3 regulated genes are involved " 8
e15   IN            8 "in aptosis" 10
                    END-OF-SOURCE
                    SOURCE-START
e16   S             1 "What STAT3 regulated genes are involved " 8
e15   PP            8 "in aptosis" 10
                    END-OF-SOURCE


___________________
64: "Let me know if any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e31   LET           1 "Let me know if any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know if any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV575 :ISA LET :COMPLEMENT MV592 :PRESENT "PRESENT")
 (:VAR MV592 :ISA KNOW :AGENT MV576 :STATEMENT MV591 :PRESENT "PRESENT")
 (:VAR MV576 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV591 :ISA WH-QUESTION :STATEMENT MV588 :WH IF)
 (:VAR MV588 :ISA INVOLVE :THEME MV582 :THEME MV587 :PRESENT "PRESENT")
 (:VAR MV582 :ISA GENE :QUANTIFIER MV579 :PREDICATION MV583 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV579 :ISA ANY :WORD "any")
 (:VAR MV583 :ISA REGULATE :OBJECT MV582 :AGENT MV574 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV574 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV587 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
65: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV594 :ISA LET :COMPLEMENT MV612 :PRESENT "PRESENT")
 (:VAR MV612 :ISA KNOW :AGENT MV595 :STATEMENT MV611 :PRESENT "PRESENT")
 (:VAR MV595 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV611 :ISA WH-QUESTION :STATEMENT MV608 :WH WHETHER)
 (:VAR MV608 :ISA INVOLVE :THEME MV602 :THEME MV607 :PRESENT "PRESENT")
 (:VAR MV602 :ISA GENE :QUANTIFIER MV599 :PREDICATION MV603 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV599 :ISA ANY :WORD "any")
 (:VAR MV603 :ISA REGULATE :OBJECT MV602 :AGENT MV593 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV593 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV607 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
66: "Look up which genes targeted by stat3 are involved in apoptosis"

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
67: "Tell me how stat3 is involved in apoptosis"

                    SOURCE-START
e15   TELL          1 "Tell me " 3
e14   INVOLVE       3 "how stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
                    SOURCE-START
e15   VG            1 "Tell me " 3
e14   HOWCOMP       3 "how stat3 is involved in apoptosis" 10
                    END-OF-SOURCE


___________________
68: "Tell me if stat3 is involved in apoptosis"

                    SOURCE-START
e16   TELL          1 "Tell me if stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me if stat3 is involved in apoptosis"
 (:VAR MV641 :ISA TELL :THEME MV650 :BENEFICIARY MV642 :PRESENT "PRESENT")
 (:VAR MV650 :ISA WH-QUESTION :STATEMENT MV648 :WH IF)
 (:VAR MV648 :ISA INVOLVE :THEME MV640 :THEME MV647 :PRESENT "PRESENT")
 (:VAR MV640 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV647 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV642 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
69: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV652 :ISA TELL :THEME MV662 :THEME MV653 :PRESENT "PRESENT")
 (:VAR MV662 :ISA WH-QUESTION :STATEMENT MV660 :WH WHETHER)
 (:VAR MV660 :ISA INVOLVE :THEME MV651 :THEME MV659 :PRESENT "PRESENT")
 (:VAR MV651 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV659 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV653 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
70: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV665 :ISA BE :SUBJECT MV664 :PREDICATE MV667 :PRESENT "PRESENT")
 (:VAR MV664 :ISA WHAT)
 (:VAR MV667 :ISA GENE :PREDICATION MV673 :EXPRESSES MV663 :PREDICATION MV666
  :RAW-TEXT "genes")
 (:VAR MV673 :ISA INVOLVE :THEME MV667 :THAT-REL T :THEME MV672 :PRESENT
  "PRESENT")
 (:VAR MV672 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV663 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV666 :ISA REGULATE :OBJECT MV667 :RAW-TEXT "regulated"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV677 :ISA BE :SUBJECT MV676 :PREDICATE MV679 :PRESENT "PRESENT")
 (:VAR MV676 :ISA WHAT)
 (:VAR MV679 :ISA GENE :PREDICATION MV685 :EXPRESSES MV675 :PREDICATION MV678
  :RAW-TEXT "genes")
 (:VAR MV685 :ISA INVOLVE :THEME MV679 :THAT-REL T :THEME MV684 :PRESENT
  "PRESENT")
 (:VAR MV684 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV675 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV678 :ISA REGULATE :OBJECT MV679 :RAW-TEXT "regulated"))

___________________
72: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV697 :ISA INVOLVE :THEME MV690 :THEME MV696 :PRESENT "PRESENT")
 (:VAR MV690 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV687 :HAS-DETERMINER
  "WHAT" :MODIFIER MV689 :RAW-TEXT "downstream")
 (:VAR MV687 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV689 :ISA GENE :RAW-TEXT "genes")
 (:VAR MV696 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
73: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV702 :ISA BE :SUBJECT MV701 :PREDICATE MV704 :PRESENT "PRESENT")
 (:VAR MV701 :ISA WHAT)
 (:VAR MV704 :ISA INVOLVE :THEME MV709 :PARTICIPANT MV700 :HAS-DETERMINER
  "THE")
 (:VAR MV709 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV707 :RAW-TEXT
  "regulation")
 (:VAR MV707 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV700 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
74: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV714 :ISA INVOLVE :THEME MV713 :THEME MV715 :PRESENT "PRESENT")
 (:VAR MV713 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV715 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
75: "What processes involve srf"

                    SOURCE-START
e7    INVOLVE       1 "What processes involve srf" 5
                    END-OF-SOURCE
("What processes involve srf"
 (:VAR MV719 :ISA INVOLVE :THEME MV717 :THEME MV720 :PRESENT "PRESENT")
 (:VAR MV717 :ISA BIO-PROCESS :HAS-DETERMINER "WHAT" :RAW-TEXT "processes")
 (:VAR MV720 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
76: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV729 :ISA INVOLVE :THEME MV724 :THEME MV728 :PRESENT "PRESENT")
 (:VAR MV724 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV723 :RAW-TEXT
  "genes")
 (:VAR MV723 :ISA REGULATE :OBJECT MV724 :AGENT MV721 :RAW-TEXT "regulated")
 (:VAR MV721 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV728 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
77: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV742 :ISA INVOLVE :THEME MV734 :THEME MV741 :PRESENT "PRESENT")
 (:VAR MV734 :ISA GENE :ORGAN MV737 :HAS-DETERMINER "WHICH" :PREDICATION MV733
  :RAW-TEXT "genes")
 (:VAR MV737 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV733 :ISA REGULATE :OBJECT MV734 :AGENT MV731 :RAW-TEXT "regulated")
 (:VAR MV731 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV741 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
78: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3-regulated genes are involved in apoptosis?"
 (:VAR MV753 :ISA INVOLVE :THEME MV748 :THEME MV752 :PRESENT "PRESENT")
 (:VAR MV748 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV747 :RAW-TEXT
  "genes")
 (:VAR MV747 :ISA REGULATE :OBJECT MV748 :AGENT MV745 :RAW-TEXT "regulated")
 (:VAR MV745 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV752 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
79: "Mek activates MAPK1."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK1."
 (:VAR MV757 :ISA BIO-ACTIVATE :AGENT MV756 :OBJECT MV755 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV756 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV755 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
80: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV759 :ISA BIO-ACTIVATE :AGENT MV758 :OBJECT MV760 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV758 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV760 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
81: "MAPK1 phosphorylates ELK1"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "MAPK1 phosphorylates ELK1" 6
                    END-OF-SOURCE
("MAPK1 phosphorylates ELK1"
 (:VAR MV763 :ISA PHOSPHORYLATE :AGENT MV761 :SUBSTRATE MV762 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV761 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV762 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
82: "DUSP6 dephosphorylates MAPK1"

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1"
 (:VAR MV766 :ISA DEPHOSPHORYLATE :AGENT MV764 :SUBSTRATE MV765 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV764 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV765 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
83: "ELK1 positively regulates FOS."

                    SOURCE-START
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    PERIOD
                    END-OF-SOURCE
("ELK1 positively regulates FOS."
 (:VAR MV768 :ISA UPREGULATE :AGENT MV767 :OBJECT MV769 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV767 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV769 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
84: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV773 :ISA BINDING :BINDER MV772 :DIRECT-BINDEE MV776 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV772 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV776 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV771 :MODIFIER MV775
  :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV771 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV775 :ISA LIGAND :RAW-TEXT "ligand"))

___________________
85: "revert that"

                    SOURCE-START
e0    REVERT        1 "revert " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE
                    SOURCE-START
e0    VG            1 "revert " 2
e2    DET           2 "that" 3
                    END-OF-SOURCE


___________________
86: "The EGFR-EGF complex binds another EGFR-EGF complex."

                    SOURCE-START
e19   BINDING       1 "The EGFR-EGF complex binds another EGFR-EGF complex" 12
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGF complex binds another EGFR-EGF complex."
 (:VAR MV783 :ISA BINDING :BINDER MV790 :DIRECT-BINDEE MV791 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV790 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF"
  :COMPONENT MV781 :COMPONENT MV780)
 (:VAR MV781 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV780 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV791 :ISA BIO-COMPLEX :QUANTIFIER MV784 :RAW-TEXT "EGFR-EGF" :COMPONENT
  MV786 :COMPONENT MV785)
 (:VAR MV784 :ISA ANOTHER :WORD "another")
 (:VAR MV786 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV785 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
87: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV797 :ISA BINDING :BINDER MV799 :DIRECT-BINDEE MV792 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV799 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR"
  :COMPONENT MV794 :COMPONENT MV794)
 (:VAR MV794 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV794 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV792 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

___________________
88: "undo that"

                    SOURCE-START
e0    UNDO          1 "undo " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE
                    SOURCE-START
e0    VG            1 "undo " 2
e2    DET           2 "that" 3
                    END-OF-SOURCE


___________________
89: "EGFR-bound GRB2 binds SOS1."

                    SOURCE-START
e12   BINDING       1 "EGFR-bound GRB2 binds SOS1" 9
                    PERIOD
                    END-OF-SOURCE
("EGFR-bound GRB2 binds SOS1."
 (:VAR MV806 :ISA BINDING :BINDER MV802 :DIRECT-BINDEE MV803 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV802 :ISA PROTEIN :PREDICATION MV805 :RAW-TEXT "GRB2" :UID "UP:P62993"
  :NAME "GRB2_HUMAN")
 (:VAR MV805 :ISA BINDING :DIRECT-BINDEE MV802 :BINDER MV804 :RAW-TEXT "bound")
 (:VAR MV804 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV803 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN"))

___________________
90: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV810 :ISA BINDING :BINDER MV808 :DIRECT-BINDEE MV811 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV808 :ISA PROTEIN :PREDICATION MV809 :RAW-TEXT "SOS1" :UID "UP:Q07889"
  :NAME "SOS1_HUMAN")
 (:VAR MV809 :ISA BINDING :DIRECT-BINDEE MV808 :BINDER MV807 :RAW-TEXT "bound")
 (:VAR MV807 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV811 :ISA PROTEIN :PREDICATION MV818 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV818 :ISA BINDING :DIRECT-BINDEE MV811 :THAT-REL T :BINDEE MV817
  :PRESENT "PRESENT" :NEGATION MV814 :RAW-TEXT "bound")
 (:VAR MV817 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV814 :ISA NOT :WORD "not"))

___________________
91: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV823 :ISA BINDING :BINDER MV822 :DIRECT-BINDEE MV824 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV822 :ISA PROTEIN :PREDICATION MV821 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV821 :ISA BINDING :DIRECT-BINDEE MV822 :BINDER MV820 :RAW-TEXT "bound")
 (:VAR MV820 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV824 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
92: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV834 :ISA BINDING :BINDER MV828 :DIRECT-BINDEE MV835 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV828 :ISA PROTEIN :PREDICATION MV836 :PREDICATION MV827 :RAW-TEXT
  "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV836 :ISA BINDING :DIRECT-BINDEE MV828 :THAT-REL T :BINDEE MV825
  :PRESENT "PRESENT" :NEGATION MV831 :RAW-TEXT "bound")
 (:VAR MV825 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV831 :ISA NOT :WORD "not")
 (:VAR MV827 :ISA BINDING :DIRECT-BINDEE MV828 :BINDER MV826 :RAW-TEXT "bound")
 (:VAR MV826 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV835 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
93: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV838 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
94: "How does BRAF affect MAP2K1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAP2K1?"
 (:VAR MV843 :ISA AFFECT :MANNER MV840 :AGENT MV842 :OBJECT MV839 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV840 :ISA HOW)
 (:VAR MV842 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV839 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
95: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the downstream of AKT1."
 (:VAR MV852 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV846 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV846 :ISA HIGHLIGHT :THEME MV848 :PRESENT "PRESENT")
 (:VAR MV848 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV845 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV845 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
96: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    PERIOD
                    END-OF-SOURCE
("Let's move phosphorylated MAPK1 to the bottom."
 (:VAR MV861 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV855 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV855 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV859 :THEME MV854 :PRESENT
  "PRESENT")
 (:VAR MV859 :ISA BOTTOM :HAS-DETERMINER "THE")
 (:VAR MV854 :ISA PROTEIN :PREDICATION MV856 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV856 :ISA PHOSPHORYLATE :SUBSTRATE MV854 :RAW-TEXT "phosphorylated"))

___________________
97: "Let's put AKT1, MAPK1 into mitochondrion."

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
98: "Let's show AKT1 on the top."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's show AKT1 on the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's show AKT1 on the top."
 (:VAR MV879 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV873 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV873 :ISA SHOW :AT-RELATIVE-LOCATION MV876 :STATEMENT-OR-THEME MV872
  :PRESENT "PRESENT")
 (:VAR MV876 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV872 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
99: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease FOS in the model?"
 (:VAR MV890 :ISA POLAR-QUESTION :STATEMENT MV888)
 (:VAR MV888 :ISA DECREASE :AGENT MV880 :OBJECT MV884 :RAW-TEXT "decrease")
 (:VAR MV880 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV884 :ISA PROTEIN :INFO-CONTEXT MV887 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV887 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
100: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease the amount of FOS in the model?"
 (:VAR MV905 :ISA POLAR-QUESTION :STATEMENT MV902)
 (:VAR MV902 :ISA DECREASE :AGENT MV891 :AFFECTED-PROCESS-OR-OBJECT MV896
  :RAW-TEXT "decrease")
 (:VAR MV891 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV896 :ISA BIO-AMOUNT :MEASURED-ITEM MV898 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV898 :ISA PROTEIN :INFO-CONTEXT MV901 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV901 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
101: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS decrease ELK1 in the model?"
 (:VAR MV916 :ISA POLAR-QUESTION :STATEMENT MV914)
 (:VAR MV914 :ISA DECREASE :AGENT MV908 :OBJECT MV906 :RAW-TEXT "decrease")
 (:VAR MV908 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV906 :ISA PROTEIN :INFO-CONTEXT MV913 :RAW-TEXT "ELK1" :UID "UP:P19419"
  :NAME "ELK1_HUMAN")
 (:VAR MV913 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
102: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 10 fold?"
 (:VAR MV937 :ISA POLAR-QUESTION :STATEMENT MV936)
 (:VAR MV936 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV934 :EVENT MV931)
 (:VAR MV934 :ISA WH-QUESTION :STATEMENT MV932 :WH IF)
 (:VAR MV932 :ISA INCREASE :AGENT-OR-CAUSE MV922 :ADVERB MV930
  :AFFECTED-PROCESS-OR-OBJECT MV926 :RAW-TEXT "increase")
 (:VAR MV922 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV930 :ISA N-FOLD :NUMBER MV929) (:VAR MV929 :ISA NUMBER :VALUE 10)
 (:VAR MV926 :ISA BIO-AMOUNT :MEASURED-ITEM MV917 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV917 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV931 :ISA VANISH :AGENT MV919 :RAW-TEXT "vanish")
 (:VAR MV919 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
103: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV960 :ISA POLAR-QUESTION :STATEMENT MV959)
 (:VAR MV959 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV957 :EVENT MV953)
 (:VAR MV957 :ISA WH-QUESTION :STATEMENT MV954 :WH IF)
 (:VAR MV954 :ISA INCREASE :AGENT-OR-CAUSE MV943 :MULTIPLIER MV952
  :AFFECTED-PROCESS-OR-OBJECT MV947 :RAW-TEXT "increase")
 (:VAR MV943 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV952 :ISA N-FOLD :NUMBER MV951) (:VAR MV951 :ISA NUMBER :VALUE 10)
 (:VAR MV947 :ISA BIO-AMOUNT :MEASURED-ITEM MV938 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV938 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV953 :ISA VANISH :AGENT MV940 :RAW-TEXT "vanish")
 (:VAR MV940 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV980 :ISA POLAR-QUESTION :STATEMENT MV979)
 (:VAR MV979 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV977 :EVENT MV974)
 (:VAR MV977 :ISA WH-QUESTION :STATEMENT MV975 :WH IF)
 (:VAR MV975 :ISA INCREASE :AGENT-OR-CAUSE MV967 :MULTIPLIER MV973 :OBJECT
  MV962 :RAW-TEXT "increase")
 (:VAR MV967 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV973 :ISA N-FOLD :NUMBER MV972) (:VAR MV972 :ISA NUMBER :VALUE 10)
 (:VAR MV962 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV974 :ISA VANISH :AGENT MV961 :RAW-TEXT "vanish")
 (:VAR MV961 :ISA PROTEIN :PREDICATION MV964 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV964 :ISA PHOSPHORYLATE :SUBSTRATE MV961 :RAW-TEXT "phosphorylated"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV1004 :ISA POLAR-QUESTION :STATEMENT MV1003)
 (:VAR MV1003 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1001 :EVENT MV997)
 (:VAR MV1001 :ISA WH-QUESTION :STATEMENT MV998 :WH IF)
 (:VAR MV998 :ISA INCREASE :AGENT-OR-CAUSE MV987 :MULTIPLIER MV996
  :AFFECTED-PROCESS-OR-OBJECT MV991 :RAW-TEXT "increase")
 (:VAR MV987 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV996 :ISA N-FOLD :NUMBER MV995) (:VAR MV995 :ISA NUMBER :VALUE 10)
 (:VAR MV991 :ISA BIO-AMOUNT :MEASURED-ITEM MV982 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV982 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV997 :ISA VANISH :AGENT MV981 :RAW-TEXT "vanish")
 (:VAR MV981 :ISA PROTEIN :PREDICATION MV984 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV984 :ISA PHOSPHORYLATE :SUBSTRATE MV981 :RAW-TEXT "phosphorylated"))

___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1016 :ISA POLAR-QUESTION :STATEMENT MV1014)
 (:VAR MV1014 :ISA INCREASE :CAUSE MV1008 :ADVERB MV1011 :RAW-TEXT "increase")
 (:VAR MV1008 :ISA BIO-AMOUNT :MEASURED-ITEM MV1005 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1005 :ISA PROTEIN :PREDICATION MV1010 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1010 :ISA PHOSPHORYLATE :SUBSTRATE MV1005 :RAW-TEXT "phosphorylated")
 (:VAR MV1011 :ISA EVER :NAME "ever"))

___________________
107: "Is MAP2K1 bound to MAPK1 eventually high?"

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
108: "Is MAPK1 bound to MAP2K1 transient?"

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
109: "Is MAPK1-bound MAP2K1 sustained?"

                    SOURCE-START
e13   SUSTAINED     1 "Is MAPK1-bound MAP2K1 sustained" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1-bound MAP2K1 sustained?"
 (:VAR MV1038 :ISA POLAR-QUESTION :STATEMENT MV1037)
 (:VAR MV1037 :ISA SUSTAINED :PARTICIPANT MV1033 :PAST "PAST")
 (:VAR MV1033 :ISA PROTEIN :PREDICATION MV1035 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1035 :ISA BINDING :DIRECT-BINDEE MV1033 :BINDER MV1032 :RAW-TEXT
  "bound")
 (:VAR MV1032 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?"
 (:VAR MV1045 :ISA POLAR-QUESTION :STATEMENT MV1044)
 (:VAR MV1044 :ISA COPULAR-PREDICATION :ITEM MV1039 :VALUE MV1043 :PREDICATE
  MV1040)
 (:VAR MV1039 :ISA PROTEIN :PREDICATION MV1041 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1041 :ISA PHOSPHORYLATE :SUBSTRATE MV1039 :RAW-TEXT "phosphorylated")
 (:VAR MV1043 :ISA HIGH :ADVERB MV1042)
 (:VAR MV1042 :ISA ALWAYS :NAME "always") (:VAR MV1040 :ISA BE))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?"
 (:VAR MV1052 :ISA POLAR-QUESTION :STATEMENT MV1051)
 (:VAR MV1051 :ISA COPULAR-PREDICATION :ITEM MV1046 :VALUE MV1050 :PREDICATE
  MV1047)
 (:VAR MV1046 :ISA PROTEIN :PREDICATION MV1048 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1048 :ISA PHOSPHORYLATE :SUBSTRATE MV1046 :RAW-TEXT "phosphorylated")
 (:VAR MV1050 :ISA HIGH :ADVERB MV1049)
 (:VAR MV1049 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1047 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?"
 (:VAR MV1059 :ISA POLAR-QUESTION :STATEMENT MV1058)
 (:VAR MV1058 :ISA COPULAR-PREDICATION :ITEM MV1053 :VALUE MV1057 :PREDICATE
  MV1054)
 (:VAR MV1053 :ISA PROTEIN :PREDICATION MV1055 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1055 :ISA PHOSPHORYLATE :SUBSTRATE MV1053 :RAW-TEXT "phosphorylated")
 (:VAR MV1057 :ISA HIGH :ADVERB MV1056) (:VAR MV1056 :ISA EVER :NAME "ever")
 (:VAR MV1054 :ISA BE))

___________________
113: "Is phosphorylated MAPK1 high at the end?"

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
114: "Is phosphorylated MAPK1 high?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 high" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 high?"
 (:VAR MV1075 :ISA POLAR-QUESTION :STATEMENT MV1074)
 (:VAR MV1074 :ISA COPULAR-PREDICATION :ITEM MV1070 :VALUE MV1073 :PREDICATE
  MV1071)
 (:VAR MV1070 :ISA PROTEIN :PREDICATION MV1072 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1072 :ISA PHOSPHORYLATE :SUBSTRATE MV1070 :RAW-TEXT "phosphorylated")
 (:VAR MV1073 :ISA HIGH) (:VAR MV1071 :ISA BE))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e20   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1087 :ISA POLAR-QUESTION :STATEMENT MV1086)
 (:VAR MV1086 :ISA SUSTAINED :PARTICIPANT MV1076 :LEVEL MV1084 :PAST "PAST")
 (:VAR MV1076 :ISA PROTEIN :PREDICATION MV1078 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1078 :ISA PHOSPHORYLATE :SUBSTRATE MV1076 :RAW-TEXT "phosphorylated")
 (:VAR MV1084 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1083 :RAW-TEXT
  "level")
 (:VAR MV1083 :ISA HIGH))

___________________
116: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?"
 (:VAR MV1093 :ISA POLAR-QUESTION :STATEMENT MV1092)
 (:VAR MV1092 :ISA SUSTAINED :PARTICIPANT MV1088 :PAST "PAST")
 (:VAR MV1088 :ISA PROTEIN :PREDICATION MV1090 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1090 :ISA PHOSPHORYLATE :SUBSTRATE MV1088 :RAW-TEXT "phosphorylated"))

___________________
117: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?"
 (:VAR MV1099 :ISA POLAR-QUESTION :STATEMENT MV1098)
 (:VAR MV1098 :ISA COPULAR-PREDICATION :ITEM MV1094 :VALUE MV1097 :PREDICATE
  MV1095)
 (:VAR MV1094 :ISA PROTEIN :PREDICATION MV1096 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1096 :ISA PHOSPHORYLATE :SUBSTRATE MV1094 :RAW-TEXT "phosphorylated")
 (:VAR MV1097 :ISA TRANSIENT) (:VAR MV1095 :ISA BE))

___________________
118: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?"
 (:VAR MV1110 :ISA POLAR-QUESTION :STATEMENT MV1109)
 (:VAR MV1109 :ISA COPULAR-PREDICATION :ITEM MV1108 :VALUE MV1106 :PREDICATE
  MV1102)
 (:VAR MV1108 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1101 :COMPONENT MV1100)
 (:VAR MV1101 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1100 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1106 :ISA HIGH :ADVERB MV1105) (:VAR MV1105 :ISA EVER :NAME "ever")
 (:VAR MV1102 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?"
 (:VAR MV1119 :ISA POLAR-QUESTION :STATEMENT MV1116)
 (:VAR MV1116 :ISA BIO-FORM :AGENT MV1118 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1118 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1112 :COMPONENT MV1111)
 (:VAR MV1112 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1111 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
120: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV1140 :ISA POLAR-QUESTION :STATEMENT MV1139)
 (:VAR MV1139 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1135 :EVENT MV1137)
 (:VAR MV1135 :ISA WH-QUESTION :STATEMENT MV1131 :WH IF)
 (:VAR MV1131 :ISA INCREASE :AGENT-OR-CAUSE MV1129 :ADVERB MV1134 :OBJECT
  MV1120 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1129 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1134 :ISA N-FOLD :NUMBER MV1133) (:VAR MV1133 :ISA NUMBER :VALUE 10)
 (:VAR MV1120 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1137 :ISA COPULAR-PREDICATION :ITEM MV1123 :VALUE MV1127 :PREDICATE
  MV1121)
 (:VAR MV1123 :ISA BIO-AMOUNT :MEASURED-ITEM MV1125 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1125 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1127 :ISA LOW :ADVERB MV1126) (:VAR MV1126 :ISA ALWAYS :NAME "always")
 (:VAR MV1121 :ISA BE))

___________________
121: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1163 :ISA POLAR-QUESTION :STATEMENT MV1162)
 (:VAR MV1162 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1158 :EVENT MV1160)
 (:VAR MV1158 :ISA WH-QUESTION :STATEMENT MV1152 :WH IF)
 (:VAR MV1152 :ISA INCREASE :AGENT-OR-CAUSE MV1150 :MULTIPLIER MV1156 :OBJECT
  MV1141 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1150 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1156 :ISA N-FOLD :NUMBER MV1155) (:VAR MV1155 :ISA NUMBER :VALUE 100)
 (:VAR MV1141 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1160 :ISA COPULAR-PREDICATION :ITEM MV1144 :VALUE MV1148 :PREDICATE
  MV1142)
 (:VAR MV1144 :ISA BIO-AMOUNT :MEASURED-ITEM MV1146 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1146 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1148 :ISA LOW :ADVERB MV1147) (:VAR MV1147 :ISA ALWAYS :NAME "always")
 (:VAR MV1142 :ISA BE))

___________________
122: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
 (:VAR MV1188 :ISA POLAR-QUESTION :STATEMENT MV1187)
 (:VAR MV1187 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1183 :EVENT MV1185)
 (:VAR MV1183 :ISA WH-QUESTION :STATEMENT MV1175 :WH IF)
 (:VAR MV1175 :ISA INCREASE :AGENT-OR-CAUSE MV1173 :ADVERB MV1181
  :AFFECTED-PROCESS-OR-OBJECT MV1177 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1173 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1181 :ISA N-FOLD :NUMBER MV1180) (:VAR MV1180 :ISA NUMBER :VALUE 100)
 (:VAR MV1177 :ISA BIO-AMOUNT :MEASURED-ITEM MV1164 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1164 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1185 :ISA COPULAR-PREDICATION :ITEM MV1167 :VALUE MV1171 :PREDICATE
  MV1165)
 (:VAR MV1167 :ISA BIO-AMOUNT :MEASURED-ITEM MV1169 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1169 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1171 :ISA HIGH :ADVERB MV1170) (:VAR MV1170 :ISA EVER :NAME "ever")
 (:VAR MV1165 :ISA BE))

___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1215 :ISA POLAR-QUESTION :STATEMENT MV1214)
 (:VAR MV1214 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1210 :EVENT MV1212)
 (:VAR MV1210 :ISA WH-QUESTION :STATEMENT MV1200 :WH IF)
 (:VAR MV1200 :ISA INCREASE :AGENT-OR-CAUSE MV1198 :MULTIPLIER MV1207
  :AFFECTED-PROCESS-OR-OBJECT MV1202 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1198 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1207 :ISA N-FOLD :NUMBER MV1206) (:VAR MV1206 :ISA NUMBER :VALUE 100)
 (:VAR MV1202 :ISA BIO-AMOUNT :MEASURED-ITEM MV1189 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1189 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1212 :ISA COPULAR-PREDICATION :ITEM MV1192 :VALUE MV1196 :PREDICATE
  MV1190)
 (:VAR MV1192 :ISA BIO-AMOUNT :MEASURED-ITEM MV1194 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1194 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1196 :ISA HIGH :ADVERB MV1195) (:VAR MV1195 :ISA EVER :NAME "ever")
 (:VAR MV1190 :ISA BE))

___________________
124: "Is the amount of MAPK1 phosphorylated eventually high?"

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
125: "Is the amount of phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 eventually high?"
 (:VAR MV1236 :ISA POLAR-QUESTION :STATEMENT MV1235)
 (:VAR MV1235 :ISA COPULAR-PREDICATION :ITEM MV1229 :VALUE MV1233 :PREDICATE
  MV1227)
 (:VAR MV1229 :ISA BIO-AMOUNT :MEASURED-ITEM MV1226 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1226 :ISA PROTEIN :PREDICATION MV1231 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1231 :ISA PHOSPHORYLATE :SUBSTRATE MV1226 :RAW-TEXT "phosphorylated")
 (:VAR MV1233 :ISA HIGH :ADVERB MV1232)
 (:VAR MV1232 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1227 :ISA BE))

___________________
126: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1247 :ISA POLAR-QUESTION :STATEMENT MV1246)
 (:VAR MV1246 :ISA COPULAR-PREDICATION :ITEM MV1240 :VALUE MV1244 :PREDICATE
  MV1238)
 (:VAR MV1240 :ISA BIO-AMOUNT :MEASURED-ITEM MV1237 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1237 :ISA PROTEIN :PREDICATION MV1242 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1242 :ISA PHOSPHORYLATE :SUBSTRATE MV1237 :RAW-TEXT "phosphorylated")
 (:VAR MV1244 :ISA HIGH :ADVERB MV1243) (:VAR MV1243 :ISA EVER :NAME "ever")
 (:VAR MV1238 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1258 :ISA POLAR-QUESTION :STATEMENT MV1256)
 (:VAR MV1256 :ISA INCREASE :CAUSE MV1251 :ADVERB MV1254 :RAW-TEXT
  "increasing")
 (:VAR MV1251 :ISA BIO-AMOUNT :MEASURED-ITEM MV1248 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1248 :ISA PROTEIN :PREDICATION MV1253 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1253 :ISA PHOSPHORYLATE :SUBSTRATE MV1248 :RAW-TEXT "phosphorylated")
 (:VAR MV1254 :ISA EVER :NAME "ever"))

___________________
128: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?"
 (:VAR MV1268 :ISA POLAR-QUESTION :STATEMENT MV1267)
 (:VAR MV1267 :ISA COPULAR-PREDICATION :ITEM MV1262 :VALUE MV1265 :PREDICATE
  MV1260)
 (:VAR MV1262 :ISA BIO-AMOUNT :MEASURED-ITEM MV1259 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1259 :ISA PROTEIN :PREDICATION MV1264 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1264 :ISA PHOSPHORYLATE :SUBSTRATE MV1259 :RAW-TEXT "phosphorylated")
 (:VAR MV1265 :ISA HIGH) (:VAR MV1260 :ISA BE))

___________________
129: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1279 :ISA POLAR-QUESTION :STATEMENT MV1278)
 (:VAR MV1278 :ISA COPULAR-PREDICATION :ITEM MV1272 :VALUE MV1276 :PREDICATE
  MV1270)
 (:VAR MV1272 :ISA BIO-AMOUNT :MEASURED-ITEM MV1269 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1269 :ISA PROTEIN :PREDICATION MV1274 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1274 :ISA PHOSPHORYLATE :SUBSTRATE MV1269 :RAW-TEXT "phosphorylated")
 (:VAR MV1276 :ISA HIGH :ADVERB MV1275) (:VAR MV1275 :ISA SOMETIMES)
 (:VAR MV1270 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e28   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1295 :ISA POLAR-QUESTION :STATEMENT MV1294)
 (:VAR MV1294 :ISA SUSTAINED :PARTICIPANT MV1283 :LEVEL MV1291 :PAST "PAST")
 (:VAR MV1283 :ISA BIO-AMOUNT :MEASURED-ITEM MV1280 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1280 :ISA PROTEIN :PREDICATION MV1285 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1285 :ISA PHOSPHORYLATE :SUBSTRATE MV1280 :RAW-TEXT "phosphorylated")
 (:VAR MV1291 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1290 :RAW-TEXT
  "level")
 (:VAR MV1290 :ISA HIGH))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1305 :ISA POLAR-QUESTION :STATEMENT MV1303)
 (:VAR MV1303 :ISA SUSTAINED :PARTICIPANT MV1299 :PAST "PAST")
 (:VAR MV1299 :ISA BIO-AMOUNT :MEASURED-ITEM MV1296 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1296 :ISA PROTEIN :PREDICATION MV1301 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1301 :ISA PHOSPHORYLATE :SUBSTRATE MV1296 :RAW-TEXT "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1315 :ISA POLAR-QUESTION :STATEMENT MV1314)
 (:VAR MV1314 :ISA COPULAR-PREDICATION :ITEM MV1309 :VALUE MV1312 :PREDICATE
  MV1307)
 (:VAR MV1309 :ISA BIO-AMOUNT :MEASURED-ITEM MV1306 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1306 :ISA PROTEIN :PREDICATION MV1311 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1311 :ISA PHOSPHORYLATE :SUBSTRATE MV1306 :RAW-TEXT "phosphorylated")
 (:VAR MV1312 :ISA TRANSIENT) (:VAR MV1307 :ISA BE))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1326 :ISA POLAR-QUESTION :STATEMENT MV1324)
 (:VAR MV1324 :ISA COPULAR-PREDICATION :ITEM MV1319 :VALUE MV1323 :PREDICATE
  MV1322)
 (:VAR MV1319 :ISA BIO-AMOUNT :MEASURED-ITEM MV1316 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1316 :ISA PROTEIN :PREDICATION MV1321 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1321 :ISA PHOSPHORYLATE :SUBSTRATE MV1316 :RAW-TEXT "phosphorylated")
 (:VAR MV1323 :ISA HIGH) (:VAR MV1322 :ISA BE :MODAL "WILL"))

___________________
134: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1347 :ISA POLAR-QUESTION :STATEMENT MV1346)
 (:VAR MV1346 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1343 :EVENT MV1344)
 (:VAR MV1343 :ISA WH-QUESTION :STATEMENT MV1335 :WH IF)
 (:VAR MV1335 :ISA INCREASE :AGENT-OR-CAUSE MV1333 :ADVERB MV1341
  :AFFECTED-PROCESS-OR-OBJECT MV1337 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1333 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1341 :ISA N-FOLD :NUMBER MV1340) (:VAR MV1340 :ISA NUMBER :VALUE 100)
 (:VAR MV1337 :ISA BIO-AMOUNT :MEASURED-ITEM MV1328 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1328 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1344 :ISA COPULAR-PREDICATION :ITEM MV1327 :VALUE MV1331 :PREDICATE
  MV1329)
 (:VAR MV1327 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1331 :ISA LOW :ADVERB MV1330)
 (:VAR MV1330 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1329 :ISA BE))

___________________
135: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e39   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1372 :ISA POLAR-QUESTION :STATEMENT MV1371)
 (:VAR MV1371 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1368 :EVENT MV1369)
 (:VAR MV1368 :ISA WH-QUESTION :STATEMENT MV1365 :WH IF)
 (:VAR MV1365 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1356 :MULTIPLIER
  MV1363 :RAW-TEXT "increased")
 (:VAR MV1356 :ISA BIO-AMOUNT :MEASURED-ITEM MV1349 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1349 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1363 :ISA N-FOLD :NUMBER MV1362) (:VAR MV1362 :ISA NUMBER :VALUE 100)
 (:VAR MV1369 :ISA COPULAR-PREDICATION :ITEM MV1348 :VALUE MV1353 :PREDICATE
  MV1350)
 (:VAR MV1348 :ISA PROTEIN :PREDICATION MV1351 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1351 :ISA ACTIVE) (:VAR MV1353 :ISA LOW :ADVERB MV1352)
 (:VAR MV1352 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1350 :ISA BE))

___________________
136: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1397 :ISA POLAR-QUESTION :STATEMENT MV1396)
 (:VAR MV1396 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1392 :EVENT MV1394)
 (:VAR MV1392 :ISA WH-QUESTION :STATEMENT MV1384 :WH IF)
 (:VAR MV1384 :ISA INCREASE :AGENT-OR-CAUSE MV1382 :ADVERB MV1390
  :AFFECTED-PROCESS-OR-OBJECT MV1386 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1382 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1390 :ISA N-FOLD :NUMBER MV1389) (:VAR MV1389 :ISA NUMBER :VALUE 100)
 (:VAR MV1386 :ISA BIO-AMOUNT :MEASURED-ITEM MV1374 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1374 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1394 :ISA COPULAR-PREDICATION :ITEM MV1377 :VALUE MV1380 :PREDICATE
  MV1375)
 (:VAR MV1377 :ISA BIO-AMOUNT :MEASURED-ITEM MV1373 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1373 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1380 :ISA LOW :ADVERB MV1379)
 (:VAR MV1379 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1375 :ISA BE))

___________________
137: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e44   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" 21
                    END-OF-SOURCE
("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
 (:VAR MV1423 :ISA POLAR-QUESTION :STATEMENT MV1422)
 (:VAR MV1422 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1418 :EVENT MV1420)
 (:VAR MV1418 :ISA WH-QUESTION :STATEMENT MV1410 :WH IF)
 (:VAR MV1410 :ISA INCREASE :AGENT-OR-CAUSE MV1408 :ADVERB MV1416
  :AFFECTED-PROCESS-OR-OBJECT MV1412 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1408 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1416 :ISA N-FOLD :NUMBER MV1415) (:VAR MV1415 :ISA NUMBER :VALUE 100)
 (:VAR MV1412 :ISA BIO-AMOUNT :MEASURED-ITEM MV1399 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1399 :ISA MOLECULE :RAW-TEXT "SB-525334" :UID "PCID:9967941")
 (:VAR MV1420 :ISA COPULAR-PREDICATION :ITEM MV1402 :VALUE MV1406 :PREDICATE
  MV1400)
 (:VAR MV1402 :ISA BIO-AMOUNT :MEASURED-ITEM MV1398 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1398 :ISA PROTEIN :PREDICATION MV1404 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1404 :ISA ACTIVE) (:VAR MV1406 :ISA LOW :ADVERB MV1405)
 (:VAR MV1405 :ISA ALWAYS :NAME "always") (:VAR MV1400 :ISA BE))

___________________
138: "Let's move AKT1 and MAPK1 into mitochondrion."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:VAR MV1433 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1427 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1427 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1430 :THEME
  MV1431 :PRESENT "PRESENT")
 (:VAR MV1430 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1431 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1425 MV1426))
 (:VAR MV1425 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1426 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
139: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1436 :ISA PHOSPHORYLATE :AGENT MV1434 :SUBSTRATE MV1435 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1434 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME
  "FEN1_HUMAN")
 (:VAR MV1435 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
140: "Move all into mitochondrion."

                    SOURCE-START
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1437 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1440 :THEME
  MV1442 :PRESENT "PRESENT")
 (:VAR MV1440 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1442 :ISA ALL :WORD "all"))

___________________
141: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1445 :ISA PHOSPHORYLATE :AGENT MV1443 :SUBSTRATE MV1444 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1443 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1444 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
142: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1455 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1448 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1448 :ISA HIGHLIGHT :THEME MV1450 :PRESENT "PRESENT")
 (:VAR MV1450 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1447 :HAS-DETERMINER
  "THE" :RAW-TEXT "upstream")
 (:VAR MV1447 :ISA PROTEIN :PREDICATION MV1453 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1453 :ISA PHOSPHORYLATE :SUBSTRATE MV1447 :RAW-TEXT "phosphorylated"))

___________________
143: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e19   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1467 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1458 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1458 :ISA SHOW :STATEMENT-OR-THEME MV1466 :PRESENT "PRESENT")
 (:VAR MV1466 :ISA PROTEIN :PREDICATION MV1465 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1465 :ISA PHOSPHORYLATE :SUBSTRATE MV1462 :SUBSTRATE MV1466 :RAW-TEXT
  "phosphorylated")
 (:VAR MV1462 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP"))

___________________
144: "Let's show the downstream of AKT1 on the top."

                    SOURCE-START
e24   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    PERIOD
                    END-OF-SOURCE
("Let's show the downstream of AKT1 on the top."
 (:VAR MV1481 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1470 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1470 :ISA SHOW :AT-RELATIVE-LOCATION MV1477 :STATEMENT-OR-THEME MV1472
  :PRESENT "PRESENT")
 (:VAR MV1477 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1472 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1469 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV1469 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
145: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1491 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1483 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1483 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV1488 :THEME MV1485 :PRESENT
  "PRESENT")
 (:VAR MV1488 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1485 :ISA ELEMENT :MODIFIER MV1484)
 (:VAR MV1484 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173"))

___________________
146: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1496 :ISA AFFECT :MANNER MV1493 :AGENT MV1495 :OBJECT MV1492 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1493 :ISA HOW)
 (:VAR MV1495 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1492 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
147: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1500 :ISA AFFECT :MANNER MV1498 :AGENT MV1497 :OBJECT MV1501 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1498 :ISA HOW)
 (:VAR MV1497 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1501 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
148: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1504 :ISA BE :SUBJECT MV1503 :PREDICATE MV1506 :PRESENT "PRESENT")
 (:VAR MV1503 :ISA WHAT)
 (:VAR MV1506 :ISA PATH :ENDPOINTS MV1510 :HAS-DETERMINER "THE")
 (:VAR MV1510 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1508 MV1502))
 (:VAR MV1508 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1502 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
149: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1515 :ISA AFFECT :MANNER MV1513 :AGENT MV1512 :OBJECT MV1516 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1513 :ISA HOW)
 (:VAR MV1512 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1516 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME
  "JUND_HUMAN"))

___________________
150: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1521 :ISA AFFECT :MANNER MV1519 :AGENT MV1517 :OBJECT MV1518 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1519 :ISA HOW)
 (:VAR MV1517 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME
  "SETB1_HUMAN")
 (:VAR MV1518 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME
  "ADA17_HUMAN"))

___________________
151: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1526 :ISA AFFECT :MANNER MV1523 :AGENT MV1525 :OBJECT MV1522 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1523 :ISA HOW)
 (:VAR MV1525 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1522 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
152: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1530 :ISA AFFECT :MANNER MV1527 :AGENT MV1529 :OBJECT MV1531 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1527 :ISA HOW)
 (:VAR MV1529 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME
  "ITAV_HUMAN")
 (:VAR MV1531 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
153: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does MAPK1 phosphorylate?"
 (:VAR MV1536 :ISA PHOSPHORYLATE :AMINO-ACID MV1534 :AGENT MV1532 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV1534 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1532 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
154: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1539 :ISA AFFECT :AGENT MV1538 :OBJECT MV1540 :PRESENT "PRESENT"
  :RAW-TEXT "affect")
 (:VAR MV1538 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1540 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
155: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1543 :ISA BIO-ACTIVATE :AGENT MV1542 :OBJECT MV1544 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV1542 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1544 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
156: "Let's learn about AKT1 in ovarian cancer."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's learn about AKT1 in ovarian cancer" 11
                    PERIOD
                    END-OF-SOURCE
("Let's learn about AKT1 in ovarian cancer."
 (:VAR MV1553 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1548 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1548 :ISA LEARNING :STATEMENT MV1546 :PRESENT "PRESENT")
 (:VAR MV1546 :ISA PROTEIN :CONTEXT MV1547 :RAW-TEXT "AKT1" :UID "UP:P31749"
  :NAME "AKT1_HUMAN")
 (:VAR MV1547 :ISA CANCER :UID "TS-1223"))

___________________
157: "What is its relationship with BRAF?"

                    SOURCE-START
e9    BE            1 "What is its relationship " 5
e7    WITH          5 "with BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e9    S             1 "What is its relationship " 5
e7    PP            5 "with BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
158: "What is its relationship with PTPN1?"

                    SOURCE-START
e10   BE            1 "What is its relationship " 5
e8    WITH          5 "with PTPN1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e10   S             1 "What is its relationship " 5
e8    PP            5 "with PTPN1" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
159: "AKT1 phosphorylates IFT140. "

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates IFT140."
 (:VAR MV1570 :ISA PHOSPHORYLATE :AGENT MV1568 :SUBSTRATE MV1569 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1568 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1569 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME
  "IF140_HUMAN"))

___________________
160: "What is the next correlation of AKT1?"

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "is " 3
e5    THE           3 "the " 4
e6 e7               "next" :: NEXT, SEQUENCER
e12   CORRELATION   5 "correlation of AKT1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e2    WH-PRONOUN    1 "What " 2
e3    VG            2 "is " 3
e5    DET           3 "the " 4
e6 e7               "next" :: NEXT, SEQUENCER
e12   NP            5 "correlation of AKT1" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
161: "Let's stop learning about AKT1."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e5    STOP-ENDURANT 4 "stop " 5
e9    LEARNING      5 "learning about AKT1" 9
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e1    INTERJECTION  1 "Let's " 4
e5    NP            4 "stop " 5
e9    VP+ING        5 "learning about AKT1" 9
                    PERIOD
                    END-OF-SOURCE


___________________
162: "What is the drug response on cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response on cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response on cells with TP53 alterations?"
 (:VAR MV1589 :ISA BE :SUBJECT MV1588 :PREDICATE MV1592 :PRESENT "PRESENT")
 (:VAR MV1588 :ISA WHAT)
 (:VAR MV1592 :ISA RESPONSE :BENEFICIARY MV1594 :HAS-DETERMINER "THE" :MODIFIER
  MV1591 :RAW-TEXT "response")
 (:VAR MV1594 :ISA CELL-TYPE :MUTATION MV1596)
 (:VAR MV1596 :ISA ALTER :OBJECT MV1587 :AGENT-OR-OBJECT MV1587 :RAW-TEXT
  "alterations")
 (:VAR MV1587 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1587 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1591 :ISA DRUG :RAW-TEXT "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1601 :ISA BE :SUBJECT MV1600 :PREDICATE MV1604 :PRESENT "PRESENT")
 (:VAR MV1600 :ISA WHAT)
 (:VAR MV1604 :ISA RESPONSE :CELL-TYPE MV1606 :HAS-DETERMINER "THE" :MODIFIER
  MV1603 :RAW-TEXT "response")
 (:VAR MV1606 :ISA CELL-TYPE :MUTATION MV1608)
 (:VAR MV1608 :ISA ALTER :OBJECT MV1599 :AGENT-OR-OBJECT MV1599 :RAW-TEXT
  "alterations")
 (:VAR MV1599 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1599 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1603 :ISA DRUG :RAW-TEXT "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1612 :ISA BE :SUBJECT MV1611 :PREDICATE MV1615 :PRESENT "PRESENT")
 (:VAR MV1611 :ISA WHAT)
 (:VAR MV1615 :ISA FREQUENCY :MEASURED-ITEM MV1617 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1614 :RAW-TEXT "frequency")
 (:VAR MV1617 :ISA PROTEIN :CONTEXT MV1619 :RAW-TEXT "EGFR" :UID "UP:P00533"
  :NAME "EGFR_HUMAN")
 (:VAR MV1619 :ISA GLIOBLASTOMA)
 (:VAR MV1614 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1625 :ISA BE :SUBJECT MV1624 :PREDICATE MV1628 :PRESENT "PRESENT")
 (:VAR MV1624 :ISA WHAT)
 (:VAR MV1628 :ISA FREQUENCY :MEASURED-ITEM MV1622 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1627 :RAW-TEXT "frequency")
 (:VAR MV1622 :ISA PROTEIN :CONTEXT MV1623 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1623 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1627 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1634 :ISA SHOW :STATEMENT-OR-THEME MV1637 :BENEFICIARY MV1635 :PRESENT
  "PRESENT")
 (:VAR MV1637 :ISA MUTATION :OBJECT MV1643 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1643 :ISA COLLECTION :CONTEXT MV1633 :RAW-TEXT "PTEN and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV1639 MV1641))
 (:VAR MV1633 :ISA CANCER :UID "TS-1223")
 (:VAR MV1639 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1641 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1635 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1647 :ISA SHOW :STATEMENT-OR-THEME MV1650 :BENEFICIARY MV1648 :PRESENT
  "PRESENT")
 (:VAR MV1650 :ISA MUTATION :OBJECT MV1652 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1652 :ISA PROTEIN :CONTEXT MV1646 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1646 :ISA CANCER :UID "TS-1223")
 (:VAR MV1648 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1658 :ISA BE :SUBJECT MV1657 :PREDICATE MV1660 :PRESENT "PRESENT")
 (:VAR MV1657 :ISA WHAT)
 (:VAR MV1660 :ISA MUTATION :OBJECT MV1662 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1662 :ISA PROTEIN :CONTEXT MV1656 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1656 :ISA CANCER :UID "TS-1223"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1668 :ISA BE :SUBJECT MV1667 :PREDICATE MV1680 :PRESENT "PRESENT")
 (:VAR MV1667 :ISA WHAT)
 (:VAR MV1680 :ISA QUALITY-PREDICATE :ITEM MV1678 :ATTRIBUTE MV1674)
 (:VAR MV1678 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1666 MV1677))
 (:VAR MV1666 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1677 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1674 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1672
  :MODIFIER MV1673)
 (:VAR MV1672 :ISA LIKELY :COMPARATIVE MV1670)
 (:VAR MV1670 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV1673 :ISA CELLULAR :NAME "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e17   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1690 :ISA THERE-EXISTS :VALUE MV1686 :PREDICATE MV1683)
 (:VAR MV1686 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1691 :PREDICATION
  MV1685 :RAW-TEXT "upstreams")
 (:VAR MV1691 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1681 MV1689))
 (:VAR MV1681 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1689 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1685 :ISA COMMON) (:VAR MV1683 :ISA SYNTACTIC-THERE))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1696 :ISA BE :SUBJECT MV1695 :PREDICATE MV1699 :PRESENT "PRESENT")
 (:VAR MV1695 :ISA WHAT)
 (:VAR MV1699 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1703 :HAS-DETERMINER
  "THE" :PREDICATION MV1698 :RAW-TEXT "upstreams")
 (:VAR MV1703 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1693 MV1701 MV1694))
 (:VAR MV1693 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1701 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1694 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1698 :ISA COMMON))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV1715 :ISA COPULAR-PREDICATION :ITEM MV1709 :VALUE MV1705 :PREDICATE
  MV1710)
 (:VAR MV1709 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1705 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV1707 :ALTERNATIVE MV1706)
 (:VAR MV1707 :ISA CANCER :UID "TS-0591")
 (:VAR MV1706 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV1710 :ISA BE :PRESENT "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:VAR MV1720 :ISA BE :SUBJECT MV1719 :PREDICATE MV1727 :PRESENT "PRESENT")
 (:VAR MV1719 :ISA WHAT)
 (:VAR MV1727 :ISA GENE :DISEASE MV1718 :HAS-DETERMINER "THE" :PREDICATION
  MV1716 :RAW-TEXT "genes")
 (:VAR MV1718 :ISA CANCER :UID "TS-0591")
 (:VAR MV1716 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV1717)
 (:VAR MV1717 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1731 :ISA BE :SUBJECT MV1730 :PREDICATE MV1734 :PRESENT "PRESENT")
 (:VAR MV1730 :ISA WHAT)
 (:VAR MV1734 :ISA SIGNIFICANCE :RESULT MV1729 :AGENT MV1728 :HAS-DETERMINER
  "THE" :MODIFIER MV1733)
 (:VAR MV1729 :ISA CANCER :UID "TS-0571")
 (:VAR MV1728 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1733 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1742 :ISA BE :SUBJECT MV1741 :PREDICATE MV1745 :PRESENT "PRESENT")
 (:VAR MV1741 :ISA WHAT)
 (:VAR MV1745 :ISA SIGNIFICANCE :AGENT MV1739 :HAS-DETERMINER "THE" :MODIFIER
  MV1744)
 (:VAR MV1739 :ISA PROTEIN :CONTEXT MV1740 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1740 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1744 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1751 :ISA BE :SUBJECT MV1750 :PREDICATE MV1754 :PRESENT "PRESENT")
 (:VAR MV1750 :ISA WHAT)
 (:VAR MV1754 :ISA SIGNIFICANCE :AGENT MV1756 :HAS-DETERMINER "THE" :MODIFIER
  MV1753)
 (:VAR MV1756 :ISA PROTEIN :CONTEXT MV1759 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1759 :ISA CANCER :ORGAN MV1758 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1758 :ISA PANCREAS) (:VAR MV1753 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1763 :ISA BE :SUBJECT MV1762 :PREDICATE MV1766 :PRESENT "PRESENT")
 (:VAR MV1762 :ISA WHAT)
 (:VAR MV1766 :ISA SIGNIFICANCE :AGENT MV1768 :HAS-DETERMINER "THE" :MODIFIER
  MV1765)
 (:VAR MV1768 :ISA PROTEIN :CONTEXT MV1771 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV1771 :ISA CANCER :MODIFIER MV1770 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1770 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME
  "KLK2_HUMAN")
 (:VAR MV1765 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1775 :ISA PHOSPHORYLATE :AGENT MV1774 :SUBSTRATE MV1776 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1774 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1776 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
179: "EGF binds EGFR."

                    SOURCE-START
e4    BINDING       1 "EGF binds EGFR" 4
                    PERIOD
                    END-OF-SOURCE
("EGF binds EGFR."
 (:VAR MV1778 :ISA BINDING :BINDER MV1777 :DIRECT-BINDEE MV1779 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1777 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1779 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1785 :ISA BINDING :BINDER MV1781 :DIRECT-BINDEE MV1780 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1781 :ISA PROTEIN :PREDICATION MV1782 :RAW-TEXT "EGFR" :UID
  "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1782 :ISA BINDING :DIRECT-BINDEE MV1781 :BINDEE MV1784 :PAST "PAST"
  :RAW-TEXT "bound")
 (:VAR MV1784 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1780 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1791 :ISA COPULAR-PREDICATION :ITEM MV1788 :VALUE MV1790 :PREDICATE
  MV1789)
 (:VAR MV1788 :ISA PROTEIN-FAMILY :PREDICATION MV1787 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1787 :ISA PHOSPHORYLATE :SUBSTRATE MV1788 :RAW-TEXT "Phosphorylated")
 (:VAR MV1790 :ISA ACTIVE) (:VAR MV1789 :ISA BE :PRESENT "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1792 :ISA PROTEIN :PREDICATION MV1794 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1794 :ISA PHOSPHORYLATE :SUBSTRATE MV1792 :TARGET MV1793 :PAST "PAST"
  :RAW-TEXT "phosphorylated")
 (:VAR MV1793 :ISA PROTEIN :SITE MV1799 :MODIFIER MV1800 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1799 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1798
  :AMINO-ACID MV1797)
 (:VAR MV1798 :ISA NUMBER :VALUE 220)
 (:VAR MV1797 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1800 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1805 :ISA TRANSCRIBE :AGENT MV1802 :OBJECT MV1803 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV1802 :ISA PROTEIN :PREDICATION MV1804 :RAW-TEXT "TP53" :UID
  "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1804 :ISA ACTIVE)
 (:VAR MV1803 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1832 :ISA POLAR-QUESTION :STATEMENT MV1831)
 (:VAR MV1831 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1827 :EVENT MV1829)
 (:VAR MV1827 :ISA WH-QUESTION :STATEMENT MV1817 :WH IF)
 (:VAR MV1817 :ISA INCREASE :AGENT-OR-CAUSE MV1815 :MULTIPLIER MV1824
  :AFFECTED-PROCESS-OR-OBJECT MV1819 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1815 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1824 :ISA N-FOLD :NUMBER MV1823) (:VAR MV1823 :ISA NUMBER :VALUE 10)
 (:VAR MV1819 :ISA BIO-AMOUNT :MEASURED-ITEM MV1806 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1806 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1829 :ISA COPULAR-PREDICATION :ITEM MV1809 :VALUE MV1813 :PREDICATE
  MV1807)
 (:VAR MV1809 :ISA BIO-AMOUNT :MEASURED-ITEM MV1811 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1811 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1813 :ISA HIGH :ADVERB MV1812) (:VAR MV1812 :ISA EVER :NAME "ever")
 (:VAR MV1807 :ISA BE))

___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1844 :ISA POLAR-QUESTION :STATEMENT MV1842)
 (:VAR MV1842 :ISA DECREASE :AGENT MV1834 :OBJECT MV1838 :RAW-TEXT "decrease")
 (:VAR MV1834 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1838 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1841 :PREDICATION MV1837
  :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1841 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1837 :ISA PHOSPHORYLATE :SUBSTRATE MV1838 :RAW-TEXT "phosphorylated"))

___________________
186: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?"
 (:VAR MV1855 :ISA POLAR-QUESTION :STATEMENT MV1853)
 (:VAR MV1853 :ISA DECREASE :AGENT MV1846 :OBJECT MV1849 :RAW-TEXT "decrease")
 (:VAR MV1846 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV1849 :ISA PROTEIN :INFO-CONTEXT MV1852 :RAW-TEXT "JUN" :UID
  "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1852 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
187: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1860 :ISA REGULATE :MANNER MV1857 :AGENT MV1859 :OBJECT MV1856
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV1857 :ISA HOW)
 (:VAR MV1859 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1856 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1865 :ISA BIO-ACTIVATE :MANNER MV1862 :AGENT MV1864 :OBJECT MV1861
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV1862 :ISA HOW)
 (:VAR MV1864 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1861 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?"
 (:VAR MV1871 :ISA POLAR-QUESTION :STATEMENT MV1870)
 (:VAR MV1870 :ISA INHIBIT :AGENT MV1867 :OBJECT MV1869 :RAW-TEXT "inhibit")
 (:VAR MV1867 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1869 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1882 :ISA SHARE :OBJECT MV1872 :PARTICIPANT MV1881 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV1872 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1881 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1878 MV1879 MV1873))
 (:VAR MV1878 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1879 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1873 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
191: "Create a model where LCK phosphorylates CD3E"

                    SOURCE-START
e2    CREATE        1 "Create " 2
e13   MODEL         2 "a model where LCK phosphorylates CD3E" 10
                    END-OF-SOURCE
                    SOURCE-START
e2    VG            1 "Create " 2
e13   NP            2 "a model where LCK phosphorylates CD3E" 10
                    END-OF-SOURCE


___________________
192: "What is upstream of CD3E?"

                    SOURCE-START
e11   BE            1 "What is upstream of CD3E" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is upstream of CD3E?"
 (:VAR MV1894 :ISA BE :SUBJECT MV1893 :PREDICATE MV1895 :PRESENT "PRESENT")
 (:VAR MV1893 :ISA WHAT)
 (:VAR MV1895 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1892 :RAW-TEXT
  "upstream")
 (:VAR MV1892 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME
  "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1903 :ISA WANT :AGENT MV1900 :THEME MV1911 :PRESENT "PRESENT")
 (:VAR MV1900 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1911 :ISA BIO-FIND :AGENT MV1900 :OBJECT MV1908 :PRESENT "PRESENT"
  :RAW-TEXT "find")
 (:VAR MV1900 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1908 :ISA TREATMENT :DISEASE MV1899 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV1899 :ISA CANCER :UID "TS-0739"))

___________________
194: "What drug could I use?"

                    SOURCE-START
e11   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV1920 :ISA BIO-USE :OBJECT MV1913 :MODAL MV1914 :AGENT MV1915 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV1913 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV1914 :ISA COULD) (:VAR MV1915 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1928 :ISA THERE-EXISTS :VALUE MV1925 :PREDICATE MV1922)
 (:VAR MV1925 :ISA DRUG :TARGET MV1927 :QUANTIFIER MV1924 :RAW-TEXT "drugs")
 (:VAR MV1927 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1924 :ISA ANY :WORD "any") (:VAR MV1922 :ISA SYNTACTIC-THERE))

___________________
196: "Are they kinases?"

                    SOURCE-START
e3    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1928 :ISA THERE-EXISTS :VALUE MV1925 :PREDICATE MV1922)
 (:VAR MV1925 :ISA DRUG :TARGET MV1927 :QUANTIFIER MV1924 :RAW-TEXT "drugs")
 (:VAR MV1927 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1924 :ISA ANY :WORD "any") (:VAR MV1922 :ISA SYNTACTIC-THERE))

___________________
197: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV1942 :ISA POLAR-QUESTION :STATEMENT MV1936)
 (:VAR MV1936 :ISA BIO-FIND :AGENT MV1934 :OBJECT MV1938 :MODAL "CAN" :RAW-TEXT
  "find")
 (:VAR MV1934 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1938 :ISA DRUG :TARGET MV1940 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1940 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1960 :ISA POLAR-QUESTION :STATEMENT MV1947)
 (:VAR MV1947 :ISA TELL :AGENT MV1946 :THEME MV1943 :BENEFICIARY MV1948 :MODAL
  "CAN")
 (:VAR MV1946 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1943 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1958 :QUANTIFIER MV1949
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1958 :ISA SHARE :OBJECT MV1943 :THAT-REL T :PARTICIPANT MV1957 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV1957 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1944 MV1956))
 (:VAR MV1944 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1956 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1949 :ISA ALL :WORD "all")
 (:VAR MV1948 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1976 :ISA POLAR-QUESTION :STATEMENT MV1965)
 (:VAR MV1965 :ISA TELL :AGENT MV1964 :THEME MV1974 :THEME MV1966 :MODAL "CAN")
 (:VAR MV1964 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1974 :ISA SHARE :OBJECT MV1961 :PARTICIPANT MV1973 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV1961 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1973 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1962 MV1972))
 (:VAR MV1962 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1972 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1966 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV1987 :ISA POLAR-QUESTION :STATEMENT MV1986)
 (:VAR MV1986 :ISA KNOW :AGENT MV1978 :STATEMENT MV1981)
 (:VAR MV1978 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1981 :ISA DRUG :TARGET MV1983 :QUANTIFIER MV1980 :RAW-TEXT "drugs")
 (:VAR MV1983 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1980 :ISA ANY :WORD "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV1999 :ISA POLAR-QUESTION :STATEMENT MV1997)
 (:VAR MV1997 :ISA REGULATE :AGENT MV1988 :OBJECT MV1993 :RAW-TEXT "regulate")
 (:VAR MV1988 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1993 :ISA GENE :ORGAN MV1996 :HAS-DETERMINER "THE" :EXPRESSES MV1992
  :RAW-TEXT "gene")
 (:VAR MV1996 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV1992 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV2010 :ISA POLAR-QUESTION :STATEMENT MV2008)
 (:VAR MV2008 :ISA REGULATE :AGENT MV2000 :OBJECT MV2005 :RAW-TEXT "regulate")
 (:VAR MV2000 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2005 :ISA GENE :ORGAN MV2007 :HAS-DETERMINER "THE" :EXPRESSES MV2001
  :RAW-TEXT "gene")
 (:VAR MV2007 :ISA LIVER)
 (:VAR MV2001 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV2018 :ISA POLAR-QUESTION :STATEMENT MV2017)
 (:VAR MV2017 :ISA REGULATE :AGENT MV2011 :OBJECT MV2016 :RAW-TEXT "regulate")
 (:VAR MV2011 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2016 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2012 :RAW-TEXT
  "gene")
 (:VAR MV2012 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2030 :ISA POLAR-QUESTION :STATEMENT MV2028)
 (:VAR MV2028 :ISA REGULATE :AGENT MV2019 :OBJECT MV2024 :RAW-TEXT "regulate")
 (:VAR MV2019 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2024 :ISA GENE :ORGAN MV2027 :HAS-DETERMINER "THE" :EXPRESSES MV2023
  :RAW-TEXT "gene")
 (:VAR MV2027 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2023 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2037 :ISA POLAR-QUESTION :STATEMENT MV2036)
 (:VAR MV2036 :ISA TARGET :AGENT MV2031 :OBJECT MV2032 :RAW-TEXT "target")
 (:VAR MV2031 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2032 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV2044 :ISA POLAR-QUESTION :STATEMENT MV2043)
 (:VAR MV2043 :ISA TARGET :AGENT MV2038 :OBJECT MV2039 :RAW-TEXT "target")
 (:VAR MV2038 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV2039 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV2051 :ISA POLAR-QUESTION :STATEMENT MV2050)
 (:VAR MV2050 :ISA TARGET :AGENT MV2045 :OBJECT MV2046 :RAW-TEXT "target")
 (:VAR MV2045 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV2046 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV2058 :ISA POLAR-QUESTION :STATEMENT MV2057)
 (:VAR MV2057 :ISA TARGET :AGENT MV2052 :OBJECT MV2053 :RAW-TEXT "target")
 (:VAR MV2052 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV2053 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV2067 :ISA POLAR-QUESTION :STATEMENT MV2065)
 (:VAR MV2065 :ISA REGULATE :AGENT MV2059 :OBJECT MV2064 :RAW-TEXT "regulate")
 (:VAR MV2059 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2064 :ISA BIO-ENTITY :ORGAN MV2063 :NAME "cfors")
 (:VAR MV2063 :ISA LIVER))

___________________
210: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV2076 :ISA POLAR-QUESTION :STATEMENT MV2074)
 (:VAR MV2074 :ISA REGULATE :AGENT MV2068 :OBJECT MV2071 :RAW-TEXT "regulate")
 (:VAR MV2068 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2071 :ISA PROTEIN :ORGAN MV2073 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2073 :ISA LIVER))

___________________
211: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV2085 :ISA POLAR-QUESTION :STATEMENT MV2083)
 (:VAR MV2083 :ISA REGULATE :AGENT-OR-CAUSE MV2078 :OBJECT MV2080 :RAW-TEXT
  "regulate")
 (:VAR MV2078 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2080 :ISA PROTEIN :ORGAN MV2082 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2082 :ISA BRAIN))

___________________
212: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV2091 :ISA POLAR-QUESTION :STATEMENT MV2090)
 (:VAR MV2090 :ISA REGULATE :AGENT MV2086 :OBJECT MV2089 :RAW-TEXT "regulate")
 (:VAR MV2086 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2089 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2103 :ISA POLAR-QUESTION :STATEMENT MV2101)
 (:VAR MV2101 :ISA REGULATE :AGENT MV2092 :OBJECT MV2097 :RAW-TEXT "regulate")
 (:VAR MV2092 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2097 :ISA GENE :CELL-TYPE MV2100 :HAS-DETERMINER "THE" :EXPRESSES
  MV2096 :RAW-TEXT "gene")
 (:VAR MV2100 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2099)
 (:VAR MV2099 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2096 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV2113 :ISA POLAR-QUESTION :STATEMENT MV2112)
 (:VAR MV2112 :ISA UTILIZE :PARTICIPANT MV2109 :OBJECT MV2104 :RAW-TEXT
  "utilize")
 (:VAR MV2109 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2111 :RAW-TEXT
  "pathway")
 (:VAR MV2111 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2104 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV2123 :ISA POLAR-QUESTION :STATEMENT MV2122)
 (:VAR MV2122 :ISA UTILIZE :PARTICIPANT MV2120 :OBJECT MV2114 :RAW-TEXT
  "utilize")
 (:VAR MV2120 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2117 :RAW-TEXT
  "pathway")
 (:VAR MV2117 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV2114 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2125 :ISA GIVE :THEME MV2132 :BENEFICIARY MV2126 :PRESENT "PRESENT")
 (:VAR MV2132 :ISA EVIDENCE :STATEMENT MV2131 :HAS-DETERMINER "THE")
 (:VAR MV2131 :ISA DECREASE :AGENT MV2130 :OBJECT MV2124 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2130 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2124 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2126 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2134 :ISA GIVE :THEME MV2141 :BENEFICIARY MV2135 :PRESENT "PRESENT")
 (:VAR MV2141 :ISA EVIDENCE :STATEMENT MV2140 :HAS-DETERMINER "THE")
 (:VAR MV2140 :ISA REGULATE :AGENT MV2139 :OBJECT MV2133 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2139 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2133 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2135 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?"
 (:VAR MV2146 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89589>
   (PREDICATE
    (#<kinase 89588> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV2154 :ISA POLAR-QUESTION :STATEMENT MV2153)
 (:VAR MV2153 :ISA INHIBIT :AGENT MV2147 :AGENT MV2151 :PAST "PAST" :RAW-TEXT
  "inhibited")
 (:VAR MV2147 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV2151 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2163 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89603>
   (PREDICATE
    (#<transcription-factor 89602>
     (CONTROLLED-GENE
      (#<gene 89498>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
221: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2178 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89610>
   (PREDICATE
    (#<regulator 89609> (QUANTIFIER 1)
     (THEME
      (#<gene 89499> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<the 106>)) (RAW-TEXT "regulators"))))))

___________________
222: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e13   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV2186 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89619>
   (PREDICATE
    (#<inhibitor 89618>
     (PROTEIN
      (#<protein "MP2K1_HUMAN" 89613> (RAW-TEXT "MEK1") (UID "UP:Q02750")
       (NAME "MP2K1_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2194 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89623>
   (PREDICATE
    (#<inhibitor 89622>
     (TARGET-OR-PROTEIN
      (#<protein "BRAF_HUMAN" 88029> (RAW-TEXT "BRAF") (UID "UP:P15056")
       (NAME "BRAF_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
224: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase"
 (:VAR MV2199 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89589>
   (PREDICATE
    (#<kinase 89588> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
225: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase"
 (:VAR MV2204 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89589>
   (PREDICATE
    (#<kinase 89588> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
226: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2211 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89633>
   (PREDICATE
    (#<regulator 89632> (HAS-DETERMINER (#<an 108> (WORD "an")))
     (CELLULAR-PROCESS (#<apoptosis 87978> (RAW-TEXT "apoptotic")))
     (RAW-TEXT "regulator"))))))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV2223 :ISA POLAR-QUESTION :STATEMENT MV2222)
 (:VAR MV2222 :ISA INVOLVE :THEME MV2212 :CONTEXT MV2219 :PAST "PAST")
 (:VAR MV2212 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2219 :ISA PATHWAY :QUANTIFIER MV2216 :CELLULAR-PROCESS MV2217
  :RAW-TEXT "pathways")
 (:VAR MV2216 :ISA ANY :WORD "any")
 (:VAR MV2217 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV2233 :ISA POLAR-QUESTION :STATEMENT MV2232)
 (:VAR MV2232 :ISA INVOLVE :THEME MV2224 :THEME MV2230 :PAST "PAST")
 (:VAR MV2224 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2230 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV2228 :RAW-TEXT
  "regulation")
 (:VAR MV2228 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV2242 :ISA POLAR-QUESTION :STATEMENT MV2241)
 (:VAR MV2241 :ISA INVOLVE :THEME MV2234 :THEME MV2238 :PAST "PAST")
 (:VAR MV2234 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2238 :ISA REGULATE :AFFECTED-PROCESS MV2239 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV2239 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2247 :ISA PHOSPHORYLATE :AMINO-ACID MV2244 :AGENT MV2246 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV2244 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2246 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
231: "Is the first one a kinase"

                    SOURCE-START
e15   BE            1 "Is the first one a kinase" 7
                    END-OF-SOURCE
("Is the first one a kinase"
 (:VAR MV2256 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89589>
   (PREDICATE
    (#<kinase 89588> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
232: "Is there a drug that targets BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2266 :ISA THERE-EXISTS :VALUE MV2261 :PREDICATE MV2258)
 (:VAR MV2261 :ISA DRUG :PREDICATION MV2264 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV2264 :ISA TARGET :AGENT MV2261 :THAT-REL T :OBJECT MV2265 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV2265 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2258 :ISA SYNTACTIC-THERE))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2277 :ISA THERE-EXISTS :VALUE MV2274 :PREDICATE MV2269)
 (:VAR MV2274 :ISA PATHWAY :PREDICATION MV2275 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2272 :RAW-TEXT "pathway")
 (:VAR MV2275 :ISA REGULATE :AFFECTED-PROCESS MV2274 :AGENT MV2267 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV2267 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2272 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2269 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e25   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2291 :ISA THERE-EXISTS :VALUE MV2286 :PREDICATE MV2281)
 (:VAR MV2286 :ISA PATHWAY :PREDICATION MV2292 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2284 :RAW-TEXT "pathway")
 (:VAR MV2292 :ISA REGULATE :AFFECTED-PROCESS MV2286 :THAT-REL T :AGENT MV2279
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2279 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2284 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2281 :ISA SYNTACTIC-THERE))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2295 :ISA LET :COMPLEMENT MV2309 :PRESENT "PRESENT")
 (:VAR MV2309 :ISA KNOW :AGENT MV2296 :STATEMENT MV2308 :PRESENT "PRESENT")
 (:VAR MV2296 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2308 :ISA WH-QUESTION :STATEMENT MV2307 :WH IF)
 (:VAR MV2307 :ISA THERE-EXISTS :VALUE MV2305 :PREDICATE MV2301)
 (:VAR MV2305 :ISA GENE :PREDICATION MV2306 :QUANTIFIER MV2302
  :CELLULAR-PROCESS MV2303 :RAW-TEXT "genes")
 (:VAR MV2306 :ISA REGULATE :OBJECT MV2305 :AGENT MV2294 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2294 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2302 :ISA ANY :WORD "any")
 (:VAR MV2303 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2301 :ISA BE))

___________________
236: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2311 :ISA LET :COMPLEMENT MV2317 :PRESENT "PRESENT")
 (:VAR MV2317 :ISA KNOW :AGENT MV2312 :STATEMENT MV2315 :PRESENT "PRESENT")
 (:VAR MV2312 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2315 :ISA GENE :PREDICATION MV2316 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV2316 :ISA REGULATE :OBJECT MV2315 :AGENT MV2310 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2310 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2319 :ISA LIST :THEME MV2322 :PRESENT "PRESENT")
 (:VAR MV2322 :ISA GENE :PREDICATION MV2323 :QUANTIFIER MV2320 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV2323 :ISA REGULATE :OBJECT MV2322 :AGENT MV2327 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2327 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2318 MV2326))
 (:VAR MV2318 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2326 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2320 :ISA ALL :WORD "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf"
 (:VAR MV2330 :ISA LIST :THEME MV2331 :PRESENT "PRESENT")
 (:VAR MV2331 :ISA GENE :PREDICATION MV2332 :RAW-TEXT "genes")
 (:VAR MV2332 :ISA REGULATE :OBJECT MV2331 :AGENT MV2336 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2336 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2329 MV2335))
 (:VAR MV2329 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2335 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2339 :ISA LIST :THEME MV2341 :PRESENT "PRESENT")
 (:VAR MV2341 :ISA GENE :PREDICATION MV2349 :QUANTIFIER MV2340 :RAW-TEXT
  "genes")
 (:VAR MV2349 :ISA REGULATE :OBJECT MV2341 :THAT-REL T :AGENT MV2348 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2348 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2338 MV2347))
 (:VAR MV2338 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2347 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2340 :ISA SOME :WORD "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2352 :ISA LIST :THEME MV2358 :PRESENT "PRESENT")
 (:VAR MV2358 :ISA EVIDENCE :STATEMENT MV2357 :HAS-DETERMINER "THE")
 (:VAR MV2357 :ISA DECREASE :AGENT MV2356 :OBJECT MV2351 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2356 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2351 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2360 :ISA NAME-SOMETHING :PATIENT MV2363 :PRESENT "PRESENT")
 (:VAR MV2363 :ISA GENE :PREDICATION MV2364 :RAW-TEXT "genes")
 (:VAR MV2364 :ISA REGULATE :OBJECT MV2363 :AGENT MV2368 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2368 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2359 MV2367))
 (:VAR MV2359 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2367 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e33   COPULAR-PREDICATE 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2386 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2375 :VALUE MV2380
  :PREDICATE MV2379)
 (:VAR MV2375 :ISA GENE :PREDICATION MV2376 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2373 :RAW-TEXT "genes")
 (:VAR MV2376 :ISA REGULATE :OBJECT MV2375 :AGENT MV2370 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2370 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2373 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2380 :ISA ACTIVE :ORGAN MV2383)
 (:VAR MV2383 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2379 :ISA BE :PRESENT "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e30   COPULAR-PREDICATE 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2404 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2394 :VALUE MV2398
  :PREDICATE MV2397)
 (:VAR MV2394 :ISA GENE :PREDICATION MV2395 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2392 :RAW-TEXT "genes")
 (:VAR MV2395 :ISA REGULATE :OBJECT MV2394 :AGENT MV2389 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2389 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2392 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2398 :ISA ACTIVE :ORGAN MV2401)
 (:VAR MV2401 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2397 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e28   COPULAR-PREDICATE 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2419 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2409 :VALUE MV2416
  :PREDICATE MV2415)
 (:VAR MV2409 :ISA GENE :PREDICATION MV2410 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV2410 :ISA REGULATE :OBJECT MV2409 :AGENT MV2406 :ORGAN MV2413 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2406 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2413 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2416 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2415 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2433 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2426 :VALUE MV2430
  :PREDICATE MV2429)
 (:VAR MV2426 :ISA GENE :PREDICATION MV2427 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2425 :RAW-TEXT "genes")
 (:VAR MV2427 :ISA REGULATE :OBJECT MV2426 :AGENT MV2422 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2422 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2425 :ISA LIVER) (:VAR MV2430 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2429 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2446 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2439 :VALUE MV2443
  :PREDICATE MV2442)
 (:VAR MV2439 :ISA GENE :PREDICATION MV2440 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2438 :RAW-TEXT "genes")
 (:VAR MV2440 :ISA REGULATE :OBJECT MV2439 :AGENT MV2435 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2435 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2438 :ISA LIVER) (:VAR MV2443 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2442 :ISA BE :PRESENT "PRESENT"))

___________________
247: "Please find pathways involving SRF"

                    SOURCE-START
e8    BIO-FIND      1 "Please find pathways " 4
e7    INVOLVE       4 "involving SRF" 6
                    END-OF-SOURCE
                    SOURCE-START
e8    VP            1 "Please find pathways " 4
e7    VP+ING        4 "involving SRF" 6
                    END-OF-SOURCE


___________________
248: "Please show me KEGG pathways involving SRF"

                    SOURCE-START
e13   SHOW          1 "Please show me KEGG pathways involving SRF" 8
                    END-OF-SOURCE
("Please show me KEGG pathways involving SRF"
 (:VAR MV2455 :ISA SHOW :STATEMENT-OR-THEME MV2457 :BENEFICIARY MV2456 :PRESENT
  "PRESENT" :ADVERB MV2454)
 (:VAR MV2457 :ISA PATHWAY :PREDICATION MV2458 :MODIFIER MV2460 :RAW-TEXT
  "pathways")
 (:VAR MV2458 :ISA INVOLVE :THEME MV2457 :THEME MV2459 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2459 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2460 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV2456 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2454 :ISA PLEASE :NAME "please"))

___________________
249: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2462 :ISA SHOW :STATEMENT-OR-THEME MV2464 :BENEFICIARY MV2463 :PRESENT
  "PRESENT" :ADVERB MV2461)
 (:VAR MV2464 :ISA PATHWAY :PREDICATION MV2465 :RAW-TEXT "pathways")
 (:VAR MV2465 :ISA INVOLVE :THEME MV2464 :THEME MV2466 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2466 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2463 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2461 :ISA PLEASE :NAME "please"))

___________________
250: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2468 :ISA BIO-ACTIVATE :AGENT MV2467 :OBJECT MV2469 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2467 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2469 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
251: "Remove the fact that MEK activates ERK"

                    SOURCE-START
e14   REMOVE        1 "Remove the fact that MEK activates ERK" 8
                    END-OF-SOURCE
("Remove the fact that MEK activates ERK"
 (:VAR MV2470 :ISA REMOVE :OBJECT MV2477 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2477 :ISA FACT :STATEMENT MV2475 :HAS-DETERMINER "THE")
 (:VAR MV2475 :ISA BIO-ACTIVATE :AGENT MV2474 :OBJECT MV2476 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2474 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2476 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
252: "Inactive MEK activates ERK"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "Inactive MEK activates ERK" 5
                    END-OF-SOURCE
("Inactive MEK activates ERK"
 (:VAR MV2480 :ISA BIO-ACTIVATE :AGENT MV2479 :OBJECT MV2481 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2479 :ISA PROTEIN-FAMILY :PREDICATION MV2478 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2478 :ISA INACTIVE)
 (:VAR MV2481 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
253: "Remove the fact that inactive MEK activates ERK"

                    SOURCE-START
e16   REMOVE        1 "Remove the fact that inactive MEK activates ERK" 9
                    END-OF-SOURCE
("Remove the fact that inactive MEK activates ERK"
 (:VAR MV2482 :ISA REMOVE :OBJECT MV2490 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2490 :ISA FACT :STATEMENT MV2488 :HAS-DETERMINER "THE")
 (:VAR MV2488 :ISA BIO-ACTIVATE :AGENT MV2487 :OBJECT MV2489 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2487 :ISA PROTEIN-FAMILY :PREDICATION MV2486 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2486 :ISA INACTIVE)
 (:VAR MV2489 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
254: "Show immune system pathways"

                    SOURCE-START
e5    SHOW          1 "Show immune system pathways" 5
                    END-OF-SOURCE
("Show immune system pathways"
 (:VAR MV2492 :ISA SHOW :STATEMENT-OR-THEME MV2493 :PRESENT "PRESENT")
 (:VAR MV2493 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2491 :RAW-TEXT "pathways")
 (:VAR MV2491 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2494 :ISA SHOW :STATEMENT-OR-THEME MV2496 :BENEFICIARY MV2495 :PRESENT
  "PRESENT")
 (:VAR MV2496 :ISA PATHWAY :PREDICATION MV2497 :RAW-TEXT "pathways")
 (:VAR MV2497 :ISA INVOLVE :THEME MV2496 :THEME MV2498 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2498 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2495 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2499 :ISA SHOW :STATEMENT-OR-THEME MV2501 :BENEFICIARY MV2500 :PRESENT
  "PRESENT")
 (:VAR MV2501 :ISA PATHWAY :PATHWAYCOMPONENT MV2503 :RAW-TEXT "pathways")
 (:VAR MV2503 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2505 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2505 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV2500 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
257: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2508 :ISA SHOW :STATEMENT-OR-THEME MV2510 :BENEFICIARY MV2509 :PRESENT
  "PRESENT")
 (:VAR MV2510 :ISA PATHWAY :PATHWAYCOMPONENT MV2512 :RAW-TEXT "pathways")
 (:VAR MV2512 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2509 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2515 :ISA SHOW :STATEMENT-OR-THEME MV2522 :BENEFICIARY MV2516 :PRESENT
  "PRESENT")
 (:VAR MV2522 :ISA EVIDENCE :STATEMENT MV2521 :HAS-DETERMINER "THE")
 (:VAR MV2521 :ISA DECREASE :AGENT MV2520 :OBJECT MV2514 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2520 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2514 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2516 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2524 :ISA SHOW :STATEMENT-OR-THEME MV2535 :BENEFICIARY MV2525 :PRESENT
  "PRESENT")
 (:VAR MV2535 :ISA EVIDENCE :STATEMENT MV2530 :HAS-DETERMINER "THE")
 (:VAR MV2530 :ISA DECREASE :AGENT MV2529 :AFFECTED-PROCESS-OR-OBJECT MV2532
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2529 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2532 :ISA BIO-AMOUNT :MEASURED-ITEM MV2523 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV2523 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2525 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2537 :ISA SHOW :STATEMENT-OR-THEME MV2544 :BENEFICIARY MV2538 :PRESENT
  "PRESENT")
 (:VAR MV2544 :ISA EVIDENCE :STATEMENT MV2543 :HAS-DETERMINER "THE")
 (:VAR MV2543 :ISA REGULATE :AGENT MV2542 :OBJECT MV2536 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2542 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2536 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2538 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2547 :ISA SHOW :STATEMENT-OR-THEME MV2545 :PRESENT "PRESENT")
 (:VAR MV2545 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2548 :RAW-TEXT
  "transcription factors")
 (:VAR MV2548 :ISA SHARE :OBJECT MV2545 :PARTICIPANT MV2552 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV2552 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2546 MV2551))
 (:VAR MV2546 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2551 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
262: "Tell me how stat3 regulates apoptosis"

                    SOURCE-START
e10   TELL          1 "Tell me " 3
e9    REGULATE      3 "how stat3 regulates apoptosis" 8
                    END-OF-SOURCE
                    SOURCE-START
e10   VG            1 "Tell me " 3
e9    HOWCOMP       3 "how stat3 regulates apoptosis" 8
                    END-OF-SOURCE


___________________
263: "Tell me what apoptotic pathways are regulated by stat3 in the liver"

                    SOURCE-START
e27   TELL          1 "Tell me what apoptotic pathways are regulated by stat3 in the liver" 14
                    END-OF-SOURCE
("Tell me what apoptotic pathways are regulated by stat3 in the liver"
 (:VAR MV2562 :ISA TELL :THEME MV2574 :THEME MV2563 :PRESENT "PRESENT")
 (:VAR MV2574 :ISA REGULATE :AFFECTED-PROCESS MV2567 :AGENT MV2561 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2567 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2565
  :RAW-TEXT "pathways")
 (:VAR MV2565 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2561 :ISA PROTEIN :ORGAN MV2573 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2573 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2563 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2578 :ISA TELL :THEME MV2581 :BENEFICIARY MV2579 :PRESENT "PRESENT")
 (:VAR MV2581 :ISA GENE :PREDICATION MV2584 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2584 :ISA REGULATE :OBJECT MV2581 :AGENT MV2585 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2585 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2577 MV2583))
 (:VAR MV2577 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2583 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2579 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2587 :ISA TELL :THEME MV2597 :THEME MV2588 :PRESENT "PRESENT")
 (:VAR MV2597 :ISA REGULATE :AFFECTED-PROCESS MV2590 :AGENT MV2586 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2590 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2586 :ISA PROTEIN :ORGAN MV2596 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2596 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2588 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2603 :ISA INVOLVE :THEME MV2602 :THEME MV2605 :PRESENT "PRESENT")
 (:VAR MV2602 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2601 :RAW-TEXT
  "pathways")
 (:VAR MV2601 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV2605 :ISA SIGNAL :MODIFIER MV2604 :RAW-TEXT "signaling")
 (:VAR MV2604 :ISA IMMUNE :NAME "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2613 :ISA REGULATE :OBJECT MV2609 :AGENT MV2607 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2609 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2606 :RAW-TEXT
  "phosphatases")
 (:VAR MV2606 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV2607 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2620 :ISA BE :SUBJECT MV2619 :PREDICATE MV2621 :PRESENT "PRESENT")
 (:VAR MV2619 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2617
  :RAW-TEXT "genes")
 (:VAR MV2617 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2621 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2615 :RAW-TEXT
  "downstream")
 (:VAR MV2615 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2631 :ISA REGULATE :OBJECT MV2629 :AGENT MV2625 :ORGAN MV2634 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2629 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2627
  :RAW-TEXT "genes")
 (:VAR MV2627 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2625 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2634 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2642 :ISA REGULATE :OBJECT MV2640 :AGENT MV2636 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2640 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2638
  :RAW-TEXT "genes")
 (:VAR MV2638 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2636 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2648 :ISA BE :SUBJECT MV2647 :PREDICATE MV2649 :PRESENT "PRESENT")
 (:VAR MV2647 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2645
  :RAW-TEXT "genes")
 (:VAR MV2645 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2649 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2647 :MODIFIER MV2643
  :RAW-TEXT "upstream")
 (:VAR MV2647 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2645
  :RAW-TEXT "genes")
 (:VAR MV2645 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2643 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2657 :ISA INVOLVE :THEME MV2656 :THEME MV2652 :PRESENT "PRESENT")
 (:VAR MV2656 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2654
  :RAW-TEXT "pathways")
 (:VAR MV2654 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2652 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2659 :ISA BE :SUBJECT MV2658 :PREDICATE MV2662 :PRESENT "PRESENT")
 (:VAR MV2658 :ISA WHAT)
 (:VAR MV2662 :ISA TARGET-PROTEIN :AGENT MV2661 :RAW-TEXT "targets")
 (:VAR MV2661 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
274: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2666 :ISA BE :SUBJECT MV2665 :PREDICATE MV2668 :PRESENT "PRESENT")
 (:VAR MV2665 :ISA WHAT)
 (:VAR MV2668 :ISA INHIBITOR :QUANTIFIER MV2667 :PROTEIN MV2664 :RAW-TEXT
  "inhibitors")
 (:VAR MV2667 :ISA SOME :WORD "some")
 (:VAR MV2664 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2670 :ISA BE :SUBJECT MV2669 :PREDICATE MV2672 :PRESENT "PRESENT")
 (:VAR MV2669 :ISA WHAT)
 (:VAR MV2672 :ISA DRUG :PREDICATION MV2674 :QUANTIFIER MV2671 :RAW-TEXT
  "drugs")
 (:VAR MV2674 :ISA INHIBIT :AGENT MV2672 :THAT-REL T :OBJECT MV2675 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2675 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2671 :ISA SOME :WORD "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2678 :ISA BE :SUBJECT MV2677 :PREDICATE MV2680 :PRESENT "PRESENT")
 (:VAR MV2677 :ISA WHAT)
 (:VAR MV2680 :ISA GENE :CONTEXT MV2676 :QUANTIFIER MV2679 :RAW-TEXT "genes")
 (:VAR MV2676 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2683
  :RAW-TEXT "signaling pathway")
 (:VAR MV2683 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2679 :ISA SOME :WORD "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2687 :ISA BE :SUBJECT MV2686 :PREDICATE MV2689 :PRESENT "PRESENT")
 (:VAR MV2686 :ISA WHAT)
 (:VAR MV2689 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2685 :QUANTIFIER MV2688
  :RAW-TEXT "proteins")
 (:VAR MV2685 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2692
  :RAW-TEXT "signaling pathway")
 (:VAR MV2692 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2688 :ISA SOME :WORD "some"))

___________________
278: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2695 :ISA BE :SUBJECT MV2694 :PREDICATE MV2697 :PRESENT "PRESENT")
 (:VAR MV2694 :ISA WHAT)
 (:VAR MV2697 :ISA MEMBER :SET MV2699 :HAS-DETERMINER "THE")
 (:VAR MV2699 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663"))

___________________
279: "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2705 :ISA BE :SUBJECT MV2704 :PREDICATE MV2707 :PRESENT "PRESENT")
 (:VAR MV2704 :ISA WHAT)
 (:VAR MV2707 :ISA MICRO-RNA :PREDICATION MV2709 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAS")
 (:VAR MV2709 :ISA REGULATE :AGENT MV2707 :THAT-REL T :OBJECT MV2713 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2713 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2710 MV2711 MV2701 MV2702 MV2703))
 (:VAR MV2710 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2711 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2701 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2702 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2703 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2715 :ISA BE :SUBJECT MV2714 :PREDICATE MV2717 :PRESENT "PRESENT")
 (:VAR MV2714 :ISA WHAT)
 (:VAR MV2717 :ISA REGULATOR :THEME MV2723 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2723 :ISA BIO-ENTITY :ORGAN MV2722 :NAME "MAPPK14")
 (:VAR MV2722 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2728 :ISA BE :SUBJECT MV2727 :PREDICATE MV2730 :PRESENT "PRESENT")
 (:VAR MV2727 :ISA WHAT)
 (:VAR MV2730 :ISA REGULATOR :THEME MV2726 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2726 :ISA PROTEIN :ORGAN MV2733 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV2733 :ISA LIVER))

___________________
282: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2738 :ISA BE :SUBJECT MV2737 :PREDICATE MV2740 :PRESENT "PRESENT")
 (:VAR MV2737 :ISA WHAT)
 (:VAR MV2740 :ISA REGULATOR :THEME MV2736 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2736 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2745 :ISA BE :SUBJECT MV2744 :PREDICATE MV2747 :PRESENT "PRESENT")
 (:VAR MV2744 :ISA WHAT)
 (:VAR MV2747 :ISA REGULATOR :THEME MV2743 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2743 :ISA PROTEIN :ORGAN MV2750 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2750 :ISA LUNG))

___________________
284: "What are the regulators of mapk14 in bladeeer"

                    SOURCE-START
e19   BE            1 "What are the regulators of mapk14 " 8
e15   IN            8 "in bladeeer" 10
                    END-OF-SOURCE
                    SOURCE-START
e19   S             1 "What are the regulators of mapk14 " 8
e15   PP            8 "in bladeeer" 10
                    END-OF-SOURCE


___________________
285: "What are the regulators of mapk14"

                    SOURCE-START
e13   BE            1 "What are the regulators of mapk14" 8
                    END-OF-SOURCE
("What are the regulators of mapk14"
 (:VAR MV2768 :ISA BE :SUBJECT MV2767 :PREDICATE MV2770 :PRESENT "PRESENT")
 (:VAR MV2767 :ISA WHAT)
 (:VAR MV2770 :ISA REGULATOR :THEME MV2766 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2766 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2787 :ISA COPULAR-PREDICATION :ITEM MV2776 :VALUE MV2774 :PREDICATE
  MV2777)
 (:VAR MV2776 :ISA WHAT) (:VAR MV2774 :ISA IN-COMMON :THEME MV2784)
 (:VAR MV2784 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2785 :RAW-TEXT
  "genes")
 (:VAR MV2785 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV2781 MV2782 MV2775))
 (:VAR MV2781 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2782 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV2775 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2777 :ISA BE :PREDICATE MV2773 :PRESENT "PRESENT")
 (:VAR MV2773 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2790 :ISA BE :SUBJECT MV2789 :PREDICATE MV2788 :PRESENT "PRESENT")
 (:VAR MV2789 :ISA WHAT)
 (:VAR MV2788 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2793 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2793 :ISA REGULATE :AGENT MV2788 :THAT-REL T :OBJECT MV2799 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2799 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2798 MV2797))
 (:VAR MV2798 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2797 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2804 :ISA BE :SUBJECT MV2803 :PREDICATE MV2800 :PRESENT "PRESENT")
 (:VAR MV2803 :ISA WHAT)
 (:VAR MV2800 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2807 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2807 :ISA REGULATE :AGENT MV2800 :THAT-REL T :OBJECT MV2814 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2814 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2808 MV2809 MV2813 MV2801 MV2802))
 (:VAR MV2808 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2809 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2813 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2801 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2802 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2820 :ISA BE :SUBJECT MV2819 :PREDICATE MV2815 :PRESENT "PRESENT")
 (:VAR MV2819 :ISA WHAT)
 (:VAR MV2815 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2823 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2823 :ISA REGULATE :AGENT MV2815 :THAT-REL T :OBJECT MV2827 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2827 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2824 MV2825 MV2816 MV2817 MV2818))
 (:VAR MV2824 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2825 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2816 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2817 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2818 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2832 :ISA BE :SUBJECT MV2831 :PREDICATE MV2836 :PRESENT "PRESENT")
 (:VAR MV2831 :ISA WHAT)
 (:VAR MV2836 :ISA REGULATOR :THEME MV2840 :HAS-DETERMINER "THE" :CONTEXT
  MV2834 :RAW-TEXT "regulators")
 (:VAR MV2840 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS (MV2828 MV2829 MV2838 MV2830))
 (:VAR MV2828 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME
  "CCND1_HUMAN")
 (:VAR MV2829 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME
  "FOXM1_HUMAN")
 (:VAR MV2838 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2830 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME
  "KLF4_HUMAN")
 (:VAR MV2834 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2849 :ISA REGULATE :OBJECT MV2844 :AGENT MV2848 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2844 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2842
  :RAW-TEXT "genes")
 (:VAR MV2842 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :UID "GO:0007049")
 (:VAR MV2848 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2854 :ISA REGULATE :OBJECT MV2851 :AGENT MV2853 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2851 :ISA WHAT)
 (:VAR MV2853 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2858 :ISA REGULATE :OBJECT MV2855 :AGENT-OR-CAUSE MV2857 :ORGAN MV2860
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2855 :ISA WHAT) (:VAR MV2857 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2860 :ISA LIVER))

___________________
294: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2866 :ISA TARGET :OBJECT MV2863 :AGENT MV2862 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2863 :ISA WHAT)
 (:VAR MV2862 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2870 :ISA REGULATE :OBJECT MV2868 :AGENT MV2867 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2868 :ISA WHAT)
 (:VAR MV2867 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2874 :ISA REGULATE :OBJECT MV2872 :AGENT MV2871 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2872 :ISA WHAT)
 (:VAR MV2871 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2878 :ISA REGULATE :OBJECT MV2876 :AGENT MV2875 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2876 :ISA WHAT)
 (:VAR MV2875 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2882 :ISA REGULATE :OBJECT MV2879 :AGENT MV2881 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2879 :ISA WHAT)
 (:VAR MV2881 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2885 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2884 :OBJECT MV2883 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV2884 :ISA WHAT)
 (:VAR MV2883 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2899 :ISA BIO-USE :PATIENT MV2888 :MODAL MV2889 :AGENT MV2890 :THEME
  MV2898 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2888 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2889 :ISA COULD) (:VAR MV2890 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2898 :ISA TARGET :OBJECT MV2886 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2886 :ISA CANCER :UID "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV2911 :ISA BIO-USE :OBJECT MV2902 :MODAL MV2903 :AGENT MV2904 :DISEASE
  MV2900 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2902 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2903 :ISA SHOULD) (:VAR MV2904 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2900 :ISA CANCER :UID "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2915 :ISA BE :SUBJECT MV2914 :PREDICATE MV2916 :PRESENT "PRESENT")
 (:VAR MV2914 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2916 :ISA INHIBITOR :PROTEIN MV2912 :RAW-TEXT "inhibitors")
 (:VAR MV2912 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2922 :ISA INHIBIT :AGENT MV2921 :OBJECT MV2919 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV2921 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2919 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2925 :ISA REGULATE :AGENT MV2924 :OBJECT MV2926 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2924 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2926 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2930 :ISA TARGET :AGENT MV2928 :OBJECT MV2931 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2928 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2931 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2935 :ISA BE :SUBJECT MV2934 :PREDICATE MV2936 :PRESENT "PRESENT")
 (:VAR MV2934 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2936 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2932 :RAW-TEXT
  "downstream")
 (:VAR MV2932 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2950 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2942 :VALUE MV2949 :PREP
  "IN" :PREDICATE MV2943)
 (:VAR MV2942 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2949 :ISA GENE :CONTEXT MV2940 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2940 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2946
  :RAW-TEXT "signaling pathway")
 (:VAR MV2946 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2943 :ISA BE :PRESENT "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2962 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2954 :VALUE MV2961 :PREP
  "IN" :PREDICATE MV2955)
 (:VAR MV2954 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2961 :ISA GENE :CONTEXT MV2952 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2952 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2958
  :RAW-TEXT "signaling pathways")
 (:VAR MV2958 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2955 :ISA BE :PRESENT "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2974 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2966 :VALUE MV2973 :PREP
  "IN" :PREDICATE MV2967)
 (:VAR MV2966 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2973 :ISA GENE :CONTEXT MV2970 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2970 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2964
  :RAW-TEXT "pathway")
 (:VAR MV2964 :ISA BIO-ORGAN :UID "UBERON:0002405")
 (:VAR MV2967 :ISA BE :PRESENT "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV2986 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2978 :VALUE MV2985 :PREP
  "IN" :PREDICATE MV2979)
 (:VAR MV2978 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2985 :ISA GENE :CONTEXT MV2976 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2976 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2982
  :RAW-TEXT "signaling pathway")
 (:VAR MV2982 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV2979 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV2999 :ISA INVOLVE :THEME MV2991 :CONTEXT MV2996 :PRESENT "PRESENT")
 (:VAR MV2991 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2996 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2989 :RAW-TEXT
  "pathway")
 (:VAR MV2989 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3010 :ISA INVOLVE :THEME MV3001 :CONTEXT MV3007 :PRESENT "PRESENT")
 (:VAR MV3001 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3007 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3006 :RAW-TEXT
  "pathway")
 (:VAR MV3006 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3021 :ISA INVOLVE :THEME MV3013 :CONTEXT MV3018 :PRESENT "PRESENT")
 (:VAR MV3013 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3018 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3011 :RAW-TEXT
  "pathway")
 (:VAR MV3011 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12"))

___________________
314: "What genes are involved in the immune system pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the immune system pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the immune system pathway?"
 (:VAR MV3032 :ISA INVOLVE :THEME MV3024 :CONTEXT MV3029 :PRESENT "PRESENT")
 (:VAR MV3024 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3029 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3022
  :RAW-TEXT "pathway")
 (:VAR MV3022 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3045 :ISA REGULATE :OBJECT MV3037 :AGENT MV3044 :PRESENT "PRESENT"
  :SUPERLATIVE MV3039 :ADVERB MV3040 :RAW-TEXT "regulated")
 (:VAR MV3037 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3044 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS (MV3033 MV3034 MV3035))
 (:VAR MV3033 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3034 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3035 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3039 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3040 :ISA FREQUENTLY :NAME "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3060 :ISA REGULATE :OBJECT MV3052 :AGENT MV3059 :PRESENT "PRESENT"
  :SUPERLATIVE MV3054 :ADVERB MV3055 :RAW-TEXT "regulated")
 (:VAR MV3052 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3059 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS (MV3047 MV3048 MV3049 MV3050))
 (:VAR MV3047 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3048 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3049 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3050 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3054 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3055 :ISA FREQUENTLY :NAME "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3075 :ISA REGULATE :OBJECT MV3067 :AGENT MV3074 :PRESENT "PRESENT"
  :SUPERLATIVE MV3069 :ADVERB MV3070 :RAW-TEXT "regulated")
 (:VAR MV3067 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3074 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS (MV3062 MV3063 MV3064 MV3065))
 (:VAR MV3062 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3063 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3064 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3065 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3069 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3070 :ISA FREQUENTLY :NAME "frequently"))

___________________
318: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3083 :ISA REGULATE :OBJECT MV3078 :AGENT MV3082 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3078 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3082 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3094 :ISA REGULATE :OBJECT MV3087 :AGENT MV3093 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3087 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3093 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3085 MV3092))
 (:VAR MV3085 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV3092 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3105 :ISA REGULATE :OBJECT MV3099 :AGENT MV3104 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3099 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3104 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV3096 MV3097))
 (:VAR MV3096 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV3097 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME
  "microRNA 29b-1-5pm" :UID "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3115 :ISA REGULATE :OBJECT MV3108 :AGENT MV3114 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3108 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3114 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3123 :ISA REGULATE :OBJECT MV3118 :AGENT MV3122 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3118 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3122 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3134 :ISA REGULATE :OBJECT MV3127 :AGENT MV3133 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3127 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3133 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3125 MV3132))
 (:VAR MV3125 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3132 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3142 :ISA TARGET :OBJECT MV3138 :CAUSE MV3136 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3138 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3136 :ISA CANCER :UID "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3156 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3146 :VALUE MV3155 :PREP
  "IN" :PREDICATE MV3147)
 (:VAR MV3146 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3155 :ISA GENE :CONTEXT MV3144 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3144 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3152
  :RAW-TEXT "signaling pathway")
 (:VAR MV3152 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3147 :ISA BE :PRESENT "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3166 :ISA BIO-USE :OBJECT MV3160 :CONTEXT MV3158 :PRESENT "PRESENT"
  :RAW-TEXT "used")
 (:VAR MV3160 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3158 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3165
  :RAW-TEXT "signaling pathway")
 (:VAR MV3165 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
327: "What genes does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What genes does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does lung cancer target?"
 (:VAR MV3173 :ISA TARGET :OBJECT MV3170 :CAUSE MV3168 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3170 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3168 :ISA CANCER :UID "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3179 :ISA TARGET :OBJECT MV3176 :AGENT MV3174 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3176 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3174 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3185 :ISA TARGET :OBJECT MV3182 :AGENT MV3180 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3182 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3180 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3190 :ISA UPREGULATE :OBJECT MV3188 :AGENT MV3186 :PRESENT "PRESENT"
  :RAW-TEXT "upregulate")
 (:VAR MV3188 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3186 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3195 :ISA REGULATE :OBJECT MV3193 :AGENT MV3191 :CELL-TYPE MV3198
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3193 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3191 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3198 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3197)
 (:VAR MV3197 :ISA LIVER))

___________________
332: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3204 :ISA REGULATE :OBJECT MV3202 :AGENT MV3200 :ORGAN MV3206 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3202 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3200 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3206 :ISA LIVER))

___________________
333: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3212 :ISA REGULATE :OBJECT MV3210 :AGENT MV3208 :ORGAN MV3214 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3210 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3208 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3214 :ISA LUNG))

___________________
334: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3220 :ISA REGULATE :OBJECT MV3218 :AGENT MV3216 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3218 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3216 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3228 :ISA REGULATE :OBJECT MV3223 :AGENT MV3221 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3223 :ISA GENE :ORGAN MV3226 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3226 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3221 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
336: "What genes is stat3 upstream from?"

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
337: "What genes is stat3 upstream of?"

                    SOURCE-START
e12   BE            1 "What genes is stat3 upstream of" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream of?"
 (:VAR MV3240 :ISA BE :SUBJECT MV3239 :PREDICATE MV3241 :PRESENT "PRESENT")
 (:VAR MV3239 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3241 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3239 :MODIFIER MV3237
  :RAW-TEXT "upstream")
 (:VAR MV3239 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3237 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3249 :ISA BE :SUBJECT MV3245 :PREDICATE MV3250 :PRESENT "PRESENT")
 (:VAR MV3245 :ISA GENE :PREDICATION MV3246 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3246 :ISA REGULATE :OBJECT MV3245 :AGENT MV3248 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3248 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3250 :ISA KINASE :RAW-TEXT "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3257 :ISA BE :SUBJECT MV3254 :PREDICATE MV3258 :PRESENT "PRESENT")
 (:VAR MV3254 :ISA GENE :PREDICATION MV3255 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3255 :ISA REGULATE :OBJECT MV3254 :AGENT MV3252 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3252 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3258 :ISA KINASE :RAW-TEXT "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3264 :ISA INVOLVE :THEME MV3263 :THEME MV3267 :PRESENT "PRESENT")
 (:VAR MV3263 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3262 :RAW-TEXT
  "pathways")
 (:VAR MV3262 :ISA IMMUNE :NAME "immune")
 (:VAR MV3267 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3265 MV3260))
 (:VAR MV3265 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3260 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3271 :ISA INVOLVE :THEME MV3270 :THEME MV3272 :PRESENT "PRESENT")
 (:VAR MV3270 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3269 :RAW-TEXT
  "pathways")
 (:VAR MV3269 :ISA IMMUNE :NAME "immune")
 (:VAR MV3272 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3277 :ISA INVOLVE :THEME MV3276 :THEME MV3280 :PRESENT "PRESENT")
 (:VAR MV3276 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3275 :RAW-TEXT
  "pathways")
 (:VAR MV3275 :ISA IMMUNE :NAME "immune")
 (:VAR MV3280 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3278 MV3273))
 (:VAR MV3278 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3273 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3284 :ISA INVOLVE :THEME MV3283 :THEME MV3294 :PRESENT "PRESENT")
 (:VAR MV3283 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3282 :RAW-TEXT
  "pathways")
 (:VAR MV3282 :ISA IMMUNE :NAME "immune")
 (:VAR MV3294 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3292 MV3293))
 (:VAR MV3292 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3293 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3296 :ISA INHIBIT :AGENT-OR-CAUSE MV3295 :OBJECT MV3297 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV3295 :ISA WHAT)
 (:VAR MV3297 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?"
 (:VAR MV3300 :ISA BE :SUBJECT MV3299 :PREDICATE MV3298 :PRESENT "PRESENT")
 (:VAR MV3299 :ISA WHAT)
 (:VAR MV3298 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?"
 (:VAR MV3302 :ISA BE :SUBJECT MV3301 :PREDICATE MV3303 :PRESENT "PRESENT")
 (:VAR MV3301 :ISA WHAT)
 (:VAR MV3303 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3306 :ISA BE :SUBJECT MV3305 :PREDICATE MV3307 :PRESENT "PRESENT")
 (:VAR MV3305 :ISA WHAT)
 (:VAR MV3307 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3304 :RAW-TEXT
  "downstream")
 (:VAR MV3304 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?"
 (:VAR MV3312 :ISA BE :SUBJECT MV3311 :PREDICATE MV3313 :PRESENT "PRESENT")
 (:VAR MV3311 :ISA WHAT)
 (:VAR MV3313 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?"
 (:VAR MV3315 :ISA BE :SUBJECT MV3314 :PREDICATE MV3316 :PRESENT "PRESENT")
 (:VAR MV3314 :ISA WHAT) (:VAR MV3316 :ISA BIO-ENTITY :NAME "errb"))

___________________
350: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3322 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3318 :AGENT MV3317
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3318 :ISA WHAT)
 (:VAR MV3317 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3326 :ISA BE :SUBJECT MV3325 :PREDICATE MV3332 :PRESENT "PRESENT")
 (:VAR MV3325 :ISA WHAT)
 (:VAR MV3332 :ISA EVIDENCE :STATEMENT MV3331 :HAS-DETERMINER "THE")
 (:VAR MV3331 :ISA DECREASE :AGENT MV3330 :OBJECT MV3324 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3330 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3324 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3335 :ISA BE :SUBJECT MV3334 :PREDICATE MV3345 :PRESENT "PRESENT")
 (:VAR MV3334 :ISA WHAT)
 (:VAR MV3345 :ISA EVIDENCE :STATEMENT MV3340 :HAS-DETERMINER "THE")
 (:VAR MV3340 :ISA DECREASE :AGENT MV3339 :AFFECTED-PROCESS-OR-OBJECT MV3342
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3339 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3342 :ISA BIO-AMOUNT :MEASURED-ITEM MV3333 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV3333 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3347 :ISA BE :SUBJECT MV3346 :PREDICATE MV3349 :PRESENT "PRESENT")
 (:VAR MV3346 :ISA WHAT)
 (:VAR MV3349 :ISA TARGET-PROTEIN :AGENT MV3352 :HAS-DETERMINER "THE" :RAW-TEXT
  "target")
 (:VAR MV3352 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
354: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3358 :ISA REGULATE :OBJECT MV3356 :AGENT MV3354 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3356 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3354 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3366 :ISA REGULATE :AGENT MV3363 :OBJECT MV3370 :PRESENT "PRESENT"
  :ADVERB MV3364 :ADVERB MV3365 :RAW-TEXT "regulate")
 (:VAR MV3363 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3370 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3367 MV3368 MV3359 MV3360 MV3361))
 (:VAR MV3367 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3368 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3359 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3360 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3361 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV3364 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3365 :ISA FREQUENTLY :NAME "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3376 :ISA REGULATE :AGENT MV3375 :OBJECT MV3380 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3375 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3380 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3377 MV3378 MV3371 MV3372 MV3373))
 (:VAR MV3377 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3378 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3371 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3372 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3373 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3387 :ISA REGULATE :OBJECT MV3383 :AGENT MV3381 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3383 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3381 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3392 :ISA REGULATE :AGENT MV3391 :OBJECT MV3393 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3391 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3393 :ISA GENE :CONTEXT MV3389 :RAW-TEXT "genes")
 (:VAR MV3389 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3396
  :RAW-TEXT "signaling pathways")
 (:VAR MV3396 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
359: "What pahtways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pahtways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pahtways involve SRF?"
 (:VAR MV3399 :ISA INVOLVE :THEME MV3401 :THEME MV3400 :PRESENT "PRESENT")
 (:VAR MV3401 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3400 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
360: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3412 :ISA COPULAR-PREDICATION :ITEM MV3404 :VALUE MV3406 :PREDICATE
  MV3405)
 (:VAR MV3404 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3406 :ISA COMMON :THEME MV3410)
 (:VAR MV3410 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3402 MV3409))
 (:VAR MV3402 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3409 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3405 :ISA BE :PRESENT "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3415 :ISA INVOLVE :THEME MV3414 :THEME MV3416 :PRESENT "PRESENT")
 (:VAR MV3414 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3416 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3420 :ISA INVOLVE :THEME MV3419 :THEME MV3423 :PRESENT "PRESENT")
 (:VAR MV3419 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3423 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3421 MV3417))
 (:VAR MV3421 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3417 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3427 :ISA INVOLVE :THEME MV3426 :THEME MV3424 :PRESENT "PRESENT")
 (:VAR MV3426 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3424 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3429
  :RAW-TEXT "transcription factor")
 (:VAR MV3429 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "What pathways utilize srf and is srf a kinase"

                    SOURCE-START
e15   UTILIZE       1 "What pathways utilize srf and is srf " 8
e11   KINASE        8 "a kinase" 10
                    END-OF-SOURCE
                    SOURCE-START
e15   S             1 "What pathways utilize srf and is srf " 8
e11   NP            8 "a kinase" 10
                    END-OF-SOURCE


___________________
365: "What proteins are in the MAPK family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What proteins are in the MAPK family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are in the MAPK family?"
 (:VAR MV3450 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3441 :VALUE MV3448 :PREP
  "IN" :PREDICATE MV3442)
 (:VAR MV3441 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3448 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3442 :ISA BE :PRESENT "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3457 :ISA TARGET :OBJECT MV3453 :CAUSE MV3451 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3453 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3451 :ISA CANCER :UID "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3464 :ISA TARGET :OBJECT MV3461 :AGENT MV3459 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3461 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3459 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3470 :ISA TARGET :OBJECT MV3467 :CAUSE MV3465 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3467 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3465 :ISA CANCER :UID "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3476 :ISA TARGET :OBJECT MV3472 :AGENT MV3474 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3472 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3474 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3481 :ISA LEAD :AGENT MV3479 :THEME MV3484 :MODAL MV3480 :RAW-TEXT
  "lead")
 (:VAR MV3479 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3484 :ISA DEVELOPMENT :DISEASE MV3477 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3477 :ISA CANCER :UID "TS-0571") (:VAR MV3480 :ISA MIGHT))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3492 :ISA LEAD :AGENT MV3490 :THEME MV3495 :MODAL MV3491 :RAW-TEXT
  "lead")
 (:VAR MV3490 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3495 :ISA DEVELOPMENT :DISEASE MV3488 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3488 :ISA CANCER :UID "TS-0739") (:VAR MV3491 :ISA MIGHT))

___________________
372: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3501 :ISA INVOLVE :THEME MV3500 :THEME MV3503 :PRESENT "PRESENT")
 (:VAR MV3500 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3504 :RAW-TEXT
  "pathways")
 (:VAR MV3504 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3503 :ISA SIGNAL :MODIFIER MV3502 :RAW-TEXT "signaling")
 (:VAR MV3502 :ISA IMMUNE :NAME "immune"))

___________________
373: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3506 :ISA REGULATE :AGENT-OR-CAUSE MV3505 :OBJECT MV3507 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3505 :ISA WHAT)
 (:VAR MV3507 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3510 :ISA REGULATE :AGENT-OR-CAUSE MV3509 :OBJECT MV3508 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3509 :ISA WHAT)
 (:VAR MV3508 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3513 :ISA REGULATE :AGENT-OR-CAUSE MV3512 :OBJECT MV3511 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3512 :ISA WHAT)
 (:VAR MV3511 :ISA PROTEIN :ORGAN MV3515 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3515 :ISA LIVER))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3526 :ISA SHARE :OBJECT MV3517 :PARTICIPANT MV3525 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3517 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3525 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3523 MV3518))
 (:VAR MV3523 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME
  "TF65_HUMAN")
 (:VAR MV3518 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3537 :ISA SHARE :OBJECT MV3528 :PARTICIPANT MV3536 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3528 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3536 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3529 MV3535))
 (:VAR MV3529 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3535 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3549 :ISA SHARE :OBJECT MV3539 :PARTICIPANT MV3548 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3539 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3548 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3540 MV3541 MV3547))
 (:VAR MV3540 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3541 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3547 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
379: "What tissues is STAT3 expressed in?"

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
380: "What transcription factor produces SMURF2?"

                    SOURCE-START
e8    BIO-PRODUCE   1 "What transcription factor produces SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor produces SMURF2?"
 (:VAR MV3560 :ISA BIO-PRODUCE :AGENT MV3557 :OBJECT MV3558 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV3557 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3558 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3564 :ISA TRANSCRIBE :AGENT MV3561 :OBJECT MV3562 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV3561 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3562 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3580 :ISA COPULAR-PREDICATION :ITEM MV3565 :VALUE MV3572 :PREDICATE
  MV3571)
 (:VAR MV3565 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3572 :ISA COMMON :THEME MV3577)
 (:VAR MV3577 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3578 :RAW-TEXT
  "genes")
 (:VAR MV3578 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3566 MV3567 MV3575 MV3568 MV3569))
 (:VAR MV3566 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3567 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3575 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3568 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3569 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3571 :ISA BE :PRESENT "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3594 :ISA COPULAR-PREDICATION :ITEM MV3581 :VALUE MV3587 :PREDICATE
  MV3586)
 (:VAR MV3581 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3587 :ISA COMMON :THEME MV3591)
 (:VAR MV3591 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3592 :RAW-TEXT
  "genes")
 (:VAR MV3592 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3582 MV3583 MV3584))
 (:VAR MV3582 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3583 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3584 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3586 :ISA BE :PRESENT "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3599 :ISA REGULATE :OBJECT MV3597 :AGENT MV3595 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3597 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3595 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3608 :ISA COPULAR-PREDICATION :ITEM MV3600 :VALUE MV3603 :PREDICATE
  MV3602)
 (:VAR MV3600 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3603 :ISA COMMON :THEME MV3606)
 (:VAR MV3606 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3602 :ISA BE :PRESENT "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3624 :ISA COPULAR-PREDICATION :ITEM MV3609 :VALUE MV3610 :PREDICATE
  MV3616)
 (:VAR MV3609 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3610 :ISA IN-COMMON :THEME MV3621)
 (:VAR MV3621 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3622 :RAW-TEXT
  "genes")
 (:VAR MV3622 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3611 MV3612 MV3619 MV3613 MV3614))
 (:VAR MV3611 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3612 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3619 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3613 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3614 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3616 :ISA BE :PRESENT "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3638 :ISA COPULAR-PREDICATION :ITEM MV3625 :VALUE MV3626 :PREDICATE
  MV3631)
 (:VAR MV3625 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3626 :ISA IN-COMMON :THEME MV3635)
 (:VAR MV3635 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3636 :RAW-TEXT
  "genes")
 (:VAR MV3636 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3627 MV3628 MV3629))
 (:VAR MV3627 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3628 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3629 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3631 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3642 :ISA BE :SUBJECT MV3639 :PREDICATE MV3643 :PRESENT "PRESENT")
 (:VAR MV3639 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3643 :ISA REGULATOR :THEME MV3640 :RAW-TEXT "regulators")
 (:VAR MV3640 :ISA PROTEIN :ORGAN MV3646 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3646 :ISA LIVER))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3652 :ISA BE :SUBJECT MV3649 :PREDICATE MV3653 :PRESENT "PRESENT")
 (:VAR MV3649 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3653 :ISA REGULATOR :THEME MV3650 :RAW-TEXT "regulators")
 (:VAR MV3650 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3668 :ISA SHARE :OBJECT MV3656 :PARTICIPANT MV3666 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3656 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3666 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3667 :RAW-TEXT
  "genes")
 (:VAR MV3667 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3663 MV3664 MV3657))
 (:VAR MV3663 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3664 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV3657 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3673 :ISA REGULATE :AGENT MV3670 :OBJECT MV3671 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3670 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3671 :ISA PROTEIN :ORGAN MV3675 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3675 :ISA LIVER))

___________________
392: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3680 :ISA REGULATE :AGENT MV3677 :OBJECT MV3678 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3677 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3678 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3683 :ISA REGULATE :AGENT MV3681 :OBJECT MV3684 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3681 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3684 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
394: "What transcription factors regulate genes in the mapk signaling pathwya"

                    SOURCE-START
e19   REGULATE      1 "What transcription factors regulate genes in the mapk signaling pathwya" 11
                    END-OF-SOURCE
("What transcription factors regulate genes in the mapk signaling pathwya"
 (:VAR MV3687 :ISA REGULATE :AGENT MV3685 :THEME MV3693 :OBJECT MV3688 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3685 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3693 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3691
  :CELLULAR-PROCESS MV3692 :NAME "pathwya")
 (:VAR MV3691 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3692 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV3688 :ISA GENE :RAW-TEXT "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3696 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3698 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3698 :ISA REGULATE :OBJECT MV3696 :AGENT MV3695 :RAW-TEXT "regulated")
 (:VAR MV3695 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3702 :ISA TRANSCRIBE :AGENT MV3699 :OBJECT MV3700 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV3699 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3700 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3705 :ISA UPREGULATE :AGENT-OR-CAUSE MV3704 :OBJECT MV3703 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV3704 :ISA WHAT)
 (:VAR MV3703 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3711 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3707 :OBJECT MV3706
  :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV3707 :ISA WHERE)
 (:VAR MV3706 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3715 :ISA INVOLVE :THEME MV3714 :THEME MV3716 :PRESENT "PRESENT")
 (:VAR MV3714 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3713 :RAW-TEXT
  "pathways")
 (:VAR MV3713 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3716 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3721 :ISA BIO-USE :AGENT MV3719 :OBJECT MV3722 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3719 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3718 :RAW-TEXT
  "pathways")
 (:VAR MV3718 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3722 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3726 :ISA REGULATE :AGENT MV3723 :OBJECT MV3724 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3723 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3724 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3730 :ISA REGULATE :AGENT-OR-CAUSE MV3727 :OBJECT MV3731 :PRESENT
  "PRESENT" :ADVERB MV3728 :RAW-TEXT "regulate")
 (:VAR MV3727 :ISA WHICH)
 (:VAR MV3731 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3728 :ISA ALSO :NAME "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3740 :ISA REGULATE :OBJECT MV3736 :AGENT MV3732 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3736 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3734
  :RAW-TEXT "genes")
 (:VAR MV3734 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3732 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3747 :ISA BE :SUBJECT MV3746 :PREDICATE MV3748 :PRESENT "PRESENT")
 (:VAR MV3746 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3744
  :RAW-TEXT "genes")
 (:VAR MV3744 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3748 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3746 :MODIFIER MV3742
  :RAW-TEXT "upstream")
 (:VAR MV3746 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3744
  :RAW-TEXT "genes")
 (:VAR MV3744 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3742 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3757 :ISA TARGET :OBJECT MV3753 :AGENT MV3751 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3753 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3751 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3764 :ISA BE :SUBJECT MV3761 :PREDICATE MV3765 :PRESENT "PRESENT")
 (:VAR MV3761 :ISA GENE :PREDICATION MV3762 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV3762 :ISA REGULATE :OBJECT MV3761 :AGENT MV3759 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3759 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3765 :ISA KINASE :RAW-TEXT "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3781 :ISA SHARE :OBJECT MV3773 :PARTICIPANT MV3779 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3773 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3772 :RAW-TEXT
  "pathways")
 (:VAR MV3772 :ISA IMMUNE :NAME "immune")
 (:VAR MV3779 :ISA GENE :EXPRESSES MV3780 :RAW-TEXT "genes")
 (:VAR MV3780 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3767 MV3768 MV3777 MV3769 MV3770))
 (:VAR MV3767 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3768 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3777 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3769 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3770 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3796 :ISA SHARE :OBJECT MV3788 :PARTICIPANT MV3794 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3788 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3787 :RAW-TEXT
  "pathways")
 (:VAR MV3787 :ISA IMMUNE :NAME "immune")
 (:VAR MV3794 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3795 :RAW-TEXT
  "genes")
 (:VAR MV3795 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3783 MV3784 MV3785))
 (:VAR MV3783 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3784 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3785 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3801 :ISA UTILIZE :PARTICIPANT MV3800 :OBJECT MV3802 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3800 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3805 :RAW-TEXT
  "pathways")
 (:VAR MV3805 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV3802 :ISA GENE :PREDICATION MV3803 :RAW-TEXT "genes")
 (:VAR MV3803 :ISA REGULATE :OBJECT MV3802 :AGENT MV3798 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3798 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3810 :ISA UTILIZE :PARTICIPANT MV3809 :OBJECT MV3811 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3809 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3808 :RAW-TEXT
  "pathways")
 (:VAR MV3808 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3811 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3815 :ISA UTILIZE :PARTICIPANT MV3814 :OBJECT MV3816 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3814 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3813 :RAW-TEXT
  "pathways")
 (:VAR MV3813 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV3816 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
412: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3824 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3820 :AGENT MV3817
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3820 :ISA PRONOUN/PLURAL :QUANTIFIER MV3818 :WORD "them")
 (:VAR MV3818 :ISA WHICH)
 (:VAR MV3817 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3834 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3829 :ORGAN MV3833
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV3829 :ISA THESE :QUANTIFIER MV3827 :WORD "these")
 (:VAR MV3827 :ISA WHICH) (:VAR MV3833 :ISA LIVER))

___________________
414: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3845 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3839 :VALUE MV3843 :PREP
  "IN" :PREDICATE MV3840)
 (:VAR MV3839 :ISA THESE :QUANTIFIER MV3837 :WORD "these")
 (:VAR MV3837 :ISA WHICH)
 (:VAR MV3843 :ISA PATHWAY :MODIFIER MV3842 :RAW-TEXT "pathways")
 (:VAR MV3842 :ISA IMMUNE :NAME "immune")
 (:VAR MV3840 :ISA BE :PRESENT "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3851 :ISA PHOSPHORYLATE :AMINO-ACID MV3848 :AGENT MV3850 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV3848 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3850 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
416: "Which of these are kinases"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    END-OF-SOURCE
("Which of these are kinases"
 (:VAR MV3855 :ISA BE :SUBJECT MV3854 :PREDICATE MV3856 :PRESENT "PRESENT")
 (:VAR MV3854 :ISA THESE :QUANTIFIER MV3852 :WORD "these")
 (:VAR MV3852 :ISA WHICH) (:VAR MV3856 :ISA KINASE :RAW-TEXT "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3865 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3861 :AGENT MV3858
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3861 :ISA THOSE :QUANTIFIER MV3859 :WORD "those")
 (:VAR MV3859 :ISA WHICH)
 (:VAR MV3858 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3875 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3871 :AGENT MV3868
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3871 :ISA THESE :QUANTIFIER MV3869 :WORD "these")
 (:VAR MV3869 :ISA WHICH)
 (:VAR MV3868 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3885 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3880 :AGENT MV3884
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3880 :ISA THESE :QUANTIFIER MV3878 :WORD "these")
 (:VAR MV3878 :ISA WHICH) (:VAR MV3884 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3901 :ISA SHARE :OBJECT MV3893 :PARTICIPANT MV3899 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3893 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3899 :ISA GENE :EXPRESSES MV3900 :RAW-TEXT "genes")
 (:VAR MV3900 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3888 MV3889 MV3897 MV3890 MV3891))
 (:VAR MV3888 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3889 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3897 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3890 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3891 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3915 :ISA SHARE :OBJECT MV3906 :PARTICIPANT MV3914 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3906 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3914 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3903 MV3904 MV3913))
 (:VAR MV3903 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3904 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3913 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3931 :ISA SHARE :OBJECT MV3922 :PARTICIPANT MV3929 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3922 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3929 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3930 :RAW-TEXT
  "genes")
 (:VAR MV3930 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3917 MV3918 MV3927 MV3919 MV3920))
 (:VAR MV3917 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3918 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3927 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3919 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3920 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3937 :ISA INVOLVE :THEME MV3936 :THEME MV3939 :PRESENT "PRESENT")
 (:VAR MV3936 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3939 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3933 MV3934))
 (:VAR MV3933 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3934 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3942 :ISA INVOLVE :THEME MV3941 :THEME MV3943 :PRESENT "PRESENT")
 (:VAR MV3941 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3943 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
425: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3947 :ISA BIO-USE :AGENT MV3945 :OBJECT MV3948 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3945 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3948 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3952 :ISA BIO-USE :AGENT MV3950 :OBJECT MV3953 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3950 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3953 :ISA THESE :WORD "these"))

___________________
427: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3956 :ISA UTILIZE :PARTICIPANT MV3955 :OBJECT MV3957 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3955 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3957 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3960 :ISA UTILIZE :PARTICIPANT MV3959 :OBJECT MV3962 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3959 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3962 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3969 :ISA TARGET :OBJECT MV3965 :AGENT MV3963 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3965 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3963 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV3974 :ISA UTILIZE :PARTICIPANT MV3973 :OBJECT MV3975 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3973 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3972 :RAW-TEXT
  "pathways")
 (:VAR MV3972 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3975 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV3986 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3976 :VALUE MV3985 :PREP
  "IN" :PREDICATE MV3979)
 (:VAR MV3976 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3985 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV3977
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV3977 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3982
  :RAW-TEXT "signaling pathway")
 (:VAR MV3982 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3979 :ISA BE :PRESENT "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV3991 :ISA REGULATE :AGENT MV3988 :OBJECT MV3989 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3988 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3989 :ISA PROTEIN :ORGAN MV3994 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV3994 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV3999 :ISA REGULATE :AGENT MV3996 :OBJECT MV3997 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3996 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3997 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV4007 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4002 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4002 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV4004 :THEME
  MV4001 :PRESENT "PRESENT")
 (:VAR MV4004 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4001 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e19   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4019 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4010 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4010 :ISA SHOW :STATEMENT-OR-THEME MV4018 :PRESENT "PRESENT")
 (:VAR MV4018 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4017 :RAW-TEXT
  "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4017 :ISA PHOSPHORYLATE :SUBSTRATE MV4014 :SUBSTRATE MV4018 :RAW-TEXT
  "phosphorylated")
 (:VAR MV4014 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP"))

___________________
436: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4022 :ISA BE :SUBJECT MV4021 :PREDICATE MV4025 :PRESENT "PRESENT")
 (:VAR MV4021 :ISA WHAT)
 (:VAR MV4025 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4029 :HAS-DETERMINER
  "THE" :PREDICATION MV4024 :RAW-TEXT "upstreams")
 (:VAR MV4029 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV4020 MV4028))
 (:VAR MV4020 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4028 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV4024 :ISA COMMON))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4038 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4036 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4036 :ISA LIVER))

___________________
438: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4045 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4043 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4043 :ISA SPLEEN))

___________________
439: "Show phosphorylated akt1 on top."

                    SOURCE-START
e13   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4047 :ISA SHOW :STATEMENT-OR-THEME MV4054 :PRESENT "PRESENT")
 (:VAR MV4054 :ISA PROTEIN :PREDICATION MV4053 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4053 :ISA PHOSPHORYLATE :SUBSTRATE MV4050 :SUBSTRATE MV4054 :RAW-TEXT
  "phosphorylated")
 (:VAR MV4050 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP"))

___________________
440: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4057 :ISA BE :SUBJECT MV4056 :PREDICATE MV4060 :PRESENT "PRESENT")
 (:VAR MV4056 :ISA WHAT)
 (:VAR MV4060 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4064 :HAS-DETERMINER
  "THE" :PREDICATION MV4059 :RAW-TEXT "upstreams")
 (:VAR MV4064 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4055 MV4063))
 (:VAR MV4055 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4063 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4059 :ISA COMMON))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4073 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV4067 MV4071))
 (:VAR MV4067 :ISA BIO-ACTIVATE :AGENT MV4066 :OBJECT MV4068 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4066 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4068 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4071 :ISA BIO-ACTIVATE :AGENT MV4070 :OBJECT MV4072 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4070 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4072 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
442: "What is the path from RAF to MEK?"

                    SOURCE-START
e16   BE            1 "What is the path from RAF to MEK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path from RAF to MEK?"
 (:VAR MV4075 :ISA BE :SUBJECT MV4074 :PREDICATE MV4077 :PRESENT "PRESENT")
 (:VAR MV4074 :ISA WHAT)
 (:VAR MV4077 :ISA PATH :END MV4081 :START MV4079 :HAS-DETERMINER "THE")
 (:VAR MV4081 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4079 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
443: "remove the fact that mek activates erk"

                    SOURCE-START
e14   REMOVE        1 "remove the fact that mek activates erk" 8
                    END-OF-SOURCE
("remove the fact that mek activates erk"
 (:VAR MV4084 :ISA REMOVE :OBJECT MV4091 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4091 :ISA FACT :STATEMENT MV4089 :HAS-DETERMINER "THE")
 (:VAR MV4089 :ISA BIO-ACTIVATE :AGENT MV4088 :OBJECT MV4090 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4088 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4090 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
444: "let's show phosphorylated akt1 on top."

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 on top" 10
                    PERIOD
                    END-OF-SOURCE
("let's show phosphorylated akt1 on top."
 (:VAR MV4102 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4094 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4094 :ISA SHOW :STATEMENT-OR-THEME MV4101 :PRESENT "PRESENT")
 (:VAR MV4101 :ISA PROTEIN :PREDICATION MV4100 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4100 :ISA PHOSPHORYLATE :SUBSTRATE MV4097 :SUBSTRATE MV4101 :RAW-TEXT
  "phosphorylated")
 (:VAR MV4097 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP"))

___________________
445: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4105 :ISA BE :SUBJECT MV4104 :PREDICATE MV4103 :PRESENT "PRESENT")
 (:VAR MV4104 :ISA WHAT)
 (:VAR MV4103 :ISA POSITIVE-REGULATOR :THEME MV4109 :RAW-TEXT
  "positive regulators")
 (:VAR MV4109 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4108 :RAW-TEXT
  "gene")
 (:VAR MV4108 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4114 :ISA REGULATE :AGENT MV4111 :OBJECT MV4115 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4111 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4115 :ISA PROTEIN :ORGAN MV4112 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV4112 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4125 :ISA THERE-EXISTS :VALUE MV4122 :PREDICATE MV4119)
 (:VAR MV4122 :ISA DRUG :PREDICATION MV4123 :QUANTIFIER MV4121 :RAW-TEXT
  "drugs")
 (:VAR MV4123 :ISA INHIBIT :AGENT MV4122 :OBJECT MV4124 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV4124 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4121 :ISA ANY :WORD "any") (:VAR MV4119 :ISA SYNTACTIC-THERE))

___________________
448: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4133 :ISA THERE-EXISTS :VALUE MV4130 :PREDICATE MV4127)
 (:VAR MV4130 :ISA DRUG :PREDICATION MV4131 :QUANTIFIER MV4129 :RAW-TEXT
  "drugs")
 (:VAR MV4131 :ISA TARGET :AGENT MV4130 :OBJECT MV4132 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV4132 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4129 :ISA ANY :WORD "any") (:VAR MV4127 :ISA SYNTACTIC-THERE))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4147 :ISA THERE-EXISTS :VALUE MV4139 :PREDICATE MV4136)
 (:VAR MV4139 :ISA GENE :PREDICATION MV4148 :ORGAN MV4142 :QUANTIFIER MV4138
  :RAW-TEXT "genes")
 (:VAR MV4148 :ISA REGULATE :OBJECT MV4139 :THAT-REL T :AGENT MV4134 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4134 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4142 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4138 :ISA ANY :WORD "any") (:VAR MV4136 :ISA SYNTACTIC-THERE))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4164 :ISA THERE-EXISTS :VALUE MV4156 :PREDICATE MV4153)
 (:VAR MV4156 :ISA GENE :PREDICATION MV4157 :QUANTIFIER MV4155 :RAW-TEXT
  "genes")
 (:VAR MV4157 :ISA INVOLVE :THEME MV4156 :THEME MV4159 :PAST "PAST")
 (:VAR MV4159 :ISA APOPTOSIS :PREDICATION MV4165 :RAW-TEXT "apoptosis")
 (:VAR MV4165 :ISA REGULATE :AFFECTED-PROCESS MV4159 :THAT-REL T :AGENT MV4151
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4151 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4155 :ISA ANY :WORD "any") (:VAR MV4153 :ISA SYNTACTIC-THERE))

___________________
451: "Are there any genes stat3 is upstream of?"

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
452: "Are there any inhibitors for JAK1?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any inhibitors for JAK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any inhibitors for JAK1?"
 (:VAR MV4186 :ISA THERE-EXISTS :VALUE MV4184 :PREDICATE MV4181)
 (:VAR MV4184 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4179 :QUANTIFIER MV4183
  :RAW-TEXT "inhibitors")
 (:VAR MV4179 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV4183 :ISA ANY :WORD "any") (:VAR MV4181 :ISA SYNTACTIC-THERE))

___________________
453: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4197 :ISA THERE-EXISTS :VALUE MV4192 :PREDICATE MV4190)
 (:VAR MV4192 :ISA GENE :PREDICATION MV4193 :RAW-TEXT "genes")
 (:VAR MV4193 :ISA REGULATE :OBJECT MV4192 :AGENT MV4198 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4198 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4188 MV4196))
 (:VAR MV4188 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4196 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4190 :ISA SYNTACTIC-THERE))

___________________
454: "Can you find any apoptotic pathways stat3 is involved in?"

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
455: "Can you find any apoptotic pathways that stat3 is involved in?"

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
456: "Can you look up which genes targeted by stat3 are involved in apoptosis?"

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
457: "Can you show me genes regulated by ELK1"

                    SOURCE-START
e19   SHOW          1 "Can you show me genes regulated by ELK1" 10
                    END-OF-SOURCE
("Can you show me genes regulated by ELK1"
 (:VAR MV4258 :ISA POLAR-QUESTION :STATEMENT MV4252)
 (:VAR MV4252 :ISA SHOW :AGENT MV4251 :STATEMENT-OR-THEME MV4254 :BENEFICIARY
  MV4253 :MODAL "CAN")
 (:VAR MV4251 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4254 :ISA GENE :PREDICATION MV4255 :RAW-TEXT "genes")
 (:VAR MV4255 :ISA REGULATE :OBJECT MV4254 :AGENT MV4249 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4249 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4253 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4271 :ISA POLAR-QUESTION :STATEMENT MV4262)
 (:VAR MV4262 :ISA SHOW :AGENT MV4261 :STATEMENT-OR-THEME MV4264 :BENEFICIARY
  MV4263 :MODAL "CAN")
 (:VAR MV4261 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4264 :ISA GENE :PREDICATION MV4269 :RAW-TEXT "genes")
 (:VAR MV4269 :ISA REGULATE :OBJECT MV4264 :THAT-REL T :AGENT MV4259 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4259 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4263 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4281 :ISA POLAR-QUESTION :STATEMENT MV4274)
 (:VAR MV4274 :ISA SHOW :AGENT MV4273 :STATEMENT-OR-THEME MV4277 :BENEFICIARY
  MV4275 :MODAL "CAN")
 (:VAR MV4273 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4277 :ISA BIO-ENTITY :PREDICATION MV4279 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4279 :ISA INVOLVE :THEME MV4277 :THAT-REL T :THEME MV4280 :MODAL
  "CAN")
 (:VAR MV4280 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4275 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
460: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3"
 (:VAR MV4292 :ISA POLAR-QUESTION :STATEMENT MV4285)
 (:VAR MV4285 :ISA TELL :AGENT MV4284 :THEME MV4288 :BENEFICIARY MV4286 :MODAL
  "CAN")
 (:VAR MV4284 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4288 :ISA GENE :PREDICATION MV4289 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4289 :ISA REGULATE :OBJECT MV4288 :AGENT MV4282 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4282 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4286 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV4302 :ISA POLAR-QUESTION :STATEMENT MV4296)
 (:VAR MV4296 :ISA TELL :AGENT MV4295 :THEME MV4299 :BENEFICIARY MV4297 :MODAL
  "CAN")
 (:VAR MV4295 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4299 :ISA GENE :PREDICATION MV4301 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4301 :ISA REGULATE :OBJECT MV4299 :THAT-REL T :AGENT MV4293 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4293 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4297 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV4316 :ISA POLAR-QUESTION :STATEMENT MV4306)
 (:VAR MV4306 :ISA TELL :AGENT MV4305 :THEME MV4309 :BENEFICIARY MV4307 :MODAL
  "CAN")
 (:VAR MV4305 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4309 :ISA GENE :PREDICATION MV4314 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4314 :ISA REGULATE :OBJECT MV4309 :THAT-REL T :AGENT MV4303 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4303 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4307 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV4331 :ISA POLAR-QUESTION :STATEMENT MV4320)
 (:VAR MV4320 :ISA TELL :AGENT MV4319 :THEME MV4323 :BENEFICIARY MV4321 :MODAL
  "CAN")
 (:VAR MV4319 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4323 :ISA GENE :PREDICATION MV4330 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4330 :ISA REGULATE :OBJECT MV4323 :AGENT MV4317 :MODAL MV4318
  :RAW-TEXT "regulated")
 (:VAR MV4317 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4318 :ISA CAN) (:VAR MV4321 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4347 :ISA POLAR-QUESTION :STATEMENT MV4336)
 (:VAR MV4336 :ISA TELL :AGENT MV4335 :THEME MV4345 :THEME MV4337 :MODAL "CAN")
 (:VAR MV4335 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4345 :ISA SHARE :OBJECT MV4332 :PARTICIPANT MV4344 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV4332 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4344 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4333 MV4343))
 (:VAR MV4333 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4343 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4337 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4360 :ISA POLAR-QUESTION :STATEMENT MV4351)
 (:VAR MV4351 :ISA TELL :AGENT MV4350 :THEME MV4358 :THEME MV4352 :MODAL "CAN")
 (:VAR MV4350 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4358 :ISA REGULATE :OBJECT MV4354 :AGENT MV4348 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4354 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4348 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4352 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4377 :ISA POLAR-QUESTION :STATEMENT MV4364)
 (:VAR MV4364 :ISA TELL :AGENT MV4363 :THEME MV4374 :THEME MV4365 :MODAL "CAN")
 (:VAR MV4363 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4374 :ISA REGULATE :OBJECT MV4367 :AGENT MV4361 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4367 :ISA GENE :ORGAN MV4370 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4370 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4361 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4365 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?"
 (:VAR MV4386 :ISA POLAR-QUESTION :STATEMENT MV4381)
 (:VAR MV4381 :ISA TELL :AGENT MV4380 :THEME MV4384 :BENEFICIARY MV4382 :MODAL
  "CAN")
 (:VAR MV4380 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4384 :ISA GENE :PREDICATION MV4385 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4385 :ISA REGULATE :OBJECT MV4384 :AGENT MV4378 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4378 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4382 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?"
 (:VAR MV4396 :ISA POLAR-QUESTION :STATEMENT MV4394)
 (:VAR MV4394 :ISA AFFECT :AGENT MV4387 :AFFECTED-PROCESS MV4392 :RAW-TEXT
  "affect")
 (:VAR MV4387 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4392 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4388 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4388 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4408 :ISA POLAR-QUESTION :STATEMENT MV4406)
 (:VAR MV4406 :ISA AFFECT :AGENT MV4397 :AFFECTED-PROCESS MV4402 :RAW-TEXT
  "affect")
 (:VAR MV4397 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4402 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4405 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4405 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4398 :RAW-TEXT
  "gene")
 (:VAR MV4398 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4421 :ISA POLAR-QUESTION :STATEMENT MV4419)
 (:VAR MV4419 :ISA INCREASE :AGENT MV4409 :AFFECTED-PROCESS MV4415 :RAW-TEXT
  "increase")
 (:VAR MV4409 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4415 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4418 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4418 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4410 :RAW-TEXT
  "gene")
 (:VAR MV4410 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4433 :ISA POLAR-QUESTION :STATEMENT MV4431)
 (:VAR MV4431 :ISA INCREASE :AGENT MV4422 :AFFECTED-PROCESS MV4427 :RAW-TEXT
  "increase")
 (:VAR MV4422 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4427 :ISA TRANSCRIBE :OBJECT MV4430 :RAW-TEXT "transcription")
 (:VAR MV4430 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4423 :RAW-TEXT
  "gene")
 (:VAR MV4423 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?"
 (:VAR MV4443 :ISA POLAR-QUESTION :STATEMENT MV4441)
 (:VAR MV4441 :ISA AFFECT :AGENT MV4434 :AFFECTED-PROCESS MV4438 :RAW-TEXT
  "affect")
 (:VAR MV4434 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4438 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4440 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4440 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?"
 (:VAR MV4453 :ISA POLAR-QUESTION :STATEMENT MV4452)
 (:VAR MV4452 :ISA CONTAIN :THEME MV4450 :PATIENT MV4444)
 (:VAR MV4450 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4447 :RAW-TEXT
  "pathway")
 (:VAR MV4447 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV4444 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4456 :ISA BIO-FIND :OBJECT MV4458 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4458 :ISA TREATMENT :DISEASE MV4454 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV4454 :ISA CANCER :UID "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4463 :ISA BIO-FIND :OBJECT MV4464 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4464 :ISA GENE :PREDICATION MV4468 :ORGAN MV4467 :RAW-TEXT "genes")
 (:VAR MV4468 :ISA REGULATE :OBJECT MV4464 :AGENT MV4461 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4461 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4467 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
476: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4474 :ISA BIO-FIND :OBJECT MV4475 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4475 :ISA GENE :PREDICATION MV4477 :RAW-TEXT "genes")
 (:VAR MV4477 :ISA REGULATE :OBJECT MV4475 :THAT-REL T :AGENT MV4472 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4472 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4481 :ISA BIO-FIND :OBJECT MV4478 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4478 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4482 :RAW-TEXT
  "transcription factors")
 (:VAR MV4482 :ISA SHARE :OBJECT MV4478 :PARTICIPANT MV4486 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV4486 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4479 MV4485))
 (:VAR MV4479 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4485 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4492 :ISA BIO-ACTIVATE :MANNER MV4489 :AGENT MV4491 :OBJECT MV4488
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV4489 :ISA HOW)
 (:VAR MV4491 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4488 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4497 :ISA REGULATE :MANNER MV4495 :AGENT MV4493 :OBJECT MV4499
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4495 :ISA HOW)
 (:VAR MV4493 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4499 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4494 :RAW-TEXT
  "gene")
 (:VAR MV4494 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
480: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    SOURCE-START
e2    HOW           1 "How " 2
e3    DO            2 "does " 3
e25   KNOCK-OUT     3 "knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e2    WH-PRONOUN    1 "How " 2
e3    VERB+PRESENT  2 "does " 3
e25   VP            3 "knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
481: "How does stat3 regulate apoptosis in the liver?"

                    SOURCE-START
e16   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis in the liver?"
 (:VAR MV4522 :ISA REGULATE :MANNER MV4520 :AGENT MV4519 :AFFECTED-PROCESS
  MV4523 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4520 :ISA HOW)
 (:VAR MV4519 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4523 :ISA APOPTOSIS :ORGAN MV4526 :RAW-TEXT "apoptosis")
 (:VAR MV4526 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4531 :ISA REGULATE :MANNER MV4529 :AGENT MV4528 :AFFECTED-PROCESS
  MV4532 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4529 :ISA HOW)
 (:VAR MV4528 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4532 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4536 :ISA REGULATE :MANNER MV4534 :AGENT MV4533 :OBJECT MV4539
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4534 :ISA HOW)
 (:VAR MV4533 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4539 :ISA GENE :CELLULAR-PROCESS MV4537 :RAW-TEXT "genes")
 (:VAR MV4537 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e15   INVOLVE       1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4550 :ISA INVOLVE :MANNER MV4541 :THEME MV4540 :THEME MV4547 :PAST
  "PAST")
 (:VAR MV4541 :ISA HOW)
 (:VAR MV4540 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4547 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV4545 :RAW-TEXT
  "regulation")
 (:VAR MV4545 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e22   INVOLVE       1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4564 :ISA INVOLVE :MANNER MV4552 :THEME MV4551 :THEME MV4556 :PAST
  "PAST")
 (:VAR MV4552 :ISA HOW)
 (:VAR MV4551 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4556 :ISA REGULATE :OBJECT MV4560 :ORGAN MV4559 :AGENT-OR-OBJECT
  MV4560 :RAW-TEXT "regulation")
 (:VAR MV4560 :ISA BIO-ENTITY :NAME "apoptotis")
 (:VAR MV4559 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4560 :ISA BIO-ENTITY :NAME "apoptotis"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e14   INVOLVE       1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4574 :ISA INVOLVE :MANNER MV4566 :THEME MV4565 :THEME MV4570 :PAST
  "PAST")
 (:VAR MV4566 :ISA HOW)
 (:VAR MV4565 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4570 :ISA REGULATE :AFFECTED-PROCESS MV4571 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV4571 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e14   BIO-USE       1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4584 :ISA BIO-USE :MANNER MV4576 :OBJECT MV4575 :THEME MV4582 :PAST
  "PAST" :RAW-TEXT "used")
 (:VAR MV4576 :ISA HOW)
 (:VAR MV4575 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4582 :ISA REGULATE :AFFECTED-PROCESS MV4581 :RAW-TEXT "regulate")
 (:VAR MV4581 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4596 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4588 :VALUE MV4595 :PREP
  "IN" :PREDICATE MV4589)
 (:VAR MV4588 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4587 :RAW-TEXT
  "genes")
 (:VAR MV4587 :ISA MANY :WORD "many")
 (:VAR MV4595 :ISA GENE :CONTEXT MV4585 :HAS-DETERMINER "HOW" :QUANTIFIER
  MV4587 :RAW-TEXT "genes")
 (:VAR MV4585 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4592
  :RAW-TEXT "signaling pathway")
 (:VAR MV4592 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV4587 :ISA MANY :WORD "many") (:VAR MV4589 :ISA BE :PRESENT "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4605 :ISA AFFECT :MANNER MV4600 :MODAL MV4601 :AGENT MV4603 :OBJECT
  MV4599 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4600 :ISA HOW) (:VAR MV4601 :ISA MIGHT)
 (:VAR MV4603 :ISA MUTATION :OBJECT MV4598 :HAS-DETERMINER "A" :AGENT-OR-OBJECT
  MV4598 :RAW-TEXT "mutation")
 (:VAR MV4598 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4598 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4599 :ISA CANCER :UID "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4613 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91208>
   (PREDICATE
    (#<regulator 91207>
     (THEME
      (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
491: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4621 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91208>
   (PREDICATE
    (#<regulator 91207>
     (THEME
      (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4631 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91212>
   (PREDICATE
    (#<regulator 91211>
     (THEME
      (#<gene 89499> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
493: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV4641 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91212>
   (PREDICATE
    (#<regulator 91211>
     (THEME
      (#<gene 89499> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4650 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89603>
   (PREDICATE
    (#<transcription-factor 89602>
     (CONTROLLED-GENE
      (#<gene 89498>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
495: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV4658 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91216>
   (PREDICATE
    (#<transcription-factor 91215>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
496: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV4666 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91216>
   (PREDICATE
    (#<transcription-factor 91215>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
497: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV4676 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91221>
   (PREDICATE
    (#<transcription-factor 91220>
     (CONTROLLED-GENE
      (#<gene 89499> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
498: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e12   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?"
 (:VAR MV4684 :ISA POLAR-QUESTION :STATEMENT MV4683)
 (:VAR MV4683 :ISA REGULATE :AGENT MV4677 :AGENT MV4678 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4677 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4678 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4694 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91221>
   (PREDICATE
    (#<transcription-factor 91220>
     (CONTROLLED-GENE
      (#<gene 89499> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
500: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1"
 (:VAR MV4696 :ISA LIST :THEME MV4697 :PRESENT "PRESENT")
 (:VAR MV4697 :ISA GENE :PREDICATION MV4698 :RAW-TEXT "genes")
 (:VAR MV4698 :ISA REGULATE :OBJECT MV4697 :AGENT MV4695 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4695 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1"
 (:VAR MV4702 :ISA LIST :THEME MV4703 :PRESENT "PRESENT")
 (:VAR MV4703 :ISA GENE :PREDICATION MV4708 :RAW-TEXT "genes")
 (:VAR MV4708 :ISA REGULATE :OBJECT MV4703 :THAT-REL T :AGENT MV4701 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4701 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates"
 (:VAR MV4711 :ISA LIST :THEME MV4713 :PRESENT "PRESENT")
 (:VAR MV4713 :ISA GENE :PREDICATION MV4715 :QUANTIFIER MV4712 :RAW-TEXT
  "genes")
 (:VAR MV4715 :ISA REGULATE :OBJECT MV4713 :THAT-REL T :AGENT MV4710 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4710 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4712 :ISA SOME :WORD "some"))

___________________
503: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates"
 (:VAR MV4717 :ISA LIST :THEME MV4719 :PRESENT "PRESENT")
 (:VAR MV4719 :ISA GENE :PREDICATION MV4720 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4720 :ISA REGULATE :OBJECT MV4719 :AGENT MV4716 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4716 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4722 :ISA LIST :THEME MV4724 :PRESENT "PRESENT")
 (:VAR MV4724 :ISA GENE :PREDICATION MV4729 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4729 :ISA REGULATE :OBJECT MV4724 :THAT-REL T :AGENT MV4721 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4721 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates"
 (:VAR MV4732 :ISA LIST :THEME MV4734 :PRESENT "PRESENT")
 (:VAR MV4734 :ISA GENE :PREDICATION MV4736 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4736 :ISA REGULATE :OBJECT MV4734 :AGENT MV4731 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4731 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF"
 (:VAR MV4737 :ISA LIST :THEME MV4739 :PRESENT "PRESENT")
 (:VAR MV4739 :ISA BIO-ENTITY :PREDICATION MV4741 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4741 :ISA INVOLVE :THEME MV4739 :THAT-REL T :THEME MV4742 :PRESENT
  "PRESENT")
 (:VAR MV4742 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
507: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4744 :ISA SHOW :STATEMENT-OR-THEME MV4746 :BENEFICIARY MV4745 :PRESENT
  "PRESENT")
 (:VAR MV4746 :ISA GENE :PREDICATION MV4747 :RAW-TEXT "genes")
 (:VAR MV4747 :ISA REGULATE :OBJECT MV4746 :AGENT MV4743 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4743 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4745 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4751 :ISA SHOW :STATEMENT-OR-THEME MV4753 :BENEFICIARY MV4752 :PRESENT
  "PRESENT")
 (:VAR MV4753 :ISA GENE :PREDICATION MV4758 :RAW-TEXT "genes")
 (:VAR MV4758 :ISA REGULATE :OBJECT MV4753 :THAT-REL T :AGENT MV4750 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4750 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4752 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4761 :ISA SHOW :STATEMENT-OR-THEME MV4763 :BENEFICIARY MV4762 :PRESENT
  "PRESENT")
 (:VAR MV4763 :ISA GENE :PREDICATION MV4765 :RAW-TEXT "genes")
 (:VAR MV4765 :ISA REGULATE :OBJECT MV4763 :THAT-REL T :AGENT MV4760 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4760 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4762 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4766 :ISA SHOW :STATEMENT-OR-THEME MV4769 :BENEFICIARY MV4767 :PRESENT
  "PRESENT")
 (:VAR MV4769 :ISA BIO-ENTITY :PREDICATION MV4771 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4771 :ISA INVOLVE :THEME MV4769 :THAT-REL T :THEME MV4772 :PRESENT
  "PRESENT")
 (:VAR MV4772 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4767 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4786 :ISA SHOW :STATEMENT MV4784 :THEME MV4776 :PRESENT "PRESENT")
 (:VAR MV4784 :ISA SHARE :OBJECT MV4773 :PARTICIPANT MV4783 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4773 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4783 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4774 MV4782))
 (:VAR MV4774 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4782 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4776 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4797 :ISA SHOW :STATEMENT MV4795 :THEME MV4789 :PRESENT "PRESENT")
 (:VAR MV4795 :ISA REGULATE :OBJECT MV4791 :AGENT MV4787 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4791 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4787 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4789 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4799 :ISA SHOW :STATEMENT-OR-THEME MV4801 :PRESENT "PRESENT")
 (:VAR MV4801 :ISA GENE :PREDICATION MV4803 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4803 :ISA REGULATE :OBJECT MV4801 :AGENT MV4798 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4798 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4804 :ISA SHOW :STATEMENT-OR-THEME MV4806 :PRESENT "PRESENT")
 (:VAR MV4806 :ISA BIO-ENTITY :PREDICATION MV4808 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4808 :ISA INVOLVE :THEME MV4806 :THAT-REL T :THEME MV4809 :PRESENT
  "PRESENT")
 (:VAR MV4809 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4812 :ISA SHOW :STATEMENT-OR-THEME MV4810 :PRESENT "PRESENT")
 (:VAR MV4810 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4820 :RAW-TEXT
  "transcription factors")
 (:VAR MV4820 :ISA SHARE :OBJECT MV4810 :THAT-REL T :PARTICIPANT MV4819
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4819 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4811 MV4818))
 (:VAR MV4811 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4818 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV4823 :ISA TELL :THEME MV4826 :BENEFICIARY MV4824 :PRESENT "PRESENT")
 (:VAR MV4826 :ISA GENE :PREDICATION MV4833 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4833 :ISA REGULATE :OBJECT MV4826 :AGENT MV4822 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4822 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4824 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4835 :ISA TELL :THEME MV4845 :THEME MV4836 :PRESENT "PRESENT")
 (:VAR MV4845 :ISA REGULATE :OBJECT MV4838 :AGENT MV4844 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4838 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4844 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4834 MV4843))
 (:VAR MV4834 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4843 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4836 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4848 :ISA TELL :THEME MV4855 :THEME MV4849 :PRESENT "PRESENT")
 (:VAR MV4855 :ISA REGULATE :OBJECT MV4851 :AGENT MV4847 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4851 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4847 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4849 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4859 :ISA BE :SUBJECT MV4858 :PREDICATE MV4857 :PRESENT "PRESENT")
 (:VAR MV4858 :ISA WHAT)
 (:VAR MV4857 :ISA POSITIVE-REGULATOR :THEME MV4861 :RAW-TEXT
  "positive regulators")
 (:VAR MV4861 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4865 :ISA BE :SUBJECT MV4864 :PREDICATE MV4867 :PRESENT "PRESENT")
 (:VAR MV4864 :ISA WHAT)
 (:VAR MV4867 :ISA REGULATOR :THEME MV4863 :QUANTIFIER MV4866 :RAW-TEXT
  "regulators")
 (:VAR MV4863 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV4866 :ISA SOME :WORD "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4876 :ISA BE :SUBJECT MV4875 :PREDICATE MV4879 :PRESENT "PRESENT")
 (:VAR MV4875 :ISA WHAT)
 (:VAR MV4879 :ISA REGULATOR :THEME MV4883 :HAS-DETERMINER "THE" :PREDICATION
  MV4878 :RAW-TEXT "regulators")
 (:VAR MV4883 :ISA COLLECTION :RAW-TEXT
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE PROTEIN :NUMBER 6 :ITEMS
  (MV4870 MV4871 MV4881 MV4872 MV4873 MV4874))
 (:VAR MV4870 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME
  "ABI2_HUMAN")
 (:VAR MV4871 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME
  "ABL1_HUMAN")
 (:VAR MV4881 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME
  "ACDSB_HUMAN")
 (:VAR MV4872 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME
  "AGRL1_HUMAN")
 (:VAR MV4873 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME
  "ADRM1_HUMAN")
 (:VAR MV4874 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME
  "AGAP1_HUMAN")
 (:VAR MV4878 :ISA COMMON))

___________________
522: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4887 :ISA BE :SUBJECT MV4886 :PREDICATE MV4890 :PRESENT "PRESENT")
 (:VAR MV4886 :ISA WHAT)
 (:VAR MV4890 :ISA REGULATOR :THEME MV4894 :HAS-DETERMINER "THE" :PREDICATION
  MV4889 :RAW-TEXT "regulators")
 (:VAR MV4894 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4885 MV4893))
 (:VAR MV4885 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4893 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4889 :ISA COMMON))

___________________
523: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4898 :ISA BE :SUBJECT MV4897 :PREDICATE MV4901 :PRESENT "PRESENT")
 (:VAR MV4897 :ISA WHAT)
 (:VAR MV4901 :ISA REGULATOR :THEME MV4905 :HAS-DETERMINER "THE" :PREDICATION
  MV4900 :RAW-TEXT "regulators")
 (:VAR MV4905 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4896 MV4904))
 (:VAR MV4896 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4904 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4900 :ISA COMMON))

___________________
524: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4908 :ISA BE :SUBJECT MV4907 :PREDICATE MV4911 :PRESENT "PRESENT")
 (:VAR MV4907 :ISA WHAT)
 (:VAR MV4911 :ISA REGULATOR :THEME MV4914 :HAS-DETERMINER "THE" :PREDICATION
  MV4910 :RAW-TEXT "regulators")
 (:VAR MV4914 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV4910 :ISA COMMON))

___________________
525: "What are the genes regulated by STAT3?"

                    SOURCE-START
e13   REGULATE      1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4921 :ISA REGULATE :OBJECT
  (#<gene 91388> (HAS-DETERMINER (#<what 87950>))
   (HAS-DETERMINER (#<the 106> (WORD "the"))) (RAW-TEXT "genes"))
  :AGENT MV4916 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4916 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4926 :ISA BE :SUBJECT MV4925 :PREDICATE MV4928 :PRESENT "PRESENT")
 (:VAR MV4925 :ISA WHAT)
 (:VAR MV4928 :ISA GENE :PREDICATION MV4930 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4930 :ISA REGULATE :OBJECT MV4928 :AGENT MV4924 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4924 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4935 :ISA BE :SUBJECT MV4934 :PREDICATE MV4939 :PRESENT "PRESENT")
 (:VAR MV4934 :ISA WHAT)
 (:VAR MV4939 :ISA REGULATOR :THEME MV4944 :HAS-DETERMINER "THE" :MODIFIER
  MV4938 :RAW-TEXT "regulators")
 (:VAR MV4944 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4941 MV4942 MV4931 MV4932 MV4933))
 (:VAR MV4941 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4942 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4931 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4932 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4933 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV4938 :ISA FREQUENT :COMPARATIVE MV4937 :NAME "frequent")
 (:VAR MV4937 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV4951 :ISA BE :SUBJECT MV4950 :PREDICATE MV4946 :PRESENT "PRESENT")
 (:VAR MV4950 :ISA WHAT)
 (:VAR MV4946 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4954 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV4954 :ISA REGULATE :AGENT MV4946 :THAT-REL T :OBJECT MV4958 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4958 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4955 MV4956 MV4947 MV4948 MV4949))
 (:VAR MV4955 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4956 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4947 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4948 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4949 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV4970 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4961 :VALUE MV4969 :PREP
  "IN" :PREDICATE MV4962)
 (:VAR MV4961 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV4960 :RAW-TEXT
  "genes")
 (:VAR MV4960 :ISA OTHER :WORD "other")
 (:VAR MV4969 :ISA GENE :CONTEXT MV4966 :HAS-DETERMINER "WHAT" :QUANTIFIER
  MV4960 :RAW-TEXT "genes")
 (:VAR MV4966 :ISA PATHWAY :QUANTIFIER MV4965 :RAW-TEXT "pathway")
 (:VAR MV4965 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4960 :ISA OTHER :WORD "other")
 (:VAR MV4962 :ISA BE :PRESENT "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV4983 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4974 :VALUE MV4982 :PREP
  "IN" :PREDICATE MV4975)
 (:VAR MV4974 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV4973 :RAW-TEXT
  "proteins")
 (:VAR MV4973 :ISA OTHER :WORD "other")
 (:VAR MV4982 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4979 :HAS-DETERMINER "WHAT"
  :QUANTIFIER MV4973 :RAW-TEXT "proteins")
 (:VAR MV4979 :ISA PATHWAY :QUANTIFIER MV4978 :RAW-TEXT "pathway")
 (:VAR MV4978 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4973 :ISA OTHER :WORD "other")
 (:VAR MV4975 :ISA BE :PRESENT "PRESENT"))

___________________
531: "What pathways are they in?"

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
532: "What pathways involve SOARING?"

                    SOURCE-START
e5    INVOLVE       1 "What pathways involve " 4
e3    SOAR          4 "SOARING" 5
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e5    TRANSITIVE-CLAUSE-WITHOUT-OBJECT  1 "What pathways involve " 4
e3    VG            4 "SOARING" 5
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
533: "What proteins are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    END-OF-SOURCE
("What proteins are in the first pathway"
 (:VAR MV5003 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4994 :VALUE MV5002 :PREP
  "IN" :PREDICATE MV4995)
 (:VAR MV4994 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV5002 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4999 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "proteins")
 (:VAR MV4999 :ISA PATHWAY :QUANTIFIER MV4998 :RAW-TEXT "pathway")
 (:VAR MV4998 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4995 :ISA BE :PRESENT "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV5008 :ISA INVOLVE :THEME MV5007 :THEME MV5005 :PRESENT "PRESENT")
 (:VAR MV5007 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5005 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5019 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5010 :VALUE MV5018 :PREP
  "IN" :PREDICATE MV5011)
 (:VAR MV5010 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5018 :ISA GENE :CONTEXT MV5015 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV5015 :ISA PATHWAY :QUANTIFIER MV5014 :RAW-TEXT "pathway")
 (:VAR MV5014 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV5011 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    SOURCE-START
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5031 :ISA ANSWER :PATIENT MV5022 :MODAL MV5024 :AGENT MV5025 :THEME
  MV5029 :PRESENT "PRESENT")
 (:VAR MV5022 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5024 :ISA CAN)
 (:VAR MV5025 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5029 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5035 :ISA REGULATE :AGENT MV5032 :OBJECT MV5033 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5032 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5033 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
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
538: "Where does stat3 regulate cfos"

                    SOURCE-START
e8    REGULATE      1 "Where does stat3 regulate cfos" 7
                    END-OF-SOURCE
("Where does stat3 regulate cfos"
 (:VAR MV5039 :ISA REGULATE :LOCATION MV5037 :AGENT MV5036 :OBJECT MV5040
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5037 :ISA WHERE)
 (:VAR MV5036 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5040 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5044 :ISA INVOLVE :THEME MV5043 :THEME MV5045 :PRESENT "PRESENT")
 (:VAR MV5043 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5042 :RAW-TEXT
  "pathways")
 (:VAR MV5042 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5045 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :UID "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5056 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5048 :VALUE MV5055 :PREP
  "IN" :PREDICATE MV5049)
 (:VAR MV5048 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5055 :ISA GENE :CONTEXT MV5046 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV5046 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5052
  :RAW-TEXT "signaling pathway")
 (:VAR MV5052 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5049 :ISA BE :PRESENT "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5069 :ISA INVOLVE :THEME MV5060 :CONTEXT MV5058 :PRESENT "PRESENT")
 (:VAR MV5060 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5058 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5065
  :MODIFIER MV5066 :RAW-TEXT "signaling pathway")
 (:VAR MV5065 :ISA ONCOGENIC)
 (:VAR MV5066 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
542: "Which kinases regulate x?"

                    SOURCE-START
e6    REGULATE      1 "Which kinases regulate x" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate x?"
 (:VAR MV5072 :ISA REGULATE :AGENT MV5071 :OBJECT MV5073 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5071 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5073 :ISA BIO-ENTITY :NAME "x"))

___________________
543: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5074 :ISA DOWNREGULATE :AGENT MV5076 :OBJECT MV5077 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5076 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5077 :ISA BIO-ENTITY :NAME "x"))

___________________
544: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5078 :ISA UPREGULATE :AGENT MV5080 :OBJECT MV5081 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulate")
 (:VAR MV5080 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5081 :ISA BIO-ENTITY :NAME "x"))

___________________
545: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5090 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5084 :VALUE MV5088 :PREP
  "IN" :PREDICATE MV5085)
 (:VAR MV5084 :ISA THESE :QUANTIFIER MV5082 :WORD "these")
 (:VAR MV5082 :ISA WHICH)
 (:VAR MV5088 :ISA PATHWAY :MODIFIER MV5087 :RAW-TEXT "pathways")
 (:VAR MV5087 :ISA IMMUNE :NAME "immune")
 (:VAR MV5085 :ISA BE :PRESENT "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5100 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5095 :VALUE MV5098 :PREP
  "IN" :PREDICATE MV5096)
 (:VAR MV5095 :ISA THESE :QUANTIFIER MV5093 :WORD "these")
 (:VAR MV5093 :ISA WHICH)
 (:VAR MV5098 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5092 :RAW-TEXT "pathways")
 (:VAR MV5092 :ISA BIO-ORGAN :UID "UBERON:0002405")
 (:VAR MV5096 :ISA BE :PRESENT "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5104 :ISA BE :SUBJECT MV5103 :PREDICATE MV5106 :PRESENT "PRESENT")
 (:VAR MV5103 :ISA WHAT)
 (:VAR MV5106 :ISA GENE :PREDICATION MV5107 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV5107 :ISA REGULATE :OBJECT MV5106 :AGENT MV5102 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5102 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5117 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5110 :VALUE MV5115 :PREP
  "IN" :PREDICATE MV5111)
 (:VAR MV5110 :ISA THOSE :QUANTIFIER MV5108 :WORD "those")
 (:VAR MV5108 :ISA WHICH)
 (:VAR MV5115 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5114 :RAW-TEXT
  "pathway")
 (:VAR MV5114 :ISA IMMUNE :NAME "immune")
 (:VAR MV5111 :ISA BE :PRESENT "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5122 :ISA INVOLVE :THEME MV5121 :THEME MV5119 :PRESENT "PRESENT")
 (:VAR MV5121 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5119 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5132 :ISA POLAR-QUESTION :STATEMENT MV5125)
 (:VAR MV5125 :ISA SHOW :AGENT MV5124 :STATEMENT-OR-THEME MV5128 :BENEFICIARY
  MV5126 :MODAL "CAN")
 (:VAR MV5124 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5128 :ISA BIO-ENTITY :PREDICATION MV5130 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV5130 :ISA INVOLVE :THEME MV5128 :THAT-REL T :THEME MV5131 :MODAL
  "CAN")
 (:VAR MV5131 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5126 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV5138 :ISA POLAR-QUESTION :STATEMENT MV5137)
 (:VAR MV5137 :ISA INHIBIT :AGENT MV5135 :OBJECT MV5133 :RAW-TEXT "inhibit")
 (:VAR MV5135 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV5133 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5148 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5140 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5140 :ISA BUILD :ARTIFACT MV5142 :PRESENT "PRESENT")
 (:VAR MV5142 :ISA MODEL :OBJECT MV5146 :HAS-DETERMINER "A")
 (:VAR MV5146 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5145)
 (:VAR MV5145 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5166 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5164 MV5165))
 (:VAR MV5164 :ISA KNOW :AGENT MV5149 :STATEMENT MV5155 :PRESENT "PRESENT")
 (:VAR MV5149 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5155 :ISA BIO-ACTIVATE :AGENT MV5154 :OBJECT MV5156 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5154 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5156 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5165 :ISA COLLECTION :RAW-TEXT
  "Raf activates Mek and Mek activates Erk" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV5158 MV5162))
 (:VAR MV5158 :ISA BIO-ACTIVATE :AGENT MV5157 :OBJECT MV5159 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5157 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5159 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5162 :ISA BIO-ACTIVATE :AGENT MV5161 :OBJECT MV5163 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5161 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5163 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7
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
554: "MAP2K1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "MAP2K1 phosphorylates MAPK1" 8
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylates MAPK1."
 (:VAR MV5169 :ISA PHOSPHORYLATE :AGENT MV5167 :SUBSTRATE MV5168 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV5167 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV5168 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5172 :ISA DEPHOSPHORYLATE :AGENT MV5170 :SUBSTRATE MV5171 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV5170 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5171 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5183 :ISA POLAR-QUESTION :STATEMENT MV5182)
 (:VAR MV5182 :ISA COPULAR-PREDICATION :ITEM MV5176 :VALUE MV5180 :PREDICATE
  MV5174)
 (:VAR MV5176 :ISA BIO-AMOUNT :MEASURED-ITEM MV5173 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5173 :ISA PROTEIN :PREDICATION MV5178 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5178 :ISA PHOSPHORYLATE :SUBSTRATE MV5173 :RAW-TEXT "phosphorylated")
 (:VAR MV5180 :ISA HIGH :ADVERB MV5179)
 (:VAR MV5179 :ISA ALWAYS :NAME "always") (:VAR MV5174 :ISA BE))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5194 :ISA POLAR-QUESTION :STATEMENT MV5193)
 (:VAR MV5193 :ISA COPULAR-PREDICATION :ITEM MV5187 :VALUE MV5191 :PREDICATE
  MV5185)
 (:VAR MV5187 :ISA BIO-AMOUNT :MEASURED-ITEM MV5184 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5184 :ISA PROTEIN :PREDICATION MV5189 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5189 :ISA PHOSPHORYLATE :SUBSTRATE MV5184 :RAW-TEXT "phosphorylated")
 (:VAR MV5191 :ISA LOW :ADVERB MV5190) (:VAR MV5190 :ISA ALWAYS :NAME "always")
 (:VAR MV5185 :ISA BE))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV5204 :ISA POLAR-QUESTION :STATEMENT MV5203)
 (:VAR MV5203 :ISA VANISH :AGENT MV5202 :RAW-TEXT "vanish")
 (:VAR MV5202 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV5196 :COMPONENT MV5195)
 (:VAR MV5196 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5195 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV5214 :ISA POLAR-QUESTION :STATEMENT MV5213)
 (:VAR MV5213 :ISA VANISH :AGENT MV5212 :RAW-TEXT "vanish")
 (:VAR MV5212 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV5206 :COMPONENT MV5205)
 (:VAR MV5206 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5205 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5242 :ISA POLAR-QUESTION :STATEMENT MV5241)
 (:VAR MV5241 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5238 :EVENT MV5234)
 (:VAR MV5238 :ISA WH-QUESTION :STATEMENT MV5235 :WH IF)
 (:VAR MV5235 :ISA INCREASE :AGENT-OR-CAUSE MV5224 :MULTIPLIER MV5233
  :AFFECTED-PROCESS-OR-OBJECT MV5228 :RAW-TEXT "increase")
 (:VAR MV5224 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5233 :ISA N-FOLD :NUMBER MV5232) (:VAR MV5232 :ISA NUMBER :VALUE 10)
 (:VAR MV5228 :ISA BIO-AMOUNT :MEASURED-ITEM MV5216 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5216 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5234 :ISA VANISH :CAUSE MV5219 :RAW-TEXT "vanish")
 (:VAR MV5219 :ISA BIO-AMOUNT :MEASURED-ITEM MV5215 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5215 :ISA PROTEIN :PREDICATION MV5221 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5221 :ISA PHOSPHORYLATE :SUBSTRATE MV5215 :RAW-TEXT "phosphorylated"))

___________________
561: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5244 :ISA SHOW :STATEMENT-OR-THEME MV5251 :BENEFICIARY MV5245 :PRESENT
  "PRESENT")
 (:VAR MV5251 :ISA EVIDENCE :STATEMENT MV5250 :HAS-DETERMINER "THE")
 (:VAR MV5250 :ISA REGULATE :AGENT MV5249 :OBJECT MV5243 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5249 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5243 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV5245 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5255 :ISA INCREASE :AGENT-OR-CAUSE MV5253 :AFFECTED-PROCESS-OR-OBJECT
  MV5257 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5253 :ISA WHAT)
 (:VAR MV5257 :ISA BIO-AMOUNT :MEASURED-ITEM MV5252 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5252 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5270 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5262 :VALUE MV5269 :PREP
  "IN" :PREDICATE MV5263)
 (:VAR MV5262 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5269 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5260 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV5260 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5266
  :RAW-TEXT "signaling pathway")
 (:VAR MV5266 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5263 :ISA BE :PRESENT "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5283 :ISA POLAR-QUESTION :STATEMENT MV5281)
 (:VAR MV5281 :ISA REGULATE :AGENT MV5272 :OBJECT MV5277 :RAW-TEXT "regulate")
 (:VAR MV5272 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5277 :ISA GENE :ORGAN MV5280 :HAS-DETERMINER "THE" :EXPRESSES MV5273
  :RAW-TEXT "gene")
 (:VAR MV5280 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5273 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5290 :ISA REGULATE :OBJECT MV5286 :AGENT MV5284 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5286 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5284 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5299 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5295 :AGENT MV5292
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5295 :ISA THESE :QUANTIFIER MV5293 :WORD "these")
 (:VAR MV5293 :ISA WHICH)
 (:VAR MV5292 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5307 :ISA REGULATE :AGENT-OR-CAUSE MV5304 :OBJECT MV5308 :PRESENT
  "PRESENT" :ADVERB MV5305 :RAW-TEXT "regulate")
 (:VAR MV5304 :ISA THESE :QUANTIFIER MV5302 :WORD "these")
 (:VAR MV5302 :ISA WHICH)
 (:VAR MV5308 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5305 :ISA ALSO :NAME "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5313 :ISA TRANSCRIBE :AGENT MV5310 :OBJECT MV5311 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV5310 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5311 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5317 :ISA TRANSCRIBE :AGENT MV5314 :OBJECT MV5315 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV5314 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV5315 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5321 :ISA UTILIZE :PARTICIPANT MV5320 :OBJECT MV5322 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV5320 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5319 :RAW-TEXT
  "pathways")
 (:VAR MV5319 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5322 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
571: "What transcription factors are in the calcium regulated pathways?"

                    SOURCE-START
e16   COPULAR-PREDICATION 1 "What transcription factors are in the calcium " 8
e13   REGULATE      8 "regulated pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e16   S             1 "What transcription factors are in the calcium " 8
e13   VP+PAST       8 "regulated pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
572: "What pathways involve the immune system?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the immune system?"
 (:VAR MV5336 :ISA INVOLVE :THEME MV5335 :THEME MV5333 :PRESENT "PRESENT")
 (:VAR MV5335 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5333 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :UID "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5343 :ISA INVOLVE :THEME MV5342 :THEME MV5346 :PRESENT "PRESENT")
 (:VAR MV5342 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5341 :RAW-TEXT
  "pathways")
 (:VAR MV5341 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5346 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5338 MV5344 MV5339))
 (:VAR MV5338 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME
  "ERBB2_HUMAN")
 (:VAR MV5344 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5339 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME
  "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5354 :ISA SHARE :OBJECT MV5348 :PARTICIPANT MV5353 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5348 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5353 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
575: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5362 :ISA REGULATE :OBJECT MV5357 :AGENT MV5361 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5357 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5361 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5365 :ISA BE :SUBJECT MV5364 :PREDICATE MV5367 :PRESENT "PRESENT")
 (:VAR MV5364 :ISA WHAT)
 (:VAR MV5367 :ISA PATHWAY :PATHWAYCOMPONENT MV5370 :PREDICATION MV5366
  :RAW-TEXT "pathways")
 (:VAR MV5370 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV5366 :ISA COMMON))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5384 :ISA SHARE :OBJECT MV5377 :PARTICIPANT MV5382 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5377 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5376 :RAW-TEXT
  "pathways")
 (:VAR MV5376 :ISA IMMUNE :NAME "immune")
 (:VAR MV5382 :ISA GENE :EXPRESSES MV5383 :RAW-TEXT "genes")
 (:VAR MV5383 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5372 MV5373 MV5374))
 (:VAR MV5372 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5373 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV5374 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5393 :ISA REGULATE :OBJECT MV5389 :AGENT MV5387 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5389 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5386 :RAW-TEXT
  "phosphatase")
 (:VAR MV5386 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV5387 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5399 :ISA INVOLVE :THEME MV5398 :THEME MV5395 :PRESENT "PRESENT")
 (:VAR MV5398 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5397 :RAW-TEXT
  "pathways")
 (:VAR MV5397 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV5395 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?"
 (:VAR MV5404 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89589>
   (PREDICATE
    (#<kinase 89588> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
581: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5409 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91663>
   (PREDICATE
    (#<transcription-factor 89600> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
582: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5413 :ISA BE :SUBJECT MV5412 :PREDICATE MV5415 :PRESENT "PRESENT")
 (:VAR MV5412 :ISA THESE :QUANTIFIER MV5410 :WORD "these")
 (:VAR MV5410 :ISA WHICH)
 (:VAR MV5415 :ISA KINASE :ENZYME MV5414 :RAW-TEXT "kinases")
 (:VAR MV5414 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5420 :ISA BE :SUBJECT MV5419 :PREDICATE MV5422 :PRESENT "PRESENT")
 (:VAR MV5419 :ISA THESE :QUANTIFIER MV5417 :WORD "these")
 (:VAR MV5417 :ISA WHICH)
 (:VAR MV5422 :ISA KINASE :AMINO-ACID MV5421 :RAW-TEXT "kinases")
 (:VAR MV5421 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
584: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5427 :ISA BE :SUBJECT MV5426 :PREDICATE MV5430 :PRESENT "PRESENT")
 (:VAR MV5426 :ISA THESE :QUANTIFIER MV5424 :WORD "these")
 (:VAR MV5424 :ISA WHICH)
 (:VAR MV5430 :ISA KINASE :AMINO-ACID MV5431 :RAW-TEXT "kinases")
 (:VAR MV5431 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5428 MV5429))
 (:VAR MV5428 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5429 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
585: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5436 :ISA BE :SUBJECT MV5435 :PREDICATE MV5437 :PRESENT "PRESENT")
 (:VAR MV5435 :ISA THESE :QUANTIFIER MV5433 :WORD "these")
 (:VAR MV5433 :ISA WHICH)
 (:VAR MV5437 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
586: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5442 :ISA BE :SUBJECT MV5441 :PREDICATE MV5443 :PRESENT "PRESENT")
 (:VAR MV5441 :ISA THESE :QUANTIFIER MV5439 :WORD "these")
 (:VAR MV5439 :ISA WHICH)
 (:VAR MV5443 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME
  "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5448 :ISA BE :SUBJECT MV5447 :PREDICATE MV5449 :PRESENT "PRESENT")
 (:VAR MV5447 :ISA THESE :QUANTIFIER MV5445 :WORD "these")
 (:VAR MV5445 :ISA WHICH) (:VAR MV5449 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e13   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5454 :ISA BE :SUBJECT MV5453 :PREDICATE MV5457 :PRESENT "PRESENT")
 (:VAR MV5453 :ISA THESE :QUANTIFIER MV5451 :WORD "these")
 (:VAR MV5451 :ISA WHICH)
 (:VAR MV5457 :ISA RECEPTOR :MODIFIER MV5455 :MODIFIER MV5456 :RAW-TEXT
  "receptors")
 (:VAR MV5455 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine")
 (:VAR MV5456 :ISA KINASE :RAW-TEXT "kinase"))

___________________
589: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5463 :ISA BE :SUBJECT MV5462 :PREDICATE MV5459 :PRESENT "PRESENT")
 (:VAR MV5462 :ISA THESE :QUANTIFIER MV5460 :WORD "these")
 (:VAR MV5460 :ISA WHICH)
 (:VAR MV5459 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
590: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5469 :ISA BE :SUBJECT MV5468 :PREDICATE MV5465 :PRESENT "PRESENT")
 (:VAR MV5468 :ISA THESE :QUANTIFIER MV5466 :WORD "these")
 (:VAR MV5466 :ISA WHICH)
 (:VAR MV5465 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
591: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5475 :ISA BE :SUBJECT MV5474 :PREDICATE MV5471 :PRESENT "PRESENT")
 (:VAR MV5474 :ISA THESE :QUANTIFIER MV5472 :WORD "these")
 (:VAR MV5472 :ISA WHICH)
 (:VAR MV5471 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
592: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5480 :ISA BE :SUBJECT MV5479 :PREDICATE MV5481 :PRESENT "PRESENT")
 (:VAR MV5479 :ISA THESE :QUANTIFIER MV5477 :WORD "these")
 (:VAR MV5477 :ISA WHICH)
 (:VAR MV5481 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
593: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5486 :ISA BE :SUBJECT MV5485 :PREDICATE MV5487 :PRESENT "PRESENT")
 (:VAR MV5485 :ISA THESE :QUANTIFIER MV5483 :WORD "these")
 (:VAR MV5483 :ISA WHICH)
 (:VAR MV5487 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
594: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5492 :ISA BE :SUBJECT MV5491 :PREDICATE MV5493 :PRESENT "PRESENT")
 (:VAR MV5491 :ISA THESE :QUANTIFIER MV5489 :WORD "these")
 (:VAR MV5489 :ISA WHICH)
 (:VAR MV5493 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
595: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5498 :ISA BE :SUBJECT MV5497 :PREDICATE MV5500 :PRESENT "PRESENT")
 (:VAR MV5497 :ISA THESE :QUANTIFIER MV5495 :WORD "these")
 (:VAR MV5495 :ISA WHICH)
 (:VAR MV5500 :ISA RECEPTOR :MODIFIER MV5499 :RAW-TEXT "receptors")
 (:VAR MV5499 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5506 :ISA BE :SUBJECT MV5505 :PREDICATE MV5502 :PRESENT "PRESENT")
 (:VAR MV5505 :ISA THESE :QUANTIFIER MV5503 :WORD "these")
 (:VAR MV5503 :ISA WHICH)
 (:VAR MV5502 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
  "receptor tyrosine kinase" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TKTL1_HUMAN") (:UID "UP:P51854"))
   (PROTEIN (:NAME "NTRK1_HUMAN") (:UID "UP:P04629")))
  :UID "NCIT:C17660"))

___________________
597: "Which of these are transcription factors?"

                    SOURCE-START
e10   BE            1 "Which of these are transcription factors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are transcription factors?"
 (:VAR MV5512 :ISA BE :SUBJECT MV5511 :PREDICATE MV5508 :PRESENT "PRESENT")
 (:VAR MV5511 :ISA THESE :QUANTIFIER MV5509 :WORD "these")
 (:VAR MV5509 :ISA WHICH)
 (:VAR MV5508 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5518 :ISA BE :SUBJECT MV5517 :PREDICATE MV5519 :PRESENT "PRESENT")
 (:VAR MV5517 :ISA THESE :QUANTIFIER MV5515 :WORD "these")
 (:VAR MV5515 :ISA WHICH)
 (:VAR MV5519 :ISA PROTEIN :MODIFIER MV5514 :RAW-TEXT "proteins")
 (:VAR MV5514 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5524 :ISA BE :SUBJECT MV5523 :PREDICATE MV5527 :PRESENT "PRESENT")
 (:VAR MV5523 :ISA THESE :QUANTIFIER MV5521 :WORD "these")
 (:VAR MV5521 :ISA WHICH)
 (:VAR MV5527 :ISA PHOSPHATASE :MODIFIER MV5528 :RAW-TEXT "phosphatases")
 (:VAR MV5528 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5525 MV5526))
 (:VAR MV5525 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5526 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5533 :ISA BE :SUBJECT MV5532 :PREDICATE MV5535 :PRESENT "PRESENT")
 (:VAR MV5532 :ISA THESE :QUANTIFIER MV5530 :WORD "these")
 (:VAR MV5530 :ISA WHICH)
 (:VAR MV5535 :ISA PHOSPHATASE :MODIFIER MV5534 :RAW-TEXT "phosphatases")
 (:VAR MV5534 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5540 :ISA PHOSPHORYLATE :AMINO-ACID MV5537 :AGENT MV5539 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV5537 :ISA WHAT)
 (:VAR MV5539 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
602: "which of these are exclusively expressed in liver?"

                    SOURCE-START
e16   GENE-TRANSCRIPT-EXPRESS 1 "which of these are exclusively expressed in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("which of these are exclusively expressed in liver?"
 (:VAR MV5549 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5543 :ORGAN MV5548
  :PRESENT "PRESENT" :ADVERB MV5545 :RAW-TEXT "expressed")
 (:VAR MV5543 :ISA THESE :QUANTIFIER MV5541 :WORD "these")
 (:VAR MV5541 :ISA WHICH) (:VAR MV5548 :ISA LIVER)
 (:VAR MV5545 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
603: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5554 :ISA REGULATE :AGENT-OR-CAUSE MV5553 :OBJECT MV5552 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5553 :ISA WHAT)
 (:VAR MV5552 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5557 :ISA INCREASE :AGENT-OR-CAUSE MV5555 :AFFECTED-PROCESS-OR-OBJECT
  MV5559 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5555 :ISA WHAT)
 (:VAR MV5559 :ISA BIO-AMOUNT :MEASURED-ITEM MV5561 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5561 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5564 :ISA UPREGULATE :AGENT-OR-CAUSE MV5563 :OBJECT MV5565 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV5563 :ISA WHAT)
 (:VAR MV5565 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5567 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5566 :OBJECT MV5568 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV5566 :ISA WHAT)
 (:VAR MV5568 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5570 :ISA DECREASE :AGENT-OR-CAUSE MV5569 :AFFECTED-PROCESS-OR-OBJECT
  MV5572 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5569 :ISA WHAT)
 (:VAR MV5572 :ISA BIO-AMOUNT :MEASURED-ITEM MV5574 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5574 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5577 :ISA REGULATE :AGENT-OR-CAUSE MV5576 :OBJECT MV5578 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5576 :ISA WHAT)
 (:VAR MV5578 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
  "GLNA_HUMAN"))

___________________
609: "What regulates GLUL from the literature?"

                    SOURCE-START
e10   REGULATE      1 "What regulates GLUL " 4
e8    FROM          4 "from the literature" 7
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e10   S             1 "What regulates GLUL " 4
e8    PP            4 "from the literature" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
610: "What regulates GLUL from the GEO RNAi database?"

                    SOURCE-START
e14   REGULATE      1 "What regulates GLUL " 4
e12   FROM          4 "from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e14   S             1 "What regulates GLUL " 4
e12   PP            4 "from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
611: "Which kinases regulate the cfos gene?"

                    SOURCE-START
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate the cfos gene?"
 (:VAR MV5597 :ISA REGULATE :AGENT MV5596 :OBJECT MV5600 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5596 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5600 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5599 :RAW-TEXT
  "gene")
 (:VAR MV5599 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5601 :ISA DOWNREGULATE :AGENT MV5603 :OBJECT MV5606 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5603 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5606 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5605 :RAW-TEXT
  "gene")
 (:VAR MV5605 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5609 :ISA BE :SUBJECT MV5608 :PREDICATE MV5607 :PRESENT "PRESENT")
 (:VAR MV5608 :ISA WHAT)
 (:VAR MV5607 :ISA POSITIVE-REGULATOR :THEME MV5613 :RAW-TEXT
  "positive regulators")
 (:VAR MV5613 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5612 :RAW-TEXT
  "gene")
 (:VAR MV5612 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5617 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5616 :OBJECT MV5615 :PRESENT
  "PRESENT" :RAW-TEXT "transcribes")
 (:VAR MV5616 :ISA WHAT)
 (:VAR MV5615 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5620 :ISA SHOW :STATEMENT-OR-THEME MV5631 :BENEFICIARY MV5621 :PRESENT
  "PRESENT")
 (:VAR MV5631 :ISA EVIDENCE :STATEMENT MV5626 :HAS-DETERMINER "THE")
 (:VAR MV5626 :ISA INCREASE :AGENT MV5618 :AFFECTED-PROCESS-OR-OBJECT MV5628
  :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5618 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5628 :ISA BIO-AMOUNT :MEASURED-ITEM MV5619 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5619 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME
  "SOCS1_HUMAN")
 (:VAR MV5621 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
616: "Show me the evidence that KRAS decreasse the amount of FZD8."

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
617: "What is the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras regulates frizzled8?"
 (:VAR MV5646 :ISA BE :SUBJECT MV5645 :PREDICATE MV5652 :PRESENT "PRESENT")
 (:VAR MV5645 :ISA WHAT)
 (:VAR MV5652 :ISA EVIDENCE :STATEMENT MV5651 :HAS-DETERMINER "THE")
 (:VAR MV5651 :ISA REGULATE :AGENT MV5650 :OBJECT MV5644 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5650 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5644 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5654 :ISA BE :SUBJECT MV5653 :PREDICATE MV5663 :PRESENT "PRESENT")
 (:VAR MV5653 :ISA WHAT)
 (:VAR MV5663 :ISA EVIDENCE :STATEMENT MV5659 :HAS-DETERMINER "THE")
 (:VAR MV5659 :ISA BINDING :BINDER MV5658 :DIRECT-BINDEE MV5662 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV5658 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5662 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5661 :RAW-TEXT
  "gene")
 (:VAR MV5661 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5671 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5665 :ORGAN MV5670
  :PRESENT "PRESENT" :ADVERB MV5667 :RAW-TEXT "expressed")
 (:VAR MV5665 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5670 :ISA LIVER) (:VAR MV5667 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV5679 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV5677 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV5677 :ISA LIVER))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV5688 :ISA POLAR-QUESTION :STATEMENT MV5686)
 (:VAR MV5686 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5680 :ORGAN MV5685 :ADVERB
  MV5682 :RAW-TEXT "expressed")
 (:VAR MV5680 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5685 :ISA LIVER) (:VAR MV5682 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5693 :ISA AFFECT :MANNER MV5691 :AGENT MV5689 :OBJECT MV5690 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5691 :ISA HOW)
 (:VAR MV5689 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME
  "M4K2_HUMAN")
 (:VAR MV5690 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5698 :ISA AFFECT :MANNER MV5695 :AGENT MV5697 :OBJECT MV5694 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5695 :ISA HOW)
 (:VAR MV5697 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5694 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5702 :ISA BE :SUBJECT MV5701 :PREDICATE MV5707 :PRESENT "PRESENT")
 (:VAR MV5701 :ISA WHAT)
 (:VAR MV5707 :ISA REGULATOR :THEME MV5710 :HAS-DETERMINER "THE" :PREDICATION
  MV5704 :CONTEXT MV5705 :RAW-TEXT "regulators")
 (:VAR MV5710 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5699 MV5700))
 (:VAR MV5699 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5700 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5704 :ISA COMMON)
 (:VAR MV5705 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5715 :ISA BE :SUBJECT MV5714 :PREDICATE MV5717 :PRESENT "PRESENT")
 (:VAR MV5714 :ISA WHAT)
 (:VAR MV5717 :ISA PATH :ENDPOINTS MV5720 :HAS-DETERMINER "THE")
 (:VAR MV5720 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5712 MV5713))
 (:VAR MV5712 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5713 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5727 :ISA POLAR-QUESTION :STATEMENT MV5726)
 (:VAR MV5726 :ISA AFFECT :AGENT MV5722 :OBJECT MV5725 :RAW-TEXT "affect")
 (:VAR MV5722 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5725 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
627: "MAP3K7 regulates IKK"

                    SOURCE-START
e5    REGULATE      1 "MAP3K7 regulates IKK" 7
                    END-OF-SOURCE
("MAP3K7 regulates IKK"
 (:VAR MV5729 :ISA REGULATE :AGENT MV5728 :OBJECT MV5730 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5728 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5730 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
628: "MAP3K7 positively regulates IKK"

                    SOURCE-START
e6    UPREGULATE    1 "MAP3K7 positively regulates IKK" 8
                    END-OF-SOURCE
("MAP3K7 positively regulates IKK"
 (:VAR MV5732 :ISA UPREGULATE :AGENT MV5731 :OBJECT MV5733 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5731 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5733 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
629: "NFkappaB positively regulates CXCL8."

                    SOURCE-START
e7    UPREGULATE    1 "NFkappaB positively regulates CXCL8" 6
                    PERIOD
                    END-OF-SOURCE
("NFkappaB positively regulates CXCL8."
 (:VAR MV5734 :ISA UPREGULATE :AGENT MV5736 :OBJECT MV5735 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5736 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5735 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?"
 (:VAR MV5746 :ISA POLAR-QUESTION :STATEMENT MV5745)
 (:VAR MV5745 :ISA REGULATE :AGENT MV5740 :OBJECT MV5744 :RAW-TEXT "regulate")
 (:VAR MV5740 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5744 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5738 :RAW-TEXT
  "gene")
 (:VAR MV5738 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5748 :ISA SHOW :STATEMENT-OR-THEME MV5756 :BENEFICIARY MV5749 :PRESENT
  "PRESENT")
 (:VAR MV5756 :ISA EVIDENCE :STATEMENT MV5755 :HAS-DETERMINER "THE")
 (:VAR MV5755 :ISA REGULATE :AGENT MV5753 :OBJECT MV5747 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5753 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5747 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5749 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?"
 (:VAR MV5764 :ISA POLAR-QUESTION :STATEMENT MV5763)
 (:VAR MV5763 :ISA REGULATE :AGENT MV5759 :OBJECT MV5762 :RAW-TEXT "regulate")
 (:VAR MV5759 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5762 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5757 :RAW-TEXT
  "gene")
 (:VAR MV5757 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5767 :ISA DECREASE :AGENT MV5766 :AFFECTED-PROCESS-OR-OBJECT MV5769
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5766 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5769 :ISA BIO-AMOUNT :MEASURED-ITEM MV5765 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5765 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5777 :ISA POLAR-QUESTION :STATEMENT MV5776)
 (:VAR MV5776 :ISA REGULATE :AGENT MV5775 :OBJECT MV5774 :RAW-TEXT "regulate")
 (:VAR MV5775 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5774 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
635: "Does TNF regulate the ERK gene?"

                    SOURCE-START
e13   REGULATE      1 "Does TNF regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNF regulate the ERK gene?"
 (:VAR MV5785 :ISA POLAR-QUESTION :STATEMENT MV5784)
 (:VAR MV5784 :ISA REGULATE :AGENT MV5779 :OBJECT MV5783 :RAW-TEXT "regulate")
 (:VAR MV5779 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5783 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5782 :RAW-TEXT
  "gene")
 (:VAR MV5782 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
636: "What are the pathways between TNG and ERK?"

                    SOURCE-START
e14   BE            1 "What are the pathways between TNG and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the pathways between TNG and ERK?"
 (:VAR MV5787 :ISA BE :SUBJECT MV5786 :PREDICATE MV5789 :PRESENT "PRESENT")
 (:VAR MV5786 :ISA WHAT)
 (:VAR MV5789 :ISA PATHWAY :PATHWAYCOMPONENT MV5794 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5794 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5791 MV5793))
 (:VAR MV5791 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5793 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
637: "What are the pathways between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the pathways between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the pathways between TNF and ERK?"
 (:VAR MV5797 :ISA BE :SUBJECT MV5796 :PREDICATE MV5799 :PRESENT "PRESENT")
 (:VAR MV5796 :ISA WHAT)
 (:VAR MV5799 :ISA PATHWAY :PATHWAYCOMPONENT MV5804 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5804 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5801 MV5803))
 (:VAR MV5801 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5803 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
638: "Does NFkappaB regulate ERK?"

                    SOURCE-START
e9    REGULATE      1 "Does NFkappaB regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate ERK?"
 (:VAR MV5812 :ISA POLAR-QUESTION :STATEMENT MV5811)
 (:VAR MV5811 :ISA REGULATE :AGENT MV5807 :OBJECT MV5810 :RAW-TEXT "regulate")
 (:VAR MV5807 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5810 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
639: "Does NFkappaB regulate the ERK gene?"

                    SOURCE-START
e14   REGULATE      1 "Does NFkappaB regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the ERK gene?"
 (:VAR MV5821 :ISA POLAR-QUESTION :STATEMENT MV5820)
 (:VAR MV5820 :ISA REGULATE :AGENT MV5814 :OBJECT MV5819 :RAW-TEXT "regulate")
 (:VAR MV5814 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5819 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5818 :RAW-TEXT
  "gene")
 (:VAR MV5818 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
640: "What pathways exist between NFkappaB and ERK?"

                    SOURCE-START
e14   COPULAR-PREDICATE 1 "What pathways exist between NFkappaB and ERK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways exist between NFkappaB and ERK?"
 (:VAR MV5834 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5823 :VALUE MV5833 :PREP
  "BETWEEN" :PREDICATE MV5824)
 (:VAR MV5823 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5833 :ISA PATHWAY :PATHWAYCOMPONENT MV5830 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "pathways")
 (:VAR MV5830 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5827 MV5829))
 (:VAR MV5827 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5829 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5824 :ISA EXIST :PRESENT "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5840 :ISA AFFECT :MANNER MV5836 :AGENT MV5838 :OBJECT MV5841 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5836 :ISA HOW)
 (:VAR MV5838 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5841 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
642: "MAP3K7 activates IKK"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "MAP3K7 activates IKK" 7
                    END-OF-SOURCE
("MAP3K7 activates IKK"
 (:VAR MV5843 :ISA BIO-ACTIVATE :AGENT MV5842 :OBJECT MV5844 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5842 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5844 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
643: "IKK activates TNF"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "IKK activates TNF" 4
                    END-OF-SOURCE
("IKK activates TNF"
 (:VAR MV5846 :ISA BIO-ACTIVATE :AGENT MV5845 :OBJECT MV5847 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5845 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5847 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5849 :ISA BE :SUBJECT MV5848 :PREDICATE MV5851 :PRESENT "PRESENT")
 (:VAR MV5848 :ISA WHAT)
 (:VAR MV5851 :ISA PATH :ENDPOINTS MV5856 :HAS-DETERMINER "THE")
 (:VAR MV5856 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5853 MV5855))
 (:VAR MV5853 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5855 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
645: "Does TNF regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNF regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNF regulate ERK?" (:VAR MV5863 :ISA POLAR-QUESTION :STATEMENT MV5862)
 (:VAR MV5862 :ISA REGULATE :AGENT MV5859 :OBJECT MV5861 :RAW-TEXT "regulate")
 (:VAR MV5859 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5861 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
646: "How does MAP3K7 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3K7 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3K7 affect CXCL8?"
 (:VAR MV5868 :ISA AFFECT :MANNER MV5866 :AGENT MV5864 :OBJECT MV5865 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5866 :ISA HOW)
 (:VAR MV5864 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5865 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5870 :ISA BIO-ACTIVATE :AGENT MV5869 :OBJECT MV5871 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5869 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5871 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
648: " Active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL8"
 (:VAR MV5875 :ISA DECREASE :AGENT MV5874 :AFFECTED-PROCESS-OR-OBJECT MV5877
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5874 :ISA PROTEIN-FAMILY :PREDICATION MV5873 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5873 :ISA ACTIVE)
 (:VAR MV5877 :ISA BIO-AMOUNT :MEASURED-ITEM MV5872 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5872 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5883 :ISA BE :SUBJECT MV5882 :PREDICATE MV5886 :PRESENT "PRESENT")
 (:VAR MV5882 :ISA WHAT)
 (:VAR MV5886 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5889 :HAS-DETERMINER
  "THE" :PREDICATION MV5885 :RAW-TEXT "upstreams")
 (:VAR MV5889 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5880 MV5881))
 (:VAR MV5880 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5881 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5885 :ISA COMMON))

___________________
650: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5895 :ISA AFFECT :MANNER MV5893 :AGENT MV5891 :OBJECT MV5892 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5893 :ISA HOW)
 (:VAR MV5891 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5892 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?"
 (:VAR MV5901 :ISA POLAR-QUESTION :STATEMENT MV5900)
 (:VAR MV5900 :ISA REGULATE :AGENT MV5896 :OBJECT MV5897 :RAW-TEXT "regulate")
 (:VAR MV5896 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5897 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?"
 (:VAR MV5909 :ISA POLAR-QUESTION :STATEMENT MV5908)
 (:VAR MV5908 :ISA REGULATE :AGENT MV5902 :OBJECT MV5907 :RAW-TEXT "regulate")
 (:VAR MV5902 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5907 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5903 :RAW-TEXT
  "gene")
 (:VAR MV5903 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5914 :ISA AFFECT :MANNER MV5912 :AGENT MV5910 :OBJECT MV5911 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5912 :ISA HOW)
 (:VAR MV5910 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5911 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5917 :ISA BE :SUBJECT MV5916 :PREDICATE MV5919 :PRESENT "PRESENT")
 (:VAR MV5916 :ISA WHAT)
 (:VAR MV5919 :ISA PATH :ENDPOINTS MV5923 :HAS-DETERMINER "THE")
 (:VAR MV5923 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV5921 MV5915))
 (:VAR MV5921 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5915 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?"
 (:VAR MV5934 :ISA POLAR-QUESTION :STATEMENT MV5932)
 (:VAR MV5932 :ISA REGULATE :AGENT MV5927 :AFFECTED-PROCESS MV5930 :RAW-TEXT
  "regulate")
 (:VAR MV5927 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5930 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5925 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5925 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5938 :ISA DECREASE :AGENT MV5937 :AFFECTED-PROCESS MV5940 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5937 :ISA PROTEIN-FAMILY :PREDICATION MV5936 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5936 :ISA ACTIVE)
 (:VAR MV5940 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5935 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5935 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5946 :ISA DECREASE :AGENT MV5945 :AFFECTED-PROCESS-OR-OBJECT MV5948
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5945 :ISA PROTEIN-FAMILY :PREDICATION MV5944 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5944 :ISA ACTIVE)
 (:VAR MV5948 :ISA BIO-AMOUNT :MEASURED-ITEM MV5943 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5943 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5954 :ISA DECREASE :AGENT MV5953 :AFFECTED-PROCESS-OR-OBJECT MV5956
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5953 :ISA PROTEIN-FAMILY :PREDICATION MV5952 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5952 :ISA ACTIVE)
 (:VAR MV5956 :ISA BIO-AMOUNT :MEASURED-ITEM MV5951 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5951 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e16   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV5962 :ISA INHIBIT :AGENT MV5966 :AFFECTED-PROCESS MV5964 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV5966 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5964 :ISA BIO-ACTIVITY :PARTICIPANT MV5959 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV5959 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?"
 (:VAR MV5979 :ISA POLAR-QUESTION :STATEMENT MV5977)
 (:VAR MV5977 :ISA DECREASE :AGENT MV5968 :OBJECT MV5969 :RAW-TEXT "decrease")
 (:VAR MV5968 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5969 :ISA PROTEIN :INFO-CONTEXT MV5976 :HAS-DETERMINER "THE" :RAW-TEXT
  "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5976 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?"
 (:VAR MV5990 :ISA POLAR-QUESTION :STATEMENT MV5988)
 (:VAR MV5988 :ISA DECREASE :AGENT MV5980 :OBJECT MV5981 :RAW-TEXT "decrease")
 (:VAR MV5980 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5981 :ISA PROTEIN :INFO-CONTEXT MV5987 :RAW-TEXT "CXCL10" :UID
  "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5987 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
662: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV5992 :ISA BIO-ACTIVATE :AGENT MV5991 :OBJECT MV5993 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5991 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5993 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB"))

___________________
663: "I want to find out how tofacitinib decreases IL2"

                    SOURCE-START
e22   WANT          1 "I want to find out how tofacitinib decreases IL2" 11
                    END-OF-SOURCE
("I want to find out how tofacitinib decreases IL2"
 (:VAR MV5999 :ISA WANT :AGENT MV5996 :THEME MV6010 :PRESENT "PRESENT")
 (:VAR MV5996 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6010 :ISA FIND-OUT :AGENT MV5996 :STATEMENT MV6007)
 (:VAR MV5996 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6007 :ISA WH-QUESTION :STATEMENT MV6006 :VAR NIL :WH HOW)
 (:VAR MV6006 :ISA DECREASE :AGENT MV6005 :OBJECT MV5995 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6005 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tofacitinib")
 (:VAR MV5995 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6014 :ISA WANT :AGENT MV6011 :THEME MV6033 :PRESENT "PRESENT")
 (:VAR MV6011 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6033 :ISA FIND-OUT :AGENT MV6011 :STATEMENT MV6030)
 (:VAR MV6011 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6030 :ISA WH-QUESTION :STATEMENT MV6021 :VAR NIL :WH HOW)
 (:VAR MV6021 :ISA DECREASE :AGENT MV6020 :OBJECT MV6022 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6020 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6022 :ISA PROTEIN :CELL-TYPE MV6027 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6027 :ISA CELL-TYPE :MODIFIER MV6028)
 (:VAR MV6028 :ISA BIO-ENTITY :NAME "BT20"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6039 :ISA WANT :AGENT MV6036 :THEME MV6053 :PRESENT "PRESENT")
 (:VAR MV6036 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6053 :ISA FIND-OUT :AGENT MV6036 :STATEMENT MV6050)
 (:VAR MV6036 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6050 :ISA WH-QUESTION :STATEMENT MV6045 :VAR NIL :WH HOW)
 (:VAR MV6045 :ISA BIO-ACTIVATE :AGENT MV6034 :OBJECT MV6046 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6034 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV6046 :ISA PROTEIN :CELL-TYPE MV6048 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV6048 :ISA CELL-TYPE :CELL-LINE MV6035)
 (:VAR MV6035 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?"
 (:VAR MV6059 :ISA POLAR-QUESTION :STATEMENT MV6058)
 (:VAR MV6058 :ISA PHOSPHORYLATE :AGENT MV6055 :SUBSTRATE MV6057 :RAW-TEXT
  "phosphorylate")
 (:VAR MV6055 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6057 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
667: "Does STAT3 inhibit the c-fos gene?"

                    SOURCE-START
e15   INHIBIT       1 "Does STAT3 inhibit the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 inhibit the c-fos gene?"
 (:VAR MV6067 :ISA POLAR-QUESTION :STATEMENT MV6066)
 (:VAR MV6066 :ISA INHIBIT :AGENT MV6060 :OBJECT MV6065 :RAW-TEXT "inhibit")
 (:VAR MV6060 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6065 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6061 :RAW-TEXT
  "gene")
 (:VAR MV6061 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?"
 (:VAR MV6075 :ISA POLAR-QUESTION :STATEMENT MV6074)
 (:VAR MV6074 :ISA STIMULATE :AGENT MV6068 :OBJECT MV6073 :RAW-TEXT
  "stimulate")
 (:VAR MV6068 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6073 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6069 :RAW-TEXT
  "gene")
 (:VAR MV6069 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e33   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6079 :ISA WANT :AGENT MV6076 :THEME MV6097 :PRESENT "PRESENT")
 (:VAR MV6076 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6097 :ISA FIND-OUT :AGENT MV6076 :STATEMENT MV6094)
 (:VAR MV6076 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6094 :ISA WH-QUESTION :STATEMENT MV6086 :VAR NIL :WH HOW)
 (:VAR MV6086 :ISA DECREASE :AGENT MV6085 :OBJECT MV6087 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6085 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6087 :ISA PROTEIN :CELL-TYPE MV6091 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6091 :ISA CELL-TYPE :MODIFIER MV6092 :CONTEXT-OR-ASSOCIATED-DISEASE
  MV6090)
 (:VAR MV6092 :ISA BIO-ENTITY :NAME "SKMEL-133") (:VAR MV6090 :ISA MELANOMA))

___________________
670: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6102 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91663>
   (PREDICATE
    (#<transcription-factor 89600> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
671: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6104 :ISA LIST :THEME MV6107 :PRESENT "PRESENT")
 (:VAR MV6107 :ISA GENE :PREDICATION MV6108 :QUANTIFIER MV6105 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6108 :ISA REGULATE :OBJECT MV6107 :AGENT MV6112 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6112 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6103 MV6111))
 (:VAR MV6103 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6111 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6105 :ISA ALL :WORD "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6115 :ISA LIST :THEME MV6119 :PRESENT "PRESENT")
 (:VAR MV6119 :ISA GENE :PREDICATION MV6120 :QUANTIFIER MV6116 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6120 :ISA REGULATE :OBJECT MV6119 :AGENT MV6124 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6124 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6114 MV6123))
 (:VAR MV6114 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6123 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6116 :ISA SOME :WORD "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6130 :ISA SHOW :STATEMENT-OR-THEME MV6133 :BENEFICIARY MV6131 :PRESENT
  "PRESENT")
 (:VAR MV6133 :ISA MUTATION :OBJECT MV6138 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6138 :ISA COLLECTION :CONTEXT MV6129 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6128 MV6136))
 (:VAR MV6129 :ISA CANCER :UID "TS-1223")
 (:VAR MV6128 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6136 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6131 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6144 :ISA BE :SUBJECT MV6143 :PREDICATE MV6146 :PRESENT "PRESENT")
 (:VAR MV6143 :ISA WHAT)
 (:VAR MV6146 :ISA MUTATION :OBJECT MV6151 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6151 :ISA COLLECTION :CONTEXT MV6142 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6141 MV6149))
 (:VAR MV6142 :ISA CANCER :UID "TS-1223")
 (:VAR MV6141 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6149 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:VAR MV6158 :ISA BE :SUBJECT MV6157 :PREDICATE MV6165 :PRESENT "PRESENT")
 (:VAR MV6157 :ISA WHAT)
 (:VAR MV6165 :ISA GENE :DISEASE MV6156 :HAS-DETERMINER "THE" :PREDICATION
  MV6154 :RAW-TEXT "genes")
 (:VAR MV6156 :ISA CANCER :UID "TS-0591")
 (:VAR MV6154 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6155)
 (:VAR MV6155 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV6170 :ISA BE :SUBJECT MV6169 :PREDICATE MV6177 :PRESENT "PRESENT")
 (:VAR MV6169 :ISA WHAT)
 (:VAR MV6177 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6166 :RAW-TEXT
  "genes")
 (:VAR MV6166 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6167)
 (:VAR MV6167 :ISA PROTEIN :CONTEXT MV6168 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6168 :ISA CANCER :UID "TS-0591"))

___________________
677: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6179 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6178
  :AFFECTED-PROCESS-OR-OBJECT MV6180 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6178 :ISA WHAT) (:VAR MV6180 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6184 :ISA HAVE :POSSESSOR MV6183 :THING-POSSESSED MV6186 :PRESENT
  "PRESENT")
 (:VAR MV6183 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6186 :ISA EVIDENCE :FACT MV6189 :PREDICATION MV6185)
 (:VAR MV6189 :ISA REGULATE :AGENT MV6181 :PROGRESSIVE MV6188 :RAW-TEXT
  "regulated")
 (:VAR MV6181 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p"
  :UID "MIMAT0000421")
 (:VAR MV6188 :ISA BE) (:VAR MV6185 :ISA STRONG))

___________________
679: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6195 :ISA INCREASE :AGENT-OR-CAUSE MV6193 :AFFECTED-PROCESS-OR-OBJECT
  MV6197 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6193 :ISA WHAT)
 (:VAR MV6197 :ISA BIO-AMOUNT :MEASURED-ITEM MV6199 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6199 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6203 :ISA INHIBIT :AGENT-OR-CAUSE MV6202 :OBJECT MV6201 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6202 :ISA WHAT)
 (:VAR MV6201 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6207 :ISA BE :SUBJECT MV6206 :PREDICATE MV6219 :PRESENT "PRESENT")
 (:VAR MV6206 :ISA WHAT)
 (:VAR MV6219 :ISA QUALITY-PREDICATE :ITEM MV6217 :ATTRIBUTE MV6213)
 (:VAR MV6217 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6204 MV6215 MV6205))
 (:VAR MV6204 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6215 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6205 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6213 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6211
  :MODIFIER MV6212)
 (:VAR MV6211 :ISA LIKELY :COMPARATIVE MV6209)
 (:VAR MV6209 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6212 :ISA CELLULAR :NAME "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6222 :ISA BE :SUBJECT MV6221 :PREDICATE MV6231 :PRESENT "PRESENT")
 (:VAR MV6221 :ISA WHAT)
 (:VAR MV6231 :ISA QUALITY-PREDICATE :ITEM MV6220 :ATTRIBUTE MV6228)
 (:VAR MV6220 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6228 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6226
  :MODIFIER MV6227)
 (:VAR MV6226 :ISA LIKELY :COMPARATIVE MV6224)
 (:VAR MV6224 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6227 :ISA CELLULAR :NAME "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6235 :ISA BE :SUBJECT MV6234 :PREDICATE MV6238 :PRESENT "PRESENT")
 (:VAR MV6234 :ISA WHAT)
 (:VAR MV6238 :ISA SIGNIFICANCE :AGENT MV6232 :HAS-DETERMINER "THE" :MODIFIER
  MV6237)
 (:VAR MV6232 :ISA PROTEIN :CONTEXT MV6233 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6233 :ISA CANCER :UID "TS-0571")
 (:VAR MV6237 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6250 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6246 :AGENT MV6243
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6246 :ISA THOSE :QUANTIFIER MV6244 :WORD "those")
 (:VAR MV6244 :ISA WHICH)
 (:VAR MV6243 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those genes are in the MAPK signaling pathway?"
 (:VAR MV6266 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6257 :VALUE MV6265 :PREP
  "IN" :PREDICATE MV6258)
 (:VAR MV6257 :ISA GENE :QUANTIFIER MV6254 :HAS-DETERMINER "THOSE" :RAW-TEXT
  "genes")
 (:VAR MV6254 :ISA WHICH)
 (:VAR MV6265 :ISA GENE :CONTEXT MV6253 :QUANTIFIER MV6254 :HAS-DETERMINER
  "THOSE" :RAW-TEXT "genes")
 (:VAR MV6253 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6261
  :RAW-TEXT "signaling pathway")
 (:VAR MV6261 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6254 :ISA WHICH) (:VAR MV6258 :ISA BE :PRESENT "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in the il-12 pathway?"
 (:VAR MV6277 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6271 :VALUE MV6275 :PREP
  "IN" :PREDICATE MV6272)
 (:VAR MV6271 :ISA THESE :QUANTIFIER MV6269 :WORD "these")
 (:VAR MV6269 :ISA WHICH)
 (:VAR MV6275 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6268 :RAW-TEXT
  "pathway")
 (:VAR MV6268 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV6272 :ISA BE :PRESENT "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are expressed in liver?"
 (:VAR MV6286 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6281 :ORGAN MV6285
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV6281 :ISA PRONOUN/PLURAL :QUANTIFIER MV6279 :WORD "them")
 (:VAR MV6279 :ISA WHICH) (:VAR MV6285 :ISA LIVER))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    SOURCE-START
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:VAR MV6301 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6293 :AGENT MV6300
  :PRESENT "PRESENT" :SUPERLATIVE MV6295 :ADVERB MV6296 :RAW-TEXT "regulated")
 (:VAR MV6293 :ISA PRONOUN/PLURAL :QUANTIFIER MV6291 :WORD "them")
 (:VAR MV6291 :ISA WHICH)
 (:VAR MV6300 :ISA COLLECTION :RAW-TEXT "miR-335-5p and miR-155-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV6289 MV6290))
 (:VAR MV6289 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV6290 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV6295 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6296 :ISA FREQUENTLY :NAME "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    SOURCE-START
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors target SMURF2?"
 (:VAR MV6308 :ISA TARGET :AGENT MV6304 :OBJECT MV6305 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6304 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6305 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    SOURCE-START
e11   PROTEIN       1 "Which of those target frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those target frizzled8?"
 (:VAR MV6309 :ISA PROTEIN :QUANTIFIER MV6310 :HAS-DETERMINER "THOSE" :MODIFIER
  MV6313 :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV6310 :ISA WHICH) (:VAR MV6313 :ISA TARGET-PROTEIN :RAW-TEXT "target"))

___________________
691: "What is Selumetinib?"

                    SOURCE-START
e4    BE            1 "What is Selumetinib" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is Selumetinib?"
 (:VAR MV6317 :ISA BE :SUBJECT MV6316 :PREDICATE MV6318 :PRESENT "PRESENT")
 (:VAR MV6316 :ISA WHAT)
 (:VAR MV6318 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
692: "What is MAPK3?"

                    SOURCE-START
e5    BE            1 "What is MAPK3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAPK3?"
 (:VAR MV6321 :ISA BE :SUBJECT MV6320 :PREDICATE MV6319 :PRESENT "PRESENT")
 (:VAR MV6320 :ISA WHAT)
 (:VAR MV6319 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
693: "What does it do?"

                    SOURCE-START
e0    WHAT          1 "What " 2
e1    DO            2 "does " 3
e5    DO            3 "it do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e0    WH-PRONOUN    1 "What " 2
e1    VG            2 "does " 3
e5    S             3 "it do" 5
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
694: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?"
 (:VAR MV6334 :ISA THERE-EXISTS :VALUE MV6332 :PREDICATE MV6329)
 (:VAR MV6332 :ISA INHIBITOR :PROTEIN MV6327 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV6327 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV6329 :ISA SYNTACTIC-THERE))

___________________
695: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6337 :ISA NAME-SOMETHING :PATIENT MV6341 :PRESENT "PRESENT")
 (:VAR MV6341 :ISA DRUG :PREDICATION MV6343 :QUANTIFIER MV6340 :RAW-TEXT
  "drugs")
 (:VAR MV6343 :ISA INHIBIT :AGENT MV6341 :THAT-REL T :OBJECT MV6336 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6336 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6340 :ISA SOME :WORD "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?"
 (:VAR MV6354 :ISA THERE-EXISTS :VALUE MV6352 :PREDICATE MV6346)
 (:VAR MV6352 :ISA INHIBITOR :QUANTIFIER MV6348 :PROTEIN MV6353 :RAW-TEXT
  "inhibitors")
 (:VAR MV6348 :ISA ANY :WORD "any")
 (:VAR MV6353 :ISA PROTEIN :RAW-TEXT "Map2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6346 :ISA SYNTACTIC-THERE))

___________________
697: "Are there targets of Selumetinib?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6362 :ISA THERE-EXISTS :VALUE MV6358 :PREDICATE MV6356)
 (:VAR MV6358 :ISA TARGET-PROTEIN :AGENT MV6361 :RAW-TEXT "targets")
 (:VAR MV6361 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6356 :ISA SYNTACTIC-THERE))

___________________
698: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6367 :ISA INHIBIT :OBJECT MV6364 :AGENT MV6366 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV6364 :ISA WHAT)
 (:VAR MV6366 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
699: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6372 :ISA TARGET :OBJECT MV6368 :AGENT MV6370 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6368 :ISA WHAT)
 (:VAR MV6370 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
700: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?"
 (:VAR MV6379 :ISA POLAR-QUESTION :STATEMENT MV6378)
 (:VAR MV6378 :ISA TARGET :AGENT MV6374 :OBJECT MV6377 :RAW-TEXT "target")
 (:VAR MV6374 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6377 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV6382 :ISA BE :SUBJECT MV6381 :PREDICATE MV6384 :PRESENT "PRESENT")
 (:VAR MV6381 :ISA WHAT)
 (:VAR MV6384 :ISA TARGET-PROTEIN :QUANTIFIER MV6383 :TREATMENT MV6387
  :RAW-TEXT "targets")
 (:VAR MV6383 :ISA SOME :WORD "some")
 (:VAR MV6387 :ISA TREATMENT :DISEASE MV6380 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6380 :ISA CANCER :UID "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6391 :ISA BE :SUBJECT MV6390 :PREDICATE MV6393 :PRESENT "PRESENT")
 (:VAR MV6390 :ISA WHAT)
 (:VAR MV6393 :ISA TARGET-PROTEIN :QUANTIFIER MV6392 :DISEASE MV6389 :RAW-TEXT
  "targets")
 (:VAR MV6392 :ISA SOME :WORD "some") (:VAR MV6389 :ISA CANCER :UID "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6402 :ISA LEAD :AGENT MV6399 :THEME MV6405 :MODAL MV6401 :RAW-TEXT
  "lead")
 (:VAR MV6399 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6405 :ISA DEVELOPMENT :DISEASE MV6397 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6397 :ISA CANCER :UID "TS-0739") (:VAR MV6401 :ISA COULD))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6413 :ISA LEAD :AGENT MV6411 :THEME MV6416 :MODAL MV6412 :RAW-TEXT
  "lead")
 (:VAR MV6411 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6416 :ISA DEVELOPMENT :DISEASE MV6409 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6409 :ISA CANCER :UID "TS-0739") (:VAR MV6412 :ISA COULD))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6425 :ISA LEAD :AGENT MV6423 :THEME MV6420 :MODAL MV6424 :RAW-TEXT
  "lead")
 (:VAR MV6423 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6422 :RAW-TEXT
  "genes")
 (:VAR MV6422 :ISA MUTATION :OBJECT MV6423 :RAW-TEXT "mutated")
 (:VAR MV6420 :ISA CANCER :UID "TS-0739") (:VAR MV6424 :ISA COULD))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e24   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6430 :ISA BE :SUBJECT MV6429 :PREDICATE MV6435 :PRESENT "PRESENT")
 (:VAR MV6429 :ISA WHAT)
 (:VAR MV6435 :ISA MUTATION :AGENT MV6434 :OBJECT MV6432 :PREDICATION MV6437
  :HAS-DETERMINER "THE" :AGENT-OR-OBJECT MV6432 :AGENT-OR-OBJECT MV6434
  :RAW-TEXT "mutation")
 (:VAR MV6434 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6432 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6437 :ISA LEAD :AGENT MV6435 :THAT-REL T :THEME MV6428 :PRESENT
  "PRESENT" :RAW-TEXT "leads")
 (:VAR MV6428 :ISA CANCER :UID "TS-0739")
 (:VAR MV6432 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6434 :ISA GENE :RAW-TEXT "gene"))

___________________
707: "I would like to find a treatement for pancreatic cancer."

                    SOURCE-START
e22   LIKE          1 "I would like " 4
e21   FIND-OUT      4 "to find " 6
e19   TREATEMENT    6 "a treatement " 8
e20   FOR           8 "for pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e22   S             1 "I would like " 4
e21   INFINITIVE    4 "to find " 6
e19   NP            6 "a treatement " 8
e20   PP            8 "for pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE


___________________
708: "What drug could I use to treat pancreatic cancer?"

                    SOURCE-START
e19   BIO-USE       1 "What drug could I use to treat pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to treat pancreatic cancer?"
 (:VAR MV6467 :ISA BIO-USE :PATIENT MV6457 :MODAL MV6458 :AGENT MV6459 :THEME
  MV6466 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV6457 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV6458 :ISA COULD) (:VAR MV6459 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6466 :ISA TREATMENT :DISEASE MV6455 :RAW-TEXT "treat")
 (:VAR MV6455 :ISA CANCER :UID "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV6470 :ISA BE :SUBJECT MV6469 :PREDICATE MV6472 :PRESENT "PRESENT")
 (:VAR MV6469 :ISA WHAT)
 (:VAR MV6472 :ISA DRUG :TREATMENT MV6474 :QUANTIFIER MV6471 :RAW-TEXT "drugs")
 (:VAR MV6474 :ISA TREATMENT :DISEASE MV6468 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6468 :ISA CANCER :UID "TS-0739") (:VAR MV6471 :ISA SOME :WORD "some"))

___________________
710: "I'd like to find a treatement for pancreatic cancer."

                    SOURCE-START
e24   LIKE          1 "I'd like " 5
e23   FIND-OUT      5 "to find " 7
e21   TREATEMENT    7 "a treatement " 9
e22   FOR           9 "for pancreatic cancer" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e24   S             1 "I'd like " 5
e23   INFINITIVE    5 "to find " 7
e21   NP            7 "a treatement " 9
e22   PP            9 "for pancreatic cancer" 12
                    PERIOD
                    END-OF-SOURCE


___________________
711: "How can i treat pancreatic cancer?"

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
712: "Does MEK act on ERK?"

                    SOURCE-START
e11   BIO-ACT       1 "Does MEK act on ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK act on ERK?" (:VAR MV6503 :ISA POLAR-QUESTION :STATEMENT MV6501)
 (:VAR MV6501 :ISA BIO-ACT :AGENT MV6497 :ACTED-ON MV6500 :RAW-TEXT "act")
 (:VAR MV6497 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6500 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
713: "Let's build a model"

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    END-OF-SOURCE
("Let's build a model"
 (:VAR MV6508 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6505 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6505 :ISA BUILD :ARTIFACT MV6507 :PRESENT "PRESENT")
 (:VAR MV6507 :ISA MODEL :HAS-DETERMINER "A"))

___________________
714: "Mek activates MAPK3"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    END-OF-SOURCE
("Mek activates MAPK3"
 (:VAR MV6511 :ISA BIO-ACTIVATE :AGENT MV6510 :OBJECT MV6509 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6510 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6509 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6513 :ISA BIO-ACTIVATE :AGENT MV6512 :OBJECT MV6514 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6512 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6514 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
716: "Remove the fact that hras activates ras"

                    SOURCE-START
e14   REMOVE        1 "Remove the fact that hras activates ras" 8
                    END-OF-SOURCE
("Remove the fact that hras activates ras"
 (:VAR MV6515 :ISA REMOVE :OBJECT MV6522 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6522 :ISA FACT :STATEMENT MV6520 :HAS-DETERMINER "THE")
 (:VAR MV6520 :ISA BIO-ACTIVATE :AGENT MV6519 :OBJECT MV6521 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6519 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6521 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663"))

___________________
717: "Can you tell me what is in the model?"

                    SOURCE-START
e22   TELL          1 "Can you tell me what is in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what is in the model?"
 (:VAR MV6534 :ISA POLAR-QUESTION :STATEMENT MV6525)
 (:VAR MV6525 :ISA TELL :AGENT MV6524 :THEME MV6533 :THEME MV6526 :MODAL "CAN")
 (:VAR MV6524 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6533 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6527 :VALUE MV6531 :PREP
  "IN" :PREDICATE MV6528)
 (:VAR MV6527 :ISA WHAT) (:VAR MV6531 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6528 :ISA BE :MODAL "CAN")
 (:VAR MV6526 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
718: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model."
 (:VAR MV6538 :ISA SUMMARIZE :STATEMENT MV6537 :PRESENT "PRESENT")
 (:VAR MV6537 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
719: "Summarize the current model."

                    SOURCE-START
e7    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model."
 (:VAR MV6543 :ISA SUMMARIZE :STATEMENT MV6542 :PRESENT "PRESENT")
 (:VAR MV6542 :ISA MODEL :HAS-DETERMINER "THE" :PREDICATION MV6541)
 (:VAR MV6541 :ISA CURRENT))

___________________
720: "What phosphorylates BRAF?"

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
721: "Vemurafenib binds BRAF."

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
722: "Phosphorylated MAP2K1 is activated."

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
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

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
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

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
725: "Phosphorylated ERK2 is activated."

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
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

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
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

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
728: "Phosphorylated MAPK1 is active."

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
729: "PDK1 phosphorylates AKT1."

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
730: "Let's move phosphorylated AKT1 to the top"

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
731: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6639 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6631 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6631 :ISA MOVE-SOMETHING-SOMEWHERE :THEME MV6638 :PRESENT "PRESENT")
 (:VAR MV6638 :ISA PROTEIN :PREDICATION MV6637 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6637 :ISA PHOSPHORYLATE :SUBSTRATE MV6634 :SUBSTRATE MV6638 :RAW-TEXT
  "phosphorylated")
 (:VAR MV6634 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP"))

___________________
732: "show AKT1 on top"

                    SOURCE-START
e9    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV6641 :ISA SHOW :AT-RELATIVE-LOCATION MV6643 :STATEMENT-OR-THEME MV6640
  :PRESENT "PRESENT")
 (:VAR MV6643 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6640 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6653 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6648 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6648 :ISA HIGHLIGHT :THEME MV6649 :PRESENT "PRESENT")
 (:VAR MV6649 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6647 :RAW-TEXT
  "upstream")
 (:VAR MV6647 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6663 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6655 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6655 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6660 :THEME MV6657 :PRESENT
  "PRESENT")
 (:VAR MV6660 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6657 :ISA ELEMENT :MODIFIER MV6656)
 (:VAR MV6656 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV6666 :ISA BE :SUBJECT MV6665 :PREDICATE MV6669 :PRESENT "PRESENT")
 (:VAR MV6665 :ISA WHAT)
 (:VAR MV6669 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV6673 :HAS-DETERMINER
  "THE" :PREDICATION MV6668 :RAW-TEXT "downstreams")
 (:VAR MV6673 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6664 MV6672))
 (:VAR MV6664 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6672 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6668 :ISA COMMON))

___________________
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6685 :ISA THERE-EXISTS :VALUE MV6681 :PREDICATE MV6678)
 (:VAR MV6681 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6686 :PREDICATION
  MV6680 :RAW-TEXT "upstreams")
 (:VAR MV6686 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6675 MV6683 MV6676))
 (:VAR MV6675 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6683 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6676 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6680 :ISA COMMON) (:VAR MV6678 :ISA SYNTACTIC-THERE))

___________________
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6692 :ISA BE :SUBJECT MV6691 :PREDICATE MV6697 :PRESENT "PRESENT")
 (:VAR MV6691 :ISA WHAT)
 (:VAR MV6697 :ISA REGULATOR :THEME MV6700 :HAS-DETERMINER "THE" :PREDICATION
  MV6694 :CONTEXT MV6695 :RAW-TEXT "regulators")
 (:VAR MV6700 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6688 MV6689 MV6690))
 (:VAR MV6688 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6689 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6690 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6694 :ISA COMMON)
 (:VAR MV6695 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6705 :ISA BE :SUBJECT MV6704 :PREDICATE MV6709 :PRESENT "PRESENT")
 (:VAR MV6704 :ISA WHAT)
 (:VAR MV6709 :ISA REGULATOR :THEME MV6712 :PREDICATION MV6706 :CONTEXT MV6707
  :RAW-TEXT "regulators")
 (:VAR MV6712 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6702 MV6703))
 (:VAR MV6702 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6703 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6706 :ISA COMMON)
 (:VAR MV6707 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6719 :ISA BE :SUBJECT MV6718 :PREDICATE MV6714 :PRESENT "PRESENT")
 (:VAR MV6718 :ISA WHAT)
 (:VAR MV6714 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6725 :PREDICATION MV6720
  :CONTEXT MV6721 :RAW-TEXT "transcriptional regulators" :NAME
  "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV6725 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6715 MV6716 MV6717))
 (:VAR MV6715 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6716 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6717 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6720 :ISA COMMON)
 (:VAR MV6721 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6730 :ISA BE :SUBJECT MV6729 :PREDICATE MV6732 :PRESENT "PRESENT")
 (:VAR MV6729 :ISA WHAT)
 (:VAR MV6732 :ISA MUTATION :OBJECT MV6738 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6738 :ISA COLLECTION :CONTEXT MV6728 :RAW-TEXT "PTEN, TP53 and BRAF"
  :TYPE PROTEIN :NUMBER 3 :ITEMS (MV6734 MV6727 MV6736))
 (:VAR MV6728 :ISA CANCER :UID "TS-1223")
 (:VAR MV6734 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6727 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6736 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6744 :ISA BE :SUBJECT MV6743 :PREDICATE MV6747 :PRESENT "PRESENT")
 (:VAR MV6743 :ISA WHAT)
 (:VAR MV6747 :ISA FREQUENCY :MEASURED-ITEM MV6741 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV6746 :RAW-TEXT "frequency")
 (:VAR MV6741 :ISA PROTEIN :CONTEXT MV6742 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6742 :ISA CANCER :UID "TS-1223")
 (:VAR MV6746 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV6762 :ISA COPULAR-PREDICATION :ITEM MV6756 :VALUE MV6752 :PREDICATE
  MV6757)
 (:VAR MV6756 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6752 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6754 :ALTERNATIVE MV6753)
 (:VAR MV6754 :ISA CANCER :UID "TS-0591")
 (:VAR MV6753 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV6757 :ISA BE :PRESENT "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6773 :ISA COPULAR-PREDICATION :ITEM MV6767 :VALUE MV6763 :PREDICATE
  MV6768)
 (:VAR MV6767 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6763 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6764)
 (:VAR MV6764 :ISA PROTEIN :CONTEXT MV6765 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6765 :ISA CANCER :UID "TS-0591")
 (:VAR MV6768 :ISA BE :PRESENT "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6776 :ISA BE :SUBJECT MV6775 :PREDICATE MV6782 :PRESENT "PRESENT")
 (:VAR MV6775 :ISA WHAT)
 (:VAR MV6782 :ISA QUALITY-PREDICATE :ITEM MV6774 :ATTRIBUTE MV6779)
 (:VAR MV6774 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6779 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6778)
 (:VAR MV6778 :ISA CELLULAR :NAME "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6786 :ISA REGULATE :MANNER MV6783 :AGENT MV6785 :OBJECT MV6787
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6783 :ISA HOW)
 (:VAR MV6785 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6787 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?"
 (:VAR MV6789 :ISA BE :SUBJECT MV6788 :PREDICATE MV6790 :PRESENT "PRESENT")
 (:VAR MV6788 :ISA WHAT)
 (:VAR MV6790 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6802 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92640>
   (PREDICATE
    (#<member 92639>
     (SET
      (#<protein-family Raf 88120> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (RAW-TEXT "RAF") (NAME "Raf")
       (FAMILY-MEMBERS
        (#<collection #<"RAF1_HUMAN" 11803> #<"BRAF_HUMAN" 15113> #<"ARAF_HUMAN" 14053> 81690>
         (TYPE #<ref-category PROTEIN>)
         (ITEMS
          (COLLECTION
           (:MEMBERS
            ((#<protein "RAF1_HUMAN" 11803> (UID "UP:P04049")
              (NAME "RAF1_HUMAN"))
             (#<protein "BRAF_HUMAN" 15113> (UID "UP:P15056")
              (NAME "BRAF_HUMAN"))
             (#<protein "ARAF_HUMAN" 14053> (UID "UP:P10398")
              (NAME "ARAF_HUMAN"))))))
         (NUMBER 3)))
       (UID "FA:03114")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))))))))

___________________
748: "What genes are in RAS?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "What genes are in RAS" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in RAS?"
 (:VAR MV6809 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6804 :VALUE MV6807 :PREP
  "IN" :PREDICATE MV6805)
 (:VAR MV6804 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6807 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6805 :ISA BE :PRESENT "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6820 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6811 :VALUE MV6818 :PREP
  "IN" :PREDICATE MV6812)
 (:VAR MV6811 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6818 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6812 :ISA BE :PRESENT "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6822 :ISA BE :SUBJECT MV6821 :PREDICATE MV6826 :PRESENT "PRESENT")
 (:VAR MV6821 :ISA WHAT)
 (:VAR MV6826 :ISA HAS-NAME :QUANTIFIER MV6823 :QUANTIFIER MV6824 :ITEM MV6829)
 (:VAR MV6823 :ISA SOME :WORD "some") (:VAR MV6824 :ISA OTHER :WORD "other")
 (:VAR MV6829 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
751: "What are synonyms for ERK?"

                    SOURCE-START
e8    BE            1 "What are synonyms " 4
e6    FOR           4 "for ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e8    S             1 "What are synonyms " 4
e6    PP            4 "for ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
752: "What transcription factors are shared by CXCL8, CXCL10, and IL2?"

                    SOURCE-START
e21   SHARE         1 "What transcription factors are shared by CXCL8, CXCL10, and IL2" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
 (:VAR MV6847 :ISA SHARE :OBJECT MV6837 :PARTICIPANT MV6846 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6837 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6846 :ISA COLLECTION :RAW-TEXT "CXCL8, CXCL10, and IL2" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6838 MV6839 MV6840))
 (:VAR MV6838 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV6839 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV6840 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
753: "What are the paths between BRAF and AKT1?"

                    SOURCE-START
e15   BE            1 "What are the paths between BRAF and AKT1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between BRAF and AKT1?"
 (:VAR MV6851 :ISA BE :SUBJECT MV6850 :PREDICATE MV6853 :PRESENT "PRESENT")
 (:VAR MV6850 :ISA WHAT)
 (:VAR MV6853 :ISA PATH :ENDPOINTS MV6857 :HAS-DETERMINER "THE")
 (:VAR MV6857 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6855 MV6849))
 (:VAR MV6855 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6849 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
754: "Is SMAD2 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is SMAD2 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is SMAD2 a transcription factor?"
 (:VAR MV6863 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91663>
   (PREDICATE
    (#<transcription-factor 89600> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
755: "Remove the fact that active MEK activates ERK from the model."

                    SOURCE-START
e22   REMOVE        1 "Remove the fact that active MEK activates ERK " 9
e17   FROM          9 "from the model" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e22   VP            1 "Remove the fact that active MEK activates ERK " 9
e17   PP            9 "from the model" 12
                    PERIOD
                    END-OF-SOURCE


___________________
756: "Active MEK activates ERK"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "Active MEK activates ERK" 5
                    END-OF-SOURCE
("Active MEK activates ERK"
 (:VAR MV6879 :ISA BIO-ACTIVATE :AGENT MV6878 :OBJECT MV6880 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6878 :ISA PROTEIN-FAMILY :PREDICATION MV6877 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6877 :ISA ACTIVE)
 (:VAR MV6880 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
757: "What is in the model?"

                    SOURCE-START
e10   COPULAR-PREDICATION 1 "What is in the model" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is in the model?"
 (:VAR MV6887 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6881 :VALUE MV6885 :PREP
  "IN" :PREDICATE MV6882)
 (:VAR MV6881 :ISA WHAT) (:VAR MV6885 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6882 :ISA BE :PRESENT "PRESENT"))

___________________
758: "Is the amount of phosphorylated ERK ever high?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Is the amount of phosphorylated ERK ever high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high?"
 (:VAR MV6898 :ISA POLAR-QUESTION :STATEMENT MV6897)
 (:VAR MV6897 :ISA COPULAR-PREDICATION :ITEM MV6890 :VALUE MV6895 :PREDICATE
  MV6888)
 (:VAR MV6890 :ISA BIO-AMOUNT :MEASURED-ITEM MV6893 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6893 :ISA PROTEIN-FAMILY :PREDICATION MV6892 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6892 :ISA PHOSPHORYLATE :SUBSTRATE MV6893 :RAW-TEXT "phosphorylated")
 (:VAR MV6895 :ISA HIGH :ADVERB MV6894) (:VAR MV6894 :ISA EVER :NAME "ever")
 (:VAR MV6888 :ISA BE))

___________________
759: "What genes are mutually exclusive with PTEN for prostate cancer?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with PTEN for prostate cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with PTEN for prostate cancer?"
 (:VAR MV6909 :ISA COPULAR-PREDICATION :ITEM MV6902 :VALUE MV6899 :PREDICATE
  MV6903)
 (:VAR MV6902 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6899 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6900 :ALTERNATIVE MV6905)
 (:VAR MV6900 :ISA CANCER :UID "TS-1224")
 (:VAR MV6905 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6903 :ISA BE :PRESENT "PRESENT"))

___________________
760: "What signaling pathways are shared by SMAD2 and CXCL8?"

                    SOURCE-START
e17   SHARE         1 "What signaling pathways are shared by SMAD2 and CXCL8" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by SMAD2 and CXCL8?"
 (:VAR MV6919 :ISA SHARE :OBJECT MV6910 :PARTICIPANT MV6918 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6910 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV6918 :ISA COLLECTION :RAW-TEXT "SMAD2 and CXCL8" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6911 MV6912))
 (:VAR MV6911 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6912 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
761: "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
 (:VAR MV6928 :ISA REGULATE :AGENT MV6925 :OBJECT MV6930 :PRESENT "PRESENT"
  :ADVERB MV6926 :ADVERB MV6927 :RAW-TEXT "regulate")
 (:VAR MV6925 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV6930 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6921 MV6922 MV6923))
 (:VAR MV6921 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6922 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6923 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6926 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6927 :ISA FREQUENTLY :NAME "frequently"))

___________________
762: "What is the most likely cellular location of PTEN?"

                    SOURCE-START
e19   BE            1 "What is the most likely cellular location of PTEN" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of PTEN?"
 (:VAR MV6932 :ISA BE :SUBJECT MV6931 :PREDICATE MV6942 :PRESENT "PRESENT")
 (:VAR MV6931 :ISA WHAT)
 (:VAR MV6942 :ISA QUALITY-PREDICATE :ITEM MV6940 :ATTRIBUTE MV6938)
 (:VAR MV6940 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6938 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6936
  :MODIFIER MV6937)
 (:VAR MV6936 :ISA LIKELY :COMPARATIVE MV6934)
 (:VAR MV6934 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6937 :ISA CELLULAR :NAME "cellular"))

___________________
763: "Is BRAF a kinase?"

                    SOURCE-START
e8    BE            1 "Is BRAF a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase?"
 (:VAR MV6947 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89589>
   (PREDICATE
    (#<kinase 89588> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
764: "Can you tell me whether BRAF is a kinase?"

                    SOURCE-START
e22   TELL          1 "Can you tell me whether BRAF is a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me whether BRAF is a kinase?"
 (:VAR MV6959 :ISA POLAR-QUESTION :STATEMENT MV6950)
 (:VAR MV6950 :ISA TELL :AGENT MV6949 :THEME MV6958 :THEME MV6951 :MODAL "CAN")
 (:VAR MV6949 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6958 :ISA WH-QUESTION :STATEMENT MV6955 :WH WHETHER)
 (:VAR MV6955 :ISA BE :SUBJECT MV6954 :PREDICATE MV6957 :MODAL "CAN")
 (:VAR MV6954 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6957 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6951 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
765: "I want to know if BRAF is a kinase."

                    SOURCE-START
e21   WANT          1 "I want to know if BRAF is a kinase" 10
                    PERIOD
                    END-OF-SOURCE
("I want to know if BRAF is a kinase."
 (:VAR MV6963 :ISA WANT :AGENT MV6960 :THEME MV6973 :PRESENT "PRESENT")
 (:VAR MV6960 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6973 :ISA KNOW :AGENT MV6960 :STATEMENT MV6972)
 (:VAR MV6960 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6972 :ISA WH-QUESTION :STATEMENT MV6968 :WH IF)
 (:VAR MV6968 :ISA BE :SUBJECT MV6967 :PREDICATE MV6970 :PRESENT "PRESENT")
 (:VAR MV6967 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6970 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
766: "What does BRAF do?"

                    SOURCE-START
e0    WHAT          1 "What " 2
e1    DO            2 "does " 3
e2    PROTEIN       3 "BRAF " 4
e3    DO            4 "do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e0    WH-PRONOUN    1 "What " 2
e1    VG            2 "does " 3
e2    PROPER-NOUN   3 "BRAF " 4
e3    VG            4 "do" 5
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
767: "What type of protein is BRAF?"

                    SOURCE-START
e11   BE            1 "What type of protein is BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What type of protein is BRAF?"
 (:VAR MV6982 :ISA BE :SUBJECT MV6979 :PREDICATE MV6983 :PRESENT "PRESENT")
 (:VAR MV6979 :ISA TYPE :MOLECULE-TYPE MV6981 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "type")
 (:VAR MV6981 :ISA PROTEIN :RAW-TEXT "protein")
 (:VAR MV6983 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
768: "What is the activity of the BRAF protein?"

                    SOURCE-START
e17   BE            1 "What is the activity of the BRAF protein" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the activity of the BRAF protein?"
 (:VAR MV6986 :ISA BE :SUBJECT MV6985 :PREDICATE MV6988 :PRESENT "PRESENT")
 (:VAR MV6985 :ISA WHAT)
 (:VAR MV6988 :ISA BIO-ACTIVITY :PARTICIPANT MV6993 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV6993 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "BRAF" :UID
  "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
769: "Is BRAF a kinase or a transcription factor?"

                    SOURCE-START
e15   BE            1 "Is BRAF a kinase or a transcription factor" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase or a transcription factor?"
 (:VAR MV7003 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92779>
   (PREDICATE
    (#<collection #<kinase 89588> #<transcription-factor 89600> 92778>
     (RAW-TEXT "a kinase or a transcription factor")
     (TYPE #<ref-category KINASE>) (NUMBER 2)
     (ITEMS
      (COLLECTION
       (:MEMBERS
        ((#<kinase 89588> (HAS-DETERMINER (#<a 110> (WORD "a")))
          (RAW-TEXT "kinase"))
         (#<transcription-factor 89600> (HAS-DETERMINER (#<a 110>))
          (RAW-TEXT "transcription factor")))))))))))

___________________
770: "What proteins are targeted by NG25?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by NG25?"
 (:VAR MV7010 :ISA TARGET :OBJECT MV7006 :AGENT MV7004 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV7006 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV7004 :ISA BIO-ENTITY :NAME "NG25"))

___________________
771: "Name transcription factors shared by FN1, MMP3, and SERPINE1."

                    SOURCE-START
e20   NAME-SOMETHING  1 "Name transcription factors shared by FN1, MMP3, and SERPINE1" 15
                    PERIOD
                    END-OF-SOURCE
("Name transcription factors shared by FN1, MMP3, and SERPINE1."
 (:VAR MV7016 :ISA NAME-SOMETHING :PATIENT MV7012 :PRESENT "PRESENT")
 (:VAR MV7012 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7019 :RAW-TEXT
  "transcription factors")
 (:VAR MV7019 :ISA SHARE :OBJECT MV7012 :PARTICIPANT MV7022 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7022 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV7013 MV7014 MV7015))
 (:VAR MV7013 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV7014 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV7015 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN"))

___________________
772: "Tell me if STAT3 is a transcription factor"

                    SOURCE-START
e15   TELL          1 "Tell me if STAT3 is a transcription factor" 10
                    END-OF-SOURCE
("Tell me if STAT3 is a transcription factor"
 (:VAR MV7026 :ISA TELL :THEME MV7031 :BENEFICIARY MV7027 :PRESENT "PRESENT")
 (:VAR MV7031 :ISA WH-QUESTION :STATEMENT MV7029 :WH IF)
 (:VAR MV7029 :ISA BE :SUBJECT MV7024 :PREDICATE MV7025 :PRESENT "PRESENT")
 (:VAR MV7024 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7025 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV7027 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
773: "Show me signaling pathways shared by MAP3K7 and CXCL8."

                    SOURCE-START
e18   SHOW          1 "Show me signaling pathways shared by MAP3K7 and CXCL8" 14
                    PERIOD
                    END-OF-SOURCE
("Show me signaling pathways shared by MAP3K7 and CXCL8."
 (:VAR MV7035 :ISA SHOW :STATEMENT-OR-THEME MV7032 :BENEFICIARY MV7036 :PRESENT
  "PRESENT")
 (:VAR MV7032 :ISA SIGNALING-PATHWAY :PREDICATION MV7037 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7037 :ISA SHARE :OBJECT MV7032 :PARTICIPANT MV7040 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7040 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7033 MV7034))
 (:VAR MV7033 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7034 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7036 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
774: "Give me signaling pathways shared by MAP3K7 and CXCL8"

                    SOURCE-START
e18   GIVE          1 "Give me signaling pathways shared by MAP3K7 and CXCL8" 14
                    END-OF-SOURCE
("Give me signaling pathways shared by MAP3K7 and CXCL8"
 (:VAR MV7045 :ISA GIVE :THEME MV7042 :BENEFICIARY MV7046 :PRESENT "PRESENT")
 (:VAR MV7042 :ISA SIGNALING-PATHWAY :PREDICATION MV7047 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7047 :ISA SHARE :OBJECT MV7042 :PARTICIPANT MV7050 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7050 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7043 MV7044))
 (:VAR MV7043 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7044 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7046 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
775: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"

                    SOURCE-START
e46   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
 (:VAR MV7079 :ISA POLAR-QUESTION :STATEMENT MV7078)
 (:VAR MV7078 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7074 :EVENT MV7076)
 (:VAR MV7074 :ISA WH-QUESTION :STATEMENT MV7063 :WH IF)
 (:VAR MV7063 :ISA INCREASE :AGENT-OR-CAUSE MV7061 :MULTIPLIER MV7071
  :AFFECTED-PROCESS-OR-OBJECT MV7065 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7061 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7071 :ISA N-FOLD :NUMBER MV7070) (:VAR MV7070 :ISA NUMBER :VALUE 10)
 (:VAR MV7065 :ISA BIO-AMOUNT :MEASURED-ITEM MV7067 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7067 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7076 :ISA COPULAR-PREDICATION :ITEM MV7054 :VALUE MV7059 :PREDICATE
  MV7052)
 (:VAR MV7054 :ISA BIO-AMOUNT :MEASURED-ITEM MV7057 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7057 :ISA PROTEIN-FAMILY :PREDICATION MV7056 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7056 :ISA PHOSPHORYLATE :SUBSTRATE MV7057 :RAW-TEXT "phosphorylated")
 (:VAR MV7059 :ISA HIGH :ADVERB MV7058) (:VAR MV7058 :ISA EVER :NAME "ever")
 (:VAR MV7052 :ISA BE))

___________________
776: "Active MEK phosphorylates ERK"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "Active MEK phosphorylates ERK" 5
                    END-OF-SOURCE
("Active MEK phosphorylates ERK"
 (:VAR MV7082 :ISA PHOSPHORYLATE :AGENT MV7081 :SUBSTRATE MV7083 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7081 :ISA PROTEIN-FAMILY :PREDICATION MV7080 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7080 :ISA ACTIVE)
 (:VAR MV7083 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
777: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"

                    SOURCE-START
e43   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
 (:VAR MV7109 :ISA POLAR-QUESTION :STATEMENT MV7108)
 (:VAR MV7108 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7104 :EVENT MV7106)
 (:VAR MV7104 :ISA WH-QUESTION :STATEMENT MV7095 :WH IF)
 (:VAR MV7095 :ISA INCREASE :AGENT-OR-CAUSE MV7093 :ADVERB MV7102
  :AFFECTED-PROCESS-OR-OBJECT MV7097 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7093 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7102 :ISA N-FOLD :NUMBER MV7101) (:VAR MV7101 :ISA NUMBER :VALUE 10)
 (:VAR MV7097 :ISA BIO-AMOUNT :MEASURED-ITEM MV7099 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7099 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7106 :ISA COPULAR-PREDICATION :ITEM MV7086 :VALUE MV7091 :PREDICATE
  MV7084)
 (:VAR MV7086 :ISA BIO-AMOUNT :MEASURED-ITEM MV7089 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7089 :ISA PROTEIN-FAMILY :PREDICATION MV7088 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7088 :ISA PHOSPHORYLATE :SUBSTRATE MV7089 :RAW-TEXT "phosphorylated")
 (:VAR MV7091 :ISA HIGH :ADVERB MV7090) (:VAR MV7090 :ISA EVER :NAME "ever")
 (:VAR MV7084 :ISA BE))

___________________
778: "What are some pathways that affect BRAF?"

                    SOURCE-START
e14   BE            1 "What are some pathways that affect BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some pathways that affect BRAF?"
 (:VAR MV7111 :ISA BE :SUBJECT MV7110 :PREDICATE MV7113 :PRESENT "PRESENT")
 (:VAR MV7110 :ISA WHAT)
 (:VAR MV7113 :ISA PATHWAY :PREDICATION MV7115 :QUANTIFIER MV7112 :RAW-TEXT
  "pathways")
 (:VAR MV7115 :ISA AFFECT :AGENT MV7113 :THAT-REL T :OBJECT MV7116 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7116 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7112 :ISA SOME :WORD "some"))

___________________
779: "What are the pathways that affect BRAF"

                    SOURCE-START
e15   BE            1 "What are the pathways that affect BRAF" 8
                    END-OF-SOURCE
("What are the pathways that affect BRAF"
 (:VAR MV7118 :ISA BE :SUBJECT MV7117 :PREDICATE MV7120 :PRESENT "PRESENT")
 (:VAR MV7117 :ISA WHAT)
 (:VAR MV7120 :ISA PATHWAY :PREDICATION MV7122 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV7122 :ISA AFFECT :AGENT MV7120 :THAT-REL T :OBJECT MV7123 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7123 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    SOURCE-START
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:VAR MV7133 :ISA REGULATE :OBJECT MV7127 :AGENT MV7132 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV7127 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7132 :ISA COLLECTION :RAW-TEXT "miR-20b-5p, and miR-145-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV7124 MV7125))
 (:VAR MV7124 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV7125 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    SOURCE-START
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are regulated by ELK1?"
 (:VAR MV7137 :ISA BE :SUBJECT MV7136 :PREDICATE MV7139 :PRESENT "PRESENT")
 (:VAR MV7136 :ISA WHAT)
 (:VAR MV7139 :ISA GENE :PREDICATION MV7144 :QUANTIFIER MV7138 :RAW-TEXT
  "genes")
 (:VAR MV7144 :ISA REGULATE :OBJECT MV7139 :THAT-REL T :AGENT MV7135 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV7135 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7138 :ISA SOME :WORD "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    SOURCE-START
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways contain CXCL8 and CXCL10?"
 (:VAR MV7150 :ISA CONTAIN :THEME MV7149 :PATIENT MV7152 :PRESENT "PRESENT")
 (:VAR MV7149 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7152 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7146 MV7147))
 (:VAR MV7146 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7147 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    SOURCE-START
e24   REMOVE        1 "Remove the fact that IL10 activates STAT3 in the model" 13
                    END-OF-SOURCE
("Remove the fact that IL10 activates STAT3 in the model"
 (:VAR MV7155 :ISA REMOVE :OBJECT MV7164 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7164 :ISA FACT :STATEMENT MV7159 :HAS-DETERMINER "THE")
 (:VAR MV7159 :ISA BIO-ACTIVATE :AGENT MV7153 :OBJECT MV7154 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7153 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7154 :ISA PROTEIN :INFO-CONTEXT MV7162 :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV7162 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
784: "Remove active IL10 activates STAT3 from the model"

                    SOURCE-START
e15   REMOVE        1 "Remove active IL10 " 5
e14   BIO-ACTIVATE  5 "activates STAT3 " 8
e13   FROM          8 "from the model" 11
                    END-OF-SOURCE
                    SOURCE-START
e15   VP            1 "Remove active IL10 " 5
e14   VP            5 "activates STAT3 " 8
e13   PP            8 "from the model" 11
                    END-OF-SOURCE


___________________
785: "What are some paths between BRAF and AKT1?"

                    SOURCE-START
e14   BE            1 "What are some paths between BRAF and AKT1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some paths between BRAF and AKT1?"
 (:VAR MV7176 :ISA BE :SUBJECT MV7175 :PREDICATE MV7178 :PRESENT "PRESENT")
 (:VAR MV7175 :ISA WHAT)
 (:VAR MV7178 :ISA PATH :ENDPOINTS MV7182 :QUANTIFIER MV7177)
 (:VAR MV7182 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7180 MV7174))
 (:VAR MV7180 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7174 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV7177 :ISA SOME :WORD "some"))

___________________
786: "Does MEK1 activate ERK2"

                    SOURCE-START
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    END-OF-SOURCE
("Does MEK1 activate ERK2" (:VAR MV7189 :ISA POLAR-QUESTION :STATEMENT MV7188)
 (:VAR MV7188 :ISA BIO-ACTIVATE :AGENT MV7184 :OBJECT MV7185 :RAW-TEXT
  "activate")
 (:VAR MV7184 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7185 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    SOURCE-START
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs tagret BRAF?"
 (:VAR MV7192 :ISA PROTEIN :HAS-DETERMINER "WHAT" :MODIFIER MV7191 :MODIFIER
  MV7193 :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7191 :ISA DRUG :RAW-TEXT "drugs")
 (:VAR MV7193 :ISA BIO-ENTITY :NAME "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which kinases are in the MAPK signalling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signalling pathway?"
 (:VAR MV7202 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7196 :VALUE MV7194 :PREP
  "IN" :PREDICATE MV7197)
 (:VAR MV7196 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7194 :ISA CELLULAR-PROCESS :HAS-DETERMINER "THE" :MODIFIER MV7200
  :RAW-TEXT "signalling pathway" :UID "GO:0007165")
 (:VAR MV7200 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV7197 :ISA BE :PRESENT "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    SOURCE-START
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs drugs target BRAF?"
 (:VAR MV7207 :ISA TARGET :AGENT MV7209 :OBJECT MV7208 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7209 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7208 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    SOURCE-START
e6    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What rgulates ELLK1?"
 (:VAR MV7213 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :MODIFIER MV7214 :NAME
  "ELLK1")
 (:VAR MV7214 :ISA BIO-ENTITY :NAME "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase expression of c-fos in liver?"
 (:VAR MV7227 :ISA POLAR-QUESTION :STATEMENT MV7224)
 (:VAR MV7224 :ISA INCREASE :AGENT MV7215 :AFFECTED-PROCESS MV7220 :RAW-TEXT
  "increase")
 (:VAR MV7215 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7220 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7216 :RAW-TEXT
  "expression")
 (:VAR MV7216 :ISA PROTEIN :ORGAN MV7223 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV7223 :ISA LIVER))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    SOURCE-START
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect c-fos expression in liver?"
 (:VAR MV7237 :ISA POLAR-QUESTION :STATEMENT MV7235)
 (:VAR MV7235 :ISA AFFECT :AGENT MV7228 :AFFECTED-PROCESS MV7232 :RAW-TEXT
  "affect")
 (:VAR MV7228 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7232 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV7234 :OBJECT MV7229
  :RAW-TEXT "expression")
 (:VAR MV7234 :ISA LIVER)
 (:VAR MV7229 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    SOURCE-START
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 alter c-fos expression?"
 (:VAR MV7244 :ISA POLAR-QUESTION :STATEMENT MV7243)
 (:VAR MV7243 :ISA ALTER :AGENT MV7238 :AFFECTED-PROCESS MV7242 :RAW-TEXT
  "alter")
 (:VAR MV7238 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7242 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7239 :RAW-TEXT
  "expression")
 (:VAR MV7239 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcriptional regulator of c-fos?"
 (:VAR MV7252 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92941>
   (PREDICATE
    (#<protein-family transcriptional regulator 92940>
     (MOLECULE-TYPE
      (#<protein "FOS_HUMAN" 88148> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcriptional regulator") (NAME "transcriptional regulator")
     (UID "XFAM:PF02082"))))))

___________________
795: "Which drugs inhibit BRAF?"

                    SOURCE-START
e6    INHIBIT       1 "Which drugs inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs inhibit BRAF?"
 (:VAR MV7255 :ISA INHIBIT :AGENT MV7254 :OBJECT MV7256 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV7254 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7256 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    SOURCE-START
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    PERIOD
                    END-OF-SOURCE
("STAT3 upregulates ELK1."
 (:VAR MV7259 :ISA UPREGULATE :AGENT MV7257 :OBJECT MV7258 :PRESENT "PRESENT"
  :RAW-TEXT "upregulates")
 (:VAR MV7257 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7258 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    SOURCE-START
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 transcribe?"
 (:VAR MV7263 :ISA TRANSCRIBE :OBJECT MV7261 :AGENT MV7260 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7261 :ISA WHAT)
 (:VAR MV7260 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    SOURCE-START
e5    BE            1 "What is PI3K" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PI3K?"
 (:VAR MV7266 :ISA BE :SUBJECT MV7265 :PREDICATE MV7264 :PRESENT "PRESENT")
 (:VAR MV7265 :ISA WHAT)
 (:VAR MV7264 :ISA PROTEIN-FAMILY :RAW-TEXT "PI3K" :NAME "PI3-kinase" :COUNT 4
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "PI3R5_HUMAN") (:UID "UP:Q8WYR1"))
   (PROTEIN (:NAME "PK3C3_HUMAN") (:UID "UP:Q8NEB9"))
   (PROTEIN (:NAME "PK3CA_HUMAN") (:UID "UP:P42336"))
   (PROTEIN (:NAME "P3C2G_HUMAN") (:UID "UP:O75747")))
  :UID "XFAM:PF00454"))

___________________
799: "What is MEK?"

                    SOURCE-START
e4    BE            1 "What is MEK" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MEK?"
 (:VAR MV7268 :ISA BE :SUBJECT MV7267 :PREDICATE MV7269 :PRESENT "PRESENT")
 (:VAR MV7267 :ISA WHAT)
 (:VAR MV7269 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
800: "What phosphorylates ERK?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates ERK" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates ERK?"
 (:VAR MV7271 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV7270 :SUBSTRATE MV7272
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7270 :ISA WHAT)
 (:VAR MV7272 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
801: "What drugs target AKT?"

                    SOURCE-START
e7    TARGET        1 "What drugs target AKT" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target AKT?"
 (:VAR MV7276 :ISA TARGET :AGENT MV7274 :OBJECT MV7277 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7274 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7277 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "AKT3_HUMAN") (:UID "UP:Q9Y243"))
   (PROTEIN (:NAME "AKT2_HUMAN") (:UID "UP:P31751"))
   (PROTEIN (:NAME "AKT1_HUMAN") (:UID "UP:P31749")))
  :UID "FA:03066"))

___________________
802: "What regulates ELLK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELLK1?"
 (:VAR MV7280 :ISA REGULATE :AGENT-OR-CAUSE MV7279 :OBJECT MV7278 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7279 :ISA WHAT) (:VAR MV7278 :ISA BIO-ENTITY :NAME "ELLK1"))

___________________
803: "What regulates ELK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK1?"
 (:VAR MV7283 :ISA REGULATE :AGENT-OR-CAUSE MV7282 :OBJECT MV7281 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7282 :ISA WHAT)
 (:VAR MV7281 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    SOURCE-START
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5pp target STAT3?"
 (:VAR MV7294 :ISA POLAR-QUESTION :STATEMENT MV7293)
 (:VAR MV7293 :ISA TARGET :AGENT MV7292 :OBJECT MV7285 :RAW-TEXT "target")
 (:VAR MV7292 :ISA BIO-ENTITY :NAME "miR-20b-5pp")
 (:VAR MV7285 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
805: "What are the mutations of PTEEN in prostate cancer?"

                    SOURCE-START
e17   BE            1 "What are the mutations " 5
e15   OF            5 "of PTEEN in prostate cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e17   S             1 "What are the mutations " 5
e15   PP            5 "of PTEEN in prostate cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
806: "What does selumitinibib target?"

                    SOURCE-START
e6    TARGET        1 "What does selumitinibib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does selumitinibib target?"
 (:VAR MV7308 :ISA TARGET :OBJECT MV7305 :AGENT MV7309 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7305 :ISA WHAT) (:VAR MV7309 :ISA BIO-ENTITY :NAME "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    SOURCE-START
e9    BE            1 "Is ELLK1 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ELLK1 a kinase?"
 (:VAR MV7314 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89589>
   (PREDICATE
    (#<kinase 89588> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
808: "What regulates ELK12?"

                    SOURCE-START
e7    REGULATE      1 "What regulates ELK12" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK12?"
 (:VAR MV7316 :ISA REGULATE :AGENT-OR-CAUSE MV7315 :OBJECT MV7317 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7315 :ISA WHAT)
 (:VAR MV7317 :ISA PROTEIN :VARIANT-NUMBER MV7319 :RAW-TEXT "ELK" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV7319 :ISA NUMBER :VALUE 12))

___________________
809: "What does sleumiitibbb target?"

                    SOURCE-START
e6    TARGET        1 "What does sleumiitibbb target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does sleumiitibbb target?"
 (:VAR MV7323 :ISA TARGET :OBJECT MV7320 :AGENT MV7324 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7320 :ISA WHAT) (:VAR MV7324 :ISA BIO-ENTITY :NAME "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    SOURCE-START
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:VAR MV7328 :ISA BE :SUBJECT MV7327 :PREDICATE MV7333 :PRESENT "PRESENT")
 (:VAR MV7327 :ISA WHAT)
 (:VAR MV7333 :ISA EVIDENCE :STATEMENT MV7332 :HAS-DETERMINER "THE")
 (:VAR MV7332 :ISA PHOSPHORYLATE :AGENT MV7325 :SUBSTRATE MV7326 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7325 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7326 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
811: "Remove STAT3 from the model."

                    SOURCE-START
e9    REMOVE        1 "Remove STAT3 " 4
e8    FROM          4 "from the model" 7
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e9    VP            1 "Remove STAT3 " 4
e8    PP            4 "from the model" 7
                    PERIOD
                    END-OF-SOURCE


___________________
812: "Remove the last interaction from the model."

                    SOURCE-START
e13   REMOVE        1 "Remove the last interaction " 5
e12   FROM          5 "from the model" 8
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e13   VP            1 "Remove the last interaction " 5
e12   PP            5 "from the model" 8
                    PERIOD
                    END-OF-SOURCE


___________________
813: "IL10 activates STAT3"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "IL10 activates STAT3" 6
                    END-OF-SOURCE
("IL10 activates STAT3"
 (:VAR MV7350 :ISA BIO-ACTIVATE :AGENT MV7348 :OBJECT MV7349 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7348 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7349 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "How many interactions are in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How many interactions are in the model?"
 (:VAR MV7361 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7353 :VALUE MV7360 :PREP
  "IN" :PREDICATE MV7354)
 (:VAR MV7353 :ISA INTERACT :HAS-DETERMINER "HOW" :QUANTIFIER MV7352 :RAW-TEXT
  "interactions")
 (:VAR MV7352 :ISA MANY :WORD "many")
 (:VAR MV7360 :ISA INTERACT :INFO-CONTEXT MV7357 :HAS-DETERMINER "HOW"
  :QUANTIFIER MV7352 :RAW-TEXT "interactions")
 (:VAR MV7357 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV7352 :ISA MANY :WORD "many") (:VAR MV7354 :ISA BE :PRESENT "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    SOURCE-START
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:VAR MV7374 :ISA POLAR-QUESTION :STATEMENT MV7372)
 (:VAR MV7372 :ISA DECREASE :AGENT MV7365 :AFFECTED-PROCESS-OR-OBJECT MV7369
  :RAW-TEXT "decrease")
 (:VAR MV7365 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tofacitinib")
 (:VAR MV7369 :ISA BIO-AMOUNT :MEASURED-ITEM MV7363 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7363 :ISA PROTEIN :PREDICATION MV7371 :RAW-TEXT "MAP2K2" :UID
  "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV7371 :ISA PHOSPHORYLATE :SUBSTRATE MV7363 :RAW-TEXT "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does ERK1 activate?"
 (:VAR MV7379 :ISA BIO-ACTIVATE :OBJECT MV7377 :AGENT MV7375 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7377 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7375 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does MEK1 activate?"
 (:VAR MV7384 :ISA BIO-ACTIVATE :OBJECT MV7382 :AGENT MV7380 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7382 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7380 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERK1 activate?"
 (:VAR MV7388 :ISA BIO-ACTIVATE :OBJECT MV7386 :AGENT MV7385 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7386 :ISA WHAT)
 (:VAR MV7385 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does JAK1 phosphorylate?"
 (:VAR MV7392 :ISA PHOSPHORYLATE :AMINO-ACID MV7390 :AGENT MV7389 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV7390 :ISA WHAT)
 (:VAR MV7389 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does STAT3 regulate?"
 (:VAR MV7397 :ISA REGULATE :OBJECT MV7395 :AGENT MV7393 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7395 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7393 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    SOURCE-START
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and what does SRF bind?"
 (:VAR MV7407 :ISA COLLECTION :TYPE INVOLVE :NUMBER 2 :ITEMS (MV7400 MV7406))
 (:VAR MV7400 :ISA INVOLVE :THEME MV7399 :THEME MV7401 :PRESENT "PRESENT")
 (:VAR MV7399 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7401 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV7406 :ISA BINDING :DIRECT-BINDEE MV7403 :BINDER MV7405 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7403 :ISA WHAT)
 (:VAR MV7405 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV7410 :ISA INVOLVE :THEME MV7409 :THEME MV7411 :PRESENT "PRESENT")
 (:VAR MV7409 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7411 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    SOURCE-START
e5    BINDING       1 "What does SRF bind" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SRF bind?"
 (:VAR MV7415 :ISA BINDING :DIRECT-BINDEE MV7412 :BINDER MV7414 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7412 :ISA WHAT)
 (:VAR MV7414 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
824: "What pathways involve SRF and is SRF a kinase?"

                    SOURCE-START
e15   INVOLVE       1 "What pathways involve SRF and is SRF " 8
e11   KINASE        8 "a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e15   S             1 "What pathways involve SRF and is SRF " 8
e11   NP            8 "a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
825: "Does MAP2K1 phosphorylate and activate MAPK1?"

                    SOURCE-START
e13   COLLECTION    1 "Does MAP2K1 phosphorylate and activate MAPK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP2K1 phosphorylate and activate MAPK1?"
 (:VAR MV7436 :ISA POLAR-QUESTION :STATEMENT MV7435)
 (:VAR MV7435 :ISA COLLECTION :TYPE PHOSPHORYLATE :ITEMS
  (((:AGENT (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
    (:SUBSTRATE (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482")))
    (:RAW-TEXT "phosphorylate"))
   ((:AGENT (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
    (:OBJECT (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482")))
    (:RAW-TEXT "activate")))
  :NUMBER 2))

___________________
826: "Does MAP2K1 phosphorylate MAPK3?"

                    SOURCE-START
e10   PHOSPHORYLATE 1 "Does MAP2K1 phosphorylate MAPK3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP2K1 phosphorylate MAPK3?"
 (:VAR MV7442 :ISA POLAR-QUESTION :STATEMENT MV7441)
 (:VAR MV7441 :ISA PHOSPHORYLATE :AGENT MV7437 :SUBSTRATE MV7438 :RAW-TEXT
  "phosphorylate")
 (:VAR MV7437 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7438 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    SOURCE-START
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases activate MEK2?"
 (:VAR MV7446 :ISA BIO-ACTIVATE :AGENT MV7445 :OBJECT MV7443 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7445 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7443 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:VAR MV7452 :ISA TARGET :AGENT MV7450 :AFFECTED-PROCESS MV7453 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7450 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7453 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV7456 :RAW-TEXT
  "upstreams")
 (:VAR MV7456 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7447 MV7448))
 (:VAR MV7447 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7448 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target CXCL8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target CXCL8?"
 (:VAR MV7462 :ISA TARGET :AGENT MV7460 :OBJECT MV7458 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7460 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7458 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target Jak3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target Jak3?"
 (:VAR MV7467 :ISA TARGET :AGENT MV7465 :OBJECT MV7463 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7465 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7463 :ISA PROTEIN :RAW-TEXT "Jak3" :UID "UP:P52333" :NAME
  "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    SOURCE-START
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:VAR MV7474 :ISA TARGET :AGENT MV7472 :OBJECT MV7468 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7472 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7468 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7475 :RAW-TEXT
  "transcription factors")
 (:VAR MV7475 :ISA SHARE :OBJECT MV7468 :PARTICIPANT MV7478 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7478 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7469 MV7470))
 (:VAR MV7469 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7470 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    SOURCE-START
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does miR-20a-5p target?"
 (:VAR MV7485 :ISA TARGET :OBJECT MV7482 :AGENT MV7480 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7482 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7480 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    SOURCE-START
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors does miR-20a-5p target?"
 (:VAR MV7491 :ISA TARGET :OBJECT MV7486 :AGENT MV7487 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7486 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7487 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV7502 :ISA COPULAR-PREDICATION :ITEM MV7496 :VALUE MV7492 :PREDICATE
  MV7497)
 (:VAR MV7496 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7492 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV7494 :ALTERNATIVE MV7493)
 (:VAR MV7494 :ISA CANCER :UID "TS-0591")
 (:VAR MV7493 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV7497 :ISA BE :PRESENT "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    SOURCE-START
e7    TARGET        1 "What drugs target fakeprotein" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target fakeprotein?"
 (:VAR MV7506 :ISA TARGET :AGENT MV7504 :OBJECT MV7507 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7504 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7507 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the FAKE signaling pathway?"
 (:VAR MV7518 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7510 :VALUE MV7517 :PREP
  "IN" :PREDICATE MV7511)
 (:VAR MV7510 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7517 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV7508 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV7508 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7514
  :RAW-TEXT "signaling pathway")
 (:VAR MV7514 :ISA BIO-ENTITY :NAME "FAKE")
 (:VAR MV7511 :ISA BE :PRESENT "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in fictional cancer?"
 (:VAR MV7521 :ISA BE :SUBJECT MV7520 :PREDICATE MV7523 :PRESENT "PRESENT")
 (:VAR MV7520 :ISA WHAT)
 (:VAR MV7523 :ISA MUTATION :OBJECT MV7525 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7525 :ISA PROTEIN :CONTEXT MV7528 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7528 :ISA CANCER :PREDICATION MV7527) (:VAR MV7527 :ISA FICTIONAL))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in liver cancer?"
 (:VAR MV7532 :ISA BE :SUBJECT MV7531 :PREDICATE MV7534 :PRESENT "PRESENT")
 (:VAR MV7531 :ISA WHAT)
 (:VAR MV7534 :ISA MUTATION :OBJECT MV7536 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7536 :ISA PROTEIN :CONTEXT MV7539 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7539 :ISA CANCER :ORGAN MV7538) (:VAR MV7538 :ISA LIVER))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELk1 transcribes FAKE in the model."
 (:VAR MV7543 :ISA REMOVE :OBJECT MV7553 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7553 :ISA FACT :STATEMENT MV7547 :HAS-DETERMINER "THE")
 (:VAR MV7547 :ISA TRANSCRIBE :AGENT MV7542 :OBJECT MV7548 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7542 :ISA PROTEIN :RAW-TEXT "ELk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7548 :ISA BIO-ENTITY :INFO-CONTEXT MV7551 :NAME "FAKE")
 (:VAR MV7551 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
840: "ELK1 transcribes FOS"

                    SOURCE-START
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    END-OF-SOURCE
("ELK1 transcribes FOS"
 (:VAR MV7555 :ISA TRANSCRIBE :AGENT MV7554 :OBJECT MV7556 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7554 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7556 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELK1 transcribes FOS in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELK1 transcribes FOS in the model."
 (:VAR MV7558 :ISA REMOVE :OBJECT MV7568 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7568 :ISA FACT :STATEMENT MV7562 :HAS-DETERMINER "THE")
 (:VAR MV7562 :ISA TRANSCRIBE :AGENT MV7557 :OBJECT MV7563 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7557 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7563 :ISA PROTEIN :INFO-CONTEXT MV7566 :RAW-TEXT "FOS" :UID
  "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7566 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:VAR MV7581 :ISA SHARE :OBJECT MV7569 :PARTICIPANT MV7580 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7569 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7580 :ISA COLLECTION :RAW-TEXT "CXCL8 and FAKE10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7570 MV7579))
 (:VAR MV7570 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7579 :ISA BIO-ENTITY :NAME "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    SOURCE-START
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:VAR MV7592 :ISA SHARE :OBJECT MV7583 :PARTICIPANT MV7591 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7583 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7591 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7584 MV7585))
 (:VAR MV7584 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7585 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    SOURCE-START
e8    BIO-USE       1 "What databases do you use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What databases do you use?"
 (:VAR MV7599 :ISA BIO-USE :OBJECT MV7595 :AGENT MV7597 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV7595 :ISA DATABASE :HAS-DETERMINER "WHAT")
 (:VAR MV7597 :ISA INTERLOCUTOR :NAME "hearer"))

___________________
845: "What is the MSA?"

                    SOURCE-START
e7    BE            1 "What is the MSA" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the MSA?"
 (:VAR MV7601 :ISA BE :SUBJECT MV7600 :PREDICATE MV7603 :PRESENT "PRESENT")
 (:VAR MV7600 :ISA WHAT)
 (:VAR MV7603 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "MSA" :UID
  "UP:Q9FIB6" :NAME "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    SOURCE-START
e11   ASK           1 "What tissues can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues can I ask about?"
 (:VAR MV7612 :ISA ASK :PATIENT MV7605 :MODAL MV7606 :AGENT MV7607 :PRESENT
  "PRESENT")
 (:VAR MV7605 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV7606 :ISA CAN)
 (:VAR MV7607 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
847: "What cancers can I ask about?"

                    SOURCE-START
e11   ASK           1 "What cancers can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What cancers can I ask about?"
 (:VAR MV7621 :ISA ASK :PATIENT MV7614 :MODAL MV7615 :AGENT MV7616 :PRESENT
  "PRESENT")
 (:VAR MV7614 :ISA CANCER :HAS-DETERMINER "WHAT") (:VAR MV7615 :ISA CAN)
 (:VAR MV7616 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    SOURCE-START
e11   ASK           1 "What mechanisms can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What mechanisms can I ask about?"
 (:VAR MV7630 :ISA ASK :PATIENT MV7623 :MODAL MV7624 :AGENT MV7625 :PRESENT
  "PRESENT")
 (:VAR MV7623 :ISA BIO-MECHANISM :HAS-DETERMINER "WHAT") (:VAR MV7624 :ISA CAN)
 (:VAR MV7625 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
849: "What does STAT3 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does STAT3 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate?"
 (:VAR MV7634 :ISA REGULATE :OBJECT MV7632 :AGENT MV7631 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7632 :ISA WHAT)
 (:VAR MV7631 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are kinases?"
 (:VAR MV7638 :ISA BE :SUBJECT MV7637 :PREDICATE MV7639 :PRESENT "PRESENT")
 (:VAR MV7637 :ISA THESE :QUANTIFIER MV7635 :WORD "these")
 (:VAR MV7635 :ISA WHICH) (:VAR MV7639 :ISA KINASE :RAW-TEXT "kinases"))

___________________
851: "What pathways is ERK1 in?"

                    SOURCE-START
e9    BE            1 "What pathways is ERK1 " 6
e6    IN            6 "in" 7
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e9    S             1 "What pathways is ERK1 " 6
e6    SPATIAL-PREPOSITION 6 "in" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
852: "Which of these is AKT1 in?"

                    SOURCE-START
e12   BE            1 "Which of these is AKT1 " 7
e8    IN            7 "in" 8
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e12   S             1 "Which of these is AKT1 " 7
e8    SPATIAL-PREPOSITION 7 "in" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
853: "What pathways are ERK1 and AKT1 in?"

                    SOURCE-START
e13   BE            1 "What pathways are ERK1 and AKT1 " 9
e9    IN            9 "in" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   S             1 "What pathways are ERK1 and AKT1 " 9
e9    SPATIAL-PREPOSITION 9 "in" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
854: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV7665 :ISA TARGET :AGENT MV7663 :OBJECT MV7661 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7663 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV7661 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    SOURCE-START
e11   PROTEIN       1 "Which of these target SMAD2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these target SMAD2?"
 (:VAR MV7666 :ISA PROTEIN :QUANTIFIER MV7667 :HAS-DETERMINER "THESE" :MODIFIER
  MV7670 :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN")
 (:VAR MV7667 :ISA WHICH) (:VAR MV7670 :ISA TARGET-PROTEIN :RAW-TEXT "target"))

___________________
856: "Do any of these regulate IL2?"

                    SOURCE-START
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do any of these regulate IL2?"
 (:VAR MV7681 :ISA POLAR-QUESTION :STATEMENT MV7679)
 (:VAR MV7679 :ISA REGULATE :AGENT-OR-CAUSE MV7677 :OBJECT MV7673 :RAW-TEXT
  "regulate")
 (:VAR MV7677 :ISA THESE :QUANTIFIER MV7675 :WORD "these")
 (:VAR MV7675 :ISA ANY :WORD "any")
 (:VAR MV7673 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    SOURCE-START
e5    REGULATE      1 "What regulates STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates STAT3?"
 (:VAR MV7684 :ISA REGULATE :AGENT-OR-CAUSE MV7683 :OBJECT MV7682 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7683 :ISA WHAT)
 (:VAR MV7682 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve these?"
 (:VAR MV7687 :ISA INVOLVE :THEME MV7686 :THEME MV7688 :PRESENT "PRESENT")
 (:VAR MV7686 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7688 :ISA THESE :WORD "these"))

___________________
859: "What are the targets of NG25?"

                    SOURCE-START
e13   BE            1 "What are the targets " 5
e11   OF            5 "of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   S             1 "What are the targets " 5
e11   PP            5 "of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
860: "What is their most likely cellular location?"

                    SOURCE-START
e13   BE            1 "What is their most likely cellular location" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is their most likely cellular location?"
 (:VAR MV7698 :ISA BE :SUBJECT MV7697 :PREDICATE MV7704 :PRESENT "PRESENT")
 (:VAR MV7697 :ISA WHAT)
 (:VAR MV7704 :ISA LOCATION-OF :THEME MV7699 :PREDICATION MV7702 :MODIFIER
  MV7703)
 (:VAR MV7699 :ISA PRONOUN/PLURAL :WORD "their")
 (:VAR MV7702 :ISA LIKELY :COMPARATIVE MV7700)
 (:VAR MV7700 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7703 :ISA CELLULAR :NAME "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is ERK1 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?"
 (:VAR MV7709 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91663>
   (PREDICATE
    (#<transcription-factor 89600> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
862: "Is it a kinase?"

                    SOURCE-START
e7    BE            1 "Is it a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?"
 (:VAR MV7709 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91663>
   (PREDICATE
    (#<transcription-factor 89600> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
863: "What is PLX-4720?"

                    SOURCE-START
e5    BE            1 "What is PLX-4720" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PLX-4720?"
 (:VAR MV7716 :ISA BE :SUBJECT MV7715 :PREDICATE MV7714 :PRESENT "PRESENT")
 (:VAR MV7715 :ISA WHAT)
 (:VAR MV7714 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
864: "What does it target?"

                    SOURCE-START
e7    TARGET        1 "What does it target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it target?"
 (:VAR MV7721 :ISA TARGET :OBJECT MV7717 :AGENT-OR-CAUSE MV7719 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7717 :ISA WHAT) (:VAR MV7719 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
865: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV7726 :ISA REGULATE :OBJECT MV7724 :AGENT MV7722 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7724 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7722 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
866: "What pathways is it in?"

                    SOURCE-START
e9    BE            1 "What pathways is it " 5
e6    IN            5 "in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e9    S             1 "What pathways is it " 5
e6    SPATIAL-PREPOSITION 5 "in" 6
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
867: "What are the targets of PLX-4720?"

                    SOURCE-START
e14   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV7734 :ISA BE :SUBJECT MV7733 :PREDICATE MV7736 :PRESENT "PRESENT")
 (:VAR MV7733 :ISA WHAT)
 (:VAR MV7736 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV7732 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV7732 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    SOURCE-START
e10   TARGET        1 "Does it target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does it target BRAF?" (:VAR MV7746 :ISA POLAR-QUESTION :STATEMENT MV7745)
 (:VAR MV7745 :ISA TARGET :AGENT-OR-CAUSE MV7741 :OBJECT MV7744 :RAW-TEXT
  "target")
 (:VAR MV7741 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7744 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
869: "Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."

                    SOURCE-START
e15   INHIBIT       1 "Tofacitinib inhibits JAK1 and active STAT3 " 9
e13   TRANSCRIBE    9 "transcribes IL2" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e15   S             1 "Tofacitinib inhibits JAK1 and active STAT3 " 9
e13   VP            9 "transcribes IL2" 12
                    PERIOD
                    END-OF-SOURCE


___________________
870: "JAK1 activates STAT3"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "JAK1 activates STAT3" 6
                    END-OF-SOURCE
("JAK1 activates STAT3"
 (:VAR MV7758 :ISA BIO-ACTIVATE :AGENT MV7756 :OBJECT MV7757 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7756 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7757 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    SOURCE-START
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    END-OF-SOURCE
("I want to find out how Jak1 activates IL2"
 (:VAR MV7764 :ISA WANT :AGENT MV7761 :THEME MV7774 :PRESENT "PRESENT")
 (:VAR MV7761 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7774 :ISA FIND-OUT :AGENT MV7761 :STATEMENT MV7771)
 (:VAR MV7761 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7771 :ISA WH-QUESTION :STATEMENT MV7770 :VAR NIL :WH HOW)
 (:VAR MV7770 :ISA BIO-ACTIVATE :AGENT MV7759 :OBJECT MV7760 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7759 :ISA PROTEIN :RAW-TEXT "Jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7760 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    PERIOD
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:VAR MV7780 :ISA WANT :AGENT MV7777 :THEME MV7794 :PRESENT "PRESENT")
 (:VAR MV7777 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7794 :ISA FIND-OUT :AGENT MV7777 :STATEMENT MV7791)
 (:VAR MV7777 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7791 :ISA WH-QUESTION :STATEMENT MV7786 :VAR NIL :WH HOW)
 (:VAR MV7786 :ISA BIO-ACTIVATE :AGENT MV7775 :OBJECT MV7787 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7775 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV7787 :ISA PROTEIN :CELL-TYPE MV7789 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV7789 :ISA CELL-TYPE :CELL-LINE MV7776)
 (:VAR MV7776 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
873: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV7799 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7796 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV7796 :ISA BUILD :ARTIFACT MV7798 :PRESENT "PRESENT")
 (:VAR MV7798 :ISA MODEL :HAS-DETERMINER "A"))

___________________
874: "Mek phosphorylates MAPK; MapK phosphorylates RSK"

                    SOURCE-START
e10   PHOSPHORYLATE 1 "Mek phosphorylates MAPK" 4
e3    SEMICOLON     4 "; " 5
e8    PHOSPHORYLATE 5 "MapK phosphorylates RSK" 8
                    END-OF-SOURCE
                    SOURCE-START
e10   S             1 "Mek phosphorylates MAPK" 4
e3    PUNCTUATION   4 "; " 5
e8    S             5 "MapK phosphorylates RSK" 8
                    END-OF-SOURCE


___________________
875: "What kinases regulate IL2?"

                    SOURCE-START
e7    REGULATE      1 "What kinases regulate IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate IL2?"
 (:VAR MV7809 :ISA REGULATE :AGENT MV7808 :OBJECT MV7806 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7808 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7806 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    SOURCE-START
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What positively regulates IL2?"
 (:VAR MV7810 :ISA UPREGULATE :AGENT-OR-CAUSE MV7812 :OBJECT MV7811 :PRESENT
  "PRESENT" :RAW-TEXT "positively regulates")
 (:VAR MV7812 :ISA WHAT)
 (:VAR MV7811 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    SOURCE-START
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What can have the effect of activation on STAT3?"
 (:VAR MV7816 :ISA HAVE :POSSESSOR MV7814 :THING-POSSESSED MV7818 :MODAL
  MV7815)
 (:VAR MV7814 :ISA WHAT)
 (:VAR MV7818 :ISA EFFECT :OBJECT MV7813 :AFFECTED-PROCESS MV7821
  :HAS-DETERMINER "THE" :RAW-TEXT "effect")
 (:VAR MV7813 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7821 :ISA BIO-ACTIVATE :RAW-TEXT "activation") (:VAR MV7815 :ISA CAN))

___________________
878: "Are there any drugs for IL10?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for IL10?"
 (:VAR MV7832 :ISA THERE-EXISTS :VALUE MV7830 :PREDICATE MV7827)
 (:VAR MV7830 :ISA DRUG :TARGET MV7825 :QUANTIFIER MV7829 :RAW-TEXT "drugs")
 (:VAR MV7825 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7829 :ISA ANY :WORD "any") (:VAR MV7827 :ISA SYNTACTIC-THERE))

___________________
879: "Which tissues express STAT3?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which tissues express STAT3?"
 (:VAR MV7837 :ISA GENE-TRANSCRIPT-EXPRESS :AGENT MV7836 :OBJECT MV7834
  :PRESENT "PRESENT" :RAW-TEXT "express")
 (:VAR MV7836 :ISA TISSUE :HAS-DETERMINER "WHICH")
 (:VAR MV7834 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    SOURCE-START
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MEK1 regulate ERK1?"
 (:VAR MV7842 :ISA REGULATE :MANNER MV7840 :AGENT MV7838 :OBJECT MV7839
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV7840 :ISA HOW)
 (:VAR MV7838 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7839 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    SOURCE-START
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:VAR MV7847 :ISA BE :SUBJECT MV7846 :PREDICATE MV7843 :PRESENT "PRESENT")
 (:VAR MV7846 :ISA WHAT)
 (:VAR MV7843 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7849 :RAW-TEXT
  "transcription factors")
 (:VAR MV7849 :ISA BINDING :BINDER MV7843 :THAT-REL T :DIRECT-BINDEE MV7852
  :PRESENT "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7852 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7853 :RAW-TEXT
  "genes")
 (:VAR MV7853 :ISA COLLECTION :RAW-TEXT "IL15 and IL2" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7844 MV7845))
 (:VAR MV7844 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7845 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    SOURCE-START
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate the IL15 and IL2?"
 (:VAR MV7858 :ISA REGULATE :AGENT MV7857 :OBJECT MV7861 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7857 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7861 :ISA COLLECTION :HAS-DETERMINER "THE" :RAW-TEXT "IL15 and IL2"
  :TYPE PROTEIN :NUMBER 2 :ITEMS (MV7854 MV7855))
 (:VAR MV7854 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7855 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
883: "What factors from the literature regulate IL15 and IL2?"

                    SOURCE-START
e13   FACTOR        1 "What factors " 3
e16   FROM          3 "from the literature " 6
e15   REGULATE      6 "regulate IL15 and IL2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   NP            1 "What factors " 3
e16   PP            3 "from the literature " 6
e15   VP            6 "regulate IL15 and IL2" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
884: "What relations in the literature match tofacitinib inhibits IL15?"

                    SOURCE-START
e13   RELATION      1 "What relations " 3
e18   IN            3 "in the literature match " 7
e17   INHIBIT       7 "tofacitinib inhibits IL15" 11
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   NP            1 "What relations " 3
e18   PP            3 "in the literature match " 7
e17   S             7 "tofacitinib inhibits IL15" 11
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
885: "What is MAP3K7?"

                    SOURCE-START
e5    BE            1 "What is MAP3K7" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAP3K7?"
 (:VAR MV7886 :ISA BE :SUBJECT MV7885 :PREDICATE MV7884 :PRESENT "PRESENT")
 (:VAR MV7885 :ISA WHAT)
 (:VAR MV7884 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    SOURCE-START
e9    BE            1 "Is MAP3K7 a protein" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP3K7 a protein?"
 (:VAR MV7891 :ISA POLAR-QUESTION :STATEMENT
  (#<be 93365>
   (PREDICATE
    (#<protein 93364> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "protein"))))))

___________________
887: "What does SMAD2 transcribe?"

                    SOURCE-START
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SMAD2 transcribe?"
 (:VAR MV7895 :ISA TRANSCRIBE :OBJECT MV7893 :AGENT MV7892 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7893 :ISA WHAT)
 (:VAR MV7892 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there drugs for IL10?"
 (:VAR MV7902 :ISA THERE-EXISTS :VALUE MV7900 :PREDICATE MV7898)
 (:VAR MV7900 :ISA DRUG :TARGET MV7896 :RAW-TEXT "drugs")
 (:VAR MV7896 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7898 :ISA SYNTACTIC-THERE))

___________________
889: "What relations in the literature match tofacitinib?"

                    SOURCE-START
e10   RELATION      1 "What relations " 3
e14   IN            3 "in the literature match tofacitinib" 8
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e10   NP            1 "What relations " 3
e14   PP            3 "in the literature match tofacitinib" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
890: "What relations in the literature match STAT3 regulates IL15 ?"

                    SOURCE-START
e14   RELATION      1 "What relations " 3
e19   IN            3 "in the literature match " 7
e18   REGULATE      7 "STAT3 regulates IL15 " 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e14   NP            1 "What relations " 3
e19   PP            3 "in the literature match " 7
e18   S             7 "STAT3 regulates IL15 " 12
                    QUESTION-MARK
                    END-OF-SOURCE
891 sentences in *list-of-bio-utterances*
