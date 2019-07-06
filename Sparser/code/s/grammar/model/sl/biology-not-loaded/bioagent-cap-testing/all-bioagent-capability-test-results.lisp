

___________________
0: "What genes does mir-128 regulate?"

                    SOURCE-START
e10   REGULATE      1 "What genes does mir-128 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does mir-128 regulate?"
 (:VAR MV6 :ISA REGULATE :OBJECT MV8 :AGENT MV7 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV8 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7 :ISA BIO-ENTITY :NAME "mir-128"))

___________________
1: "what transcription factors does miR-200c regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c regulate?"
 (:VAR MV14 :ISA REGULATE :OBJECT MV15 :AGENT MV11 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV15 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV11 :ISA MICRO-RNA :RAW-TEXT "miR-200c" :NAME "MIR200C" :UID "NCIT:C82157"))

___________________
2: "Tell me about stat3's involvement in apoptosis"

                    SOURCE-START
e16   TELL          1 "Tell me about stat3's involvement in apoptosis" 11
                    END-OF-SOURCE
("Tell me about stat3's involvement in apoptosis"
 (:VAR MV17 :ISA TELL :THEME MV21 :THEME MV18 :PRESENT "PRESENT")
 (:VAR MV21 :ISA INVOLVE :THEME MV23 :PARTICIPANT MV20)
 (:VAR MV23 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV20 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV18 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
3: "What are the genes that have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e30   BE            1 "What are the genes that have strong evidence of being regulated by mir-122-5p" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV28 :ISA BE :SUBJECT MV27 :PREDICATE MV43 :PRESENT "PRESENT") (:VAR MV27 :ISA WHAT)
 (:VAR MV43 :ISA GENE :PLURAL T :PREDICATION MV33 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV33 :ISA HAVE :POSSESSOR MV43 :THAT-REL T :THING-POSSESSED MV35 :PRESENT "PRESENT")
 (:VAR MV35 :ISA EVIDENCE :FACT MV38 :PREDICATION MV34)
 (:VAR MV38 :ISA REGULATE :AGENT MV26 :PROGRESSIVE MV37 :RAW-TEXT "regulated")
 (:VAR MV26 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID "MIMAT0000421")
 (:VAR MV37 :ISA BE) (:VAR MV34 :ISA STRONG))

___________________
4: "What is stat3's involvement in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's involvement in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's involvement in apoptosis?"
 (:VAR MV46 :ISA BE :SUBJECT MV45 :PREDICATE MV48 :PRESENT "PRESENT") (:VAR MV45 :ISA WHAT)
 (:VAR MV48 :ISA INVOLVE :THEME MV50 :PARTICIPANT MV47)
 (:VAR MV50 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV47 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
5: "What is stat3's role in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's role in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptosis?"
 (:VAR MV54 :ISA BE :SUBJECT MV53 :PREDICATE MV56 :PRESENT "PRESENT") (:VAR MV53 :ISA WHAT)
 (:VAR MV56 :ISA ROLE :PROCESS MV58 :PARTICIPANT MV55)
 (:VAR MV58 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV55 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
6: "What is stat3's role in apoptotic regulation?"

                    SOURCE-START
e17   BE            1 "What is stat3's role in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptotic regulation?"
 (:VAR MV62 :ISA BE :SUBJECT MV61 :PREDICATE MV64 :PRESENT "PRESENT") (:VAR MV61 :ISA WHAT)
 (:VAR MV64 :ISA ROLE :PROCESS MV68 :PARTICIPANT MV63)
 (:VAR MV68 :ISA REGULATE :CELLULAR-PROCESS MV66 :RAW-TEXT "regulation")
 (:VAR MV66 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV63 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
7: "What is the evidence that miR-148a-3p targets DNMT1?"

                    SOURCE-START
e19   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:VAR MV73 :ISA BE :SUBJECT MV72 :PREDICATE MV80 :PRESENT "PRESENT") (:VAR MV72 :ISA WHAT)
 (:VAR MV80 :ISA EVIDENCE :STATEMENT MV79 :HAS-DETERMINER "THE")
 (:VAR MV79 :ISA TARGET :AGENT MV70 :OBJECT MV71 :PRESENT "PRESENT" :RAW-TEXT "targets")
 (:VAR MV70 :ISA MICRO-RNA :RAW-TEXT "miR-148a-3p" :NAME "microRNA 148a-3p" :UID "MIMAT0000243")
 (:VAR MV71 :ISA PROTEIN :RAW-TEXT "DNMT1" :UID "UP:P26358" :NAME "DNMT1_HUMAN"))

___________________
8: "what transcription factors does miR-124-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-124-3p regulate?"
 (:VAR MV86 :ISA REGULATE :OBJECT MV87 :AGENT MV83 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV87 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV83 :ISA MICRO-RNA :RAW-TEXT "miR-124-3p" :NAME "microRNA 124-3p" :UID "MIMAT0000422"))

___________________
9: "what transcription factors does miR-200c-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c-3p regulate?"
 (:VAR MV93 :ISA REGULATE :OBJECT MV94 :AGENT MV90 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV94 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV90 :ISA MICRO-RNA :RAW-TEXT "miR-200c-3p" :NAME "microRNA 200c-3p" :UID "MIMAT0000617"))

___________________
10: "What is the mutation significance of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian cancer?"
 (:VAR MV98 :ISA BE :SUBJECT MV97 :PREDICATE MV101 :PRESENT "PRESENT") (:VAR MV97 :ISA WHAT)
 (:VAR MV101 :ISA SIGNIFICANCE :CONTEXT MV96 :AGENT MV95 :HAS-DETERMINER "THE" :MODIFIER MV100)
 (:VAR MV96 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV95 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV100 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
11: "What is the mutation significance of TP53 for ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for ovarian cancer?"
 (:VAR MV109 :ISA BE :SUBJECT MV108 :PREDICATE MV112 :PRESENT "PRESENT") (:VAR MV108 :ISA WHAT)
 (:VAR MV112 :ISA SIGNIFICANCE :CONTEXT MV107 :AGENT MV106 :HAS-DETERMINER "THE" :MODIFIER MV111)
 (:VAR MV107 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV106 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV111 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
12: "What are synonyms for BRAF?"

                    SOURCE-START
e9    BE            1 "What are synonyms for BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for BRAF?"
 (:VAR MV118 :ISA BE :SUBJECT MV117 :PREDICATE MV124 :PRESENT "PRESENT") (:VAR MV117 :ISA WHAT)
 (:VAR MV124 :ISA HAS-SYNONYM :PLURAL T :ITEM MV122)
 (:VAR MV122 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
13: "What are some genes that are mutated in breast cancer?"

                    SOURCE-START
e20   BE            1 "What are some genes that are mutated in breast cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are mutated in breast cancer?"
 (:VAR MV127 :ISA BE :SUBJECT MV126 :PREDICATE MV138 :PRESENT "PRESENT") (:VAR MV126 :ISA WHAT)
 (:VAR MV138 :ISA GENE :PLURAL T :PREDICATION MV136 :QUANTIFIER MV128 :RAW-TEXT "genes")
 (:VAR MV136 :ISA MUTATION :OBJECT MV138 :THAT-REL T :CONTEXT MV125 :PRESENT "PRESENT" :RAW-TEXT
  "mutated")
 (:VAR MV125 :ISA CANCER :NAME "breast cancer" :UID "TS-0591") (:VAR MV128 :ISA SOME :WORD "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    SOURCE-START
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are mutated in breast cancer?"
 (:VAR MV147 :ISA MUTATION :OBJECT MV146 :CONTEXT MV139 :PRESENT "PRESENT" :RAW-TEXT "mutated")
 (:VAR MV146 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV139 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S221 activate MAP2K2?" (:VAR MV160 :ISA POLAR-QUESTION :STATEMENT MV158)
 (:VAR MV158 :ISA BIO-ACTIVATE :AGENT MV151 :OBJECT MV149 :RAW-TEXT "activate")
 (:VAR MV151 :ISA PHOSPHORYLATE :SITE MV157 :RAW-TEXT "phosphorylation")
 (:VAR MV157 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S221" :POSITION MV155 :AMINO-ACID MV154)
 (:VAR MV155 :ISA NUMBER :VALUE 221) (:VAR MV154 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV149 :ISA PROTEIN :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S222 activate MAP2K1?" (:VAR MV172 :ISA POLAR-QUESTION :STATEMENT MV170)
 (:VAR MV170 :ISA BIO-ACTIVATE :AGENT MV163 :OBJECT MV161 :RAW-TEXT "activate")
 (:VAR MV163 :ISA PHOSPHORYLATE :SITE MV169 :RAW-TEXT "phosphorylation")
 (:VAR MV169 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S222" :POSITION MV167 :AMINO-ACID MV166)
 (:VAR MV167 :ISA NUMBER :VALUE 222) (:VAR MV166 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV161 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    SOURCE-START
e12   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    END-OF-SOURCE
("Simulate the MAP2K1-MAPK1 complex"
 (:VAR MV175 :ISA SIMULATE :OBJECT MV179 :PRESENT "PRESENT" :RAW-TEXT "Simulate")
 (:VAR MV179 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1" :COMPONENT MV174
  :COMPONENT MV173)
 (:VAR MV174 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV173 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
18: "What are the members of ERK?"

                    SOURCE-START
e12   BE            1 "What are the members of ERK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of ERK?"
 (:VAR MV181 :ISA BE :SUBJECT MV180 :PREDICATE MV189 :PRESENT "PRESENT") (:VAR MV180 :ISA WHAT)
 (:VAR MV189 :ISA MEMBER :PLURAL T :SET MV186 :HAS-DETERMINER "THE")
 (:VAR MV186 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV191 :ISA BE :SUBJECT MV190 :PREDICATE MV199 :PRESENT "PRESENT") (:VAR MV190 :ISA WHAT)
 (:VAR MV199 :ISA MEMBER :PLURAL T :SET MV196 :HAS-DETERMINER "THE")
 (:VAR MV196 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV201 :ISA BE :SUBJECT MV200 :PREDICATE MV209 :PRESENT "PRESENT") (:VAR MV200 :ISA WHAT)
 (:VAR MV209 :ISA MEMBER :PLURAL T :SET MV206 :HAS-DETERMINER "THE")
 (:VAR MV206 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV211 :ISA BE :SUBJECT MV210 :PREDICATE MV223 :PRESENT "PRESENT") (:VAR MV210 :ISA WHAT)
 (:VAR MV223 :ISA MEMBER :PLURAL T :SET MV221 :HAS-DETERMINER "THE")
 (:VAR MV221 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
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
 (:VAR MV226 :ISA BE :SUBJECT MV225 :PREDICATE MV234 :PRESENT "PRESENT") (:VAR MV225 :ISA WHAT)
 (:VAR MV234 :ISA MEMBER :PLURAL T :SET MV224 :HAS-DETERMINER "THE")
 (:VAR MV224 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAS family" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
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
 (:VAR MV236 :ISA BE :SUBJECT MV235 :PREDICATE MV239 :PRESENT "PRESENT") (:VAR MV235 :ISA WHAT)
 (:VAR MV239 :ISA HAS-NAME :ITEM MV242 :QUANTIFIER MV237)
 (:VAR MV242 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV237 :ISA ANOTHER :WORD "another"))

___________________
24: "What is another name for MAP2K1?"

                    SOURCE-START
e14   BE            1 "What is another name for MAP2K1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is another name for MAP2K1?"
 (:VAR MV246 :ISA BE :SUBJECT MV245 :PREDICATE MV249 :PRESENT "PRESENT") (:VAR MV245 :ISA WHAT)
 (:VAR MV249 :ISA HAS-NAME :ITEM MV244 :QUANTIFIER MV247)
 (:VAR MV244 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV247 :ISA ANOTHER :WORD "another"))

___________________
25: "How does STAT3 affect c-fos"

                    SOURCE-START
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    END-OF-SOURCE
("How does STAT3 affect c-fos"
 (:VAR MV257 :ISA AFFECT :MANNER MV255 :AGENT MV253 :OBJECT MV254 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV255 :ISA HOW)
 (:VAR MV253 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV254 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    SOURCE-START
e11   LIST          1 "List some genes regulated by elk1" 8
                    END-OF-SOURCE
("List some genes regulated by elk1" (:VAR MV259 :ISA LIST :THEME MV265 :PRESENT "PRESENT")
 (:VAR MV265 :ISA GENE :PLURAL T :PREDICATION MV263 :QUANTIFIER MV260 :RAW-TEXT "genes")
 (:VAR MV263 :ISA REGULATE :OBJECT MV265 :AGENT MV258 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV258 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV260 :ISA SOME :WORD "some"))

___________________
27: "List some of the genes regulated by elk1"

                    SOURCE-START
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    END-OF-SOURCE
("List some of the genes regulated by elk1" (:VAR MV269 :ISA LIST :THEME MV280 :PRESENT "PRESENT")
 (:VAR MV280 :ISA GENE :PLURAL T :PREDICATION MV275 :QUANTIFIER MV270 :HAS-DETERMINER "THE"
  :RAW-TEXT "genes")
 (:VAR MV275 :ISA REGULATE :OBJECT MV280 :AGENT MV268 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV268 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV270 :ISA SOME :WORD "some"))

___________________
28: "List the genes regulated by elk1"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by elk1" 8
                    END-OF-SOURCE
("List the genes regulated by elk1" (:VAR MV284 :ISA LIST :THEME MV290 :PRESENT "PRESENT")
 (:VAR MV290 :ISA GENE :PLURAL T :PREDICATION MV288 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV288 :ISA REGULATE :OBJECT MV290 :AGENT MV283 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV283 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    SOURCE-START
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of AKT1 and BRAF?"
 (:VAR MV295 :ISA BE :SUBJECT MV294 :PREDICATE MV310 :PRESENT "PRESENT") (:VAR MV294 :ISA WHAT)
 (:VAR MV310 :ISA REGULATOR :PLURAL T :THEME MV305 :HAS-DETERMINER "THE" :PREDICATION MV297
  :CONTEXT MV298 :RAW-TEXT "regulators")
 (:VAR MV305 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV293 MV304))
 (:VAR MV293 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV304 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV297 :ISA COMMON) (:VAR MV298 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT and BRAF?"
 (:VAR MV312 :ISA BE :SUBJECT MV311 :PREDICATE MV325 :PRESENT "PRESENT") (:VAR MV311 :ISA WHAT)
 (:VAR MV325 :ISA UPSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV321 :HAS-DETERMINER "THE"
  :PREDICATION MV314 :RAW-TEXT "upstreams")
 (:VAR MV321 :ISA COLLECTION :RAW-TEXT "AKT and BRAF" :TYPE PROTEIN-FAMILY :NUMBER 2 :ITEMS
  (MV318 MV320))
 (:VAR MV318 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "AKT3_HUMAN") (:UID "UP:Q9Y243"))
   (PROTEIN (:NAME "AKT2_HUMAN") (:UID "UP:P31751"))
   (PROTEIN (:NAME "AKT1_HUMAN") (:UID "UP:P31749")))
  :UID "FA:03066")
 (:VAR MV320 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV314 :ISA COMMON))

___________________
31: "What are the common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and BRAF?"
 (:VAR MV328 :ISA BE :SUBJECT MV327 :PREDICATE MV340 :PRESENT "PRESENT") (:VAR MV327 :ISA WHAT)
 (:VAR MV340 :ISA UPSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV336 :HAS-DETERMINER "THE"
  :PREDICATION MV330 :RAW-TEXT "upstreams")
 (:VAR MV336 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV326 MV335))
 (:VAR MV326 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV335 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV330 :ISA COMMON))

___________________
32: "What are the genes that smad2 regulates?"

                    SOURCE-START
e16   BE            1 "What are the genes that smad2 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that smad2 regulates?"
 (:VAR MV343 :ISA BE :SUBJECT MV342 :PREDICATE MV350 :PRESENT "PRESENT") (:VAR MV342 :ISA WHAT)
 (:VAR MV350 :ISA GENE :PLURAL T :PREDICATION MV348 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV348 :ISA REGULATE :OBJECT MV350 :THAT-REL T :AGENT MV341 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV341 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV355 :ISA BE :SUBJECT MV354 :PREDICATE MV366 :PRESENT "PRESENT") (:VAR MV354 :ISA WHAT)
 (:VAR MV366 :ISA MICRO-RNA :PLURAL T :PREDICATION MV360 :HAS-DETERMINER "THE" :RAW-TEXT "miRNAs")
 (:VAR MV360 :ISA REGULATE :AGENT MV366 :THAT-REL T :OBJECT MV364 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV364 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV361 MV362 MV351 MV352 MV353))
 (:VAR MV361 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV362 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV351 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV352 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV353 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    SOURCE-START
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:VAR MV369 :ISA BE :SUBJECT MV368 :PREDICATE MV380 :PRESENT "PRESENT") (:VAR MV368 :ISA WHAT)
 (:VAR MV380 :ISA MICRO-RNA :PLURAL T :PREDICATION MV374 :HAS-DETERMINER "THE" :RAW-TEXT "miRNAs")
 (:VAR MV374 :ISA REGULATE :AGENT MV380 :THAT-REL T :OBJECT MV378 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV378 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, and STAT3" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV375 MV376 MV367))
 (:VAR MV375 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV376 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV367 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "What are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SRF?"
 (:VAR MV382 :ISA BE :SUBJECT MV381 :PREDICATE MV390 :PRESENT "PRESENT") (:VAR MV381 :ISA WHAT)
 (:VAR MV390 :ISA REGULATOR :PLURAL T :THEME MV387 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV387 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate in the liver?"
 (:VAR MV394 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV392 :AGENT MV391 :ORGAN MV397 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV392 :ISA WHAT)
 (:VAR MV391 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV397 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
37: "What does it regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does it regulate in the liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it regulate in the liver?"
 (:VAR MV402 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV399 :AGENT-OR-CAUSE MV401 :ORGAN MV405
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV399 :ISA WHAT) (:VAR MV401 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV405 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMAD2?"
 (:VAR MV415 :ISA REGULATE :OBJECT MV414 :AGENT MV407 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV414 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV407 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMDA2?"
 (:VAR MV427 :ISA REGULATE :OBJECT MV426 :AGENT MV425 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV426 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV425 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SRF?"
 (:VAR MV437 :ISA REGULATE :OBJECT MV436 :AGENT MV435 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV436 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV435 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
41: "Which of these are regulated by SMAD2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMAD2?"
 (:VAR MV446 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV442 :AGENT MV439 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV442 :ISA THESE :QUANTIFIER MV440 :WORD "these") (:VAR MV440 :ISA WHICH)
 (:VAR MV439 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
42: "Which of these are regulated by SMDA2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMDA2?"
 (:VAR MV456 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV452 :AGENT MV449 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV452 :ISA THESE :QUANTIFIER MV450 :WORD "these") (:VAR MV450 :ISA WHICH)
 (:VAR MV449 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
43: "Which pathways use these?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use these?"
 (:VAR MV463 :ISA BIO-USE :AGENT MV465 :OBJECT MV464 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV465 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV464 :ISA THESE :WORD "these"))

___________________
44: "Where does STAT3 regulate the expression of c-fos?"

                    SOURCE-START
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Where does STAT3 regulate the expression of c-fos?"
 (:VAR MV470 :ISA REGULATE :LOCATION MV468 :AGENT MV466 :AFFECTED-PROCESS MV472 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV468 :ISA WHERE)
 (:VAR MV466 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV472 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV467 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV467 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
45: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e35   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:VAR MV496 :ISA POLAR-QUESTION :STATEMENT MV480)
 (:VAR MV480 :ISA TELL :AGENT MV479 :THEME MV495 :BENEFICIARY MV481 :MODAL "CAN")
 (:VAR MV479 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV495 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV493 :QUANTIFIER MV482
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV493 :ISA SHARE :OBJECT MV495 :THAT-REL T :PARTICIPANT MV490 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV490 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS (MV477 MV489))
 (:VAR MV477 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV489 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV482 :ISA ALL :WORD "all") (:VAR MV481 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
46: "can you tell me which transcription factors are shared by elk1 and srf"

                    SOURCE-START
e29   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("can you tell me which transcription factors are shared by elk1 and srf"
 (:VAR MV518 :ISA POLAR-QUESTION :STATEMENT MV502)
 (:VAR MV502 :ISA TELL :AGENT MV501 :THEME MV517 :BENEFICIARY MV503 :MODAL "CAN")
 (:VAR MV501 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV517 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV515 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "transcription factors")
 (:VAR MV515 :ISA SHARE :WH-ELEMENT MV511 :WH-PATH NIL :RAW-TEXT "shared" :MODAL MV500 :PARTICIPANT
  MV510 :OBJECT MV511)
 (:VAR MV511 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV500 :ISA CAN)
 (:VAR MV510 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS (MV499 MV509))
 (:VAR MV499 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV509 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV503 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
47: "what are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "what are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what are the regulators of SRF?"
 (:VAR MV520 :ISA BE :SUBJECT MV519 :PREDICATE MV528 :PRESENT "PRESENT") (:VAR MV519 :ISA WHAT)
 (:VAR MV528 :ISA REGULATOR :PLURAL T :THEME MV525 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV525 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
48: "what does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "what does stat regulate" 5
                    END-OF-SOURCE
("what does stat regulate"
 (:VAR MV532 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV529 :AGENT MV531 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV529 :ISA WHAT)
 (:VAR MV531 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME "SOAT1_HUMAN"))

___________________
49: "what is erbb?"

                    SOURCE-START
e4    BE            1 "what is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("what is erbb?" (:VAR MV534 :ISA BE :SUBJECT MV533 :PREDICATE MV535 :PRESENT "PRESENT")
 (:VAR MV533 :ISA WHAT)
 (:VAR MV535 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
50: "Is STAT3 involved in apoptosis?"

                    SOURCE-START
e10   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?" (:VAR MV542 :ISA POLAR-QUESTION :STATEMENT MV538)
 (:VAR MV538 :ISA INVOLVE :OBJECT MV536 :THEME MV540 :PAST "PAST")
 (:VAR MV536 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV540 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
51: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?" (:VAR MV551 :ISA POLAR-QUESTION :STATEMENT MV545)
 (:VAR MV545 :ISA INVOLVE :OBJECT MV543 :THEME MV549 :PAST "PAST")
 (:VAR MV543 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV549 :ISA REGULATE :CELLULAR-PROCESS MV547 :RAW-TEXT "regulation")
 (:VAR MV547 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
52: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e12   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?" (:VAR MV559 :ISA POLAR-QUESTION :STATEMENT MV554)
 (:VAR MV554 :ISA INVOLVE :OBJECT MV552 :THEME MV556 :PAST "PAST")
 (:VAR MV552 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV556 :ISA REGULATE :AFFECTED-PROCESS MV557 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "regulating")
 (:VAR MV557 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
53: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV571 :ISA REGULATE :OBJECT MV570 :AGENT MV560 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV570 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV562 :RAW-TEXT "genes")
 (:VAR MV562 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV560 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
54: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes" (:VAR MV573 :ISA LIST :THEME MV580 :PRESENT "PRESENT")
 (:VAR MV580 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV575 :RAW-TEXT "genes")
 (:VAR MV575 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
55: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV592 :ISA INVOLVE :OBJECT MV595 :THEME MV590 :PRESENT "PRESENT")
 (:VAR MV595 :ISA GENE :PLURAL T :PREDICATION MV585 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV585 :ISA REGULATE :OBJECT MV595 :AGENT MV581 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV581 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV590 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
56: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3" (:VAR MV597 :ISA LIST :THEME MV599 :PRESENT "PRESENT")
 (:VAR MV599 :ISA GENE :PLURAL T :PREDICATION MV600 :RAW-TEXT "genes")
 (:VAR MV600 :ISA REGULATE :OBJECT MV599 :AGENT MV596 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV596 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
57: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV612 :ISA INVOLVE :OBJECT MV611 :THEME MV610 :PRESENT "PRESENT")
 (:VAR MV611 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV610 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
58: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV625 :ISA INVOLVE :OBJECT MV627 :THEME MV623 :PRESENT "PRESENT")
 (:VAR MV627 :ISA GENE :PLURAL T :PREDICATION MV619 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV619 :ISA REGULATE :OBJECT MV627 :THAT-REL T :AGENT MV614 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV614 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV623 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
59: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3" (:VAR MV629 :ISA LIST :THEME MV635 :PRESENT "PRESENT")
 (:VAR MV635 :ISA GENE :PLURAL T :PREDICATION MV633 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV633 :ISA REGULATE :OBJECT MV635 :AGENT MV628 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV628 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
60: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes" (:VAR MV639 :ISA LIST :THEME MV645 :PRESENT "PRESENT")
 (:VAR MV645 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :PREDICATION MV641 :RAW-TEXT "genes")
 (:VAR MV641 :ISA REGULATE :OBJECT MV645 :AGENT MV638 :RAW-TEXT "regulated")
 (:VAR MV638 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
61: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV654 :ISA REGULATE :OBJECT MV653 :AGENT MV646 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV653 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV646 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
62: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV664 :ISA INVOLVE :OBJECT MV663 :THEME MV662 :PRESENT "PRESENT")
 (:VAR MV663 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV662 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

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
 (:VAR MV680 :ISA LET :COMPLEMENT MV701 :PRESENT "PRESENT")
 (:VAR MV701 :ISA KNOW :AGENT MV681 :STATEMENT MV700 :PRESENT "PRESENT")
 (:VAR MV681 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV700 :ISA WH-QUESTION :STATEMENT MV695 :WH IF)
 (:VAR MV695 :ISA INVOLVE :OBJECT MV699 :THEME MV693 :PRESENT "PRESENT")
 (:VAR MV699 :ISA GENE :PLURAL T :QUANTIFIER MV684 :PREDICATION MV689 :HAS-DETERMINER "THE"
  :RAW-TEXT "genes")
 (:VAR MV684 :ISA ANY :WORD "any")
 (:VAR MV689 :ISA REGULATE :OBJECT MV699 :AGENT MV679 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV679 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV693 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
65: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV703 :ISA LET :COMPLEMENT MV725 :PRESENT "PRESENT")
 (:VAR MV725 :ISA KNOW :AGENT MV704 :STATEMENT MV724 :PRESENT "PRESENT")
 (:VAR MV704 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV724 :ISA WH-QUESTION :STATEMENT MV719 :WH WHETHER)
 (:VAR MV719 :ISA INVOLVE :OBJECT MV723 :THEME MV717 :PRESENT "PRESENT")
 (:VAR MV723 :ISA GENE :PLURAL T :QUANTIFIER MV708 :PREDICATION MV713 :HAS-DETERMINER "THE"
  :RAW-TEXT "genes")
 (:VAR MV708 :ISA ANY :WORD "any")
 (:VAR MV713 :ISA REGULATE :OBJECT MV723 :AGENT MV702 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV702 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV717 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
66: "Look up which genes targeted by stat3 are involved in apoptosis"

                    SOURCE-START
e24   LOOK-UP       1 "Look up which " 4
e22   INVOLVE       4 "genes targeted by stat3 are involved in apoptosis" 13
                    END-OF-SOURCE
                    SOURCE-START
e24   VG            1 "Look up which " 4
e22   S             4 "genes targeted by stat3 are involved in apoptosis" 13
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
 (:VAR MV757 :ISA TELL :THEME MV766 :BENEFICIARY MV758 :PRESENT "PRESENT")
 (:VAR MV766 :ISA WH-QUESTION :STATEMENT MV764 :WH IF)
 (:VAR MV764 :ISA INVOLVE :OBJECT MV756 :THEME MV763 :PRESENT "PRESENT")
 (:VAR MV756 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV763 :ISA APOPTOSIS :RAW-TEXT "apoptosis") (:VAR MV758 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
69: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV768 :ISA TELL :THEME MV778 :THEME MV769 :PRESENT "PRESENT")
 (:VAR MV778 :ISA WH-QUESTION :STATEMENT MV776 :WH WHETHER)
 (:VAR MV776 :ISA INVOLVE :OBJECT MV767 :THEME MV775 :PRESENT "PRESENT")
 (:VAR MV767 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV775 :ISA APOPTOSIS :RAW-TEXT "apoptosis") (:VAR MV769 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
70: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV781 :ISA BE :SUBJECT MV780 :PREDICATE MV793 :PRESENT "PRESENT") (:VAR MV780 :ISA WHAT)
 (:VAR MV793 :ISA GENE :PLURAL T :PREDICATION MV791 :PREDICATION MV782 :RAW-TEXT "genes")
 (:VAR MV791 :ISA INVOLVE :OBJECT MV793 :THAT-REL T :THEME MV789 :PRESENT "PRESENT")
 (:VAR MV789 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV782 :ISA REGULATE :OBJECT MV793 :AGENT MV779 :RAW-TEXT "regulated")
 (:VAR MV779 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV796 :ISA BE :SUBJECT MV795 :PREDICATE MV808 :PRESENT "PRESENT") (:VAR MV795 :ISA WHAT)
 (:VAR MV808 :ISA GENE :PLURAL T :PREDICATION MV806 :PREDICATION MV797 :RAW-TEXT "genes")
 (:VAR MV806 :ISA INVOLVE :OBJECT MV808 :THAT-REL T :THEME MV804 :PRESENT "PRESENT")
 (:VAR MV804 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV797 :ISA REGULATE :OBJECT MV808 :AGENT MV794 :RAW-TEXT "regulated")
 (:VAR MV794 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
72: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV820 :ISA INVOLVE :OBJECT MV813 :THEME MV819 :PRESENT "PRESENT")
 (:VAR MV813 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV809 :HAS-DETERMINER "WHAT" :MODIFIER MV812
  :RAW-TEXT "downstream")
 (:VAR MV809 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV812 :ISA GENE :PLURAL T :RAW-TEXT "genes")
 (:VAR MV819 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
73: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV825 :ISA BE :SUBJECT MV824 :PREDICATE MV827 :PRESENT "PRESENT") (:VAR MV824 :ISA WHAT)
 (:VAR MV827 :ISA INVOLVE :THEME MV832 :PARTICIPANT MV823 :HAS-DETERMINER "THE")
 (:VAR MV832 :ISA REGULATE :CELLULAR-PROCESS MV830 :RAW-TEXT "regulation")
 (:VAR MV830 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV823 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
74: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV838 :ISA INVOLVE :THEME MV840 :OBJECT MV839 :PRESENT "PRESENT")
 (:VAR MV840 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV839 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
75: "What processes involve srf"

                    SOURCE-START
e7    INVOLVE       1 "What processes involve srf" 5
                    END-OF-SOURCE
("What processes involve srf"
 (:VAR MV846 :ISA INVOLVE :THEME MV848 :OBJECT MV847 :PRESENT "PRESENT")
 (:VAR MV848 :ISA BIO-PROCESS :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "processes")
 (:VAR MV847 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
76: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV860 :ISA INVOLVE :OBJECT MV859 :THEME MV857 :PRESENT "PRESENT")
 (:VAR MV859 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :PREDICATION MV851 :RAW-TEXT "genes")
 (:VAR MV851 :ISA REGULATE :OBJECT MV859 :AGENT MV849 :RAW-TEXT "regulated")
 (:VAR MV849 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV857 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
77: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV876 :ISA INVOLVE :OBJECT MV879 :THEME MV873 :PRESENT "PRESENT")
 (:VAR MV879 :ISA GENE :PLURAL T :ORGAN MV869 :HAS-DETERMINER "WHICH" :PREDICATION MV864 :RAW-TEXT
  "genes")
 (:VAR MV869 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV864 :ISA REGULATE :OBJECT MV879 :AGENT MV862 :RAW-TEXT "regulated")
 (:VAR MV862 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV873 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
78: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3-regulated genes are involved in apoptosis?"
 (:VAR MV891 :ISA INVOLVE :OBJECT MV890 :THEME MV888 :PRESENT "PRESENT")
 (:VAR MV890 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :PREDICATION MV882 :RAW-TEXT "genes")
 (:VAR MV882 :ISA REGULATE :OBJECT MV890 :AGENT MV880 :RAW-TEXT "regulated")
 (:VAR MV880 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV888 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
79: "Mek activates MAPK1."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK1."
 (:VAR MV895 :ISA BIO-ACTIVATE :AGENT MV894 :OBJECT MV893 :PRESENT "PRESENT" :RAW-TEXT "activates")
 (:VAR MV894 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV893 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
80: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV897 :ISA BIO-ACTIVATE :AGENT MV896 :OBJECT MV898 :PRESENT "PRESENT" :RAW-TEXT "activates")
 (:VAR MV896 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV898 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV901 :ISA PHOSPHORYLATE :AGENT MV899 :SUBSTRATE MV900 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV899 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV900 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
82: "DUSP6 dephosphorylates MAPK1"

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1"
 (:VAR MV904 :ISA DEPHOSPHORYLATE :AGENT MV902 :SUBSTRATE MV903 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV902 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV903 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
83: "ELK1 positively regulates FOS."

                    SOURCE-START
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    PERIOD
                    END-OF-SOURCE
("ELK1 positively regulates FOS."
 (:VAR MV906 :ISA UPREGULATE :AGENT MV905 :OBJECT MV907 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV905 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV907 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
84: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV911 :ISA BINDING :BINDER MV910 :DIRECT-BINDEE MV914 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV910 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV914 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV909 :MODIFIER MV913 :RAW-TEXT "EGF"
  :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV909 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV913 :ISA LIGAND :RAW-TEXT "ligand"))

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
 (:VAR MV921 :ISA BINDING :BINDER MV928 :DIRECT-BINDEE MV929 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV928 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF" :COMPONENT MV919
  :COMPONENT MV918)
 (:VAR MV919 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV918 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV929 :ISA BIO-COMPLEX :QUANTIFIER MV922 :RAW-TEXT "EGFR-EGF" :COMPONENT MV924 :COMPONENT
  MV923)
 (:VAR MV922 :ISA ANOTHER :WORD "another")
 (:VAR MV924 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV923 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
87: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV935 :ISA BINDING :BINDER MV937 :DIRECT-BINDEE MV930 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV937 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR" :COMPONENT MV932
  :COMPONENT MV932)
 (:VAR MV932 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV930 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

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
 (:VAR MV944 :ISA BINDING :BINDER MV940 :DIRECT-BINDEE MV941 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV940 :ISA PROTEIN :PREDICATION MV943 :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV943 :ISA BINDING :DIRECT-BINDEE MV940 :BINDER MV942 :RAW-TEXT "bound")
 (:VAR MV942 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV941 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN"))

___________________
90: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV948 :ISA BINDING :BINDER MV946 :DIRECT-BINDEE MV949 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV946 :ISA PROTEIN :PREDICATION MV947 :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV947 :ISA BINDING :DIRECT-BINDEE MV946 :BINDER MV945 :RAW-TEXT "bound")
 (:VAR MV945 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV949 :ISA PROTEIN :PREDICATION MV956 :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV956 :ISA BINDING :DIRECT-BINDEE MV949 :THAT-REL T :BINDEE MV955 :PRESENT "PRESENT"
  :NEGATION MV952 :RAW-TEXT "bound")
 (:VAR MV955 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV952 :ISA NOT :WORD "not"))

___________________
91: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV961 :ISA BINDING :BINDER MV960 :DIRECT-BINDEE MV962 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV960 :ISA PROTEIN :PREDICATION MV959 :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV959 :ISA BINDING :DIRECT-BINDEE MV960 :BINDER MV958 :RAW-TEXT "bound")
 (:VAR MV958 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV962 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
92: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV972 :ISA BINDING :BINDER MV966 :DIRECT-BINDEE MV973 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV966 :ISA PROTEIN :PREDICATION MV974 :PREDICATION MV965 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV974 :ISA BINDING :DIRECT-BINDEE MV966 :THAT-REL T :BINDEE MV963 :PRESENT "PRESENT"
  :NEGATION MV969 :RAW-TEXT "bound")
 (:VAR MV963 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV969 :ISA NOT :WORD "not")
 (:VAR MV965 :ISA BINDING :DIRECT-BINDEE MV966 :BINDER MV964 :RAW-TEXT "bound")
 (:VAR MV964 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV973 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
93: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV976 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
94: "How does BRAF affect MAP2K1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAP2K1?"
 (:VAR MV981 :ISA AFFECT :MANNER MV978 :AGENT MV980 :OBJECT MV977 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV978 :ISA HOW)
 (:VAR MV980 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV977 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
95: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the downstream of AKT1."
 (:VAR MV990 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV984 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV984 :ISA HIGHLIGHT :THEME MV986 :PRESENT "PRESENT")
 (:VAR MV986 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV983 :HAS-DETERMINER "THE" :RAW-TEXT
  "downstream")
 (:VAR MV983 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
96: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    PERIOD
                    END-OF-SOURCE
("Let's move phosphorylated MAPK1 to the bottom."
 (:VAR MV1000 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV994 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV994 :ISA MOVE-TO :GOAL MV998 :THEME MV992 :PRESENT "PRESENT")
 (:VAR MV998 :ISA BOTTOM :HAS-DETERMINER "THE")
 (:VAR MV992 :ISA PROTEIN :PREDICATION MV995 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV995 :ISA PHOSPHORYLATE :SUBSTRATE MV992 :RAW-TEXT "phosphorylated"))

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
e14   EXPLICIT-SUGGESTION 1 "Let's show AKT1 on the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's show AKT1 on the top."
 (:VAR MV1017 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1012 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1012 :ISA SHOW :AT-RELATIVE-LOCATION MV1015 :STATEMENT-OR-THEME MV1011 :PRESENT "PRESENT")
 (:VAR MV1015 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1011 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
99: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does ELK1 decrease FOS " 6
e14   IN            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e17   S             1 "Does ELK1 decrease FOS " 6
e14   PP            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
100: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e25   DECREASE      1 "Does ELK1 decrease the amount of FOS " 9
e20   IN            9 "in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e25   S             1 "Does ELK1 decrease the amount of FOS " 9
e20   PP            9 "in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
101: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does FOS decrease ELK1 " 6
e14   IN            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e17   S             1 "Does FOS decrease ELK1 " 6
e14   PP            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
102: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e35   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 10 fold?"
 (:VAR MV1077 :ISA POLAR-QUESTION :STATEMENT MV1076)
 (:VAR MV1076 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1074 :EVENT MV1071)
 (:VAR MV1074 :ISA WH-QUESTION :STATEMENT MV1072 :WH IF)
 (:VAR MV1072 :ISA INCREASE :AGENT-OR-CAUSE MV1060 :LEVEL MV1070 :AFFECTED-PROCESS-OR-OBJECT MV1064
  :RAW-TEXT "increase")
 (:VAR MV1060 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1070 :ISA MEASUREMENT :NUMBER MV1067) (:VAR MV1067 :ISA NUMBER :VALUE 10)
 (:VAR MV1064 :ISA BIO-AMOUNT :MEASURED-ITEM MV1055 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1055 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1071 :ISA VANISH :AGENT MV1057 :RAW-TEXT "vanish")
 (:VAR MV1057 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
103: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e38   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1102 :ISA POLAR-QUESTION :STATEMENT MV1101)
 (:VAR MV1101 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1099 :EVENT MV1095)
 (:VAR MV1099 :ISA WH-QUESTION :STATEMENT MV1096 :WH IF)
 (:VAR MV1096 :ISA INCREASE :AGENT-OR-CAUSE MV1083 :MULTIPLIER-OR-CAUSE MV1094
  :AFFECTED-PROCESS-OR-OBJECT MV1087 :RAW-TEXT "increase")
 (:VAR MV1083 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1094 :ISA MEASUREMENT :NUMBER MV1091) (:VAR MV1091 :ISA NUMBER :VALUE 10)
 (:VAR MV1087 :ISA BIO-AMOUNT :MEASURED-ITEM MV1078 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1078 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1095 :ISA VANISH :AGENT MV1080 :RAW-TEXT "vanish")
 (:VAR MV1080 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV1124 :ISA POLAR-QUESTION :STATEMENT MV1123)
 (:VAR MV1123 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1121 :EVENT MV1118)
 (:VAR MV1121 :ISA WH-QUESTION :STATEMENT MV1119 :WH IF)
 (:VAR MV1119 :ISA INCREASE :AGENT-OR-CAUSE MV1109 :MULTIPLIER-OR-CAUSE MV1117 :OBJECT MV1104
  :RAW-TEXT "increase")
 (:VAR MV1109 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1117 :ISA MEASUREMENT :NUMBER MV1114) (:VAR MV1114 :ISA NUMBER :VALUE 10)
 (:VAR MV1104 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV1118 :ISA VANISH :AGENT MV1103 :RAW-TEXT "vanish")
 (:VAR MV1103 :ISA PROTEIN :PREDICATION MV1106 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1106 :ISA PHOSPHORYLATE :SUBSTRATE MV1103 :RAW-TEXT "phosphorylated"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV1150 :ISA POLAR-QUESTION :STATEMENT MV1149)
 (:VAR MV1149 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1147 :EVENT MV1143)
 (:VAR MV1147 :ISA WH-QUESTION :STATEMENT MV1144 :WH IF)
 (:VAR MV1144 :ISA INCREASE :AGENT-OR-CAUSE MV1131 :MULTIPLIER-OR-CAUSE MV1142
  :AFFECTED-PROCESS-OR-OBJECT MV1135 :RAW-TEXT "increase")
 (:VAR MV1131 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1142 :ISA MEASUREMENT :NUMBER MV1139) (:VAR MV1139 :ISA NUMBER :VALUE 10)
 (:VAR MV1135 :ISA BIO-AMOUNT :MEASURED-ITEM MV1126 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1126 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV1143 :ISA VANISH :AGENT MV1125 :RAW-TEXT "vanish")
 (:VAR MV1125 :ISA PROTEIN :PREDICATION MV1128 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1128 :ISA PHOSPHORYLATE :SUBSTRATE MV1125 :RAW-TEXT "phosphorylated"))

___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1162 :ISA POLAR-QUESTION :STATEMENT MV1160)
 (:VAR MV1160 :ISA INCREASE :CAUSE MV1154 :ADVERB MV1157 :RAW-TEXT "increase")
 (:VAR MV1154 :ISA BIO-AMOUNT :MEASURED-ITEM MV1151 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1151 :ISA PROTEIN :PREDICATION MV1156 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1156 :ISA PHOSPHORYLATE :SUBSTRATE MV1151 :RAW-TEXT "phosphorylated")
 (:VAR MV1157 :ISA EVER :NAME "ever"))

___________________
107: "Is MAP2K1 bound to MAPK1 eventually high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is MAP2K1 bound to MAPK1 eventually high" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP2K1 bound to MAPK1 eventually high?" (:VAR MV1172 :ISA POLAR-QUESTION :STATEMENT MV1171)
 (:VAR MV1171 :ISA COPULAR-PREDICATION :ITEM MV1163 :VALUE MV1169 :PREDICATE MV1165)
 (:VAR MV1163 :ISA PROTEIN :PREDICATION MV1166 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1166 :ISA BINDING :DIRECT-BINDEE MV1163 :BINDEE MV1164 :PAST "PAST" :RAW-TEXT "bound")
 (:VAR MV1164 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1169 :ISA HIGH :ADVERB MV1168) (:VAR MV1168 :ISA EVENTUALLY :NAME "eventually")
 (:VAR MV1165 :ISA BE))

___________________
108: "Is MAPK1 bound to MAP2K1 transient?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Is MAPK1 bound to MAP2K1 transient" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1 bound to MAP2K1 transient?" (:VAR MV1181 :ISA POLAR-QUESTION :STATEMENT MV1180)
 (:VAR MV1180 :ISA COPULAR-PREDICATION :ITEM MV1173 :VALUE MV1178 :PREDICATE MV1175)
 (:VAR MV1173 :ISA PROTEIN :PREDICATION MV1176 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1176 :ISA BINDING :DIRECT-BINDEE MV1173 :BINDEE MV1174 :PAST "PAST" :RAW-TEXT "bound")
 (:VAR MV1174 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1178 :ISA TRANSIENT) (:VAR MV1175 :ISA BE))

___________________
109: "Is MAPK1-bound MAP2K1 sustained?"

                    SOURCE-START
e13   SUSTAINED     1 "Is MAPK1-bound MAP2K1 sustained" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1-bound MAP2K1 sustained?" (:VAR MV1188 :ISA POLAR-QUESTION :STATEMENT MV1187)
 (:VAR MV1187 :ISA SUSTAINED :THEME MV1183 :PAST "PAST")
 (:VAR MV1183 :ISA PROTEIN :PREDICATION MV1185 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1185 :ISA BINDING :DIRECT-BINDEE MV1183 :BINDER MV1182 :RAW-TEXT "bound")
 (:VAR MV1182 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?" (:VAR MV1195 :ISA POLAR-QUESTION :STATEMENT MV1194)
 (:VAR MV1194 :ISA COPULAR-PREDICATION :ITEM MV1189 :VALUE MV1193 :PREDICATE MV1190)
 (:VAR MV1189 :ISA PROTEIN :PREDICATION MV1191 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1191 :ISA PHOSPHORYLATE :SUBSTRATE MV1189 :RAW-TEXT "phosphorylated")
 (:VAR MV1193 :ISA HIGH :ADVERB MV1192) (:VAR MV1192 :ISA ALWAYS :NAME "always")
 (:VAR MV1190 :ISA BE))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?" (:VAR MV1202 :ISA POLAR-QUESTION :STATEMENT MV1201)
 (:VAR MV1201 :ISA COPULAR-PREDICATION :ITEM MV1196 :VALUE MV1200 :PREDICATE MV1197)
 (:VAR MV1196 :ISA PROTEIN :PREDICATION MV1198 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1198 :ISA PHOSPHORYLATE :SUBSTRATE MV1196 :RAW-TEXT "phosphorylated")
 (:VAR MV1200 :ISA HIGH :ADVERB MV1199) (:VAR MV1199 :ISA EVENTUALLY :NAME "eventually")
 (:VAR MV1197 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?" (:VAR MV1209 :ISA POLAR-QUESTION :STATEMENT MV1208)
 (:VAR MV1208 :ISA COPULAR-PREDICATION :ITEM MV1203 :VALUE MV1207 :PREDICATE MV1204)
 (:VAR MV1203 :ISA PROTEIN :PREDICATION MV1205 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1205 :ISA PHOSPHORYLATE :SUBSTRATE MV1203 :RAW-TEXT "phosphorylated")
 (:VAR MV1207 :ISA HIGH :ADVERB MV1206) (:VAR MV1206 :ISA EVER :NAME "ever") (:VAR MV1204 :ISA BE))

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
("Is phosphorylated MAPK1 high?" (:VAR MV1225 :ISA POLAR-QUESTION :STATEMENT MV1224)
 (:VAR MV1224 :ISA COPULAR-PREDICATION :ITEM MV1220 :VALUE MV1223 :PREDICATE MV1221)
 (:VAR MV1220 :ISA PROTEIN :PREDICATION MV1222 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1222 :ISA PHOSPHORYLATE :SUBSTRATE MV1220 :RAW-TEXT "phosphorylated")
 (:VAR MV1223 :ISA HIGH) (:VAR MV1221 :ISA BE))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e19   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1236 :ISA POLAR-QUESTION :STATEMENT MV1230)
 (:VAR MV1230 :ISA SUSTAINED :THEME MV1226 :LEVEL MV1234 :PAST "PAST")
 (:VAR MV1226 :ISA PROTEIN :PREDICATION MV1228 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1228 :ISA PHOSPHORYLATE :SUBSTRATE MV1226 :RAW-TEXT "phosphorylated")
 (:VAR MV1234 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1233 :RAW-TEXT "level")
 (:VAR MV1233 :ISA HIGH))

___________________
116: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?" (:VAR MV1242 :ISA POLAR-QUESTION :STATEMENT MV1241)
 (:VAR MV1241 :ISA SUSTAINED :THEME MV1237 :PAST "PAST")
 (:VAR MV1237 :ISA PROTEIN :PREDICATION MV1239 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1239 :ISA PHOSPHORYLATE :SUBSTRATE MV1237 :RAW-TEXT "phosphorylated"))

___________________
117: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?" (:VAR MV1248 :ISA POLAR-QUESTION :STATEMENT MV1247)
 (:VAR MV1247 :ISA COPULAR-PREDICATION :ITEM MV1243 :VALUE MV1246 :PREDICATE MV1244)
 (:VAR MV1243 :ISA PROTEIN :PREDICATION MV1245 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1245 :ISA PHOSPHORYLATE :SUBSTRATE MV1243 :RAW-TEXT "phosphorylated")
 (:VAR MV1246 :ISA TRANSIENT) (:VAR MV1244 :ISA BE))

___________________
118: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?" (:VAR MV1259 :ISA POLAR-QUESTION :STATEMENT MV1258)
 (:VAR MV1258 :ISA COPULAR-PREDICATION :ITEM MV1257 :VALUE MV1255 :PREDICATE MV1251)
 (:VAR MV1257 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1" :COMPONENT MV1250
  :COMPONENT MV1249)
 (:VAR MV1250 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1249 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1255 :ISA HIGH :ADVERB MV1254) (:VAR MV1254 :ISA EVER :NAME "ever") (:VAR MV1251 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?" (:VAR MV1268 :ISA POLAR-QUESTION :STATEMENT MV1265)
 (:VAR MV1265 :ISA BIO-FORM :OBJECT MV1267 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1267 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1" :COMPONENT MV1261
  :COMPONENT MV1260)
 (:VAR MV1261 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1260 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
120: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV1291 :ISA POLAR-QUESTION :STATEMENT MV1290)
 (:VAR MV1290 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1286 :EVENT MV1288)
 (:VAR MV1286 :ISA WH-QUESTION :STATEMENT MV1280 :WH IF)
 (:VAR MV1280 :ISA INCREASE :AGENT-OR-CAUSE MV1278 :LEVEL MV1285 :OBJECT MV1269 :PRESENT "PRESENT"
  :RAW-TEXT "increase")
 (:VAR MV1278 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1285 :ISA MEASUREMENT :NUMBER MV1282) (:VAR MV1282 :ISA NUMBER :VALUE 10)
 (:VAR MV1269 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1288 :ISA COPULAR-PREDICATION :ITEM MV1272 :VALUE MV1276 :PREDICATE MV1270)
 (:VAR MV1272 :ISA BIO-AMOUNT :MEASURED-ITEM MV1274 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1274 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1276 :ISA LOW :ADVERB MV1275) (:VAR MV1275 :ISA ALWAYS :NAME "always")
 (:VAR MV1270 :ISA BE))

___________________
121: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1316 :ISA POLAR-QUESTION :STATEMENT MV1315)
 (:VAR MV1315 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1311 :EVENT MV1313)
 (:VAR MV1311 :ISA WH-QUESTION :STATEMENT MV1303 :WH IF)
 (:VAR MV1303 :ISA INCREASE :AGENT-OR-CAUSE MV1301 :MULTIPLIER-OR-CAUSE MV1309 :OBJECT MV1292
  :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1301 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1309 :ISA MEASUREMENT :NUMBER MV1306) (:VAR MV1306 :ISA NUMBER :VALUE 100)
 (:VAR MV1292 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1313 :ISA COPULAR-PREDICATION :ITEM MV1295 :VALUE MV1299 :PREDICATE MV1293)
 (:VAR MV1295 :ISA BIO-AMOUNT :MEASURED-ITEM MV1297 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1297 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1299 :ISA LOW :ADVERB MV1298) (:VAR MV1298 :ISA ALWAYS :NAME "always")
 (:VAR MV1293 :ISA BE))

___________________
122: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
 (:VAR MV1343 :ISA POLAR-QUESTION :STATEMENT MV1342)
 (:VAR MV1342 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1338 :EVENT MV1340)
 (:VAR MV1338 :ISA WH-QUESTION :STATEMENT MV1328 :WH IF)
 (:VAR MV1328 :ISA INCREASE :AGENT-OR-CAUSE MV1326 :LEVEL MV1336 :AFFECTED-PROCESS-OR-OBJECT MV1330
  :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1326 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1336 :ISA MEASUREMENT :NUMBER MV1333) (:VAR MV1333 :ISA NUMBER :VALUE 100)
 (:VAR MV1330 :ISA BIO-AMOUNT :MEASURED-ITEM MV1317 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1317 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1340 :ISA COPULAR-PREDICATION :ITEM MV1320 :VALUE MV1324 :PREDICATE MV1318)
 (:VAR MV1320 :ISA BIO-AMOUNT :MEASURED-ITEM MV1322 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1322 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1324 :ISA HIGH :ADVERB MV1323) (:VAR MV1323 :ISA EVER :NAME "ever") (:VAR MV1318 :ISA BE))

___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e45   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1372 :ISA POLAR-QUESTION :STATEMENT MV1371)
 (:VAR MV1371 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1367 :EVENT MV1369)
 (:VAR MV1367 :ISA WH-QUESTION :STATEMENT MV1355 :WH IF)
 (:VAR MV1355 :ISA INCREASE :AGENT-OR-CAUSE MV1353 :MULTIPLIER-OR-CAUSE MV1364
  :AFFECTED-PROCESS-OR-OBJECT MV1357 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1353 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1364 :ISA MEASUREMENT :NUMBER MV1361) (:VAR MV1361 :ISA NUMBER :VALUE 100)
 (:VAR MV1357 :ISA BIO-AMOUNT :MEASURED-ITEM MV1344 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1344 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1369 :ISA COPULAR-PREDICATION :ITEM MV1347 :VALUE MV1351 :PREDICATE MV1345)
 (:VAR MV1347 :ISA BIO-AMOUNT :MEASURED-ITEM MV1349 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1349 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1351 :ISA HIGH :ADVERB MV1350) (:VAR MV1350 :ISA EVER :NAME "ever") (:VAR MV1345 :ISA BE))

___________________
124: "Is the amount of MAPK1 phosphorylated eventually high?"

                    SOURCE-START
e2    BE            1 "Is " 2
e14   BIO-AMOUNT    2 "the amount of MAPK1 " 7
e8    PHOSPHORYLATE 7 "phosphorylated " 8
e12   HIGH          8 "eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e2    PREPOSED-AUXILIARY  1 "Is " 2
e14   NP            2 "the amount of MAPK1 " 7
e8    VG+ED         7 "phosphorylated " 8
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
 (:VAR MV1392 :ISA POLAR-QUESTION :STATEMENT MV1391)
 (:VAR MV1391 :ISA COPULAR-PREDICATION :ITEM MV1385 :VALUE MV1389 :PREDICATE MV1383)
 (:VAR MV1385 :ISA BIO-AMOUNT :MEASURED-ITEM MV1382 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1382 :ISA PROTEIN :PREDICATION MV1387 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1387 :ISA PHOSPHORYLATE :SUBSTRATE MV1382 :RAW-TEXT "phosphorylated")
 (:VAR MV1389 :ISA HIGH :ADVERB MV1388) (:VAR MV1388 :ISA EVENTUALLY :NAME "eventually")
 (:VAR MV1383 :ISA BE))

___________________
126: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1403 :ISA POLAR-QUESTION :STATEMENT MV1402)
 (:VAR MV1402 :ISA COPULAR-PREDICATION :ITEM MV1396 :VALUE MV1400 :PREDICATE MV1394)
 (:VAR MV1396 :ISA BIO-AMOUNT :MEASURED-ITEM MV1393 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1393 :ISA PROTEIN :PREDICATION MV1398 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1398 :ISA PHOSPHORYLATE :SUBSTRATE MV1393 :RAW-TEXT "phosphorylated")
 (:VAR MV1400 :ISA HIGH :ADVERB MV1399) (:VAR MV1399 :ISA EVER :NAME "ever") (:VAR MV1394 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1414 :ISA POLAR-QUESTION :STATEMENT MV1412)
 (:VAR MV1412 :ISA INCREASE :CAUSE MV1407 :ADVERB MV1410 :RAW-TEXT "increasing")
 (:VAR MV1407 :ISA BIO-AMOUNT :MEASURED-ITEM MV1404 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1404 :ISA PROTEIN :PREDICATION MV1409 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1409 :ISA PHOSPHORYLATE :SUBSTRATE MV1404 :RAW-TEXT "phosphorylated")
 (:VAR MV1410 :ISA EVER :NAME "ever"))

___________________
128: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?" (:VAR MV1424 :ISA POLAR-QUESTION :STATEMENT MV1423)
 (:VAR MV1423 :ISA COPULAR-PREDICATION :ITEM MV1418 :VALUE MV1421 :PREDICATE MV1416)
 (:VAR MV1418 :ISA BIO-AMOUNT :MEASURED-ITEM MV1415 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1415 :ISA PROTEIN :PREDICATION MV1420 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1420 :ISA PHOSPHORYLATE :SUBSTRATE MV1415 :RAW-TEXT "phosphorylated")
 (:VAR MV1421 :ISA HIGH) (:VAR MV1416 :ISA BE))

___________________
129: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1435 :ISA POLAR-QUESTION :STATEMENT MV1434)
 (:VAR MV1434 :ISA COPULAR-PREDICATION :ITEM MV1428 :VALUE MV1432 :PREDICATE MV1426)
 (:VAR MV1428 :ISA BIO-AMOUNT :MEASURED-ITEM MV1425 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1425 :ISA PROTEIN :PREDICATION MV1430 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1430 :ISA PHOSPHORYLATE :SUBSTRATE MV1425 :RAW-TEXT "phosphorylated")
 (:VAR MV1432 :ISA HIGH :ADVERB MV1431) (:VAR MV1431 :ISA SOMETIMES) (:VAR MV1426 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e27   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1450 :ISA POLAR-QUESTION :STATEMENT MV1443)
 (:VAR MV1443 :ISA SUSTAINED :THEME MV1439 :LEVEL MV1447 :PAST "PAST")
 (:VAR MV1439 :ISA BIO-AMOUNT :MEASURED-ITEM MV1436 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1436 :ISA PROTEIN :PREDICATION MV1441 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1441 :ISA PHOSPHORYLATE :SUBSTRATE MV1436 :RAW-TEXT "phosphorylated")
 (:VAR MV1447 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1446 :RAW-TEXT "level")
 (:VAR MV1446 :ISA HIGH))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1460 :ISA POLAR-QUESTION :STATEMENT MV1458)
 (:VAR MV1458 :ISA SUSTAINED :THEME MV1454 :PAST "PAST")
 (:VAR MV1454 :ISA BIO-AMOUNT :MEASURED-ITEM MV1451 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1451 :ISA PROTEIN :PREDICATION MV1456 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1456 :ISA PHOSPHORYLATE :SUBSTRATE MV1451 :RAW-TEXT "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1470 :ISA POLAR-QUESTION :STATEMENT MV1469)
 (:VAR MV1469 :ISA COPULAR-PREDICATION :ITEM MV1464 :VALUE MV1467 :PREDICATE MV1462)
 (:VAR MV1464 :ISA BIO-AMOUNT :MEASURED-ITEM MV1461 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1461 :ISA PROTEIN :PREDICATION MV1466 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1466 :ISA PHOSPHORYLATE :SUBSTRATE MV1461 :RAW-TEXT "phosphorylated")
 (:VAR MV1467 :ISA TRANSIENT) (:VAR MV1462 :ISA BE))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1481 :ISA POLAR-QUESTION :STATEMENT MV1479)
 (:VAR MV1479 :ISA COPULAR-PREDICATION :ITEM MV1474 :VALUE MV1478 :PREDICATE MV1477)
 (:VAR MV1474 :ISA BIO-AMOUNT :MEASURED-ITEM MV1471 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1471 :ISA PROTEIN :PREDICATION MV1476 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1476 :ISA PHOSPHORYLATE :SUBSTRATE MV1471 :RAW-TEXT "phosphorylated")
 (:VAR MV1478 :ISA HIGH) (:VAR MV1477 :ISA BE :MODAL "WILL"))

___________________
134: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e35   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1504 :ISA POLAR-QUESTION :STATEMENT MV1503)
 (:VAR MV1503 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1500 :EVENT MV1501)
 (:VAR MV1500 :ISA WH-QUESTION :STATEMENT MV1490 :WH IF)
 (:VAR MV1490 :ISA INCREASE :AGENT-OR-CAUSE MV1488 :LEVEL MV1498 :AFFECTED-PROCESS-OR-OBJECT MV1492
  :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1488 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1498 :ISA MEASUREMENT :NUMBER MV1495) (:VAR MV1495 :ISA NUMBER :VALUE 100)
 (:VAR MV1492 :ISA BIO-AMOUNT :MEASURED-ITEM MV1483 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1483 :ISA MOLECULE :RAW-TEXT "SB525334" :NAME "sb525334" :UID "PCID:9967941")
 (:VAR MV1501 :ISA COPULAR-PREDICATION :ITEM MV1482 :VALUE MV1486 :PREDICATE MV1484)
 (:VAR MV1482 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1486 :ISA LOW :ADVERB MV1485) (:VAR MV1485 :ISA EVENTUALLY :NAME "eventually")
 (:VAR MV1484 :ISA BE))

___________________
135: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e40   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1531 :ISA POLAR-QUESTION :STATEMENT MV1530)
 (:VAR MV1530 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1527 :EVENT MV1528)
 (:VAR MV1527 :ISA WH-QUESTION :STATEMENT MV1524 :WH IF)
 (:VAR MV1524 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1513 :MULTIPLIER-OR-CAUSE MV1522
  :RAW-TEXT "increased")
 (:VAR MV1513 :ISA BIO-AMOUNT :MEASURED-ITEM MV1506 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1506 :ISA MOLECULE :RAW-TEXT "SB525334" :NAME "sb525334" :UID "PCID:9967941")
 (:VAR MV1522 :ISA MEASUREMENT :NUMBER MV1519) (:VAR MV1519 :ISA NUMBER :VALUE 100)
 (:VAR MV1528 :ISA COPULAR-PREDICATION :ITEM MV1505 :VALUE MV1510 :PREDICATE MV1507)
 (:VAR MV1505 :ISA PROTEIN :PREDICATION MV1508 :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1508 :ISA ACTIVE) (:VAR MV1510 :ISA LOW :ADVERB MV1509)
 (:VAR MV1509 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1507 :ISA BE))

___________________
136: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e43   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1558 :ISA POLAR-QUESTION :STATEMENT MV1557)
 (:VAR MV1557 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1553 :EVENT MV1555)
 (:VAR MV1553 :ISA WH-QUESTION :STATEMENT MV1543 :WH IF)
 (:VAR MV1543 :ISA INCREASE :AGENT-OR-CAUSE MV1541 :LEVEL MV1551 :AFFECTED-PROCESS-OR-OBJECT MV1545
  :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1541 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1551 :ISA MEASUREMENT :NUMBER MV1548) (:VAR MV1548 :ISA NUMBER :VALUE 100)
 (:VAR MV1545 :ISA BIO-AMOUNT :MEASURED-ITEM MV1533 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1533 :ISA MOLECULE :RAW-TEXT "SB525334" :NAME "sb525334" :UID "PCID:9967941")
 (:VAR MV1555 :ISA COPULAR-PREDICATION :ITEM MV1536 :VALUE MV1539 :PREDICATE MV1534)
 (:VAR MV1536 :ISA BIO-AMOUNT :MEASURED-ITEM MV1532 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1532 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1539 :ISA LOW :ADVERB MV1538) (:VAR MV1538 :ISA EVENTUALLY :NAME "eventually")
 (:VAR MV1534 :ISA BE))

___________________
137: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e45   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" 21
                    END-OF-SOURCE
("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
 (:VAR MV1586 :ISA POLAR-QUESTION :STATEMENT MV1585)
 (:VAR MV1585 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1581 :EVENT MV1583)
 (:VAR MV1581 :ISA WH-QUESTION :STATEMENT MV1571 :WH IF)
 (:VAR MV1571 :ISA INCREASE :AGENT-OR-CAUSE MV1569 :LEVEL MV1579 :AFFECTED-PROCESS-OR-OBJECT MV1573
  :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1569 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1579 :ISA MEASUREMENT :NUMBER MV1576) (:VAR MV1576 :ISA NUMBER :VALUE 100)
 (:VAR MV1573 :ISA BIO-AMOUNT :MEASURED-ITEM MV1560 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1560 :ISA MOLECULE :RAW-TEXT "SB-525334" :NAME "sb525334" :UID "PCID:9967941")
 (:VAR MV1583 :ISA COPULAR-PREDICATION :ITEM MV1563 :VALUE MV1567 :PREDICATE MV1561)
 (:VAR MV1563 :ISA BIO-AMOUNT :MEASURED-ITEM MV1559 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1559 :ISA PROTEIN :PREDICATION MV1565 :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1565 :ISA ACTIVE) (:VAR MV1567 :ISA LOW :ADVERB MV1566)
 (:VAR MV1566 :ISA ALWAYS :NAME "always") (:VAR MV1561 :ISA BE))

___________________
138: "Let's move AKT1 and MAPK1 into mitochondrion."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:VAR MV1597 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1591 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1591 :ISA MOVE-TO :AT-RELATIVE-LOCATION-OR-GOAL MV1594 :THEME MV1595 :PRESENT "PRESENT")
 (:VAR MV1594 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME "Mitochondrion" :UID
  "UP:SL-0173")
 (:VAR MV1595 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1588 MV1589))
 (:VAR MV1588 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1589 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
139: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1600 :ISA PHOSPHORYLATE :AGENT MV1598 :SUBSTRATE MV1599 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1598 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME "FEN1_HUMAN")
 (:VAR MV1599 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
140: "Move all into mitochondrion."

                    SOURCE-START
e8    MOVE-TO       1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1602 :ISA MOVE-TO :AT-RELATIVE-LOCATION-OR-GOAL MV1605 :THEME MV1607 :PRESENT "PRESENT")
 (:VAR MV1605 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME "Mitochondrion" :UID
  "UP:SL-0173")
 (:VAR MV1607 :ISA ALL :WORD "all"))

___________________
141: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1610 :ISA PHOSPHORYLATE :AGENT MV1608 :SUBSTRATE MV1609 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1608 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1609 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
142: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1620 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1613 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1613 :ISA HIGHLIGHT :THEME MV1615 :PRESENT "PRESENT")
 (:VAR MV1615 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1612 :HAS-DETERMINER "THE" :RAW-TEXT
  "upstream")
 (:VAR MV1612 :ISA PROTEIN :PREDICATION MV1618 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1618 :ISA PHOSPHORYLATE :SUBSTRATE MV1612 :RAW-TEXT "phosphorylated"))

___________________
143: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1629 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1623 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1623 :ISA SHOW :AT-RELATIVE-LOCATION MV1627 :STATEMENT-OR-THEME MV1622 :PRESENT "PRESENT")
 (:VAR MV1627 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1622 :ISA PROTEIN :PREDICATION MV1624 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1624 :ISA PHOSPHORYLATE :SUBSTRATE MV1622 :RAW-TEXT "phosphorylated"))

___________________
144: "Let's show the downstream of AKT1 on the top."

                    SOURCE-START
e23   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    PERIOD
                    END-OF-SOURCE
("Let's show the downstream of AKT1 on the top."
 (:VAR MV1642 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1632 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1632 :ISA SHOW :AT-RELATIVE-LOCATION MV1639 :STATEMENT-OR-THEME MV1634 :PRESENT "PRESENT")
 (:VAR MV1639 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1634 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1631 :HAS-DETERMINER "THE" :RAW-TEXT
  "downstream")
 (:VAR MV1631 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
145: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1654 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1645 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1645 :ISA MOVE-TO :GOAL MV1651 :THEME MV1652 :PRESENT "PRESENT")
 (:VAR MV1651 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1652 :ISA ELEMENT :PLURAL T :MODIFIER MV1646)
 (:VAR MV1646 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME "Mitochondrion" :UID
  "UP:SL-0173"))

___________________
146: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1659 :ISA AFFECT :MANNER MV1656 :AGENT MV1658 :OBJECT MV1655 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1656 :ISA HOW)
 (:VAR MV1658 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1655 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
147: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1663 :ISA AFFECT :MANNER MV1661 :AGENT MV1660 :OBJECT MV1664 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1661 :ISA HOW)
 (:VAR MV1660 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1664 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
148: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1667 :ISA BE :SUBJECT MV1666 :PREDICATE MV1669 :PRESENT "PRESENT") (:VAR MV1666 :ISA WHAT)
 (:VAR MV1669 :ISA PATH :ENDPOINTS MV1673 :HAS-DETERMINER "THE")
 (:VAR MV1673 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1671 MV1665))
 (:VAR MV1671 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1665 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
149: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1678 :ISA AFFECT :MANNER MV1676 :AGENT MV1675 :OBJECT MV1679 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1676 :ISA HOW)
 (:VAR MV1675 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1679 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME "JUND_HUMAN"))

___________________
150: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1684 :ISA AFFECT :MANNER MV1682 :AGENT MV1680 :OBJECT MV1681 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1682 :ISA HOW)
 (:VAR MV1680 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME "SETB1_HUMAN")
 (:VAR MV1681 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME "ADA17_HUMAN"))

___________________
151: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1689 :ISA AFFECT :MANNER MV1686 :AGENT MV1688 :OBJECT MV1685 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1686 :ISA HOW)
 (:VAR MV1688 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV1685 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
152: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1693 :ISA AFFECT :MANNER MV1690 :AGENT MV1692 :OBJECT MV1694 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1690 :ISA HOW)
 (:VAR MV1692 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME "ITAV_HUMAN")
 (:VAR MV1694 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
153: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e6    GENE          1 "What genes " 3
e4    DO            3 "does " 4
e7    PHOSPHORYLATE 4 "MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e6    NP            1 "What genes " 3
e4    VG            3 "does " 4
e7    TRANSITIVE-CLAUSE-WITHOUT-OBJECT  4 "MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
154: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1705 :ISA AFFECT :AGENT MV1707 :OBJECT MV1706 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1707 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1706 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
155: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1711 :ISA BIO-ACTIVATE :AGENT MV1713 :OBJECT MV1712 :PRESENT "PRESENT" :RAW-TEXT
  "activate")
 (:VAR MV1713 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1712 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
156: "Let's learn about AKT1 in ovarian cancer."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's learn about AKT1 in ovarian cancer" 11
                    PERIOD
                    END-OF-SOURCE
("Let's learn about AKT1 in ovarian cancer."
 (:VAR MV1722 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1717 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1717 :ISA LEARNING :CONTEXT MV1716 :STATEMENT MV1715 :PRESENT "PRESENT")
 (:VAR MV1716 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1715 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
157: "What is its relationship with BRAF?"

                    SOURCE-START
e10   BE            1 "What is its relationship with BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with BRAF?"
 (:VAR MV1724 :ISA BE :SUBJECT MV1723 :PREDICATE MV1726 :PRESENT "PRESENT") (:VAR MV1723 :ISA WHAT)
 (:VAR MV1726 :ISA RELATIONSHIP :PATIENT MV1728 :MODIFIER MV1725)
 (:VAR MV1728 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1725 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
158: "What is its relationship with PTPN1?"

                    SOURCE-START
e11   BE            1 "What is its relationship with PTPN1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with PTPN1?"
 (:VAR MV1732 :ISA BE :SUBJECT MV1731 :PREDICATE MV1734 :PRESENT "PRESENT") (:VAR MV1731 :ISA WHAT)
 (:VAR MV1734 :ISA RELATIONSHIP :PATIENT MV1730 :MODIFIER MV1733)
 (:VAR MV1730 :ISA PROTEIN :RAW-TEXT "PTPN1" :UID "UP:P18031" :NAME "PTN1_HUMAN")
 (:VAR MV1733 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
159: "AKT1 phosphorylates IFT140. "

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates IFT140."
 (:VAR MV1739 :ISA PHOSPHORYLATE :AGENT MV1737 :SUBSTRATE MV1738 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1737 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1738 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME "IF140_HUMAN"))

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
 (:VAR MV1758 :ISA BE :SUBJECT MV1757 :PREDICATE MV1761 :PRESENT "PRESENT") (:VAR MV1757 :ISA WHAT)
 (:VAR MV1761 :ISA RESPONSE :BENEFICIARY MV1770 :HAS-DETERMINER "THE" :DRUG MV1760 :RAW-TEXT
  "response")
 (:VAR MV1770 :ISA CELL-TYPE :PLURAL T :MUTATION MV1768)
 (:VAR MV1768 :ISA ALTER :PLURAL T :OBJECT MV1756 :AGENT-OR-OBJECT MV1756 :RAW-TEXT "alterations")
 (:VAR MV1756 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1760 :ISA DRUG :RAW-TEXT "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1774 :ISA BE :SUBJECT MV1773 :PREDICATE MV1777 :PRESENT "PRESENT") (:VAR MV1773 :ISA WHAT)
 (:VAR MV1777 :ISA RESPONSE :CELL-TYPE MV1786 :HAS-DETERMINER "THE" :DRUG MV1776 :RAW-TEXT
  "response")
 (:VAR MV1786 :ISA CELL-TYPE :PLURAL T :MUTATION MV1784)
 (:VAR MV1784 :ISA ALTER :PLURAL T :OBJECT MV1772 :AGENT-OR-OBJECT MV1772 :RAW-TEXT "alterations")
 (:VAR MV1772 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1776 :ISA DRUG :RAW-TEXT "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1789 :ISA BE :SUBJECT MV1788 :PREDICATE MV1792 :PRESENT "PRESENT") (:VAR MV1788 :ISA WHAT)
 (:VAR MV1792 :ISA FREQUENCY :CONTEXT MV1796 :MEASURED-ITEM MV1794 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1791 :RAW-TEXT "frequency")
 (:VAR MV1796 :ISA GLIOBLASTOMA)
 (:VAR MV1794 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1791 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1802 :ISA BE :SUBJECT MV1801 :PREDICATE MV1805 :PRESENT "PRESENT") (:VAR MV1801 :ISA WHAT)
 (:VAR MV1805 :ISA FREQUENCY :CONTEXT MV1800 :MEASURED-ITEM MV1799 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1804 :RAW-TEXT "frequency")
 (:VAR MV1800 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID "NCIT:C7978")
 (:VAR MV1799 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1804 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1811 :ISA SHOW :STATEMENT-OR-THEME MV1826 :BENEFICIARY MV1812 :PRESENT "PRESENT")
 (:VAR MV1826 :ISA MUTATION :PLURAL T :CONTEXT MV1810 :OBJECT MV1821 :HAS-DETERMINER "THE"
  :RAW-TEXT "mutations")
 (:VAR MV1810 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1821 :ISA COLLECTION :RAW-TEXT "PTEN and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1817 MV1819))
 (:VAR MV1817 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV1819 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1812 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1828 :ISA SHOW :STATEMENT-OR-THEME MV1840 :BENEFICIARY MV1829 :PRESENT "PRESENT")
 (:VAR MV1840 :ISA MUTATION :PLURAL T :CONTEXT MV1827 :OBJECT MV1834 :HAS-DETERMINER "THE"
  :RAW-TEXT "mutations")
 (:VAR MV1827 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1834 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV1829 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1843 :ISA BE :SUBJECT MV1842 :PREDICATE MV1854 :PRESENT "PRESENT") (:VAR MV1842 :ISA WHAT)
 (:VAR MV1854 :ISA MUTATION :PLURAL T :CONTEXT MV1841 :OBJECT MV1848 :HAS-DETERMINER "THE"
  :RAW-TEXT "mutations")
 (:VAR MV1841 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1848 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1857 :ISA BE :SUBJECT MV1856 :PREDICATE MV1869 :PRESENT "PRESENT") (:VAR MV1856 :ISA WHAT)
 (:VAR MV1869 :ISA QUALITY-PREDICATE :ITEM MV1867 :ATTRIBUTE MV1863)
 (:VAR MV1867 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1855 MV1866))
 (:VAR MV1855 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1866 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1863 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1861 :MODIFIER MV1862)
 (:VAR MV1861 :ISA LIKELY :COMPARATIVE MV1859)
 (:VAR MV1859 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV1862 :ISA CELLULAR :NAME "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?" (:VAR MV1885 :ISA POLAR-QUESTION :STATEMENT MV1880)
 (:VAR MV1880 :ISA THERE-EXISTS :VALUE MV1884 :PREDICATE MV1872)
 (:VAR MV1884 :ISA UPSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV1881 :PREDICATION MV1874
  :RAW-TEXT "upstreams")
 (:VAR MV1881 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1870 MV1879))
 (:VAR MV1870 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1879 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1874 :ISA COMMON) (:VAR MV1872 :ISA SYNTACTIC-THERE))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1889 :ISA BE :SUBJECT MV1888 :PREDICATE MV1901 :PRESENT "PRESENT") (:VAR MV1888 :ISA WHAT)
 (:VAR MV1901 :ISA UPSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV1897 :HAS-DETERMINER "THE"
  :PREDICATION MV1891 :RAW-TEXT "upstreams")
 (:VAR MV1897 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV1886 MV1895 MV1887))
 (:VAR MV1886 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1895 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1887 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1891 :ISA COMMON))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV1914 :ISA COPULAR-PREDICATION :ITEM MV1911 :VALUE MV1902 :PREDICATE MV1908)
 (:VAR MV1911 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1902 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV1904 :ALTERNATIVE MV1903)
 (:VAR MV1904 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1903 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME "CADH1_HUMAN")
 (:VAR MV1908 :ISA BE :PRESENT "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:VAR MV1919 :ISA BE :SUBJECT MV1918 :PREDICATE MV1929 :PRESENT "PRESENT") (:VAR MV1918 :ISA WHAT)
 (:VAR MV1929 :ISA GENE :DISEASE MV1917 :HAS-DETERMINER "THE" :PREDICATION MV1915 :RAW-TEXT
  "genes")
 (:VAR MV1917 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1915 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV1916)
 (:VAR MV1916 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1933 :ISA BE :SUBJECT MV1932 :PREDICATE MV1936 :PRESENT "PRESENT") (:VAR MV1932 :ISA WHAT)
 (:VAR MV1936 :ISA SIGNIFICANCE :CONTEXT MV1931 :AGENT MV1930 :HAS-DETERMINER "THE" :MODIFIER
  MV1935)
 (:VAR MV1931 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV1930 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1935 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1944 :ISA BE :SUBJECT MV1943 :PREDICATE MV1947 :PRESENT "PRESENT") (:VAR MV1943 :ISA WHAT)
 (:VAR MV1947 :ISA SIGNIFICANCE :CONTEXT MV1942 :AGENT MV1941 :HAS-DETERMINER "THE" :MODIFIER
  MV1946)
 (:VAR MV1942 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID "NCIT:C7978")
 (:VAR MV1941 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1946 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1953 :ISA BE :SUBJECT MV1952 :PREDICATE MV1956 :PRESENT "PRESENT") (:VAR MV1952 :ISA WHAT)
 (:VAR MV1956 :ISA SIGNIFICANCE :CONTEXT MV1961 :AGENT MV1958 :HAS-DETERMINER "THE" :MODIFIER
  MV1955)
 (:VAR MV1961 :ISA CANCER :ORGAN MV1960 :NAME "adenocarcinoma" :UID "EFO:0000228")
 (:VAR MV1960 :ISA PANCREAS)
 (:VAR MV1958 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV1955 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1965 :ISA BE :SUBJECT MV1964 :PREDICATE MV1968 :PRESENT "PRESENT") (:VAR MV1964 :ISA WHAT)
 (:VAR MV1968 :ISA SIGNIFICANCE :CONTEXT MV1973 :AGENT MV1970 :HAS-DETERMINER "THE" :MODIFIER
  MV1967)
 (:VAR MV1973 :ISA CANCER :MODIFIER MV1972 :NAME "adenocarcinoma" :UID "EFO:0000228")
 (:VAR MV1972 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME "KLK2_HUMAN")
 (:VAR MV1970 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1967 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1977 :ISA PHOSPHORYLATE :AGENT MV1976 :SUBSTRATE MV1978 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1976 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1978 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV1980 :ISA BINDING :BINDER MV1979 :DIRECT-BINDEE MV1981 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV1979 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1981 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1987 :ISA BINDING :BINDER MV1983 :DIRECT-BINDEE MV1982 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV1983 :ISA PROTEIN :PREDICATION MV1984 :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV1984 :ISA BINDING :DIRECT-BINDEE MV1983 :BINDEE MV1986 :PAST "PAST" :RAW-TEXT "bound")
 (:VAR MV1986 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1982 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1993 :ISA COPULAR-PREDICATION :ITEM MV1990 :VALUE MV1992 :PREDICATE MV1991)
 (:VAR MV1990 :ISA PROTEIN-FAMILY :PREDICATION MV1989 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1989 :ISA PHOSPHORYLATE :SUBSTRATE MV1990 :RAW-TEXT "Phosphorylated")
 (:VAR MV1992 :ISA ACTIVE) (:VAR MV1991 :ISA BE :PRESENT "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1994 :ISA PROTEIN :PREDICATION MV1996 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1996 :ISA PHOSPHORYLATE :SUBSTRATE MV1994 :TARGET MV1995 :PAST "PAST" :RAW-TEXT
  "phosphorylated")
 (:VAR MV1995 :ISA PROTEIN :SITE MV2001 :MODIFIER MV2002 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV2001 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV2000 :AMINO-ACID MV1999)
 (:VAR MV2000 :ISA NUMBER :VALUE 220) (:VAR MV1999 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV2002 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV2007 :ISA TRANSCRIBE :AGENT MV2004 :OBJECT MV2005 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV2004 :ISA PROTEIN :PREDICATION MV2006 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2006 :ISA ACTIVE)
 (:VAR MV2005 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e45   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV2036 :ISA POLAR-QUESTION :STATEMENT MV2035)
 (:VAR MV2035 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV2031 :EVENT MV2033)
 (:VAR MV2031 :ISA WH-QUESTION :STATEMENT MV2019 :WH IF)
 (:VAR MV2019 :ISA INCREASE :AGENT-OR-CAUSE MV2017 :MULTIPLIER-OR-CAUSE MV2028
  :AFFECTED-PROCESS-OR-OBJECT MV2021 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV2017 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV2028 :ISA MEASUREMENT :NUMBER MV2025) (:VAR MV2025 :ISA NUMBER :VALUE 10)
 (:VAR MV2021 :ISA BIO-AMOUNT :MEASURED-ITEM MV2008 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV2008 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2033 :ISA COPULAR-PREDICATION :ITEM MV2011 :VALUE MV2015 :PREDICATE MV2009)
 (:VAR MV2011 :ISA BIO-AMOUNT :MEASURED-ITEM MV2013 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV2013 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV2015 :ISA HIGH :ADVERB MV2014) (:VAR MV2014 :ISA EVER :NAME "ever") (:VAR MV2009 :ISA BE))

___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK " 6
e16   IN            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e19   S             1 "Does Vemurafenib decrease phosphorylated ERK " 6
e16   PP            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
186: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e16   DECREASE      1 "Does Selumetinib decrease JUN " 5
e13   IN            5 "in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e16   S             1 "Does Selumetinib decrease JUN " 5
e13   PP            5 "in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
187: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV2064 :ISA REGULATE :MANNER MV2061 :AGENT MV2063 :OBJECT MV2060 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2061 :ISA HOW)
 (:VAR MV2063 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2060 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV2069 :ISA BIO-ACTIVATE :MANNER MV2066 :AGENT MV2068 :OBJECT MV2065 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV2066 :ISA HOW)
 (:VAR MV2068 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV2065 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?" (:VAR MV2075 :ISA POLAR-QUESTION :STATEMENT MV2074)
 (:VAR MV2074 :ISA INHIBIT :AGENT MV2071 :OBJECT MV2073 :RAW-TEXT "inhibit")
 (:VAR MV2071 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID "PCID:42611257")
 (:VAR MV2073 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV2088 :ISA SHARE :OBJECT MV2087 :PARTICIPANT MV2086 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV2087 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV2086 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV2083 MV2084 MV2078))
 (:VAR MV2083 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2084 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV2078 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

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
 (:VAR MV2100 :ISA BE :SUBJECT MV2099 :PREDICATE MV2101 :PRESENT "PRESENT") (:VAR MV2099 :ISA WHAT)
 (:VAR MV2101 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2098 :RAW-TEXT "upstream")
 (:VAR MV2098 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV2109 :ISA WANT :AGENT MV2106 :THEME MV2117 :PRESENT "PRESENT")
 (:VAR MV2106 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2117 :ISA BIO-FIND :AGENT MV2106 :OBJECT MV2114 :PRESENT "PRESENT" :RAW-TEXT "find")
 (:VAR MV2114 :ISA TREATMENT :DISEASE MV2105 :HAS-DETERMINER "A" :RAW-TEXT "treatment")
 (:VAR MV2105 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
194: "What drug could I use?"

                    SOURCE-START
e11   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV2126 :ISA BIO-USE :OBJECT MV2119 :MODAL MV2120 :AGENT MV2121 :PRESENT "PRESENT" :RAW-TEXT
  "use")
 (:VAR MV2119 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug") (:VAR MV2120 :ISA COULD)
 (:VAR MV2121 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?" (:VAR MV2139 :ISA POLAR-QUESTION :STATEMENT MV2135)
 (:VAR MV2135 :ISA THERE-EXISTS :VALUE MV2138 :PREDICATE MV2128)
 (:VAR MV2138 :ISA DRUG :PLURAL T :TARGET MV2134 :QUANTIFIER MV2130 :RAW-TEXT "drugs")
 (:VAR MV2134 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV2130 :ISA ANY :WORD "any") (:VAR MV2128 :ISA SYNTACTIC-THERE))

___________________
196: "Are they kinases?"

                    SOURCE-START
e5    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are they kinases?" (:VAR MV2144 :ISA POLAR-QUESTION :STATEMENT MV2140)
 (:VAR MV2140 :ISA BE :SUBJECT MV2141 :PREDICATE MV2143)
 (:VAR MV2141 :ISA PRONOUN/PLURAL :WORD "they")
 (:VAR MV2143 :ISA KINASE :PLURAL T :RAW-TEXT "kinases"))

___________________
197: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?" (:VAR MV2154 :ISA POLAR-QUESTION :STATEMENT MV2148)
 (:VAR MV2148 :ISA BIO-FIND :AGENT MV2146 :OBJECT MV2150 :MODAL "CAN" :RAW-TEXT "find")
 (:VAR MV2146 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV2150 :ISA DRUG :TARGET MV2152 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV2152 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV2176 :ISA POLAR-QUESTION :STATEMENT MV2160)
 (:VAR MV2160 :ISA TELL :AGENT MV2159 :THEME MV2175 :BENEFICIARY MV2161 :MODAL "CAN")
 (:VAR MV2159 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV2175 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV2173 :QUANTIFIER MV2162
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2173 :ISA SHARE :OBJECT MV2175 :THAT-REL T :PARTICIPANT MV2170 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV2170 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2157 MV2169))
 (:VAR MV2157 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2169 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2162 :ISA ALL :WORD "all") (:VAR MV2161 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e29   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV2198 :ISA POLAR-QUESTION :STATEMENT MV2182)
 (:VAR MV2182 :ISA TELL :AGENT MV2181 :THEME MV2197 :BENEFICIARY MV2183 :MODAL "CAN")
 (:VAR MV2181 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV2197 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV2195 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "transcription factors")
 (:VAR MV2195 :ISA SHARE :WH-ELEMENT MV2191 :WH-PATH NIL :RAW-TEXT "shared" :MODAL MV2180
  :PARTICIPANT MV2190 :OBJECT MV2191)
 (:VAR MV2191 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV2180 :ISA CAN)
 (:VAR MV2190 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2179 MV2189))
 (:VAR MV2179 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2189 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2183 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?" (:VAR MV2212 :ISA POLAR-QUESTION :STATEMENT MV2211)
 (:VAR MV2211 :ISA KNOW :AGENT MV2200 :STATEMENT MV2210)
 (:VAR MV2200 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV2210 :ISA DRUG :PLURAL T :TARGET MV2206 :QUANTIFIER MV2202 :RAW-TEXT "drugs")
 (:VAR MV2206 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV2202 :ISA ANY :WORD "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV2224 :ISA POLAR-QUESTION :STATEMENT MV2222)
 (:VAR MV2222 :ISA REGULATE :AGENT MV2213 :OBJECT MV2218 :RAW-TEXT "regulate")
 (:VAR MV2213 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2218 :ISA GENE :ORGAN MV2221 :HAS-DETERMINER "THE" :EXPRESSES MV2217 :RAW-TEXT "gene")
 (:VAR MV2221 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2217 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?" (:VAR MV2235 :ISA POLAR-QUESTION :STATEMENT MV2233)
 (:VAR MV2233 :ISA REGULATE :AGENT MV2225 :OBJECT MV2230 :RAW-TEXT "regulate")
 (:VAR MV2225 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2230 :ISA GENE :ORGAN MV2232 :HAS-DETERMINER "THE" :EXPRESSES MV2226 :RAW-TEXT "gene")
 (:VAR MV2232 :ISA LIVER)
 (:VAR MV2226 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?" (:VAR MV2243 :ISA POLAR-QUESTION :STATEMENT MV2242)
 (:VAR MV2242 :ISA REGULATE :AGENT MV2236 :OBJECT MV2241 :RAW-TEXT "regulate")
 (:VAR MV2236 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2241 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2237 :RAW-TEXT "gene")
 (:VAR MV2237 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2255 :ISA POLAR-QUESTION :STATEMENT MV2253)
 (:VAR MV2253 :ISA REGULATE :AGENT MV2244 :OBJECT MV2249 :RAW-TEXT "regulate")
 (:VAR MV2244 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2249 :ISA GENE :ORGAN MV2252 :HAS-DETERMINER "THE" :EXPRESSES MV2248 :RAW-TEXT "gene")
 (:VAR MV2252 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2248 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2262 :ISA POLAR-QUESTION :STATEMENT MV2261)
 (:VAR MV2261 :ISA TARGET :AGENT MV2256 :OBJECT MV2257 :RAW-TEXT "target")
 (:VAR MV2256 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2257 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3" (:VAR MV2269 :ISA POLAR-QUESTION :STATEMENT MV2268)
 (:VAR MV2268 :ISA TARGET :AGENT MV2263 :OBJECT MV2264 :RAW-TEXT "target")
 (:VAR MV2263 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p" :UID
  "MIMAmiR-2000-5p")
 (:VAR MV2264 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?" (:VAR MV2276 :ISA POLAR-QUESTION :STATEMENT MV2275)
 (:VAR MV2275 :ISA TARGET :AGENT MV2270 :OBJECT MV2271 :RAW-TEXT "target")
 (:VAR MV2270 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413")
 (:VAR MV2271 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?" (:VAR MV2283 :ISA POLAR-QUESTION :STATEMENT MV2282)
 (:VAR MV2282 :ISA TARGET :AGENT MV2277 :OBJECT MV2278 :RAW-TEXT "target")
 (:VAR MV2277 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p" :UID "MIMAT0000279")
 (:VAR MV2278 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver" (:VAR MV2292 :ISA POLAR-QUESTION :STATEMENT MV2290)
 (:VAR MV2290 :ISA REGULATE :AGENT MV2284 :OBJECT MV2289 :RAW-TEXT "regulate")
 (:VAR MV2284 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2289 :ISA BIO-ENTITY :ORGAN MV2288 :NAME "cfors") (:VAR MV2288 :ISA LIVER))

___________________
210: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver" (:VAR MV2301 :ISA POLAR-QUESTION :STATEMENT MV2299)
 (:VAR MV2299 :ISA REGULATE :AGENT MV2293 :OBJECT MV2296 :RAW-TEXT "regulate")
 (:VAR MV2293 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2296 :ISA PROTEIN :ORGAN MV2298 :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV2298 :ISA LIVER))

___________________
211: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain" (:VAR MV2310 :ISA POLAR-QUESTION :STATEMENT MV2308)
 (:VAR MV2308 :ISA REGULATE :AGENT-OR-CAUSE MV2303 :OBJECT MV2305 :RAW-TEXT "regulate")
 (:VAR MV2303 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2305 :ISA PROTEIN :ORGAN MV2307 :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV2307 :ISA BRAIN))

___________________
212: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?" (:VAR MV2316 :ISA POLAR-QUESTION :STATEMENT MV2315)
 (:VAR MV2315 :ISA REGULATE :AGENT MV2311 :OBJECT MV2314 :RAW-TEXT "regulate")
 (:VAR MV2311 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2314 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2330 :ISA POLAR-QUESTION :STATEMENT MV2327)
 (:VAR MV2327 :ISA REGULATE :AGENT MV2317 :OBJECT MV2322 :RAW-TEXT "regulate")
 (:VAR MV2317 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2322 :ISA GENE :CELL-TYPE MV2328 :HAS-DETERMINER "THE" :EXPRESSES MV2321 :RAW-TEXT "gene")
 (:VAR MV2328 :ISA CELL-TYPE :PLURAL T :NON-CELLULAR-LOCATION MV2324)
 (:VAR MV2324 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2321 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   BIO-UTILIZE   1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?" (:VAR MV2340 :ISA POLAR-QUESTION :STATEMENT MV2339)
 (:VAR MV2339 :ISA BIO-UTILIZE :AGENT MV2336 :OBJECT MV2331 :RAW-TEXT "utilize")
 (:VAR MV2336 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2338 :RAW-TEXT "pathway")
 (:VAR MV2338 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2331 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   BIO-UTILIZE   1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?" (:VAR MV2350 :ISA POLAR-QUESTION :STATEMENT MV2349)
 (:VAR MV2349 :ISA BIO-UTILIZE :AGENT MV2347 :OBJECT MV2341 :RAW-TEXT "utilize")
 (:VAR MV2347 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2344 :RAW-TEXT "pathway")
 (:VAR MV2344 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME "MTOR_HUMAN")
 (:VAR MV2341 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2352 :ISA GIVE :THEME MV2359 :BENEFICIARY MV2353 :PRESENT "PRESENT")
 (:VAR MV2359 :ISA EVIDENCE :STATEMENT MV2358 :HAS-DETERMINER "THE")
 (:VAR MV2358 :ISA DECREASE :AGENT MV2357 :OBJECT MV2351 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2357 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2351 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2353 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2361 :ISA GIVE :THEME MV2368 :BENEFICIARY MV2362 :PRESENT "PRESENT")
 (:VAR MV2368 :ISA EVIDENCE :STATEMENT MV2367 :HAS-DETERMINER "THE")
 (:VAR MV2367 :ISA REGULATE :AGENT MV2366 :OBJECT MV2360 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2366 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2360 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2362 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?" (:VAR MV2373 :ISA POLAR-QUESTION :STATEMENT MV2369)
 (:VAR MV2369 :ISA BE :SUBJECT MV2370 :PREDICATE MV2372)
 (:VAR MV2370 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2372 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e10   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?" (:VAR MV2380 :ISA POLAR-QUESTION :STATEMENT MV2376)
 (:VAR MV2376 :ISA INHIBIT :OBJECT MV2374 :AGENT MV2378 :PAST "PAST" :RAW-TEXT "inhibited")
 (:VAR MV2374 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV2378 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2389 :ISA POLAR-QUESTION :STATEMENT MV2384)
 (:VAR MV2384 :ISA BE :SUBJECT MV2381 :PREDICATE MV2382)
 (:VAR MV2381 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2382 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV2387 :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV2387 :ISA GENE :EXPRESSES MV2383 :RAW-TEXT "gene")
 (:VAR MV2383 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
221: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2408 :ISA POLAR-QUESTION :STATEMENT MV2392)
 (:VAR MV2392 :ISA BE :SUBJECT MV2390 :PREDICATE MV2407)
 (:VAR MV2390 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2407 :ISA REGULATOR :PLURAL T :QUANTIFIER MV2395 :THEME MV2402 :HAS-DETERMINER "THE"
  :RAW-TEXT "regulators")
 (:VAR MV2395 :ISA NUMBER :VALUE 1)
 (:VAR MV2402 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2391 :RAW-TEXT "gene")
 (:VAR MV2391 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
222: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e13   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?" (:VAR MV2416 :ISA POLAR-QUESTION :STATEMENT MV2410)
 (:VAR MV2410 :ISA BE :SUBJECT MV2411 :PREDICATE MV2413)
 (:VAR MV2411 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622")
 (:VAR MV2413 :ISA INHIBITOR :PROTEIN MV2409 :HAS-DETERMINER "AN" :RAW-TEXT "inhibitor")
 (:VAR MV2409 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?" (:VAR MV2424 :ISA POLAR-QUESTION :STATEMENT MV2417)
 (:VAR MV2417 :ISA BE :SUBJECT MV2418 :PREDICATE MV2420)
 (:VAR MV2418 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID "PCID:42611257")
 (:VAR MV2420 :ISA INHIBITOR :TARGET-OR-PROTEIN MV2422 :HAS-DETERMINER "AN" :RAW-TEXT "inhibitor")
 (:VAR MV2422 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
224: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase" (:VAR MV2429 :ISA POLAR-QUESTION :STATEMENT MV2425)
 (:VAR MV2425 :ISA BE :SUBJECT MV2428 :PREDICATE MV2427)
 (:VAR MV2428 :ISA BIO-ENTITY :NAME "fakeprotein")
 (:VAR MV2427 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
225: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase" (:VAR MV2434 :ISA POLAR-QUESTION :STATEMENT MV2431)
 (:VAR MV2431 :ISA BE :SUBJECT MV2430 :PREDICATE MV2433)
 (:VAR MV2430 :ISA PROTEIN :RAW-TEXT "hmga2" :UID "UP:P52926" :NAME "HMGA2_HUMAN")
 (:VAR MV2433 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
226: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?" (:VAR MV2441 :ISA POLAR-QUESTION :STATEMENT MV2436)
 (:VAR MV2436 :ISA BE :SUBJECT MV2435 :PREDICATE MV2440)
 (:VAR MV2435 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2440 :ISA REGULATOR :HAS-DETERMINER "AN" :CELLULAR-PROCESS MV2438 :RAW-TEXT "regulator")
 (:VAR MV2438 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e15   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?" (:VAR MV2454 :ISA POLAR-QUESTION :STATEMENT MV2444)
 (:VAR MV2444 :ISA INVOLVE :OBJECT MV2442 :CONTEXT-OR-THEME MV2452 :PAST "PAST")
 (:VAR MV2442 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2452 :ISA PATHWAY :PLURAL T :QUANTIFIER MV2446 :CELLULAR-PROCESS MV2447 :RAW-TEXT
  "pathways")
 (:VAR MV2446 :ISA ANY :WORD "any") (:VAR MV2447 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?" (:VAR MV2463 :ISA POLAR-QUESTION :STATEMENT MV2457)
 (:VAR MV2457 :ISA INVOLVE :OBJECT MV2455 :THEME MV2461 :PAST "PAST")
 (:VAR MV2455 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2461 :ISA REGULATE :CELLULAR-PROCESS MV2459 :RAW-TEXT "regulation")
 (:VAR MV2459 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e12   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?" (:VAR MV2471 :ISA POLAR-QUESTION :STATEMENT MV2466)
 (:VAR MV2466 :ISA INVOLVE :OBJECT MV2464 :THEME MV2468 :PAST "PAST")
 (:VAR MV2464 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2468 :ISA REGULATE :AFFECTED-PROCESS MV2469 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "regulating")
 (:VAR MV2469 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2477 :ISA PHOSPHORYLATE :SUBSTRATE MV2478 :AGENT MV2476 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV2478 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2476 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
231: "Is the first one a kinase"

                    SOURCE-START
e15   BE            1 "Is the first one a kinase" 7
                    END-OF-SOURCE
("Is the first one a kinase" (:VAR MV2488 :ISA POLAR-QUESTION :STATEMENT MV2479)
 (:VAR MV2479 :ISA BE :SUBJECT MV2487 :PREDICATE MV2486)
 (:VAR MV2487 :ISA INDEFINITE-PRONOUN :HAS-DETERMINER "THE" :ORDINAL MV2484 :WORD "one")
 (:VAR MV2484 :ISA NUMBER :VALUE 1)
 (:VAR MV2486 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
232: "Is there a drug that targets BRAF?"

                    SOURCE-START
e19   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?" (:VAR MV2500 :ISA POLAR-QUESTION :STATEMENT MV2499)
 (:VAR MV2499 :ISA THERE-EXISTS :VALUE MV2493 :PREDICATE MV2490)
 (:VAR MV2493 :ISA DRUG :PREDICATION MV2497 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV2497 :ISA TARGET :AGENT MV2493 :THAT-REL T :OBJECT MV2498 :PRESENT "PRESENT" :RAW-TEXT
  "targets")
 (:VAR MV2498 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV2490 :ISA SYNTACTIC-THERE))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2513 :ISA POLAR-QUESTION :STATEMENT MV2511)
 (:VAR MV2511 :ISA THERE-EXISTS :VALUE MV2508 :PREDICATE MV2503)
 (:VAR MV2508 :ISA PATHWAY :PREDICATION MV2509 :HAS-DETERMINER "AN" :CELLULAR-PROCESS MV2506
  :RAW-TEXT "pathway")
 (:VAR MV2509 :ISA REGULATE :AFFECTED-PROCESS MV2508 :AGENT MV2501 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2501 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2506 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2503 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2529 :ISA POLAR-QUESTION :STATEMENT MV2526)
 (:VAR MV2526 :ISA THERE-EXISTS :VALUE MV2521 :PREDICATE MV2516)
 (:VAR MV2521 :ISA PATHWAY :PREDICATION MV2527 :HAS-DETERMINER "AN" :CELLULAR-PROCESS MV2519
  :RAW-TEXT "pathway")
 (:VAR MV2527 :ISA REGULATE :AFFECTED-PROCESS MV2521 :THAT-REL T :AGENT MV2514 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2514 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2519 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2516 :ISA SYNTACTIC-THERE))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2531 :ISA LET :COMPLEMENT MV2549 :PRESENT "PRESENT")
 (:VAR MV2549 :ISA KNOW :AGENT MV2532 :STATEMENT MV2548 :PRESENT "PRESENT")
 (:VAR MV2532 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2548 :ISA WH-QUESTION :STATEMENT MV2544 :WH IF)
 (:VAR MV2544 :ISA THERE-EXISTS :VALUE MV2547 :PREDICATE MV2537)
 (:VAR MV2547 :ISA GENE :PLURAL T :PREDICATION MV2543 :QUANTIFIER MV2538 :CELLULAR-PROCESS MV2539
  :RAW-TEXT "genes")
 (:VAR MV2543 :ISA REGULATE :OBJECT MV2547 :AGENT MV2530 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2530 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2538 :ISA ANY :WORD "any") (:VAR MV2539 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2537 :ISA BE))

___________________
236: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2551 :ISA LET :COMPLEMENT MV2560 :PRESENT "PRESENT")
 (:VAR MV2560 :ISA KNOW :AGENT MV2552 :STATEMENT MV2559 :PRESENT "PRESENT")
 (:VAR MV2552 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2559 :ISA GENE :PLURAL T :PREDICATION MV2557 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV2557 :ISA REGULATE :OBJECT MV2559 :AGENT MV2550 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2550 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2562 :ISA LIST :THEME MV2573 :PRESENT "PRESENT")
 (:VAR MV2573 :ISA GENE :PLURAL T :PREDICATION MV2567 :QUANTIFIER MV2563 :HAS-DETERMINER "THE"
  :RAW-TEXT "genes")
 (:VAR MV2567 :ISA REGULATE :OBJECT MV2573 :AGENT MV2571 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2571 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2561 MV2570))
 (:VAR MV2561 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2570 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2563 :ISA ALL :WORD "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf" (:VAR MV2577 :ISA LIST :THEME MV2579 :PRESENT "PRESENT")
 (:VAR MV2579 :ISA GENE :PLURAL T :PREDICATION MV2580 :RAW-TEXT "genes")
 (:VAR MV2580 :ISA REGULATE :OBJECT MV2579 :AGENT MV2584 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2584 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2576 MV2583))
 (:VAR MV2576 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2583 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2588 :ISA LIST :THEME MV2602 :PRESENT "PRESENT")
 (:VAR MV2602 :ISA GENE :PLURAL T :PREDICATION MV2600 :QUANTIFIER MV2589 :RAW-TEXT "genes")
 (:VAR MV2600 :ISA REGULATE :OBJECT MV2602 :THAT-REL T :AGENT MV2598 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV2598 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2587 MV2597))
 (:VAR MV2587 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2597 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2589 :ISA SOME :WORD "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2604 :ISA LIST :THEME MV2610 :PRESENT "PRESENT")
 (:VAR MV2610 :ISA EVIDENCE :STATEMENT MV2609 :HAS-DETERMINER "THE")
 (:VAR MV2609 :ISA DECREASE :AGENT MV2608 :OBJECT MV2603 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2608 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2603 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2612 :ISA NAME-SOMETHING :PATIENT MV2616 :PRESENT "PRESENT")
 (:VAR MV2616 :ISA GENE :PLURAL T :PREDICATION MV2617 :RAW-TEXT "genes")
 (:VAR MV2617 :ISA REGULATE :OBJECT MV2616 :AGENT MV2621 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2621 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2611 MV2620))
 (:VAR MV2611 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2620 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e34   COPULAR-PREDICATION 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2642 :ISA COPULAR-PREDICATION :ITEM MV2645 :VALUE MV2635 :PREDICATE MV2634)
 (:VAR MV2645 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :PREDICATION MV2631 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2627 :RAW-TEXT "genes")
 (:VAR MV2631 :ISA REGULATE :OBJECT MV2645 :AGENT MV2624 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2624 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2627 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2635 :ISA ACTIVE :ORGAN MV2638)
 (:VAR MV2638 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2634 :ISA BE :PRESENT "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2664 :ISA COPULAR-PREDICATION :ITEM MV2666 :VALUE MV2657 :PREDICATE MV2656)
 (:VAR MV2666 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :PREDICATION MV2654 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2650 :RAW-TEXT "genes")
 (:VAR MV2654 :ISA REGULATE :OBJECT MV2666 :AGENT MV2647 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2647 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2650 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2657 :ISA ACTIVE :ORGAN MV2660)
 (:VAR MV2660 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2656 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e29   COPULAR-PREDICATION 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2682 :ISA COPULAR-PREDICATION :ITEM MV2685 :VALUE MV2679 :PREDICATE MV2678)
 (:VAR MV2685 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :PREDICATION MV2673 :HAS-DETERMINER "THE"
  :RAW-TEXT "genes")
 (:VAR MV2673 :ISA REGULATE :OBJECT MV2685 :AGENT MV2668 :ORGAN MV2676 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV2668 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2676 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2679 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2678 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2700 :ISA COPULAR-PREDICATION :ITEM MV2702 :VALUE MV2696 :PREDICATE MV2695)
 (:VAR MV2702 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :PREDICATION MV2693 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2690 :RAW-TEXT "genes")
 (:VAR MV2693 :ISA REGULATE :OBJECT MV2702 :AGENT MV2687 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2687 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2690 :ISA LIVER) (:VAR MV2696 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2695 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2717 :ISA COPULAR-PREDICATION :ITEM MV2719 :VALUE MV2713 :PREDICATE MV2712)
 (:VAR MV2719 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :PREDICATION MV2710 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2707 :RAW-TEXT "genes")
 (:VAR MV2710 :ISA REGULATE :OBJECT MV2719 :AGENT MV2704 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2704 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2707 :ISA LIVER) (:VAR MV2713 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2712 :ISA BE :PRESENT "PRESENT"))

___________________
247: "Please find pathways involving SRF"

                    SOURCE-START
e8    BIO-FIND      1 "Please find pathways involving SRF" 6
                    END-OF-SOURCE
("Please find pathways involving SRF"
 (:VAR MV2723 :ISA BIO-FIND :OBJECT MV2725 :PRESENT "PRESENT" :ADVERB MV2721 :RAW-TEXT "find")
 (:VAR MV2725 :ISA PATHWAY :PLURAL T :PREDICATION MV2726 :RAW-TEXT "pathways")
 (:VAR MV2726 :ISA INVOLVE :THEME MV2725 :OBJECT MV2727 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2727 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2721 :ISA PLEASE :NAME "please"))

___________________
248: "Please show me KEGG pathways involving SRF"

                    SOURCE-START
e13   SHOW          1 "Please show me KEGG pathways involving SRF" 8
                    END-OF-SOURCE
("Please show me KEGG pathways involving SRF"
 (:VAR MV2730 :ISA SHOW :STATEMENT-OR-THEME MV2738 :BENEFICIARY MV2731 :PRESENT "PRESENT" :ADVERB
  MV2729)
 (:VAR MV2738 :ISA PATHWAY :PLURAL T :PREDICATION MV2735 :MODIFIER MV2732 :RAW-TEXT "pathways")
 (:VAR MV2735 :ISA INVOLVE :THEME MV2738 :OBJECT MV2736 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2736 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2732 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2731 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV2729 :ISA PLEASE :NAME "please"))

___________________
249: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2740 :ISA SHOW :STATEMENT-OR-THEME MV2746 :BENEFICIARY MV2741 :PRESENT "PRESENT" :ADVERB
  MV2739)
 (:VAR MV2746 :ISA PATHWAY :PLURAL T :PREDICATION MV2744 :RAW-TEXT "pathways")
 (:VAR MV2744 :ISA INVOLVE :THEME MV2746 :OBJECT MV2745 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2745 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2741 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV2739 :ISA PLEASE :NAME "please"))

___________________
250: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2748 :ISA BIO-ACTIVATE :AGENT MV2747 :OBJECT MV2749 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2747 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2749 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2750 :ISA REMOVE :OBJECT MV2757 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2757 :ISA FACT :STATEMENT MV2755 :HAS-DETERMINER "THE")
 (:VAR MV2755 :ISA BIO-ACTIVATE :AGENT MV2754 :OBJECT MV2756 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2754 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2756 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2760 :ISA BIO-ACTIVATE :AGENT MV2759 :OBJECT MV2761 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2759 :ISA PROTEIN-FAMILY :PREDICATION MV2758 :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2758 :ISA INACTIVE)
 (:VAR MV2761 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2762 :ISA REMOVE :OBJECT MV2770 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2770 :ISA FACT :STATEMENT MV2768 :HAS-DETERMINER "THE")
 (:VAR MV2768 :ISA BIO-ACTIVATE :AGENT MV2767 :OBJECT MV2769 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2767 :ISA PROTEIN-FAMILY :PREDICATION MV2766 :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2766 :ISA INACTIVE)
 (:VAR MV2769 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2772 :ISA SHOW :STATEMENT-OR-THEME MV2775 :PRESENT "PRESENT")
 (:VAR MV2775 :ISA PATHWAY :PLURAL T :NON-CELLULAR-LOCATION MV2771 :RAW-TEXT "pathways")
 (:VAR MV2771 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2776 :ISA SHOW :STATEMENT-OR-THEME MV2782 :BENEFICIARY MV2777 :PRESENT "PRESENT")
 (:VAR MV2782 :ISA PATHWAY :PLURAL T :PREDICATION MV2780 :RAW-TEXT "pathways")
 (:VAR MV2780 :ISA INVOLVE :THEME MV2782 :OBJECT MV2781 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2781 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2777 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2783 :ISA SHOW :STATEMENT-OR-THEME MV2793 :BENEFICIARY MV2784 :PRESENT "PRESENT")
 (:VAR MV2793 :ISA PATHWAY :PLURAL T :PATHWAYCOMPONENT MV2788 :RAW-TEXT "pathways")
 (:VAR MV2788 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY-OR-IN-FAMILY
  MV2790 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2790 :ISA PRONOUN/PLURAL :WORD "them") (:VAR MV2784 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
257: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2794 :ISA SHOW :STATEMENT-OR-THEME MV2801 :BENEFICIARY MV2795 :PRESENT "PRESENT")
 (:VAR MV2801 :ISA PATHWAY :PLURAL T :PATHWAYCOMPONENT MV2799 :RAW-TEXT "pathways")
 (:VAR MV2799 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2795 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2803 :ISA SHOW :STATEMENT-OR-THEME MV2810 :BENEFICIARY MV2804 :PRESENT "PRESENT")
 (:VAR MV2810 :ISA EVIDENCE :STATEMENT MV2809 :HAS-DETERMINER "THE")
 (:VAR MV2809 :ISA DECREASE :AGENT MV2808 :OBJECT MV2802 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2808 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2802 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2804 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2812 :ISA SHOW :STATEMENT-OR-THEME MV2823 :BENEFICIARY MV2813 :PRESENT "PRESENT")
 (:VAR MV2823 :ISA EVIDENCE :STATEMENT MV2818 :HAS-DETERMINER "THE")
 (:VAR MV2818 :ISA DECREASE :AGENT MV2817 :AFFECTED-PROCESS-OR-OBJECT MV2820 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2817 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2820 :ISA BIO-AMOUNT :MEASURED-ITEM MV2811 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV2811 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2813 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2825 :ISA SHOW :STATEMENT-OR-THEME MV2832 :BENEFICIARY MV2826 :PRESENT "PRESENT")
 (:VAR MV2832 :ISA EVIDENCE :STATEMENT MV2831 :HAS-DETERMINER "THE")
 (:VAR MV2831 :ISA REGULATE :AGENT MV2830 :OBJECT MV2824 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2830 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2824 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2826 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2836 :ISA SHOW :STATEMENT-OR-THEME MV2834 :PRESENT "PRESENT")
 (:VAR MV2834 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV2837 :RAW-TEXT
  "transcription factors")
 (:VAR MV2837 :ISA SHARE :OBJECT MV2834 :PARTICIPANT MV2841 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV2841 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2835 MV2840))
 (:VAR MV2835 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2840 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV2852 :ISA TELL :THEME MV2873 :BENEFICIARY MV2853 :PRESENT "PRESENT")
 (:VAR MV2873 :ISA PATHWAY :PLURAL T :PREDICATION MV2871 :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS
  MV2855 :RAW-TEXT "pathways")
 (:VAR MV2871 :ISA REGULATE :WH-ELEMENT MV2866 :WH-PATH NIL :RAW-TEXT "regulated" :PRESENT
  "PRESENT" :AGENT MV2851 :AFFECTED-PROCESS MV2866)
 (:VAR MV2866 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2855 :RAW-TEXT
  "pathways")
 (:VAR MV2855 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2851 :ISA PROTEIN :ORGAN MV2864 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2864 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2853 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2875 :ISA TELL :THEME MV2885 :BENEFICIARY MV2876 :PRESENT "PRESENT")
 (:VAR MV2885 :ISA GENE :PLURAL T :PREDICATION MV2882 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2882 :ISA REGULATE :OBJECT MV2885 :AGENT MV2883 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2883 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2874 MV2881))
 (:VAR MV2874 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2881 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2876 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2887 :ISA TELL :THEME MV2905 :BENEFICIARY MV2888 :PRESENT "PRESENT")
 (:VAR MV2905 :ISA PATHWAY :PLURAL T :PREDICATION MV2903 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "pathways")
 (:VAR MV2903 :ISA REGULATE :WH-ELEMENT MV2898 :WH-PATH NIL :RAW-TEXT "regulated" :PRESENT
  "PRESENT" :AGENT MV2886 :AFFECTED-PROCESS MV2898)
 (:VAR MV2898 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2886 :ISA PROTEIN :ORGAN MV2897 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2897 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2888 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2910 :ISA INVOLVE :THEME MV2914 :OBJECT MV2912 :PRESENT "PRESENT")
 (:VAR MV2914 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV2907 :RAW-TEXT "pathways")
 (:VAR MV2907 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2912 :ISA SIGNAL :MODIFIER MV2911 :RAW-TEXT "signaling")
 (:VAR MV2911 :ISA IMMUNE :NAME "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2925 :ISA REGULATE :OBJECT MV2924 :AGENT MV2916 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2924 :ISA PHOSPHATASE :PLURAL T :HAS-DETERMINER "WHAT" :ENZYME MV2915 :RAW-TEXT
  "phosphatases")
 (:VAR MV2915 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME "mitogen activated protein kinase"
  :COUNT 13 :FAMILY-MEMBERS
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
 (:VAR MV2916 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2933 :ISA BE :SUBJECT MV2938 :PREDICATE MV2934 :PRESENT "PRESENT")
 (:VAR MV2938 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2929 :RAW-TEXT
  "genes")
 (:VAR MV2929 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2934 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2927 :RAW-TEXT "downstream")
 (:VAR MV2927 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2947 :ISA REGULATE :OBJECT MV2952 :AGENT MV2940 :ORGAN MV2950 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2952 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2942 :RAW-TEXT
  "genes")
 (:VAR MV2942 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2940 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2950 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2961 :ISA REGULATE :OBJECT MV2963 :AGENT MV2954 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2963 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2956 :RAW-TEXT
  "genes")
 (:VAR MV2956 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2954 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2970 :ISA BE :SUBJECT MV2975 :PREDICATE MV2971 :PRESENT "PRESENT")
 (:VAR MV2975 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2966 :RAW-TEXT
  "genes")
 (:VAR MV2966 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2971 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2975 :MODIFIER MV2964 :RAW-TEXT "upstream")
 (:VAR MV2964 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2982 :ISA INVOLVE :THEME MV2984 :OBJECT MV2976 :PRESENT "PRESENT")
 (:VAR MV2984 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2978 :RAW-TEXT
  "pathways")
 (:VAR MV2978 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2976 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2986 :ISA BE :SUBJECT MV2985 :PREDICATE MV2992 :PRESENT "PRESENT") (:VAR MV2985 :ISA WHAT)
 (:VAR MV2992 :ISA TARGET-PROTEIN :PLURAL T :TREATMENT MV2988 :RAW-TEXT "targets")
 (:VAR MV2988 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622"))

___________________
274: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2995 :ISA BE :SUBJECT MV2994 :PREDICATE MV3000 :PRESENT "PRESENT") (:VAR MV2994 :ISA WHAT)
 (:VAR MV3000 :ISA INHIBITOR :PLURAL T :QUANTIFIER MV2996 :PROTEIN MV2993 :RAW-TEXT "inhibitors")
 (:VAR MV2996 :ISA SOME :WORD "some")
 (:VAR MV2993 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV3002 :ISA BE :SUBJECT MV3001 :PREDICATE MV3010 :PRESENT "PRESENT") (:VAR MV3001 :ISA WHAT)
 (:VAR MV3010 :ISA DRUG :PLURAL T :PREDICATION MV3007 :QUANTIFIER MV3003 :RAW-TEXT "drugs")
 (:VAR MV3007 :ISA INHIBIT :AGENT MV3010 :THAT-REL T :OBJECT MV3008 :PRESENT "PRESENT" :RAW-TEXT
  "inhibit")
 (:VAR MV3008 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV3003 :ISA SOME :WORD "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV3013 :ISA BE :SUBJECT MV3012 :PREDICATE MV3022 :PRESENT "PRESENT") (:VAR MV3012 :ISA WHAT)
 (:VAR MV3022 :ISA GENE :PLURAL T :CONTEXT MV3011 :QUANTIFIER MV3014 :RAW-TEXT "genes")
 (:VAR MV3011 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3019 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3019 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV3014 :ISA SOME :WORD "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV3025 :ISA BE :SUBJECT MV3024 :PREDICATE MV3034 :PRESENT "PRESENT") (:VAR MV3024 :ISA WHAT)
 (:VAR MV3034 :ISA PROTEIN :PLURAL T :IN-PATHWAY MV3023 :QUANTIFIER MV3026 :RAW-TEXT "proteins")
 (:VAR MV3023 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3031 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3031 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV3026 :ISA SOME :WORD "some"))

___________________
278: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV3036 :ISA BE :SUBJECT MV3035 :PREDICATE MV3044 :PRESENT "PRESENT") (:VAR MV3035 :ISA WHAT)
 (:VAR MV3044 :ISA MEMBER :PLURAL T :SET MV3041 :HAS-DETERMINER "THE")
 (:VAR MV3041 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV3049 :ISA BE :SUBJECT MV3048 :PREDICATE MV3060 :PRESENT "PRESENT") (:VAR MV3048 :ISA WHAT)
 (:VAR MV3060 :ISA MICRO-RNA :PLURAL T :PREDICATION MV3054 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAS")
 (:VAR MV3054 :ISA REGULATE :AGENT MV3060 :THAT-REL T :OBJECT MV3058 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3058 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV3055 MV3056 MV3045 MV3046 MV3047))
 (:VAR MV3055 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV3056 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3045 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3046 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV3047 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV3062 :ISA BE :SUBJECT MV3061 :PREDICATE MV3075 :PRESENT "PRESENT") (:VAR MV3061 :ISA WHAT)
 (:VAR MV3075 :ISA REGULATOR :PLURAL T :THEME MV3071 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV3071 :ISA BIO-ENTITY :ORGAN MV3070 :NAME "MAPPK14")
 (:VAR MV3070 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV3078 :ISA BE :SUBJECT MV3077 :PREDICATE MV3088 :PRESENT "PRESENT") (:VAR MV3077 :ISA WHAT)
 (:VAR MV3088 :ISA REGULATOR :PLURAL T :THEME MV3076 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV3076 :ISA PROTEIN :ORGAN MV3084 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV3084 :ISA LIVER))

___________________
282: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV3091 :ISA BE :SUBJECT MV3090 :PREDICATE MV3098 :PRESENT "PRESENT") (:VAR MV3090 :ISA WHAT)
 (:VAR MV3098 :ISA REGULATOR :PLURAL T :THEME MV3089 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV3089 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV3101 :ISA BE :SUBJECT MV3100 :PREDICATE MV3111 :PRESENT "PRESENT") (:VAR MV3100 :ISA WHAT)
 (:VAR MV3111 :ISA REGULATOR :PLURAL T :THEME MV3099 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV3099 :ISA PROTEIN :ORGAN MV3107 :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3107 :ISA LUNG))

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
 (:VAR MV3130 :ISA BE :SUBJECT MV3129 :PREDICATE MV3137 :PRESENT "PRESENT") (:VAR MV3129 :ISA WHAT)
 (:VAR MV3137 :ISA REGULATOR :PLURAL T :THEME MV3128 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV3128 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV3157 :ISA COPULAR-PREDICATION :ITEM MV3142 :VALUE MV3140 :PREDICATE MV3143)
 (:VAR MV3142 :ISA WHAT) (:VAR MV3140 :ISA IN-COMMON :THEME MV3155)
 (:VAR MV3155 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :EXPRESSES MV3152 :RAW-TEXT "genes")
 (:VAR MV3152 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3147 MV3148 MV3141))
 (:VAR MV3147 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3148 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV3141 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV3143 :ISA BE :PREDICATE MV3153 :PRESENT "PRESENT")
 (:VAR MV3153 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV3161 :ISA BE :SUBJECT MV3160 :PREDICATE MV3172 :PRESENT "PRESENT") (:VAR MV3160 :ISA WHAT)
 (:VAR MV3172 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV3164 :HAS-DETERMINER "THE"
  :RAW-TEXT "transcription factors")
 (:VAR MV3164 :ISA REGULATE :AGENT MV3172 :THAT-REL T :OBJECT MV3170 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3170 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3169 MV3168))
 (:VAR MV3169 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV3168 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV3178 :ISA BE :SUBJECT MV3177 :PREDICATE MV3190 :PRESENT "PRESENT") (:VAR MV3177 :ISA WHAT)
 (:VAR MV3190 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV3181 :HAS-DETERMINER "THE"
  :RAW-TEXT "transcription factors")
 (:VAR MV3181 :ISA REGULATE :AGENT MV3190 :THAT-REL T :OBJECT MV3188 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3188 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER
  5 :ITEMS (MV3182 MV3183 MV3187 MV3175 MV3176))
 (:VAR MV3182 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV3183 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3187 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV3175 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV3176 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3197 :ISA BE :SUBJECT MV3196 :PREDICATE MV3206 :PRESENT "PRESENT") (:VAR MV3196 :ISA WHAT)
 (:VAR MV3206 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV3200 :HAS-DETERMINER "THE"
  :RAW-TEXT "transcription factors")
 (:VAR MV3200 :ISA REGULATE :AGENT MV3206 :THAT-REL T :OBJECT MV3204 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3204 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV3201 MV3202 MV3193 MV3194 MV3195))
 (:VAR MV3201 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV3202 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3193 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3194 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV3195 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV3211 :ISA BE :SUBJECT MV3210 :PREDICATE MV3224 :PRESENT "PRESENT") (:VAR MV3210 :ISA WHAT)
 (:VAR MV3224 :ISA REGULATOR :PLURAL T :THEME MV3220 :HAS-DETERMINER "THE" :CONTEXT MV3213
  :RAW-TEXT "regulators")
 (:VAR MV3220 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE PROTEIN :NUMBER 4
  :ITEMS (MV3207 MV3208 MV3218 MV3209))
 (:VAR MV3207 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME "CCND1_HUMAN")
 (:VAR MV3208 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME "FOXM1_HUMAN")
 (:VAR MV3218 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV3209 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME "KLF4_HUMAN")
 (:VAR MV3213 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV3235 :ISA REGULATE :OBJECT MV3234 :AGENT MV3232 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3234 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV3225 :RAW-TEXT
  "genes")
 (:VAR MV3225 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :NAME "cell cycle" :UID "GO:0007049")
 (:VAR MV3232 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV3240 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3237 :AGENT MV3239 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3237 :ISA WHAT)
 (:VAR MV3239 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV3244 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3241 :AGENT-OR-CAUSE MV3243 :ORGAN MV3246
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3241 :ISA WHAT) (:VAR MV3243 :ISA PRONOUN/INANIMATE :WORD "it") (:VAR MV3246 :ISA LIVER))

___________________
294: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV3252 :ISA TARGET :AFFECTED-PROCESS-OR-OBJECT MV3249 :AGENT MV3248 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3249 :ISA WHAT)
 (:VAR MV3248 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV3256 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3254 :AGENT MV3253 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3254 :ISA WHAT)
 (:VAR MV3253 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV3260 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3258 :AGENT MV3257 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3258 :ISA WHAT)
 (:VAR MV3257 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV3264 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3262 :AGENT MV3261 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3262 :ISA WHAT)
 (:VAR MV3261 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV3268 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3265 :AGENT MV3267 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3265 :ISA WHAT)
 (:VAR MV3267 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV3271 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV3270 :OBJECT MV3269 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV3270 :ISA WHAT)
 (:VAR MV3269 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV3285 :ISA BIO-USE :PATIENT MV3274 :MODAL MV3275 :AGENT MV3276 :THEME MV3284 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV3274 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug") (:VAR MV3275 :ISA COULD)
 (:VAR MV3276 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV3284 :ISA TARGET :OBJECT MV3272 :RAW-TEXT "target")
 (:VAR MV3272 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV3297 :ISA BIO-USE :OBJECT MV3288 :MODAL MV3289 :AGENT MV3290 :PURPOSE MV3286 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV3288 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug") (:VAR MV3289 :ISA SHOULD)
 (:VAR MV3290 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV3286 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV3302 :ISA BE :SUBJECT MV3306 :PREDICATE MV3308 :PRESENT "PRESENT")
 (:VAR MV3306 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV3308 :ISA INHIBITOR :PLURAL T :PROTEIN MV3298 :RAW-TEXT "inhibitors")
 (:VAR MV3298 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV3313 :ISA INHIBIT :AGENT MV3314 :OBJECT MV3309 :PRESENT "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV3314 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV3309 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV3318 :ISA REGULATE :AGENT MV3320 :OBJECT MV3319 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3320 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV3319 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV3325 :ISA TARGET :AGENT MV3327 :OBJECT MV3326 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3327 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV3326 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV3332 :ISA BE :SUBJECT MV3336 :PREDICATE MV3333 :PRESENT "PRESENT")
 (:VAR MV3336 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3333 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3328 :RAW-TEXT "downstream")
 (:VAR MV3328 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV3351 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3346 :VALUE MV3350 :PREP "IN" :PREDICATE
  MV3342)
 (:VAR MV3346 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3350 :ISA GENE :PLURAL T :CONTEXT MV3338 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3338 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3345 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3345 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV3342 :ISA BE :PRESENT "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV3369 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3362 :VALUE MV3368 :PREP "IN" :PREDICATE
  MV3358)
 (:VAR MV3362 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3368 :ISA GENE :PLURAL T :CONTEXT MV3364 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3364 :ISA SIGNALING-PATHWAY :PLURAL T :HAS-DETERMINER "THE" :MODIFIER MV3361 :RAW-TEXT
  "signaling pathways")
 (:VAR MV3361 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV3358 :ISA BE :PRESENT "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV3384 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3379 :VALUE MV3383 :PREP "IN" :PREDICATE
  MV3375)
 (:VAR MV3379 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3383 :ISA GENE :PLURAL T :CONTEXT MV3378 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3378 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3371 :RAW-TEXT "pathway")
 (:VAR MV3371 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV3375 :ISA BE :PRESENT "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV3399 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3394 :VALUE MV3398 :PREP "IN" :PREDICATE
  MV3390)
 (:VAR MV3394 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3398 :ISA GENE :PLURAL T :CONTEXT MV3386 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3386 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3393 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3393 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME "PRL_HUMAN")
 (:VAR MV3390 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV3412 :ISA INVOLVE :OBJECT MV3411 :CONTEXT-OR-THEME MV3410 :PRESENT "PRESENT")
 (:VAR MV3411 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3410 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3402 :RAW-TEXT "pathway")
 (:VAR MV3402 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3424 :ISA INVOLVE :OBJECT MV3423 :CONTEXT-OR-THEME MV3422 :PRESENT "PRESENT")
 (:VAR MV3423 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3422 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3421 :RAW-TEXT "pathway")
 (:VAR MV3421 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3436 :ISA INVOLVE :OBJECT MV3435 :CONTEXT-OR-THEME MV3434 :PRESENT "PRESENT")
 (:VAR MV3435 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3434 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3426 :RAW-TEXT "pathway")
 (:VAR MV3426 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV3448 :ISA INVOLVE :OBJECT MV3447 :CONTEXT-OR-THEME MV3446 :PRESENT "PRESENT")
 (:VAR MV3447 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3446 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3438 :RAW-TEXT "pathway")
 (:VAR MV3438 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3464 :ISA REGULATE :OBJECT MV3463 :AGENT MV3462 :PRESENT "PRESENT" :SUPERLATIVE MV3457
  :ADVERB MV3458 :RAW-TEXT "regulated")
 (:VAR MV3463 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3462 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p" :TYPE MICRO-RNA
  :NUMBER 3 :ITEMS (MV3450 MV3451 MV3452))
 (:VAR MV3450 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV3451 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV3452 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437")
 (:VAR MV3457 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3458 :ISA FREQUENTLY :NAME "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3481 :ISA REGULATE :OBJECT MV3480 :AGENT MV3479 :PRESENT "PRESENT" :SUPERLATIVE MV3474
  :ADVERB MV3475 :RAW-TEXT "regulated")
 (:VAR MV3480 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3479 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE
  MICRO-RNA :NUMBER 4 :ITEMS (MV3466 MV3467 MV3468 MV3469))
 (:VAR MV3466 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV3467 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV3468 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437")
 (:VAR MV3469 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm" :UID "MIMAT0000075")
 (:VAR MV3474 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3475 :ISA FREQUENTLY :NAME "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3498 :ISA REGULATE :OBJECT MV3497 :AGENT MV3496 :PRESENT "PRESENT" :SUPERLATIVE MV3491
  :ADVERB MV3492 :RAW-TEXT "regulated")
 (:VAR MV3497 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3496 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE
  MICRO-RNA :NUMBER 4 :ITEMS (MV3483 MV3484 MV3485 MV3486))
 (:VAR MV3483 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV3484 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV3485 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437")
 (:VAR MV3486 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm" :UID "MIMAT0000075")
 (:VAR MV3491 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3492 :ISA FREQUENTLY :NAME "frequently"))

___________________
318: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3508 :ISA REGULATE :OBJECT MV3507 :AGENT MV3506 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3507 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3506 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3521 :ISA REGULATE :OBJECT MV3520 :AGENT MV3519 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3520 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3519 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3510 MV3518))
 (:VAR MV3510 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV3518 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3534 :ISA REGULATE :OBJECT MV3533 :AGENT MV3532 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3533 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3532 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE MICRO-RNA :NUMBER 2
  :ITEMS (MV3523 MV3524))
 (:VAR MV3523 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413")
 (:VAR MV3524 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME "microRNA 29b-1-5pm" :UID
  "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3546 :ISA REGULATE :OBJECT MV3545 :AGENT MV3544 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3545 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3544 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3556 :ISA REGULATE :OBJECT MV3555 :AGENT MV3554 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3555 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3554 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3569 :ISA REGULATE :OBJECT MV3568 :AGENT MV3567 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3568 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3567 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3558 MV3566))
 (:VAR MV3558 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3566 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3579 :ISA TARGET :OBJECT MV3578 :CAUSE MV3571 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3578 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3571 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3596 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3591 :VALUE MV3595 :PREP "IN" :PREDICATE
  MV3585)
 (:VAR MV3591 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3595 :ISA GENE :PLURAL T :CONTEXT MV3581 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3581 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3590 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3590 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV3585 :ISA BE :PRESENT "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3608 :ISA BIO-USE :OBJECT MV3607 :CONTEXT MV3598 :PRESENT "PRESENT" :RAW-TEXT "used")
 (:VAR MV3607 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3598 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3606 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3606 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV3616 :ISA TARGET :OBJECT MV3617 :CAUSE MV3610 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3617 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3610 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3624 :ISA TARGET :OBJECT MV3625 :AGENT MV3618 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3625 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3618 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3632 :ISA TARGET :OBJECT MV3633 :AGENT MV3626 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3633 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3626 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3639 :ISA UPREGULATE :OBJECT MV3640 :AGENT MV3634 :PRESENT "PRESENT" :RAW-TEXT
  "upregulate")
 (:VAR MV3640 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3634 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3646 :ISA REGULATE :OBJECT MV3651 :AGENT MV3641 :CELL-TYPE MV3652 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3651 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3641 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3652 :ISA CELL-TYPE :PLURAL T :NON-CELLULAR-LOCATION MV3648) (:VAR MV3648 :ISA LIVER))

___________________
332: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3659 :ISA REGULATE :OBJECT MV3662 :AGENT MV3654 :ORGAN MV3661 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3662 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3654 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3661 :ISA LIVER))

___________________
333: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3669 :ISA REGULATE :OBJECT MV3672 :AGENT MV3664 :ORGAN MV3671 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3672 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3664 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3671 :ISA LUNG))

___________________
334: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3679 :ISA REGULATE :OBJECT MV3680 :AGENT MV3674 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3680 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3674 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3689 :ISA REGULATE :OBJECT MV3692 :AGENT MV3681 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3692 :ISA GENE :PLURAL T :ORGAN MV3687 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3687 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3681 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

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
 (:VAR MV3706 :ISA BE :SUBJECT MV3710 :PREDICATE MV3707 :PRESENT "PRESENT")
 (:VAR MV3710 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3707 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3710 :MODIFIER MV3702 :RAW-TEXT "upstream")
 (:VAR MV3702 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3717 :ISA BE :SUBJECT MV3722 :PREDICATE MV3719 :PRESENT "PRESENT")
 (:VAR MV3722 :ISA GENE :PLURAL T :PREDICATION MV3714 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3714 :ISA REGULATE :OBJECT MV3722 :AGENT MV3716 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3716 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3719 :ISA KINASE :PLURAL T :RAW-TEXT "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3729 :ISA BE :SUBJECT MV3734 :PREDICATE MV3731 :PRESENT "PRESENT")
 (:VAR MV3734 :ISA GENE :PLURAL T :PREDICATION MV3727 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3727 :ISA REGULATE :OBJECT MV3734 :AGENT MV3723 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3723 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3731 :ISA KINASE :PLURAL T :RAW-TEXT "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3740 :ISA INVOLVE :THEME MV3745 :OBJECT MV3743 :PRESENT "PRESENT")
 (:VAR MV3745 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV3737 :RAW-TEXT "pathways")
 (:VAR MV3737 :ISA IMMUNE :NAME "immune")
 (:VAR MV3743 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3741 MV3735))
 (:VAR MV3741 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3735 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3750 :ISA INVOLVE :THEME MV3753 :OBJECT MV3751 :PRESENT "PRESENT")
 (:VAR MV3753 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV3747 :RAW-TEXT "pathways")
 (:VAR MV3747 :ISA IMMUNE :NAME "immune")
 (:VAR MV3751 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3759 :ISA INVOLVE :THEME MV3764 :OBJECT MV3762 :PRESENT "PRESENT")
 (:VAR MV3764 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV3756 :RAW-TEXT "pathways")
 (:VAR MV3756 :ISA IMMUNE :NAME "immune")
 (:VAR MV3762 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3760 MV3754))
 (:VAR MV3760 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3754 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3769 :ISA INVOLVE :THEME MV3781 :OBJECT MV3779 :PRESENT "PRESENT")
 (:VAR MV3781 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV3766 :RAW-TEXT "pathways")
 (:VAR MV3766 :ISA IMMUNE :NAME "immune")
 (:VAR MV3779 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3777 MV3778))
 (:VAR MV3777 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME "TAP1_HUMAN")
 (:VAR MV3778 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3783 :ISA INHIBIT :AGENT-OR-CAUSE MV3782 :OBJECT MV3784 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV3782 :ISA WHAT)
 (:VAR MV3784 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?" (:VAR MV3787 :ISA BE :SUBJECT MV3786 :PREDICATE MV3785 :PRESENT "PRESENT")
 (:VAR MV3786 :ISA WHAT)
 (:VAR MV3785 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?" (:VAR MV3789 :ISA BE :SUBJECT MV3788 :PREDICATE MV3790 :PRESENT "PRESENT")
 (:VAR MV3788 :ISA WHAT)
 (:VAR MV3790 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3793 :ISA BE :SUBJECT MV3792 :PREDICATE MV3794 :PRESENT "PRESENT") (:VAR MV3792 :ISA WHAT)
 (:VAR MV3794 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3791 :RAW-TEXT "downstream")
 (:VAR MV3791 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?" (:VAR MV3799 :ISA BE :SUBJECT MV3798 :PREDICATE MV3800 :PRESENT "PRESENT")
 (:VAR MV3798 :ISA WHAT)
 (:VAR MV3800 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?" (:VAR MV3802 :ISA BE :SUBJECT MV3801 :PREDICATE MV3803 :PRESENT "PRESENT")
 (:VAR MV3801 :ISA WHAT) (:VAR MV3803 :ISA BIO-ENTITY :NAME "errb"))

___________________
350: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3809 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3805 :AGENT MV3804 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3805 :ISA WHAT)
 (:VAR MV3804 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3813 :ISA BE :SUBJECT MV3812 :PREDICATE MV3819 :PRESENT "PRESENT") (:VAR MV3812 :ISA WHAT)
 (:VAR MV3819 :ISA EVIDENCE :STATEMENT MV3818 :HAS-DETERMINER "THE")
 (:VAR MV3818 :ISA DECREASE :AGENT MV3817 :OBJECT MV3811 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3817 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3811 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3822 :ISA BE :SUBJECT MV3821 :PREDICATE MV3832 :PRESENT "PRESENT") (:VAR MV3821 :ISA WHAT)
 (:VAR MV3832 :ISA EVIDENCE :STATEMENT MV3827 :HAS-DETERMINER "THE")
 (:VAR MV3827 :ISA DECREASE :AGENT MV3826 :AFFECTED-PROCESS-OR-OBJECT MV3829 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3826 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3829 :ISA BIO-AMOUNT :MEASURED-ITEM MV3820 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV3820 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3834 :ISA BE :SUBJECT MV3833 :PREDICATE MV3836 :PRESENT "PRESENT") (:VAR MV3833 :ISA WHAT)
 (:VAR MV3836 :ISA TARGET-PROTEIN :TREATMENT MV3839 :HAS-DETERMINER "THE" :RAW-TEXT "target")
 (:VAR MV3839 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622"))

___________________
354: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3846 :ISA REGULATE :OBJECT MV3847 :AGENT MV3841 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3847 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3841 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3856 :ISA REGULATE :AGENT MV3861 :OBJECT MV3860 :PRESENT "PRESENT" :ADVERB MV3854 :ADVERB
  MV3855 :RAW-TEXT "regulate")
 (:VAR MV3861 :ISA MICRO-RNA :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3860 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV3857 MV3858 MV3848 MV3849 MV3850))
 (:VAR MV3857 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV3858 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3848 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3849 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV3850 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN")
 (:VAR MV3854 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3855 :ISA FREQUENTLY :NAME "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3868 :ISA REGULATE :AGENT MV3873 :OBJECT MV3872 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3873 :ISA MICRO-RNA :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3872 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV3869 MV3870 MV3862 MV3863 MV3864))
 (:VAR MV3869 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV3870 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3862 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3863 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV3864 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3882 :ISA REGULATE :OBJECT MV3881 :AGENT MV3874 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3881 :ISA MICRO-RNA :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3874 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3889 :ISA REGULATE :AGENT MV3895 :OBJECT MV3899 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3895 :ISA MICRO-RNA :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3899 :ISA GENE :PLURAL T :CONTEXT MV3897 :RAW-TEXT "genes")
 (:VAR MV3897 :ISA SIGNALING-PATHWAY :PLURAL T :HAS-DETERMINER "THE" :MODIFIER MV3894 :RAW-TEXT
  "signaling pathways")
 (:VAR MV3894 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
e4    BIO-ENTITY    1 "What pahtways " 3
e5    INVOLVE       3 "involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e4    NP            1 "What pahtways " 3
e5    VP            3 "involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
360: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3916 :ISA COPULAR-PREDICATION :ITEM MV3914 :VALUE MV3909 :PREDICATE MV3908)
 (:VAR MV3914 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3909 :ISA COMMON :THEME MV3913)
 (:VAR MV3913 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3904 MV3912))
 (:VAR MV3904 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3912 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3908 :ISA BE :PRESENT "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3920 :ISA INVOLVE :THEME MV3922 :OBJECT MV3921 :PRESENT "PRESENT")
 (:VAR MV3922 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3921 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3927 :ISA INVOLVE :THEME MV3931 :OBJECT MV3930 :PRESENT "PRESENT")
 (:VAR MV3931 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3930 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3928 MV3923))
 (:VAR MV3928 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3923 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3936 :ISA INVOLVE :THEME MV3939 :OBJECT MV3932 :PRESENT "PRESENT")
 (:VAR MV3939 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3932 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3938 :RAW-TEXT
  "transcription factor")
 (:VAR MV3938 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "What pathways utilize srf and is srf a kinase"

                    SOURCE-START
e15   BIO-UTILIZE   1 "What pathways utilize srf and is srf " 8
e11   KINASE        8 "a kinase" 10
                    END-OF-SOURCE
                    SOURCE-START
e15   S             1 "What pathways utilize srf and is srf " 8
e11   NP            8 "a kinase" 10
                    END-OF-SOURCE


___________________
365: "What proteins are in the MAPK family?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What proteins are in the MAPK family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are in the MAPK family?"
 (:VAR MV3967 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3961 :VALUE MV3966 :PREP "IN" :PREDICATE
  MV3955)
 (:VAR MV3961 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3966 :ISA PROTEIN :PLURAL T :IN-FAMILY MV3962 :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3962 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3955 :ISA BE :PRESENT "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3977 :ISA TARGET :OBJECT MV3976 :CAUSE MV3969 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3976 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3969 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3985 :ISA TARGET :OBJECT MV3986 :AGENT MV3979 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3986 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3979 :ISA DRUG :RAW-TEXT "PLX-4720" :NAME "PLX 4720" :UID "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3993 :ISA TARGET :OBJECT MV3994 :CAUSE MV3987 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3994 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3987 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV4001 :ISA TARGET :OBJECT MV4002 :AGENT MV3999 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV4002 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3999 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib" :UID "PCID:42611257"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV4008 :ISA LEAD :AGENT MV4013 :THEME MV4011 :MODAL MV4007 :RAW-TEXT "lead")
 (:VAR MV4013 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV4011 :ISA DEVELOPMENT :DISEASE MV4003 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV4003 :ISA CANCER :NAME "lung cancer" :UID "TS-0571") (:VAR MV4007 :ISA MIGHT))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV4021 :ISA LEAD :AGENT MV4026 :THEME MV4024 :MODAL MV4020 :RAW-TEXT "lead")
 (:VAR MV4026 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV4024 :ISA DEVELOPMENT :DISEASE MV4016 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV4016 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739") (:VAR MV4020 :ISA MIGHT))

___________________
372: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV4033 :ISA INVOLVE :THEME MV4037 :OBJECT MV4035 :PRESENT "PRESENT")
 (:VAR MV4037 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV4030 :RAW-TEXT "pathways")
 (:VAR MV4030 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV4035 :ISA SIGNAL :MODIFIER MV4034 :RAW-TEXT "signaling")
 (:VAR MV4034 :ISA IMMUNE :NAME "immune"))

___________________
373: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV4039 :ISA REGULATE :AGENT-OR-CAUSE MV4038 :OBJECT MV4040 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4038 :ISA WHAT)
 (:VAR MV4040 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV4043 :ISA REGULATE :AGENT-OR-CAUSE MV4042 :OBJECT MV4041 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4042 :ISA WHAT)
 (:VAR MV4041 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV4046 :ISA REGULATE :AGENT-OR-CAUSE MV4045 :OBJECT MV4044 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4045 :ISA WHAT)
 (:VAR MV4044 :ISA PROTEIN :ORGAN MV4048 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV4048 :ISA LIVER))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV4061 :ISA SHARE :OBJECT MV4060 :PARTICIPANT MV4059 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4060 :ISA SIGNALING-PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV4059 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4057 MV4052))
 (:VAR MV4057 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME "TF65_HUMAN")
 (:VAR MV4052 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV4074 :ISA SHARE :OBJECT MV4073 :PARTICIPANT MV4072 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4073 :ISA SIGNALING-PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV4072 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4065 MV4071))
 (:VAR MV4065 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4071 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV4088 :ISA SHARE :OBJECT MV4087 :PARTICIPANT MV4086 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4087 :ISA SIGNALING-PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV4086 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV4078 MV4079 MV4085))
 (:VAR MV4078 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4079 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4085 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
e7    PREPOSITION   7 "in" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
380: "What transcription factor produces SMURF2?"

                    SOURCE-START
e8    BIO-PRODUCE   1 "What transcription factor produces SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor produces SMURF2?"
 (:VAR MV4101 :ISA BIO-PRODUCE :AGENT MV4098 :OBJECT MV4099 :PRESENT "PRESENT" :RAW-TEXT
  "produces")
 (:VAR MV4098 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factor")
 (:VAR MV4099 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV4105 :ISA TRANSCRIBE :AGENT MV4102 :OBJECT MV4103 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV4102 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factor")
 (:VAR MV4103 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV4126 :ISA COPULAR-PREDICATION :ITEM MV4122 :VALUE MV4114 :PREDICATE MV4113)
 (:VAR MV4122 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4114 :ISA COMMON :THEME MV4124)
 (:VAR MV4124 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :EXPRESSES MV4121 :RAW-TEXT "genes")
 (:VAR MV4121 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV4108 MV4109 MV4117 MV4110 MV4111))
 (:VAR MV4108 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4109 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4117 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV4110 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV4111 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV4113 :ISA BE :PRESENT "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV4145 :ISA COPULAR-PREDICATION :ITEM MV4141 :VALUE MV4134 :PREDICATE MV4133)
 (:VAR MV4141 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4134 :ISA COMMON :THEME MV4143)
 (:VAR MV4143 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :EXPRESSES MV4140 :RAW-TEXT "genes")
 (:VAR MV4140 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV4129 MV4130 MV4131))
 (:VAR MV4129 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4130 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4131 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV4133 :ISA BE :PRESENT "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV4151 :ISA REGULATE :OBJECT MV4152 :AGENT MV4146 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4152 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4146 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV4165 :ISA COPULAR-PREDICATION :ITEM MV4162 :VALUE MV4157 :PREDICATE MV4156)
 (:VAR MV4162 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4157 :ISA COMMON :THEME MV4163)
 (:VAR MV4163 :ISA GENE :PLURAL T :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV4156 :ISA BE :PRESENT "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV4186 :ISA COPULAR-PREDICATION :ITEM MV4182 :VALUE MV4168 :PREDICATE MV4174)
 (:VAR MV4182 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4168 :ISA IN-COMMON :THEME MV4184)
 (:VAR MV4184 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :EXPRESSES MV4181 :RAW-TEXT "genes")
 (:VAR MV4181 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV4169 MV4170 MV4177 MV4171 MV4172))
 (:VAR MV4169 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4170 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4177 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV4171 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV4172 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV4174 :ISA BE :PRESENT "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV4205 :ISA COPULAR-PREDICATION :ITEM MV4201 :VALUE MV4189 :PREDICATE MV4194)
 (:VAR MV4201 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4189 :ISA IN-COMMON :THEME MV4203)
 (:VAR MV4203 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :EXPRESSES MV4200 :RAW-TEXT "genes")
 (:VAR MV4200 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV4190 MV4191 MV4192))
 (:VAR MV4190 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4191 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4192 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV4194 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV4210 :ISA BE :SUBJECT MV4216 :PREDICATE MV4219 :PRESENT "PRESENT")
 (:VAR MV4216 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4219 :ISA REGULATOR :PLURAL T :THEME MV4208 :RAW-TEXT "regulators")
 (:VAR MV4208 :ISA PROTEIN :ORGAN MV4215 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV4215 :ISA LIVER))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV4224 :ISA BE :SUBJECT MV4228 :PREDICATE MV4230 :PRESENT "PRESENT")
 (:VAR MV4228 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4230 :ISA REGULATOR :PLURAL T :THEME MV4222 :RAW-TEXT "regulators")
 (:VAR MV4222 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV4246 :ISA SHARE :OBJECT MV4245 :PARTICIPANT MV4248 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4245 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4248 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :EXPRESSES MV4244 :RAW-TEXT "genes")
 (:VAR MV4244 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV4239 MV4240 MV4233))
 (:VAR MV4239 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4240 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV4233 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV4254 :ISA REGULATE :AGENT MV4257 :OBJECT MV4252 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4257 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4252 :ISA PROTEIN :ORGAN MV4256 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV4256 :ISA LIVER))

___________________
392: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV4263 :ISA REGULATE :AGENT MV4264 :OBJECT MV4261 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4264 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4261 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV4268 :ISA REGULATE :AGENT MV4270 :OBJECT MV4269 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4270 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4269 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV4274 :ISA REGULATE :AGENT MV4282 :THEME MV4281 :OBJECT MV4276 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV4282 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4281 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV4279 :CELLULAR-PROCESS MV4280 :NAME
  "pathwya")
 (:VAR MV4279 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV4280 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV4276 :ISA GENE :PLURAL T :RAW-TEXT "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV4288 :ISA REGULATE :AGENT MV4289 :OBJECT MV4286 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4289 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4286 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV4294 :ISA TRANSCRIBE :AGENT MV4295 :OBJECT MV4292 :PRESENT "PRESENT" :RAW-TEXT
  "transcribe")
 (:VAR MV4295 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4292 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV4298 :ISA UPREGULATE :AGENT-OR-CAUSE MV4297 :OBJECT MV4296 :PRESENT "PRESENT" :RAW-TEXT
  "upregulates")
 (:VAR MV4297 :ISA WHAT)
 (:VAR MV4296 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV4304 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV4300 :OBJECT MV4299 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4300 :ISA WHERE)
 (:VAR MV4299 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV4309 :ISA INVOLVE :THEME MV4312 :OBJECT MV4310 :PRESENT "PRESENT")
 (:VAR MV4312 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV4306 :RAW-TEXT "pathways")
 (:VAR MV4306 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV4310 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV4318 :ISA BIO-USE :AGENT MV4321 :OBJECT MV4319 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV4321 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV4314 :RAW-TEXT "pathways")
 (:VAR MV4314 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV4319 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV4326 :ISA REGULATE :AGENT MV4327 :OBJECT MV4324 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4327 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4324 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV4331 :ISA REGULATE :AGENT-OR-CAUSE MV4328 :OBJECT MV4332 :PRESENT "PRESENT" :ADVERB MV4329
  :RAW-TEXT "regulate")
 (:VAR MV4328 :ISA WHICH)
 (:VAR MV4332 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4329 :ISA ALSO :NAME "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV4344 :ISA REGULATE :OBJECT MV4343 :AGENT MV4333 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4343 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV4335 :RAW-TEXT
  "genes")
 (:VAR MV4335 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV4333 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV4352 :ISA BE :SUBJECT MV4357 :PREDICATE MV4353 :PRESENT "PRESENT")
 (:VAR MV4357 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV4348 :RAW-TEXT
  "genes")
 (:VAR MV4348 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV4353 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4357 :MODIFIER MV4346 :RAW-TEXT "upstream")
 (:VAR MV4346 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV4366 :ISA TARGET :OBJECT MV4365 :AGENT MV4358 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV4365 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4358 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV4374 :ISA BE :SUBJECT MV4379 :PREDICATE MV4376 :PRESENT "PRESENT")
 (:VAR MV4379 :ISA GENE :PLURAL T :PREDICATION MV4372 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4372 :ISA REGULATE :OBJECT MV4379 :AGENT MV4368 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4368 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4376 :ISA KINASE :PLURAL T :RAW-TEXT "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV4398 :ISA SHARE :OBJECT MV4397 :PARTICIPANT MV4399 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4397 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV4385 :RAW-TEXT "pathways")
 (:VAR MV4385 :ISA IMMUNE :NAME "immune")
 (:VAR MV4399 :ISA GENE :PLURAL T :EXPRESSES MV4395 :RAW-TEXT "genes")
 (:VAR MV4395 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV4380 MV4381 MV4391 MV4382 MV4383))
 (:VAR MV4380 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4381 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4391 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV4382 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV4383 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV4418 :ISA SHARE :OBJECT MV4417 :PARTICIPANT MV4420 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4417 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV4405 :RAW-TEXT "pathways")
 (:VAR MV4405 :ISA IMMUNE :NAME "immune")
 (:VAR MV4420 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :EXPRESSES MV4415 :RAW-TEXT "genes")
 (:VAR MV4415 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV4401 MV4402 MV4403))
 (:VAR MV4401 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4402 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4403 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   BIO-UTILIZE   1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV4427 :ISA BIO-UTILIZE :AGENT MV4433 :OBJECT MV4429 :PRESENT "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV4433 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV4424 :RAW-TEXT "pathways")
 (:VAR MV4424 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV4429 :ISA GENE :PLURAL T :PREDICATION MV4430 :RAW-TEXT "genes")
 (:VAR MV4430 :ISA REGULATE :OBJECT MV4429 :AGENT MV4422 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4422 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    BIO-UTILIZE   1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV4440 :ISA BIO-UTILIZE :AGENT MV4443 :OBJECT MV4441 :PRESENT "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV4443 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV4437 :RAW-TEXT "pathways")
 (:VAR MV4437 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV4441 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    SOURCE-START
e9    BIO-UTILIZE   1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV4448 :ISA BIO-UTILIZE :AGENT MV4451 :OBJECT MV4449 :PRESENT "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV4451 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV4445 :RAW-TEXT "pathways")
 (:VAR MV4445 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV4449 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
412: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV4459 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV4455 :AGENT MV4452 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4455 :ISA PRONOUN/PLURAL :QUANTIFIER MV4453 :WORD "them") (:VAR MV4453 :ISA WHICH)
 (:VAR MV4452 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV4469 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4464 :ORGAN MV4468 :PRESENT "PRESENT"
  :RAW-TEXT "expressed")
 (:VAR MV4464 :ISA THESE :QUANTIFIER MV4462 :WORD "these") (:VAR MV4462 :ISA WHICH)
 (:VAR MV4468 :ISA LIVER))

___________________
414: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV4482 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4474 :VALUE MV4480 :PREP MV4476 :PREDICATE
  MV4475)
 (:VAR MV4474 :ISA THESE :QUANTIFIER MV4472 :WORD "these") (:VAR MV4472 :ISA WHICH)
 (:VAR MV4480 :ISA PATHWAY :PLURAL T :MODIFIER MV4477 :RAW-TEXT "pathways")
 (:VAR MV4477 :ISA IMMUNE :NAME "immune") (:VAR MV4476 :ISA IN :WORD "in")
 (:VAR MV4475 :ISA BE :PRESENT "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV4489 :ISA PHOSPHORYLATE :SUBSTRATE MV4490 :AGENT MV4488 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV4490 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV4488 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
416: "Which of these are kinases"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    END-OF-SOURCE
("Which of these are kinases"
 (:VAR MV4494 :ISA BE :SUBJECT MV4493 :PREDICATE MV4496 :PRESENT "PRESENT")
 (:VAR MV4493 :ISA THESE :QUANTIFIER MV4491 :WORD "these") (:VAR MV4491 :ISA WHICH)
 (:VAR MV4496 :ISA KINASE :PLURAL T :RAW-TEXT "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV4505 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV4501 :AGENT MV4498 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4501 :ISA THOSE :QUANTIFIER MV4499 :WORD "those") (:VAR MV4499 :ISA WHICH)
 (:VAR MV4498 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV4515 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV4511 :AGENT MV4508 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4511 :ISA THESE :QUANTIFIER MV4509 :WORD "these") (:VAR MV4509 :ISA WHICH)
 (:VAR MV4508 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV4525 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV4520 :AGENT MV4524 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4520 :ISA THESE :QUANTIFIER MV4518 :WORD "these") (:VAR MV4518 :ISA WHICH)
 (:VAR MV4524 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV4544 :ISA SHARE :OBJECT MV4543 :PARTICIPANT MV4545 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4543 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4545 :ISA GENE :PLURAL T :EXPRESSES MV4542 :RAW-TEXT "genes")
 (:VAR MV4542 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV4528 MV4529 MV4538 MV4530 MV4531))
 (:VAR MV4528 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4529 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4538 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV4530 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV4531 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV4561 :ISA SHARE :OBJECT MV4560 :PARTICIPANT MV4559 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4560 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4559 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV4547 MV4548 MV4558))
 (:VAR MV4547 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4548 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4558 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV4580 :ISA SHARE :OBJECT MV4579 :PARTICIPANT MV4582 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4579 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4582 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :EXPRESSES MV4578 :RAW-TEXT "genes")
 (:VAR MV4578 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV4563 MV4564 MV4574 MV4565 MV4566))
 (:VAR MV4563 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4564 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV4574 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV4565 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV4566 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV4589 :ISA INVOLVE :THEME MV4592 :OBJECT MV4591 :PRESENT "PRESENT")
 (:VAR MV4592 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4591 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4584 MV4585))
 (:VAR MV4584 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME "TAP1_HUMAN")
 (:VAR MV4585 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV4596 :ISA INVOLVE :THEME MV4598 :OBJECT MV4597 :PRESENT "PRESENT")
 (:VAR MV4598 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4597 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
425: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV4603 :ISA BIO-USE :AGENT MV4605 :OBJECT MV4604 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV4605 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4604 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV4610 :ISA BIO-USE :AGENT MV4612 :OBJECT MV4611 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV4612 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4611 :ISA THESE :WORD "these"))

___________________
427: "Which pathways utilize SRF?"

                    SOURCE-START
e6    BIO-UTILIZE   1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV4616 :ISA BIO-UTILIZE :AGENT MV4618 :OBJECT MV4617 :PRESENT "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV4618 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4617 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    SOURCE-START
e8    BIO-UTILIZE   1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV4622 :ISA BIO-UTILIZE :AGENT MV4626 :OBJECT MV4627 :PRESENT "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV4626 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV4627 :ISA GENE :PLURAL T :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV4636 :ISA TARGET :OBJECT MV4635 :AGENT MV4628 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV4635 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV4628 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    BIO-UTILIZE   1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV4642 :ISA BIO-UTILIZE :AGENT MV4645 :OBJECT MV4643 :PRESENT "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV4645 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV4639 :RAW-TEXT "pathways")
 (:VAR MV4639 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV4643 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV4659 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4654 :VALUE MV4658 :PREP "IN" :PREDICATE
  MV4650)
 (:VAR MV4654 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4658 :ISA TRANSCRIPTION-FACTOR :PLURAL T :IN-PATHWAY MV4648 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "transcription factors")
 (:VAR MV4648 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4653 :RAW-TEXT
  "signaling pathway")
 (:VAR MV4653 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV4650 :ISA BE :PRESENT "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV4665 :ISA REGULATE :AGENT MV4669 :OBJECT MV4663 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4669 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4663 :ISA PROTEIN :ORGAN MV4668 :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV4668 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV4675 :ISA REGULATE :AGENT MV4676 :OBJECT MV4673 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4676 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4673 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV4684 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4680 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV4680 :ISA MOVE-TO :AT-RELATIVE-LOCATION-OR-GOAL MV4682 :THEME MV4678 :PRESENT "PRESENT")
 (:VAR MV4682 :ISA TOP-QUA-LOCATION)
 (:VAR MV4678 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4693 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4687 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV4687 :ISA SHOW :AT-RELATIVE-LOCATION MV4691 :STATEMENT-OR-THEME MV4686 :PRESENT "PRESENT")
 (:VAR MV4691 :ISA TOP-QUA-LOCATION)
 (:VAR MV4686 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4689 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4689 :ISA PHOSPHORYLATE :SUBSTRATE MV4686 :RAW-TEXT "phosphorylated"))

___________________
436: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4696 :ISA BE :SUBJECT MV4695 :PREDICATE MV4708 :PRESENT "PRESENT") (:VAR MV4695 :ISA WHAT)
 (:VAR MV4708 :ISA UPSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV4704 :HAS-DETERMINER "THE"
  :PREDICATION MV4698 :RAW-TEXT "upstreams")
 (:VAR MV4704 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4694 MV4703))
 (:VAR MV4694 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4703 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV4698 :ISA COMMON))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e12   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?" (:VAR MV4716 :ISA POLAR-QUESTION :STATEMENT MV4711)
 (:VAR MV4711 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4709 :ORGAN MV4714 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4709 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4714 :ISA LIVER))

___________________
438: "Is stat3 expressed in spleen?"

                    SOURCE-START
e10   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?" (:VAR MV4723 :ISA POLAR-QUESTION :STATEMENT MV4719)
 (:VAR MV4719 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4717 :ORGAN MV4721 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4717 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4721 :ISA SPLEEN))

___________________
439: "Show phosphorylated akt1 on top."

                    SOURCE-START
e11   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4725 :ISA SHOW :AT-RELATIVE-LOCATION MV4728 :STATEMENT-OR-THEME MV4724 :PRESENT "PRESENT")
 (:VAR MV4728 :ISA TOP-QUA-LOCATION)
 (:VAR MV4724 :ISA PROTEIN :PREDICATION MV4726 :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4726 :ISA PHOSPHORYLATE :SUBSTRATE MV4724 :RAW-TEXT "phosphorylated"))

___________________
440: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4732 :ISA BE :SUBJECT MV4731 :PREDICATE MV4744 :PRESENT "PRESENT") (:VAR MV4731 :ISA WHAT)
 (:VAR MV4744 :ISA UPSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV4740 :HAS-DETERMINER "THE"
  :PREDICATION MV4734 :RAW-TEXT "upstreams")
 (:VAR MV4740 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4730 MV4739))
 (:VAR MV4730 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4739 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4734 :ISA COMMON))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4752 :ISA COLLECTION :RAW-TEXT "RAF activates MEK and MEK activates ERK" :TYPE
  BIO-ACTIVATE :NUMBER 2 :ITEMS (MV4746 MV4750))
 (:VAR MV4746 :ISA BIO-ACTIVATE :AGENT MV4745 :OBJECT MV4747 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV4745 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4747 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4750 :ISA BIO-ACTIVATE :AGENT MV4749 :OBJECT MV4751 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV4749 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4751 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV4754 :ISA BE :SUBJECT MV4753 :PREDICATE MV4756 :PRESENT "PRESENT") (:VAR MV4753 :ISA WHAT)
 (:VAR MV4756 :ISA PATH :END MV4760 :START MV4758 :HAS-DETERMINER "THE")
 (:VAR MV4760 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4758 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV4763 :ISA REMOVE :OBJECT MV4770 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4770 :ISA FACT :STATEMENT MV4768 :HAS-DETERMINER "THE")
 (:VAR MV4768 :ISA BIO-ACTIVATE :AGENT MV4767 :OBJECT MV4769 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV4767 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4769 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
e14   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 on top" 10
                    PERIOD
                    END-OF-SOURCE
("let's show phosphorylated akt1 on top."
 (:VAR MV4778 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4773 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV4773 :ISA SHOW :AT-RELATIVE-LOCATION MV4776 :STATEMENT-OR-THEME MV4772 :PRESENT "PRESENT")
 (:VAR MV4776 :ISA TOP-QUA-LOCATION)
 (:VAR MV4772 :ISA PROTEIN :PREDICATION MV4774 :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4774 :ISA PHOSPHORYLATE :SUBSTRATE MV4772 :RAW-TEXT "phosphorylated"))

___________________
445: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4782 :ISA BE :SUBJECT MV4781 :PREDICATE MV4788 :PRESENT "PRESENT") (:VAR MV4781 :ISA WHAT)
 (:VAR MV4788 :ISA POSITIVE-REGULATOR :PLURAL T :THEME MV4786 :RAW-TEXT "positive regulators")
 (:VAR MV4786 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4785 :RAW-TEXT "gene")
 (:VAR MV4785 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4793 :ISA REGULATE :AGENT MV4796 :OBJECT MV4794 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4796 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4794 :ISA PROTEIN :ORGAN MV4791 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV4791 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?" (:VAR MV4809 :ISA POLAR-QUESTION :STATEMENT MV4806)
 (:VAR MV4806 :ISA THERE-EXISTS :VALUE MV4808 :PREDICATE MV4799)
 (:VAR MV4808 :ISA DRUG :PLURAL T :PREDICATION MV4804 :QUANTIFIER MV4801 :RAW-TEXT "drugs")
 (:VAR MV4804 :ISA INHIBIT :AGENT MV4808 :OBJECT MV4805 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "inhibiting")
 (:VAR MV4805 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4801 :ISA ANY :WORD "any") (:VAR MV4799 :ISA SYNTACTIC-THERE))

___________________
448: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?" (:VAR MV4821 :ISA POLAR-QUESTION :STATEMENT MV4818)
 (:VAR MV4818 :ISA THERE-EXISTS :VALUE MV4820 :PREDICATE MV4811)
 (:VAR MV4820 :ISA DRUG :PLURAL T :PREDICATION MV4816 :QUANTIFIER MV4813 :RAW-TEXT "drugs")
 (:VAR MV4816 :ISA TARGET :AGENT MV4820 :OBJECT MV4817 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "targeting")
 (:VAR MV4817 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV4813 :ISA ANY :WORD "any") (:VAR MV4811 :ISA SYNTACTIC-THERE))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4843 :ISA POLAR-QUESTION :STATEMENT MV4836)
 (:VAR MV4836 :ISA THERE-EXISTS :VALUE MV4842 :PREDICATE MV4824)
 (:VAR MV4842 :ISA GENE :PLURAL T :PREDICATION MV4838 :ORGAN MV4831 :QUANTIFIER MV4826 :RAW-TEXT
  "genes")
 (:VAR MV4838 :ISA REGULATE :OBJECT MV4842 :THAT-REL T :AGENT MV4822 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV4822 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4831 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV4826 :ISA ANY :WORD "any")
 (:VAR MV4824 :ISA SYNTACTIC-THERE))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4864 :ISA POLAR-QUESTION :STATEMENT MV4858)
 (:VAR MV4858 :ISA THERE-EXISTS :VALUE MV4863 :PREDICATE MV4846)
 (:VAR MV4863 :ISA GENE :PLURAL T :PREDICATION MV4851 :QUANTIFIER MV4848 :RAW-TEXT "genes")
 (:VAR MV4851 :ISA INVOLVE :OBJECT MV4863 :THEME MV4853 :PAST "PAST")
 (:VAR MV4853 :ISA APOPTOSIS :PREDICATION MV4860 :RAW-TEXT "apoptosis")
 (:VAR MV4860 :ISA REGULATE :AFFECTED-PROCESS MV4853 :THAT-REL T :AGENT MV4844 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4844 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4848 :ISA ANY :WORD "any") (:VAR MV4846 :ISA SYNTACTIC-THERE))

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
e15   THERE-EXISTS  1 "Are there any inhibitors for JAK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any inhibitors for JAK1?" (:VAR MV4889 :ISA POLAR-QUESTION :STATEMENT MV4885)
 (:VAR MV4885 :ISA THERE-EXISTS :VALUE MV4888 :PREDICATE MV4879)
 (:VAR MV4888 :ISA INHIBITOR :PLURAL T :TARGET-OR-PROTEIN MV4877 :QUANTIFIER MV4881 :RAW-TEXT
  "inhibitors")
 (:VAR MV4877 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN")
 (:VAR MV4881 :ISA ANY :WORD "any") (:VAR MV4879 :ISA SYNTACTIC-THERE))

___________________
453: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e19   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf" (:VAR MV4904 :ISA POLAR-QUESTION :STATEMENT MV4900)
 (:VAR MV4900 :ISA THERE-EXISTS :VALUE MV4903 :PREDICATE MV4892)
 (:VAR MV4903 :ISA GENE :PLURAL T :PREDICATION MV4896 :RAW-TEXT "genes")
 (:VAR MV4896 :ISA REGULATE :OBJECT MV4903 :AGENT MV4901 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4901 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4890 MV4899))
 (:VAR MV4890 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4899 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4892 :ISA SYNTACTIC-THERE))

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
e13   PREPOSITION   11 "in" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
455: "Can you find any apoptotic pathways that stat3 is involved in?"

                    SOURCE-START
e2    MODAL         1 "Can " 2
e27   BIO-FIND      2 "you find any apoptotic pathways that stat3 is involved " 12
e15   IN            12 "in" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e2    PREPOSED-AUXILIARY  1 "Can " 2
e27   S             2 "you find any apoptotic pathways that stat3 is involved " 12
e15   PREPOSITION   12 "in" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
456: "Can you look up which genes targeted by stat3 are involved in apoptosis?"

                    SOURCE-START
e32   LOOK-UP       1 "Can you look up which " 6
e28   INVOLVE       6 "genes targeted by stat3 are involved in apoptosis" 15
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e32   TRANSITIVE-CLAUSE-WITHOUT-OBJECT  1 "Can you look up which " 6
e28   S             6 "genes targeted by stat3 are involved in apoptosis" 15
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
457: "Can you show me genes regulated by ELK1"

                    SOURCE-START
e19   SHOW          1 "Can you show me genes regulated by ELK1" 10
                    END-OF-SOURCE
("Can you show me genes regulated by ELK1" (:VAR MV4971 :ISA POLAR-QUESTION :STATEMENT MV4963)
 (:VAR MV4963 :ISA SHOW :AGENT MV4962 :STATEMENT-OR-THEME MV4970 :BENEFICIARY MV4964 :MODAL "CAN")
 (:VAR MV4962 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4970 :ISA GENE :PLURAL T :PREDICATION MV4967 :RAW-TEXT "genes")
 (:VAR MV4967 :ISA REGULATE :OBJECT MV4970 :AGENT MV4960 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4960 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4964 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4986 :ISA POLAR-QUESTION :STATEMENT MV4975)
 (:VAR MV4975 :ISA SHOW :AGENT MV4974 :STATEMENT-OR-THEME MV4985 :BENEFICIARY MV4976 :MODAL "CAN")
 (:VAR MV4974 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4985 :ISA GENE :PLURAL T :PREDICATION MV4983 :RAW-TEXT "genes")
 (:VAR MV4983 :ISA REGULATE :OBJECT MV4985 :THAT-REL T :AGENT MV4972 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4972 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4976 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e21   SHOW          1 "Can you show me the pahtways " 7
e17   INVOLVE       7 "that involve SRF" 10
                    END-OF-SOURCE
                    SOURCE-START
e21   S             1 "Can you show me the pahtways " 7
e17   SUBJECT-RELATIVE-CLAUSE 7 "that involve SRF" 10
                    END-OF-SOURCE


___________________
460: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3" (:VAR MV5010 :ISA POLAR-QUESTION :STATEMENT MV5000)
 (:VAR MV5000 :ISA TELL :AGENT MV4999 :THEME MV5009 :BENEFICIARY MV5001 :MODAL "CAN")
 (:VAR MV4999 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5009 :ISA GENE :PLURAL T :PREDICATION MV5005 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5005 :ISA REGULATE :OBJECT MV5009 :AGENT MV4997 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4997 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5001 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV5023 :ISA POLAR-QUESTION :STATEMENT MV5014)
 (:VAR MV5014 :ISA TELL :AGENT MV5013 :THEME MV5022 :BENEFICIARY MV5015 :MODAL "CAN")
 (:VAR MV5013 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5022 :ISA GENE :PLURAL T :PREDICATION MV5020 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5020 :ISA REGULATE :OBJECT MV5022 :THAT-REL T :AGENT MV5011 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV5011 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5015 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV5040 :ISA POLAR-QUESTION :STATEMENT MV5027)
 (:VAR MV5027 :ISA TELL :AGENT MV5026 :THEME MV5039 :BENEFICIARY MV5028 :MODAL "CAN")
 (:VAR MV5026 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5039 :ISA GENE :PLURAL T :PREDICATION MV5037 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5037 :ISA REGULATE :OBJECT MV5039 :THAT-REL T :AGENT MV5024 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV5024 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5028 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV5058 :ISA POLAR-QUESTION :STATEMENT MV5044)
 (:VAR MV5044 :ISA TELL :AGENT MV5043 :THEME MV5057 :BENEFICIARY MV5045 :MODAL "CAN")
 (:VAR MV5043 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5057 :ISA GENE :PLURAL T :PREDICATION MV5056 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5056 :ISA REGULATE :OBJECT MV5057 :AGENT MV5041 :MODAL MV5042 :RAW-TEXT "regulated")
 (:VAR MV5041 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5042 :ISA CAN) (:VAR MV5045 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e29   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV5080 :ISA POLAR-QUESTION :STATEMENT MV5064)
 (:VAR MV5064 :ISA TELL :AGENT MV5063 :THEME MV5079 :BENEFICIARY MV5065 :MODAL "CAN")
 (:VAR MV5063 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5079 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV5077 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "transcription factors")
 (:VAR MV5077 :ISA SHARE :WH-ELEMENT MV5073 :WH-PATH NIL :RAW-TEXT "shared" :MODAL MV5062
  :PARTICIPANT MV5072 :OBJECT MV5073)
 (:VAR MV5073 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5062 :ISA CAN)
 (:VAR MV5072 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5061 MV5071))
 (:VAR MV5061 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV5071 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5065 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e25   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV5099 :ISA POLAR-QUESTION :STATEMENT MV5084)
 (:VAR MV5084 :ISA TELL :AGENT MV5083 :THEME MV5098 :BENEFICIARY MV5085 :MODAL "CAN")
 (:VAR MV5083 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5098 :ISA GENE :PLURAL T :PREDICATION MV5096 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5096 :ISA REGULATE :WH-ELEMENT MV5092 :WH-PATH NIL :RAW-TEXT "regulated" :MODAL MV5082
  :AGENT MV5081 :OBJECT MV5092)
 (:VAR MV5092 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "genes") (:VAR MV5082 :ISA CAN)
 (:VAR MV5081 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5085 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e33   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV5123 :ISA POLAR-QUESTION :STATEMENT MV5103)
 (:VAR MV5103 :ISA TELL :AGENT MV5102 :THEME MV5122 :BENEFICIARY MV5104 :MODAL "CAN")
 (:VAR MV5102 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5122 :ISA GENE :PLURAL T :PREDICATION MV5120 :ORGAN MV5110 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "genes")
 (:VAR MV5120 :ISA REGULATE :WH-ELEMENT MV5118 :WH-PATH NIL :RAW-TEXT "regulated" :MODAL MV5101
  :AGENT MV5100 :OBJECT MV5118)
 (:VAR MV5118 :ISA GENE :PLURAL T :ORGAN MV5110 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5110 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV5101 :ISA CAN)
 (:VAR MV5100 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5104 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?" (:VAR MV5135 :ISA POLAR-QUESTION :STATEMENT MV5127)
 (:VAR MV5127 :ISA TELL :AGENT MV5126 :THEME MV5134 :BENEFICIARY MV5128 :MODAL "CAN")
 (:VAR MV5126 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5134 :ISA GENE :PLURAL T :PREDICATION MV5132 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5132 :ISA REGULATE :OBJECT MV5134 :AGENT MV5124 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5124 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5128 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?" (:VAR MV5145 :ISA POLAR-QUESTION :STATEMENT MV5143)
 (:VAR MV5143 :ISA AFFECT :AGENT MV5136 :AFFECTED-PROCESS MV5141 :RAW-TEXT "affect")
 (:VAR MV5136 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5141 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5137 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV5137 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV5157 :ISA POLAR-QUESTION :STATEMENT MV5155)
 (:VAR MV5155 :ISA AFFECT :AGENT MV5146 :AFFECTED-PROCESS MV5151 :RAW-TEXT "affect")
 (:VAR MV5146 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5151 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5154 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV5154 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5147 :RAW-TEXT "gene")
 (:VAR MV5147 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV5170 :ISA POLAR-QUESTION :STATEMENT MV5168)
 (:VAR MV5168 :ISA INCREASE :AGENT MV5158 :AFFECTED-PROCESS MV5164 :RAW-TEXT "increase")
 (:VAR MV5158 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5164 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5167 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV5167 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5159 :RAW-TEXT "gene")
 (:VAR MV5159 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV5182 :ISA POLAR-QUESTION :STATEMENT MV5180)
 (:VAR MV5180 :ISA INCREASE :AGENT MV5171 :AFFECTED-PROCESS MV5176 :RAW-TEXT "increase")
 (:VAR MV5171 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5176 :ISA TRANSCRIBE :OBJECT MV5179 :RAW-TEXT "transcription")
 (:VAR MV5179 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5172 :RAW-TEXT "gene")
 (:VAR MV5172 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?" (:VAR MV5192 :ISA POLAR-QUESTION :STATEMENT MV5190)
 (:VAR MV5190 :ISA AFFECT :AGENT MV5183 :AFFECTED-PROCESS MV5187 :RAW-TEXT "affect")
 (:VAR MV5183 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5187 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5189 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV5189 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?" (:VAR MV5202 :ISA POLAR-QUESTION :STATEMENT MV5201)
 (:VAR MV5201 :ISA CONTAIN :THEME MV5199 :PATIENT MV5193)
 (:VAR MV5199 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5196 :RAW-TEXT "pathway")
 (:VAR MV5196 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME "MTOR_HUMAN")
 (:VAR MV5193 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV5205 :ISA BIO-FIND :OBJECT MV5207 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV5207 :ISA TREATMENT :DISEASE MV5203 :HAS-DETERMINER "A" :RAW-TEXT "treatment")
 (:VAR MV5203 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV5212 :ISA BIO-FIND :OBJECT MV5222 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV5222 :ISA GENE :PLURAL T :PREDICATION MV5218 :ORGAN MV5217 :RAW-TEXT "genes")
 (:VAR MV5218 :ISA REGULATE :OBJECT MV5222 :AGENT MV5210 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV5210 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5217 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
476: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV5226 :ISA BIO-FIND :OBJECT MV5231 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV5231 :ISA GENE :PLURAL T :PREDICATION MV5230 :RAW-TEXT "genes")
 (:VAR MV5230 :ISA REGULATE :OBJECT MV5231 :THAT-REL T :AGENT MV5224 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV5224 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV5236 :ISA BIO-FIND :OBJECT MV5233 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV5233 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV5237 :RAW-TEXT
  "transcription factors")
 (:VAR MV5237 :ISA SHARE :OBJECT MV5233 :PARTICIPANT MV5241 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV5241 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5234 MV5240))
 (:VAR MV5234 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV5240 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV5248 :ISA BIO-ACTIVATE :MANNER MV5245 :AGENT MV5247 :OBJECT MV5244 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV5245 :ISA HOW)
 (:VAR MV5247 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV5244 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV5253 :ISA REGULATE :MANNER MV5251 :AGENT MV5249 :OBJECT MV5255 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5251 :ISA HOW)
 (:VAR MV5249 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5255 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5250 :RAW-TEXT "gene")
 (:VAR MV5250 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
480: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    SOURCE-START
e26   KNOCK-OUT     1 "How does knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("How does knocking out p53 cause cancer via its effect on miRNAs?"
 (:VAR MV5271 :ISA KNOCK-OUT :RAW-TEXT "knocking out" :AGENT-OR-CAUSE MV5257 :OBJECT MV5275)
 (:VAR MV5257 :ISA HOW) (:VAR MV5275 :ISA CANCER :MODIFIER MV5261 :MODIFIER MV5261)
 (:VAR MV5261 :ISA CAUSE :BY-MEANS-OF MV5273 :RAW-TEXT "cause")
 (:VAR MV5273 :ISA EFFECT :OBJECT MV5270 :PARTICIPANT MV5265 :RAW-TEXT "effect")
 (:VAR MV5270 :ISA MICRO-RNA :PLURAL T :RAW-TEXT "miRNAs")
 (:VAR MV5265 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
481: "How does stat3 regulate apoptosis in the liver?"

                    SOURCE-START
e16   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis in the liver?"
 (:VAR MV5279 :ISA REGULATE :MANNER MV5277 :AGENT MV5276 :AFFECTED-PROCESS MV5280 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5277 :ISA HOW)
 (:VAR MV5276 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5280 :ISA APOPTOSIS :ORGAN MV5283 :RAW-TEXT "apoptosis")
 (:VAR MV5283 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV5288 :ISA REGULATE :MANNER MV5286 :AGENT MV5285 :AFFECTED-PROCESS MV5289 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5286 :ISA HOW)
 (:VAR MV5285 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5289 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV5293 :ISA REGULATE :MANNER MV5291 :AGENT MV5290 :OBJECT MV5298 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5291 :ISA HOW)
 (:VAR MV5290 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5298 :ISA GENE :PLURAL T :CELLULAR-PROCESS MV5294 :RAW-TEXT "genes")
 (:VAR MV5294 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e16   BE            1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV5308 :ISA WH-QUESTION :STATEMENT MV5301 :WH HOW)
 (:VAR MV5301 :ISA BE :PREDICATE MV5299 :PRESENT "PRESENT")
 (:VAR MV5299 :ISA PROTEIN :PREDICATION MV5302 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5302 :ISA INVOLVE :OBJECT MV5299 :THEME MV5306 :PAST "PAST")
 (:VAR MV5306 :ISA REGULATE :CELLULAR-PROCESS MV5304 :RAW-TEXT "regulation")
 (:VAR MV5304 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e23   BE            1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV5321 :ISA WH-QUESTION :STATEMENT MV5311 :WH HOW)
 (:VAR MV5311 :ISA BE :PREDICATE MV5309 :PRESENT "PRESENT")
 (:VAR MV5309 :ISA PROTEIN :PREDICATION MV5312 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5312 :ISA INVOLVE :OBJECT MV5309 :THEME MV5314 :PAST "PAST")
 (:VAR MV5314 :ISA REGULATE :OBJECT MV5318 :ORGAN MV5317 :AGENT-OR-OBJECT MV5318 :RAW-TEXT
  "regulation")
 (:VAR MV5318 :ISA BIO-ENTITY :NAME "apoptotis") (:VAR MV5317 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e15   BE            1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV5330 :ISA WH-QUESTION :STATEMENT MV5324 :WH HOW)
 (:VAR MV5324 :ISA BE :PREDICATE MV5322 :PRESENT "PRESENT")
 (:VAR MV5322 :ISA PROTEIN :PREDICATION MV5325 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5325 :ISA INVOLVE :OBJECT MV5322 :THEME MV5327 :PAST "PAST")
 (:VAR MV5327 :ISA REGULATE :AFFECTED-PROCESS MV5328 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "regulating")
 (:VAR MV5328 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e15   BE            1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV5339 :ISA WH-QUESTION :STATEMENT MV5333 :WH HOW)
 (:VAR MV5333 :ISA BE :PREDICATE MV5331 :PRESENT "PRESENT")
 (:VAR MV5331 :ISA PROTEIN :PREDICATION MV5334 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5334 :ISA BIO-USE :OBJECT MV5331 :THEME MV5338 :PAST "PAST" :RAW-TEXT "used")
 (:VAR MV5338 :ISA REGULATE :AFFECTED-PROCESS MV5337 :RAW-TEXT "regulate")
 (:VAR MV5337 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV5353 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5348 :VALUE MV5352 :PREP "IN" :PREDICATE
  MV5344)
 (:VAR MV5348 :ISA GENE :PLURAL T :QUANTIFIER HOW-MANY :RAW-TEXT "genes")
 (:VAR MV5352 :ISA GENE :PLURAL T :CONTEXT MV5341 :QUANTIFIER HOW-MANY :RAW-TEXT "genes")
 (:VAR MV5341 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5347 :RAW-TEXT
  "signaling pathway")
 (:VAR MV5347 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV5344 :ISA BE :PRESENT "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV5362 :ISA AFFECT :MANNER MV5357 :MODAL MV5358 :AGENT MV5360 :OBJECT MV5356 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5357 :ISA HOW) (:VAR MV5358 :ISA MIGHT)
 (:VAR MV5360 :ISA MUTATION :HAS-DETERMINER "A" :OBJECT MV5355 :RAW-TEXT "mutation")
 (:VAR MV5355 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5356 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?" (:VAR MV5370 :ISA POLAR-QUESTION :STATEMENT MV5365)
 (:VAR MV5365 :ISA BE :SUBJECT MV5363 :PREDICATE MV5367)
 (:VAR MV5363 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5367 :ISA REGULATOR :THEME MV5364 :HAS-DETERMINER "A" :RAW-TEXT "regulator")
 (:VAR MV5364 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
491: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos" (:VAR MV5378 :ISA POLAR-QUESTION :STATEMENT MV5373)
 (:VAR MV5373 :ISA BE :SUBJECT MV5371 :PREDICATE MV5375)
 (:VAR MV5371 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5375 :ISA REGULATOR :THEME MV5372 :HAS-DETERMINER "A" :RAW-TEXT "regulator")
 (:VAR MV5372 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene" (:VAR MV5388 :ISA POLAR-QUESTION :STATEMENT MV5381)
 (:VAR MV5381 :ISA BE :SUBJECT MV5379 :PREDICATE MV5383)
 (:VAR MV5379 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5383 :ISA REGULATOR :THEME MV5386 :HAS-DETERMINER "A" :RAW-TEXT "regulator")
 (:VAR MV5386 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5380 :RAW-TEXT "gene")
 (:VAR MV5380 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
493: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?" (:VAR MV5398 :ISA POLAR-QUESTION :STATEMENT MV5391)
 (:VAR MV5391 :ISA BE :SUBJECT MV5389 :PREDICATE MV5393)
 (:VAR MV5389 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5393 :ISA REGULATOR :THEME MV5396 :HAS-DETERMINER "A" :RAW-TEXT "regulator")
 (:VAR MV5396 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5390 :RAW-TEXT "gene")
 (:VAR MV5390 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV5407 :ISA POLAR-QUESTION :STATEMENT MV5402)
 (:VAR MV5402 :ISA BE :SUBJECT MV5399 :PREDICATE MV5400)
 (:VAR MV5399 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5400 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV5405 :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV5405 :ISA GENE :EXPRESSES MV5401 :RAW-TEXT "gene")
 (:VAR MV5401 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
495: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos" (:VAR MV5415 :ISA POLAR-QUESTION :STATEMENT MV5411)
 (:VAR MV5411 :ISA BE :SUBJECT MV5408 :PREDICATE MV5409)
 (:VAR MV5408 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5409 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV5410 :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV5410 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
496: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?" (:VAR MV5423 :ISA POLAR-QUESTION :STATEMENT MV5419)
 (:VAR MV5419 :ISA BE :SUBJECT MV5416 :PREDICATE MV5417)
 (:VAR MV5416 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5417 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV5418 :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV5418 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
497: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV5433 :ISA POLAR-QUESTION :STATEMENT MV5427)
 (:VAR MV5427 :ISA BE :SUBJECT MV5424 :PREDICATE MV5425)
 (:VAR MV5424 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5425 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV5431 :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV5431 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5426 :RAW-TEXT "gene")
 (:VAR MV5426 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
498: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e11   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?" (:VAR MV5440 :ISA POLAR-QUESTION :STATEMENT MV5437)
 (:VAR MV5437 :ISA REGULATE :OBJECT MV5434 :AGENT MV5435 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV5434 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5435 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV5450 :ISA POLAR-QUESTION :STATEMENT MV5444)
 (:VAR MV5444 :ISA BE :SUBJECT MV5441 :PREDICATE MV5442)
 (:VAR MV5441 :ISA PROTEIN :RAW-TEXT "Stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5442 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV5448 :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV5448 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5443 :RAW-TEXT "gene")
 (:VAR MV5443 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
500: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1" (:VAR MV5452 :ISA LIST :THEME MV5454 :PRESENT "PRESENT")
 (:VAR MV5454 :ISA GENE :PLURAL T :PREDICATION MV5455 :RAW-TEXT "genes")
 (:VAR MV5455 :ISA REGULATE :OBJECT MV5454 :AGENT MV5451 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV5451 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1" (:VAR MV5460 :ISA LIST :THEME MV5469 :PRESENT "PRESENT")
 (:VAR MV5469 :ISA GENE :PLURAL T :PREDICATION MV5467 :RAW-TEXT "genes")
 (:VAR MV5467 :ISA REGULATE :OBJECT MV5469 :THAT-REL T :AGENT MV5459 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV5459 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates" (:VAR MV5471 :ISA LIST :THEME MV5478 :PRESENT "PRESENT")
 (:VAR MV5478 :ISA GENE :PLURAL T :PREDICATION MV5476 :QUANTIFIER MV5472 :RAW-TEXT "genes")
 (:VAR MV5476 :ISA REGULATE :OBJECT MV5478 :THAT-REL T :AGENT MV5470 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV5470 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5472 :ISA SOME :WORD "some"))

___________________
503: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates" (:VAR MV5480 :ISA LIST :THEME MV5486 :PRESENT "PRESENT")
 (:VAR MV5486 :ISA GENE :PLURAL T :PREDICATION MV5484 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5484 :ISA REGULATE :OBJECT MV5486 :AGENT MV5479 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5479 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV5488 :ISA LIST :THEME MV5499 :PRESENT "PRESENT")
 (:VAR MV5499 :ISA GENE :PLURAL T :PREDICATION MV5497 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5497 :ISA REGULATE :OBJECT MV5499 :THAT-REL T :AGENT MV5487 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV5487 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates" (:VAR MV5501 :ISA LIST :THEME MV5508 :PRESENT "PRESENT")
 (:VAR MV5508 :ISA GENE :PLURAL T :PREDICATION MV5506 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5506 :ISA REGULATE :OBJECT MV5508 :AGENT MV5500 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5500 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    SOURCE-START
e11   LIST          1 "List the pahtways " 4
e10   INVOLVE       4 "that involve SRF" 7
                    END-OF-SOURCE
                    SOURCE-START
e11   VP            1 "List the pahtways " 4
e10   SUBJECT-RELATIVE-CLAUSE 4 "that involve SRF" 7
                    END-OF-SOURCE


___________________
507: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV5516 :ISA SHOW :STATEMENT-OR-THEME MV5523 :BENEFICIARY MV5517 :PRESENT "PRESENT")
 (:VAR MV5523 :ISA GENE :PLURAL T :PREDICATION MV5520 :RAW-TEXT "genes")
 (:VAR MV5520 :ISA REGULATE :OBJECT MV5523 :AGENT MV5515 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV5515 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV5517 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV5525 :ISA SHOW :STATEMENT-OR-THEME MV5535 :BENEFICIARY MV5526 :PRESENT "PRESENT")
 (:VAR MV5535 :ISA GENE :PLURAL T :PREDICATION MV5533 :RAW-TEXT "genes")
 (:VAR MV5533 :ISA REGULATE :OBJECT MV5535 :THAT-REL T :AGENT MV5524 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV5524 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV5526 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV5537 :ISA SHOW :STATEMENT-OR-THEME MV5543 :BENEFICIARY MV5538 :PRESENT "PRESENT")
 (:VAR MV5543 :ISA GENE :PLURAL T :PREDICATION MV5542 :RAW-TEXT "genes")
 (:VAR MV5542 :ISA REGULATE :OBJECT MV5543 :THAT-REL T :AGENT MV5536 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV5536 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5538 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show me the pahtways " 5
e11   INVOLVE       5 "that involve SRF" 8
                    END-OF-SOURCE
                    SOURCE-START
e13   VP            1 "Show me the pahtways " 5
e11   SUBJECT-RELATIVE-CLAUSE 5 "that involve SRF" 8
                    END-OF-SOURCE


___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV5554 :ISA SHOW :STATEMENT-OR-THEME MV5569 :BENEFICIARY MV5555 :PRESENT "PRESENT")
 (:VAR MV5569 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV5567 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "transcription factors")
 (:VAR MV5567 :ISA SHARE :WH-ELEMENT MV5563 :WH-PATH NIL :RAW-TEXT "shared" :PRESENT "PRESENT"
  :PARTICIPANT MV5562 :OBJECT MV5563)
 (:VAR MV5563 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5562 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5553 MV5561))
 (:VAR MV5553 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV5561 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5555 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV5571 :ISA SHOW :STATEMENT-OR-THEME MV5585 :BENEFICIARY MV5572 :PRESENT "PRESENT")
 (:VAR MV5585 :ISA GENE :PLURAL T :PREDICATION MV5583 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5583 :ISA REGULATE :WH-ELEMENT MV5579 :WH-PATH NIL :RAW-TEXT "regulated" :PRESENT
  "PRESENT" :AGENT MV5570 :OBJECT MV5579)
 (:VAR MV5579 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5570 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5572 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV5587 :ISA SHOW :STATEMENT-OR-THEME MV5594 :PRESENT "PRESENT")
 (:VAR MV5594 :ISA GENE :PLURAL T :PREDICATION MV5592 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5592 :ISA REGULATE :OBJECT MV5594 :AGENT MV5586 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5586 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    SOURCE-START
e11   SHOW          1 "Show the pahtways " 4
e10   INVOLVE       4 "that involve SRF" 7
                    END-OF-SOURCE
                    SOURCE-START
e11   VP            1 "Show the pahtways " 4
e10   SUBJECT-RELATIVE-CLAUSE 4 "that involve SRF" 7
                    END-OF-SOURCE


___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV5604 :ISA SHOW :STATEMENT-OR-THEME MV5614 :PRESENT "PRESENT")
 (:VAR MV5614 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV5612 :RAW-TEXT
  "transcription factors")
 (:VAR MV5612 :ISA SHARE :OBJECT MV5614 :THAT-REL T :PARTICIPANT MV5611 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5611 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5603 MV5610))
 (:VAR MV5603 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV5610 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV5616 :ISA TELL :THEME MV5629 :BENEFICIARY MV5617 :PRESENT "PRESENT")
 (:VAR MV5629 :ISA GENE :PLURAL T :PREDICATION MV5628 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5628 :ISA REGULATE :OBJECT MV5629 :AGENT MV5615 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5615 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5617 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV5631 :ISA TELL :THEME MV5648 :BENEFICIARY MV5632 :PRESENT "PRESENT")
 (:VAR MV5648 :ISA GENE :PLURAL T :PREDICATION MV5646 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5646 :ISA REGULATE :WH-ELEMENT MV5642 :WH-PATH NIL :RAW-TEXT "regulated" :PRESENT
  "PRESENT" :AGENT MV5641 :OBJECT MV5642)
 (:VAR MV5642 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5641 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5630 MV5640))
 (:VAR MV5630 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV5640 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5632 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV5650 :ISA TELL :THEME MV5664 :BENEFICIARY MV5651 :PRESENT "PRESENT")
 (:VAR MV5664 :ISA GENE :PLURAL T :PREDICATION MV5662 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5662 :ISA REGULATE :WH-ELEMENT MV5658 :WH-PATH NIL :RAW-TEXT "regulated" :PRESENT
  "PRESENT" :AGENT MV5649 :OBJECT MV5658)
 (:VAR MV5658 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5649 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5651 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV5668 :ISA BE :SUBJECT MV5667 :PREDICATE MV5672 :PRESENT "PRESENT") (:VAR MV5667 :ISA WHAT)
 (:VAR MV5672 :ISA POSITIVE-REGULATOR :PLURAL T :THEME MV5670 :RAW-TEXT "positive regulators")
 (:VAR MV5670 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV5675 :ISA BE :SUBJECT MV5674 :PREDICATE MV5682 :PRESENT "PRESENT") (:VAR MV5674 :ISA WHAT)
 (:VAR MV5682 :ISA REGULATOR :PLURAL T :THEME MV5673 :QUANTIFIER MV5676 :RAW-TEXT "regulators")
 (:VAR MV5673 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV5676 :ISA SOME :WORD "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV5689 :ISA BE :SUBJECT MV5688 :PREDICATE MV5701 :PRESENT "PRESENT") (:VAR MV5688 :ISA WHAT)
 (:VAR MV5701 :ISA REGULATOR :PLURAL T :THEME MV5697 :HAS-DETERMINER "THE" :PREDICATION MV5691
  :RAW-TEXT "regulators")
 (:VAR MV5697 :ISA COLLECTION :RAW-TEXT "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE
  PROTEIN :NUMBER 6 :ITEMS (MV5683 MV5684 MV5695 MV5685 MV5686 MV5687))
 (:VAR MV5683 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME "ABI2_HUMAN")
 (:VAR MV5684 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME "ABL1_HUMAN")
 (:VAR MV5695 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME "ACDSB_HUMAN")
 (:VAR MV5685 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME "AGRL1_HUMAN")
 (:VAR MV5686 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME "ADRM1_HUMAN")
 (:VAR MV5687 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME "AGAP1_HUMAN")
 (:VAR MV5691 :ISA COMMON))

___________________
522: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV5704 :ISA BE :SUBJECT MV5703 :PREDICATE MV5716 :PRESENT "PRESENT") (:VAR MV5703 :ISA WHAT)
 (:VAR MV5716 :ISA REGULATOR :PLURAL T :THEME MV5712 :HAS-DETERMINER "THE" :PREDICATION MV5706
  :RAW-TEXT "regulators")
 (:VAR MV5712 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5702 MV5711))
 (:VAR MV5702 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV5711 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5706 :ISA COMMON))

___________________
523: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV5719 :ISA BE :SUBJECT MV5718 :PREDICATE MV5731 :PRESENT "PRESENT") (:VAR MV5718 :ISA WHAT)
 (:VAR MV5731 :ISA REGULATOR :PLURAL T :THEME MV5727 :HAS-DETERMINER "THE" :PREDICATION MV5721
  :RAW-TEXT "regulators")
 (:VAR MV5727 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5717 MV5726))
 (:VAR MV5717 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV5726 :ISA BIO-ENTITY :NAME "srg") (:VAR MV5721 :ISA COMMON))

___________________
524: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV5733 :ISA BE :SUBJECT MV5732 :PREDICATE MV5746 :PRESENT "PRESENT") (:VAR MV5732 :ISA WHAT)
 (:VAR MV5746 :ISA REGULATOR :PLURAL T :THEME MV5744 :HAS-DETERMINER "THE" :PREDICATION MV5735
  :RAW-TEXT "regulators")
 (:VAR MV5744 :ISA GENE :PLURAL T :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV5735 :ISA COMMON))

___________________
525: "What are the genes regulated by STAT3?"

                    SOURCE-START
e16   BE            1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV5749 :ISA BE :SUBJECT MV5748 :PREDICATE MV5757 :PRESENT "PRESENT") (:VAR MV5748 :ISA WHAT)
 (:VAR MV5757 :ISA GENE :PLURAL T :PREDICATION MV5753 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5753 :ISA REGULATE :OBJECT MV5757 :AGENT MV5747 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV5747 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV5760 :ISA BE :SUBJECT MV5759 :PREDICATE MV5767 :PRESENT "PRESENT") (:VAR MV5759 :ISA WHAT)
 (:VAR MV5767 :ISA GENE :PLURAL T :PREDICATION MV5765 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5765 :ISA REGULATE :OBJECT MV5767 :AGENT MV5758 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5758 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV5772 :ISA BE :SUBJECT MV5771 :PREDICATE MV5786 :PRESENT "PRESENT") (:VAR MV5771 :ISA WHAT)
 (:VAR MV5786 :ISA REGULATOR :PLURAL T :THEME MV5782 :HAS-DETERMINER "THE" :MODIFIER MV5775
  :RAW-TEXT "regulators")
 (:VAR MV5782 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV5779 MV5780 MV5768 MV5769 MV5770))
 (:VAR MV5779 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV5780 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5768 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5769 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV5770 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN")
 (:VAR MV5775 :ISA FREQUENT :COMPARATIVE MV5774 :NAME "frequent")
 (:VAR MV5774 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV5793 :ISA BE :SUBJECT MV5792 :PREDICATE MV5802 :PRESENT "PRESENT") (:VAR MV5792 :ISA WHAT)
 (:VAR MV5802 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV5796 :HAS-DETERMINER "THE"
  :RAW-TEXT "transcription factors")
 (:VAR MV5796 :ISA REGULATE :AGENT MV5802 :THAT-REL T :OBJECT MV5800 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV5800 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV5797 MV5798 MV5789 MV5790 MV5791))
 (:VAR MV5797 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV5798 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5789 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5790 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV5791 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV5818 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5813 :VALUE MV5817 :PREP "IN" :PREDICATE
  MV5807)
 (:VAR MV5813 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV5804 :RAW-TEXT "genes")
 (:VAR MV5804 :ISA OTHER :NAME "other")
 (:VAR MV5817 :ISA GENE :PLURAL T :CONTEXT MV5811 :HAS-DETERMINER "WHAT" :MODIFIER MV5804 :RAW-TEXT
  "genes")
 (:VAR MV5811 :ISA PATHWAY :HAS-DETERMINER "THE" :ORDINAL 1 :RAW-TEXT "pathway")
 (:VAR MV5807 :ISA BE :PRESENT "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV5835 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5830 :VALUE MV5834 :PREP "IN" :PREDICATE
  MV5824)
 (:VAR MV5830 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV5821 :RAW-TEXT "proteins")
 (:VAR MV5821 :ISA OTHER :NAME "other")
 (:VAR MV5834 :ISA PROTEIN :PLURAL T :IN-PATHWAY MV5828 :HAS-DETERMINER "WHAT" :MODIFIER MV5821
  :RAW-TEXT "proteins")
 (:VAR MV5828 :ISA PATHWAY :HAS-DETERMINER "THE" :ORDINAL 1 :RAW-TEXT "pathway")
 (:VAR MV5824 :ISA BE :PRESENT "PRESENT"))

___________________
531: "What pathways are they in?"

                    SOURCE-START
e8    BE            1 "What pathways are they " 5
e5    IN            5 "in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e8    S             1 "What pathways are they " 5
e5    PREPOSITION   5 "in" 6
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
 (:VAR MV5862 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5857 :VALUE MV5861 :PREP "IN" :PREDICATE
  MV5852)
 (:VAR MV5857 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV5861 :ISA PROTEIN :PLURAL T :IN-PATHWAY MV5856 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "proteins")
 (:VAR MV5856 :ISA PATHWAY :HAS-DETERMINER "THE" :ORDINAL 1 :RAW-TEXT "pathway")
 (:VAR MV5852 :ISA BE :PRESENT "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV5868 :ISA INVOLVE :THEME MV5869 :OBJECT MV5864 :PRESENT "PRESENT")
 (:VAR MV5869 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5864 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5883 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5878 :VALUE MV5882 :PREP "IN" :PREDICATE
  MV5873)
 (:VAR MV5878 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5882 :ISA GENE :PLURAL T :CONTEXT MV5877 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5877 :ISA PATHWAY :HAS-DETERMINER "THE" :ORDINAL 1 :RAW-TEXT "pathway")
 (:VAR MV5873 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    SOURCE-START
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5898 :ISA ANSWER :PATIENT MV5896 :MODAL MV5889 :AGENT MV5890 :THEME MV5895 :PRESENT
  "PRESENT")
 (:VAR MV5896 :ISA BIO-QUESTION :PLURAL T :HAS-DETERMINER "WHAT") (:VAR MV5889 :ISA CAN)
 (:VAR MV5890 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5895 :ISA MICRO-RNA :PLURAL T :RAW-TEXT "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5903 :ISA REGULATE :AGENT MV5904 :OBJECT MV5901 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5904 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5901 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic" :NAME "SMAD" :COUNT 8
  :FAMILY-MEMBERS
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
 (:VAR MV5908 :ISA REGULATE :LOCATION MV5906 :AGENT MV5905 :OBJECT MV5909 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5906 :ISA WHERE)
 (:VAR MV5905 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5909 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5914 :ISA INVOLVE :THEME MV5917 :OBJECT MV5915 :PRESENT "PRESENT")
 (:VAR MV5917 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV5911 :RAW-TEXT "pathways")
 (:VAR MV5911 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5915 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :NAME "adenosine 5'-triphosphate" :UID "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5931 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5926 :VALUE MV5930 :PREP "IN" :PREDICATE
  MV5922)
 (:VAR MV5926 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5930 :ISA GENE :PLURAL T :CONTEXT MV5918 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5918 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5925 :RAW-TEXT
  "signaling pathway")
 (:VAR MV5925 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV5922 :ISA BE :PRESENT "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5944 :ISA INVOLVE :OBJECT MV5943 :CONTEXT-OR-THEME MV5933 :PRESENT "PRESENT")
 (:VAR MV5943 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5933 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5941 :MODIFIER MV5942
  :RAW-TEXT "signaling pathway")
 (:VAR MV5941 :ISA ONCOGENIC)
 (:VAR MV5942 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV5949 :ISA REGULATE :AGENT MV5951 :OBJECT MV5950 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5951 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5950 :ISA BIO-ENTITY :NAME "x"))

___________________
543: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5952 :ISA DOWNREGULATE :AGENT MV5957 :OBJECT MV5956 :PRESENT "PRESENT" :RAW-TEXT
  "negatively regulate")
 (:VAR MV5957 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5956 :ISA BIO-ENTITY :NAME "x"))

___________________
544: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5958 :ISA UPREGULATE :AGENT MV5963 :OBJECT MV5962 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulate")
 (:VAR MV5963 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5962 :ISA BIO-ENTITY :NAME "x"))

___________________
545: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5974 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5966 :VALUE MV5972 :PREP MV5968 :PREDICATE
  MV5967)
 (:VAR MV5966 :ISA THESE :QUANTIFIER MV5964 :WORD "these") (:VAR MV5964 :ISA WHICH)
 (:VAR MV5972 :ISA PATHWAY :PLURAL T :MODIFIER MV5969 :RAW-TEXT "pathways")
 (:VAR MV5969 :ISA IMMUNE :NAME "immune") (:VAR MV5968 :ISA IN :WORD "in")
 (:VAR MV5967 :ISA BE :PRESENT "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5986 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5979 :VALUE MV5984 :PREP MV5981 :PREDICATE
  MV5980)
 (:VAR MV5979 :ISA THESE :QUANTIFIER MV5977 :WORD "these") (:VAR MV5977 :ISA WHICH)
 (:VAR MV5984 :ISA PATHWAY :PLURAL T :NON-CELLULAR-LOCATION MV5976 :RAW-TEXT "pathways")
 (:VAR MV5976 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV5981 :ISA IN :WORD "in") (:VAR MV5980 :ISA BE :PRESENT "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5990 :ISA BE :SUBJECT MV5989 :PREDICATE MV5996 :PRESENT "PRESENT") (:VAR MV5989 :ISA WHAT)
 (:VAR MV5996 :ISA GENE :PLURAL T :PREDICATION MV5994 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5994 :ISA REGULATE :OBJECT MV5996 :AGENT MV5988 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5988 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV6006 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5999 :VALUE MV6004 :PREP MV6001 :PREDICATE
  MV6000)
 (:VAR MV5999 :ISA THOSE :QUANTIFIER MV5997 :WORD "those") (:VAR MV5997 :ISA WHICH)
 (:VAR MV6004 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6003 :RAW-TEXT "pathway")
 (:VAR MV6003 :ISA IMMUNE :NAME "immune") (:VAR MV6001 :ISA IN :WORD "in")
 (:VAR MV6000 :ISA BE :PRESENT "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV6012 :ISA INVOLVE :THEME MV6013 :OBJECT MV6008 :PRESENT "PRESENT")
 (:VAR MV6013 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV6008 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e21   SHOW          1 "can you show me the pahtways " 7
e17   INVOLVE       7 "that involve SRF" 10
                    END-OF-SOURCE
                    SOURCE-START
e21   S             1 "can you show me the pahtways " 7
e17   SUBJECT-RELATIVE-CLAUSE 7 "that involve SRF" 10
                    END-OF-SOURCE


___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?" (:VAR MV6029 :ISA POLAR-QUESTION :STATEMENT MV6028)
 (:VAR MV6028 :ISA INHIBIT :AGENT MV6026 :OBJECT MV6024 :RAW-TEXT "inhibit")
 (:VAR MV6026 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622")
 (:VAR MV6024 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV6039 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6031 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV6031 :ISA BUILD :ARTIFACT MV6033 :PRESENT "PRESENT")
 (:VAR MV6033 :ISA MODEL :OBJECT MV6037 :HAS-DETERMINER "A")
 (:VAR MV6037 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV6036)
 (:VAR MV6036 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV6057 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV6055 MV6056))
 (:VAR MV6055 :ISA KNOW :AGENT MV6040 :STATEMENT MV6046 :PRESENT "PRESENT")
 (:VAR MV6040 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6046 :ISA BIO-ACTIVATE :AGENT MV6045 :OBJECT MV6047 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6045 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV6047 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6056 :ISA COLLECTION :RAW-TEXT "Raf activates Mek and Mek activates Erk" :TYPE
  BIO-ACTIVATE :NUMBER 2 :ITEMS (MV6049 MV6053))
 (:VAR MV6049 :ISA BIO-ACTIVATE :AGENT MV6048 :OBJECT MV6050 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6048 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6050 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6053 :ISA BIO-ACTIVATE :AGENT MV6052 :OBJECT MV6054 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6052 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6054 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV6060 :ISA PHOSPHORYLATE :AGENT MV6058 :SUBSTRATE MV6059 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV6058 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6059 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV6063 :ISA DEPHOSPHORYLATE :AGENT MV6061 :SUBSTRATE MV6062 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV6061 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV6062 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV6074 :ISA POLAR-QUESTION :STATEMENT MV6073)
 (:VAR MV6073 :ISA COPULAR-PREDICATION :ITEM MV6067 :VALUE MV6071 :PREDICATE MV6065)
 (:VAR MV6067 :ISA BIO-AMOUNT :MEASURED-ITEM MV6064 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6064 :ISA PROTEIN :PREDICATION MV6069 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6069 :ISA PHOSPHORYLATE :SUBSTRATE MV6064 :RAW-TEXT "phosphorylated")
 (:VAR MV6071 :ISA HIGH :ADVERB MV6070) (:VAR MV6070 :ISA ALWAYS :NAME "always")
 (:VAR MV6065 :ISA BE))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV6085 :ISA POLAR-QUESTION :STATEMENT MV6084)
 (:VAR MV6084 :ISA COPULAR-PREDICATION :ITEM MV6078 :VALUE MV6082 :PREDICATE MV6076)
 (:VAR MV6078 :ISA BIO-AMOUNT :MEASURED-ITEM MV6075 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6075 :ISA PROTEIN :PREDICATION MV6080 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6080 :ISA PHOSPHORYLATE :SUBSTRATE MV6075 :RAW-TEXT "phosphorylated")
 (:VAR MV6082 :ISA LOW :ADVERB MV6081) (:VAR MV6081 :ISA ALWAYS :NAME "always")
 (:VAR MV6076 :ISA BE))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?" (:VAR MV6095 :ISA POLAR-QUESTION :STATEMENT MV6094)
 (:VAR MV6094 :ISA VANISH :AGENT MV6093 :RAW-TEXT "vanish")
 (:VAR MV6093 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1" :COMPONENT MV6087
  :COMPONENT MV6086)
 (:VAR MV6087 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6086 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?" (:VAR MV6105 :ISA POLAR-QUESTION :STATEMENT MV6104)
 (:VAR MV6104 :ISA VANISH :AGENT MV6103 :RAW-TEXT "vanish")
 (:VAR MV6103 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1" :COMPONENT MV6097
  :COMPONENT MV6096)
 (:VAR MV6097 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6096 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e50   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV6135 :ISA POLAR-QUESTION :STATEMENT MV6134)
 (:VAR MV6134 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV6131 :EVENT MV6127)
 (:VAR MV6131 :ISA WH-QUESTION :STATEMENT MV6128 :WH IF)
 (:VAR MV6128 :ISA INCREASE :AGENT-OR-CAUSE MV6115 :MULTIPLIER-OR-CAUSE MV6126
  :AFFECTED-PROCESS-OR-OBJECT MV6119 :RAW-TEXT "increase")
 (:VAR MV6115 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV6126 :ISA MEASUREMENT :NUMBER MV6123) (:VAR MV6123 :ISA NUMBER :VALUE 10)
 (:VAR MV6119 :ISA BIO-AMOUNT :MEASURED-ITEM MV6107 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6107 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV6127 :ISA VANISH :CAUSE MV6110 :RAW-TEXT "vanish")
 (:VAR MV6110 :ISA BIO-AMOUNT :MEASURED-ITEM MV6106 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6106 :ISA PROTEIN :PREDICATION MV6112 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6112 :ISA PHOSPHORYLATE :SUBSTRATE MV6106 :RAW-TEXT "phosphorylated"))

___________________
561: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV6137 :ISA SHOW :STATEMENT-OR-THEME MV6144 :BENEFICIARY MV6138 :PRESENT "PRESENT")
 (:VAR MV6144 :ISA EVIDENCE :STATEMENT MV6143 :HAS-DETERMINER "THE")
 (:VAR MV6143 :ISA REGULATE :AGENT MV6142 :OBJECT MV6136 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV6142 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV6136 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV6138 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV6149 :ISA INCREASE :AGENT-OR-CAUSE MV6146 :AFFECTED-PROCESS-OR-OBJECT MV6151 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6146 :ISA WHAT)
 (:VAR MV6151 :ISA BIO-AMOUNT :MEASURED-ITEM MV6145 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6145 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV6167 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6162 :VALUE MV6166 :PREP "IN" :PREDICATE
  MV6158)
 (:VAR MV6162 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV6166 :ISA KINASE :PLURAL T :IN-PATHWAY MV6154 :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV6154 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6161 :RAW-TEXT
  "signaling pathway")
 (:VAR MV6161 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV6158 :ISA BE :PRESENT "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV6180 :ISA POLAR-QUESTION :STATEMENT MV6178)
 (:VAR MV6178 :ISA REGULATE :AGENT MV6169 :OBJECT MV6174 :RAW-TEXT "regulate")
 (:VAR MV6169 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6174 :ISA GENE :ORGAN MV6177 :HAS-DETERMINER "THE" :EXPRESSES MV6170 :RAW-TEXT "gene")
 (:VAR MV6177 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV6170 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV6189 :ISA REGULATE :OBJECT MV6188 :AGENT MV6181 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6188 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6181 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV6198 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6194 :AGENT MV6191 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV6194 :ISA THESE :QUANTIFIER MV6192 :WORD "these") (:VAR MV6192 :ISA WHICH)
 (:VAR MV6191 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV6206 :ISA REGULATE :AGENT-OR-CAUSE MV6203 :OBJECT MV6207 :PRESENT "PRESENT" :ADVERB MV6204
  :RAW-TEXT "regulate")
 (:VAR MV6203 :ISA THESE :QUANTIFIER MV6201 :WORD "these") (:VAR MV6201 :ISA WHICH)
 (:VAR MV6207 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV6204 :ISA ALSO :NAME "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV6213 :ISA TRANSCRIBE :AGENT MV6214 :OBJECT MV6211 :PRESENT "PRESENT" :RAW-TEXT
  "transcribe")
 (:VAR MV6214 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6211 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV6218 :ISA TRANSCRIBE :AGENT MV6215 :OBJECT MV6216 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV6215 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factor")
 (:VAR MV6216 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    BIO-UTILIZE   1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV6223 :ISA BIO-UTILIZE :AGENT MV6226 :OBJECT MV6224 :PRESENT "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV6226 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV6220 :RAW-TEXT "pathways")
 (:VAR MV6220 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV6224 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
571: "What transcription factors are in the calcium regulated pathways?"

                    SOURCE-START
e20   COPULAR-PREDICATE 1 "What transcription factors are in the calcium regulated pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in the calcium regulated pathways?"
 (:VAR MV6244 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6237 :VALUE MV6243 :PREP "IN" :PREDICATE
  MV6230)
 (:VAR MV6237 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6243 :ISA TRANSCRIPTION-FACTOR :PLURAL T :IN-PATHWAY MV6239 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "transcription factors")
 (:VAR MV6239 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "THE" :PREDICATION MV6234 :RAW-TEXT
  "pathways")
 (:VAR MV6234 :ISA REGULATE :AFFECTED-PROCESS MV6239 :AGENT MV6233 :RAW-TEXT "regulated")
 (:VAR MV6233 :ISA CALCIUM :RAW-TEXT "calcium") (:VAR MV6230 :ISA BE :PRESENT "PRESENT"))

___________________
572: "What pathways involve the immune system?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the immune system?"
 (:VAR MV6250 :ISA INVOLVE :THEME MV6252 :OBJECT MV6246 :PRESENT "PRESENT")
 (:VAR MV6252 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV6246 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :NAME "immune system" :UID "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV6259 :ISA INVOLVE :THEME MV6264 :OBJECT MV6262 :PRESENT "PRESENT")
 (:VAR MV6264 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV6256 :RAW-TEXT "pathways")
 (:VAR MV6256 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV6262 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6253 MV6260 MV6254))
 (:VAR MV6253 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME "ERBB2_HUMAN")
 (:VAR MV6260 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV6254 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV6275 :ISA SHARE :OBJECT MV6274 :PARTICIPANT MV6276 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV6274 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV6276 :ISA GENE :PLURAL T :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
575: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV6286 :ISA REGULATE :OBJECT MV6285 :AGENT MV6284 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6285 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6284 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV6289 :ISA BE :SUBJECT MV6288 :PREDICATE MV6300 :PRESENT "PRESENT") (:VAR MV6288 :ISA WHAT)
 (:VAR MV6300 :ISA PATHWAY :PLURAL T :PATHWAYCOMPONENT MV6298 :PREDICATION MV6290 :RAW-TEXT
  "pathways")
 (:VAR MV6298 :ISA GENE :PLURAL T :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV6290 :ISA COMMON))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV6317 :ISA SHARE :OBJECT MV6316 :PARTICIPANT MV6318 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV6316 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHICH" :MODIFIER MV6305 :RAW-TEXT "pathways")
 (:VAR MV6305 :ISA IMMUNE :NAME "immune")
 (:VAR MV6318 :ISA GENE :PLURAL T :EXPRESSES MV6314 :RAW-TEXT "genes")
 (:VAR MV6314 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6301 MV6302 MV6303))
 (:VAR MV6301 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6302 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV6303 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV6327 :ISA REGULATE :OBJECT MV6323 :AGENT MV6321 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6323 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV6320 :RAW-TEXT "phosphatase")
 (:VAR MV6320 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME "mitogen activated protein kinase"
  :COUNT 13 :FAMILY-MEMBERS
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
 (:VAR MV6321 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV6334 :ISA INVOLVE :THEME MV6336 :OBJECT MV6329 :PRESENT "PRESENT")
 (:VAR MV6336 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :MODIFIER MV6331 :RAW-TEXT "pathways")
 (:VAR MV6331 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV6329 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?" (:VAR MV6341 :ISA POLAR-QUESTION :STATEMENT MV6338)
 (:VAR MV6338 :ISA BE :SUBJECT MV6337 :PREDICATE MV6340)
 (:VAR MV6337 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6340 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
581: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?" (:VAR MV6346 :ISA POLAR-QUESTION :STATEMENT MV6344)
 (:VAR MV6344 :ISA BE :SUBJECT MV6342 :PREDICATE MV6343)
 (:VAR MV6342 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6343 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT "transcription factor"))

___________________
582: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV6350 :ISA BE :SUBJECT MV6349 :PREDICATE MV6354 :PRESENT "PRESENT")
 (:VAR MV6349 :ISA THESE :QUANTIFIER MV6347 :WORD "these") (:VAR MV6347 :ISA WHICH)
 (:VAR MV6354 :ISA KINASE :PLURAL T :ENZYME MV6351 :RAW-TEXT "kinases")
 (:VAR MV6351 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV6361 :ISA BE :SUBJECT MV6360 :PREDICATE MV6357 :PRESENT "PRESENT")
 (:VAR MV6360 :ISA THESE :QUANTIFIER MV6358 :WORD "these") (:VAR MV6358 :ISA WHICH)
 (:VAR MV6357 :ISA PROTEIN-FAMILY :PLURAL T :RAW-TEXT "tyrosine kinases" :UID "NCIT:C17020" :NAME
  "protein tyrosine kinase"))

___________________
584: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV6366 :ISA BE :SUBJECT MV6365 :PREDICATE MV6372 :PRESENT "PRESENT")
 (:VAR MV6365 :ISA THESE :QUANTIFIER MV6363 :WORD "these") (:VAR MV6363 :ISA WHICH)
 (:VAR MV6372 :ISA KINASE :PLURAL T :AMINO-ACID MV6371 :RAW-TEXT "kinases")
 (:VAR MV6371 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID :ITEMS (MV6367 MV6368))
 (:VAR MV6367 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV6368 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
585: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV6377 :ISA BE :SUBJECT MV6376 :PREDICATE MV6379 :PRESENT "PRESENT")
 (:VAR MV6376 :ISA THESE :QUANTIFIER MV6374 :WORD "these") (:VAR MV6374 :ISA WHICH)
 (:VAR MV6379 :ISA PHOSPHATASE :PLURAL T :RAW-TEXT "phosphatases"))

___________________
586: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV6384 :ISA BE :SUBJECT MV6383 :PREDICATE MV6385 :PRESENT "PRESENT")
 (:VAR MV6383 :ISA THESE :QUANTIFIER MV6381 :WORD "these") (:VAR MV6381 :ISA WHICH)
 (:VAR MV6385 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV6390 :ISA BE :SUBJECT MV6389 :PREDICATE MV6392 :PRESENT "PRESENT")
 (:VAR MV6389 :ISA THESE :QUANTIFIER MV6387 :WORD "these") (:VAR MV6387 :ISA WHICH)
 (:VAR MV6392 :ISA RECEPTOR :PLURAL T :RAW-TEXT "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e12   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV6398 :ISA BE :SUBJECT MV6397 :PREDICATE MV6401 :PRESENT "PRESENT")
 (:VAR MV6397 :ISA THESE :QUANTIFIER MV6395 :WORD "these") (:VAR MV6395 :ISA WHICH)
 (:VAR MV6401 :ISA RECEPTOR :PLURAL T :MODIFIER MV6394 :RAW-TEXT "receptors")
 (:VAR MV6394 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinase" :NAME "protein tyrosine kinase" :UID
  "NCIT:C17020"))

___________________
589: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV6408 :ISA BE :SUBJECT MV6407 :PREDICATE MV6404 :PRESENT "PRESENT")
 (:VAR MV6407 :ISA THESE :QUANTIFIER MV6405 :WORD "these") (:VAR MV6405 :ISA WHICH)
 (:VAR MV6404 :ISA PROTEIN-FAMILY :PLURAL T :RAW-TEXT "histone demethylases" :UID "GO:0032452"
  :NAME "histone demethylase"))

___________________
590: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV6415 :ISA BE :SUBJECT MV6414 :PREDICATE MV6411 :PRESENT "PRESENT")
 (:VAR MV6414 :ISA THESE :QUANTIFIER MV6412 :WORD "these") (:VAR MV6412 :ISA WHICH)
 (:VAR MV6411 :ISA PROTEIN-FAMILY :PLURAL T :RAW-TEXT "histone methylases" :UID "GO:0042054" :NAME
  "histone methyltransferase"))

___________________
591: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV6422 :ISA BE :SUBJECT MV6421 :PREDICATE MV6418 :PRESENT "PRESENT")
 (:VAR MV6421 :ISA THESE :QUANTIFIER MV6419 :WORD "these") (:VAR MV6419 :ISA WHICH)
 (:VAR MV6418 :ISA PROTEIN-FAMILY :PLURAL T :RAW-TEXT "histone methyltransferases" :UID
  "GO:0042054" :NAME "histone methyltransferase"))

___________________
592: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV6427 :ISA BE :SUBJECT MV6426 :PREDICATE MV6429 :PRESENT "PRESENT")
 (:VAR MV6426 :ISA THESE :QUANTIFIER MV6424 :WORD "these") (:VAR MV6424 :ISA WHICH)
 (:VAR MV6429 :ISA PROTEIN-FAMILY :PLURAL T :RAW-TEXT "demethylases" :UID "GO:0032451" :NAME
  "demethylase"))

___________________
593: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV6434 :ISA BE :SUBJECT MV6433 :PREDICATE MV6436 :PRESENT "PRESENT")
 (:VAR MV6433 :ISA THESE :QUANTIFIER MV6431 :WORD "these") (:VAR MV6431 :ISA WHICH)
 (:VAR MV6436 :ISA PROTEIN-FAMILY :PLURAL T :RAW-TEXT "methylases" :UID "GO:0008168" :NAME
  "methyltransferase"))

___________________
594: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV6441 :ISA BE :SUBJECT MV6440 :PREDICATE MV6443 :PRESENT "PRESENT")
 (:VAR MV6440 :ISA THESE :QUANTIFIER MV6438 :WORD "these") (:VAR MV6438 :ISA WHICH)
 (:VAR MV6443 :ISA PROTEIN-FAMILY :PLURAL T :RAW-TEXT "methyltransferases" :UID "GO:0008168" :NAME
  "methyltransferase"))

___________________
595: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV6448 :ISA BE :SUBJECT MV6447 :PREDICATE MV6452 :PRESENT "PRESENT")
 (:VAR MV6447 :ISA THESE :QUANTIFIER MV6445 :WORD "these") (:VAR MV6445 :ISA WHICH)
 (:VAR MV6452 :ISA RECEPTOR :PLURAL T :MODIFIER MV6449 :RAW-TEXT "receptors")
 (:VAR MV6449 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV6459 :ISA BE :SUBJECT MV6458 :PREDICATE MV6455 :PRESENT "PRESENT")
 (:VAR MV6458 :ISA THESE :QUANTIFIER MV6456 :WORD "these") (:VAR MV6456 :ISA WHICH)
 (:VAR MV6455 :ISA PROTEIN-FAMILY :PLURAL T :RAW-TEXT "receptor tyrosine kinases" :UID
  "NCIT:C17660" :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TKTL1_HUMAN") (:UID "UP:P51854"))
   (PROTEIN (:NAME "NTRK1_HUMAN") (:UID "UP:P04629")))
  :COUNT 2 :NAME "receptor tyrosine kinase"))

___________________
597: "Which of these are transcription factors?"

                    SOURCE-START
e10   BE            1 "Which of these are transcription factors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are transcription factors?"
 (:VAR MV6466 :ISA BE :SUBJECT MV6465 :PREDICATE MV6462 :PRESENT "PRESENT")
 (:VAR MV6465 :ISA THESE :QUANTIFIER MV6463 :WORD "these") (:VAR MV6463 :ISA WHICH)
 (:VAR MV6462 :ISA TRANSCRIPTION-FACTOR :PLURAL T :RAW-TEXT "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV6472 :ISA BE :SUBJECT MV6471 :PREDICATE MV6475 :PRESENT "PRESENT")
 (:VAR MV6471 :ISA THESE :QUANTIFIER MV6469 :WORD "these") (:VAR MV6469 :ISA WHICH)
 (:VAR MV6475 :ISA PROTEIN :PLURAL T :MODIFIER MV6468 :RAW-TEXT "proteins")
 (:VAR MV6468 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV6480 :ISA BE :SUBJECT MV6479 :PREDICATE MV6486 :PRESENT "PRESENT")
 (:VAR MV6479 :ISA THESE :QUANTIFIER MV6477 :WORD "these") (:VAR MV6477 :ISA WHICH)
 (:VAR MV6486 :ISA PHOSPHATASE :PLURAL T :MODIFIER MV6485 :RAW-TEXT "phosphatases")
 (:VAR MV6485 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID :ITEMS (MV6481 MV6482))
 (:VAR MV6481 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV6482 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV6491 :ISA BE :SUBJECT MV6490 :PREDICATE MV6495 :PRESENT "PRESENT")
 (:VAR MV6490 :ISA THESE :QUANTIFIER MV6488 :WORD "these") (:VAR MV6488 :ISA WHICH)
 (:VAR MV6495 :ISA PHOSPHATASE :PLURAL T :MODIFIER MV6492 :RAW-TEXT "phosphatases")
 (:VAR MV6492 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV6500 :ISA PHOSPHORYLATE :SUBSTRATE-OR-SITE-OR-AMINO-ACID MV6497 :AGENT MV6499 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV6497 :ISA WHAT)
 (:VAR MV6499 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV6509 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6503 :ORGAN MV6508 :PRESENT "PRESENT" :ADVERB
  MV6505 :RAW-TEXT "expressed")
 (:VAR MV6503 :ISA THESE :QUANTIFIER MV6501 :WORD "these") (:VAR MV6501 :ISA WHICH)
 (:VAR MV6508 :ISA LIVER) (:VAR MV6505 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
603: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV6514 :ISA REGULATE :AGENT-OR-CAUSE MV6513 :OBJECT MV6512 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV6513 :ISA WHAT)
 (:VAR MV6512 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV6518 :ISA INCREASE :AGENT-OR-CAUSE MV6515 :AFFECTED-PROCESS-OR-OBJECT MV6520 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6515 :ISA WHAT)
 (:VAR MV6520 :ISA BIO-AMOUNT :MEASURED-ITEM MV6522 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6522 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV6525 :ISA UPREGULATE :AGENT-OR-CAUSE MV6524 :OBJECT MV6526 :PRESENT "PRESENT" :RAW-TEXT
  "upregulates")
 (:VAR MV6524 :ISA WHAT)
 (:VAR MV6526 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV6528 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6527 :OBJECT MV6529 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6527 :ISA WHAT)
 (:VAR MV6529 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV6531 :ISA DECREASE :AGENT-OR-CAUSE MV6530 :AFFECTED-PROCESS-OR-OBJECT MV6533 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6530 :ISA WHAT)
 (:VAR MV6533 :ISA BIO-AMOUNT :MEASURED-ITEM MV6535 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6535 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV6538 :ISA REGULATE :AGENT-OR-CAUSE MV6537 :OBJECT MV6539 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV6537 :ISA WHAT)
 (:VAR MV6539 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME "GLNA_HUMAN"))

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
e11   REGULATE      1 "What regulates GLUL " 4
e9    FROM          4 "from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e11   S             1 "What regulates GLUL " 4
e9    PP            4 "from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
611: "Which kinases regulate the cfos gene?"

                    SOURCE-START
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate the cfos gene?"
 (:VAR MV6557 :ISA REGULATE :AGENT MV6561 :OBJECT MV6560 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6561 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV6560 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6559 :RAW-TEXT "gene")
 (:VAR MV6559 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV6562 :ISA DOWNREGULATE :AGENT MV6569 :OBJECT MV6568 :PRESENT "PRESENT" :RAW-TEXT
  "negatively regulate")
 (:VAR MV6569 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV6568 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6567 :RAW-TEXT "gene")
 (:VAR MV6567 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV6573 :ISA BE :SUBJECT MV6572 :PREDICATE MV6579 :PRESENT "PRESENT") (:VAR MV6572 :ISA WHAT)
 (:VAR MV6579 :ISA POSITIVE-REGULATOR :PLURAL T :THEME MV6577 :RAW-TEXT "positive regulators")
 (:VAR MV6577 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6576 :RAW-TEXT "gene")
 (:VAR MV6576 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV6582 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV6581 :OBJECT MV6580 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV6581 :ISA WHAT)
 (:VAR MV6580 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV6585 :ISA SHOW :STATEMENT-OR-THEME MV6597 :BENEFICIARY MV6586 :PRESENT "PRESENT")
 (:VAR MV6597 :ISA EVIDENCE :STATEMENT MV6592 :HAS-DETERMINER "THE")
 (:VAR MV6592 :ISA INCREASE :AGENT MV6583 :AFFECTED-PROCESS-OR-OBJECT MV6594 :PRESENT "PRESENT"
  :RAW-TEXT "increases")
 (:VAR MV6583 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV6594 :ISA BIO-AMOUNT :MEASURED-ITEM MV6584 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6584 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME "SOCS1_HUMAN")
 (:VAR MV6586 :ISA INTERLOCUTOR :NAME "speaker"))

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
 (:VAR MV6612 :ISA BE :SUBJECT MV6611 :PREDICATE MV6618 :PRESENT "PRESENT") (:VAR MV6611 :ISA WHAT)
 (:VAR MV6618 :ISA EVIDENCE :STATEMENT MV6617 :HAS-DETERMINER "THE")
 (:VAR MV6617 :ISA REGULATE :AGENT MV6616 :OBJECT MV6610 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV6616 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV6610 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV6620 :ISA BE :SUBJECT MV6619 :PREDICATE MV6629 :PRESENT "PRESENT") (:VAR MV6619 :ISA WHAT)
 (:VAR MV6629 :ISA EVIDENCE :STATEMENT MV6625 :HAS-DETERMINER "THE")
 (:VAR MV6625 :ISA BINDING :BINDER MV6624 :DIRECT-BINDEE MV6628 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV6624 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6628 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6627 :RAW-TEXT "gene")
 (:VAR MV6627 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV6639 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6638 :ORGAN MV6637 :PRESENT "PRESENT" :ADVERB
  MV6634 :RAW-TEXT "expressed")
 (:VAR MV6638 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6637 :ISA LIVER) (:VAR MV6634 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    SOURCE-START
e10   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?" (:VAR MV6647 :ISA POLAR-QUESTION :STATEMENT MV6643)
 (:VAR MV6643 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6641 :ORGAN MV6645 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV6641 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6645 :ISA LIVER))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?" (:VAR MV6656 :ISA POLAR-QUESTION :STATEMENT MV6654)
 (:VAR MV6654 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6648 :ORGAN MV6653 :ADVERB MV6650 :RAW-TEXT
  "expressed")
 (:VAR MV6648 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6653 :ISA LIVER) (:VAR MV6650 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV6661 :ISA AFFECT :MANNER MV6659 :AGENT MV6657 :OBJECT MV6658 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV6659 :ISA HOW)
 (:VAR MV6657 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME "M4K2_HUMAN")
 (:VAR MV6658 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV6666 :ISA AFFECT :MANNER MV6663 :AGENT MV6665 :OBJECT MV6662 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV6663 :ISA HOW)
 (:VAR MV6665 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6662 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV6670 :ISA BE :SUBJECT MV6669 :PREDICATE MV6684 :PRESENT "PRESENT") (:VAR MV6669 :ISA WHAT)
 (:VAR MV6684 :ISA REGULATOR :PLURAL T :THEME MV6679 :HAS-DETERMINER "THE" :PREDICATION MV6672
  :CONTEXT MV6673 :RAW-TEXT "regulators")
 (:VAR MV6679 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6667 MV6668))
 (:VAR MV6667 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV6668 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV6672 :ISA COMMON) (:VAR MV6673 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV6688 :ISA BE :SUBJECT MV6687 :PREDICATE MV6697 :PRESENT "PRESENT") (:VAR MV6687 :ISA WHAT)
 (:VAR MV6697 :ISA PATH :PLURAL T :ENDPOINTS MV6694 :HAS-DETERMINER "THE")
 (:VAR MV6694 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6685 MV6686))
 (:VAR MV6685 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV6686 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV6703 :ISA POLAR-QUESTION :STATEMENT MV6702)
 (:VAR MV6702 :ISA AFFECT :AGENT MV6698 :OBJECT MV6701 :RAW-TEXT "affect")
 (:VAR MV6698 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV6701 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV6705 :ISA REGULATE :AGENT MV6704 :OBJECT MV6706 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV6704 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV6706 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV6708 :ISA UPREGULATE :AGENT MV6707 :OBJECT MV6709 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV6707 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV6709 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV6710 :ISA UPREGULATE :AGENT MV6712 :OBJECT MV6711 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV6712 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV6711 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?" (:VAR MV6722 :ISA POLAR-QUESTION :STATEMENT MV6721)
 (:VAR MV6721 :ISA REGULATE :AGENT MV6716 :OBJECT MV6720 :RAW-TEXT "regulate")
 (:VAR MV6716 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV6720 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6714 :RAW-TEXT "gene")
 (:VAR MV6714 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV6724 :ISA SHOW :STATEMENT-OR-THEME MV6732 :BENEFICIARY MV6725 :PRESENT "PRESENT")
 (:VAR MV6732 :ISA EVIDENCE :STATEMENT MV6731 :HAS-DETERMINER "THE")
 (:VAR MV6731 :ISA REGULATE :AGENT MV6729 :OBJECT MV6723 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV6729 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV6723 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV6725 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?" (:VAR MV6740 :ISA POLAR-QUESTION :STATEMENT MV6739)
 (:VAR MV6739 :ISA REGULATE :AGENT MV6735 :OBJECT MV6738 :RAW-TEXT "regulate")
 (:VAR MV6735 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6738 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6733 :RAW-TEXT "gene")
 (:VAR MV6733 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV6743 :ISA DECREASE :AGENT MV6742 :AFFECTED-PROCESS-OR-OBJECT MV6745 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6742 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6745 :ISA BIO-AMOUNT :MEASURED-ITEM MV6741 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6741 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV6753 :ISA POLAR-QUESTION :STATEMENT MV6752)
 (:VAR MV6752 :ISA REGULATE :AGENT MV6751 :OBJECT MV6750 :RAW-TEXT "regulate")
 (:VAR MV6751 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV6750 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does TNF regulate the ERK gene?" (:VAR MV6761 :ISA POLAR-QUESTION :STATEMENT MV6760)
 (:VAR MV6760 :ISA REGULATE :AGENT MV6755 :OBJECT MV6759 :RAW-TEXT "regulate")
 (:VAR MV6755 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6759 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6758 :RAW-TEXT "gene")
 (:VAR MV6758 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV6763 :ISA BE :SUBJECT MV6762 :PREDICATE MV6774 :PRESENT "PRESENT") (:VAR MV6762 :ISA WHAT)
 (:VAR MV6774 :ISA PATHWAY :PLURAL T :PATHWAYCOMPONENT MV6771 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV6771 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY :NUMBER 2 :ITEMS
  (MV6768 MV6770))
 (:VAR MV6768 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV6770 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV6776 :ISA BE :SUBJECT MV6775 :PREDICATE MV6787 :PRESENT "PRESENT") (:VAR MV6775 :ISA WHAT)
 (:VAR MV6787 :ISA PATHWAY :PLURAL T :PATHWAYCOMPONENT MV6784 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV6784 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6781 MV6783))
 (:VAR MV6781 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6783 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does NFkappaB regulate ERK?" (:VAR MV6794 :ISA POLAR-QUESTION :STATEMENT MV6793)
 (:VAR MV6793 :ISA REGULATE :AGENT MV6789 :OBJECT MV6792 :RAW-TEXT "regulate")
 (:VAR MV6789 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV6792 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does NFkappaB regulate the ERK gene?" (:VAR MV6803 :ISA POLAR-QUESTION :STATEMENT MV6802)
 (:VAR MV6802 :ISA REGULATE :AGENT MV6796 :OBJECT MV6801 :RAW-TEXT "regulate")
 (:VAR MV6796 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV6801 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6800 :RAW-TEXT "gene")
 (:VAR MV6800 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV6819 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6814 :VALUE MV6818 :PREP "BETWEEN" :PREDICATE
  MV6807)
 (:VAR MV6814 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV6818 :ISA PATHWAY :PLURAL T :PATHWAYCOMPONENT MV6813 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "pathways")
 (:VAR MV6813 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY :NUMBER 2 :ITEMS
  (MV6810 MV6812))
 (:VAR MV6810 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV6812 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6807 :ISA EXIST :PRESENT "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV6825 :ISA AFFECT :MANNER MV6821 :AGENT MV6823 :OBJECT MV6826 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV6821 :ISA HOW)
 (:VAR MV6823 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV6826 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV6828 :ISA BIO-ACTIVATE :AGENT MV6827 :OBJECT MV6829 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6827 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV6829 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV6831 :ISA BIO-ACTIVATE :AGENT MV6830 :OBJECT MV6832 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6830 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV6832 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV6834 :ISA BE :SUBJECT MV6833 :PREDICATE MV6845 :PRESENT "PRESENT") (:VAR MV6833 :ISA WHAT)
 (:VAR MV6845 :ISA PATH :PLURAL T :ENDPOINTS MV6842 :HAS-DETERMINER "THE")
 (:VAR MV6842 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6839 MV6841))
 (:VAR MV6839 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6841 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does TNF regulate ERK?" (:VAR MV6851 :ISA POLAR-QUESTION :STATEMENT MV6850)
 (:VAR MV6850 :ISA REGULATE :AGENT MV6847 :OBJECT MV6849 :RAW-TEXT "regulate")
 (:VAR MV6847 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6849 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV6856 :ISA AFFECT :MANNER MV6854 :AGENT MV6852 :OBJECT MV6853 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV6854 :ISA HOW)
 (:VAR MV6852 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV6853 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV6858 :ISA BIO-ACTIVATE :AGENT MV6857 :OBJECT MV6859 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6857 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6859 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV6863 :ISA DECREASE :AGENT MV6862 :AFFECTED-PROCESS-OR-OBJECT MV6865 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6862 :ISA PROTEIN-FAMILY :PREDICATION MV6861 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6861 :ISA ACTIVE)
 (:VAR MV6865 :ISA BIO-AMOUNT :MEASURED-ITEM MV6860 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6860 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV6871 :ISA BE :SUBJECT MV6870 :PREDICATE MV6882 :PRESENT "PRESENT") (:VAR MV6870 :ISA WHAT)
 (:VAR MV6882 :ISA UPSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV6878 :HAS-DETERMINER "THE"
  :PREDICATION MV6873 :RAW-TEXT "upstreams")
 (:VAR MV6878 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6868 MV6869))
 (:VAR MV6868 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV6869 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV6873 :ISA COMMON))

___________________
650: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV6887 :ISA AFFECT :MANNER MV6885 :AGENT MV6883 :OBJECT MV6884 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV6885 :ISA HOW)
 (:VAR MV6883 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV6884 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?" (:VAR MV6893 :ISA POLAR-QUESTION :STATEMENT MV6892)
 (:VAR MV6892 :ISA REGULATE :AGENT MV6888 :OBJECT MV6889 :RAW-TEXT "regulate")
 (:VAR MV6888 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV6889 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?" (:VAR MV6901 :ISA POLAR-QUESTION :STATEMENT MV6900)
 (:VAR MV6900 :ISA REGULATE :AGENT MV6894 :OBJECT MV6899 :RAW-TEXT "regulate")
 (:VAR MV6894 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV6899 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6895 :RAW-TEXT "gene")
 (:VAR MV6895 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV6906 :ISA AFFECT :MANNER MV6904 :AGENT MV6902 :OBJECT MV6903 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV6904 :ISA HOW)
 (:VAR MV6902 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV6903 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV6909 :ISA BE :SUBJECT MV6908 :PREDICATE MV6919 :PRESENT "PRESENT") (:VAR MV6908 :ISA WHAT)
 (:VAR MV6919 :ISA PATH :PLURAL T :ENDPOINTS MV6916 :HAS-DETERMINER "THE")
 (:VAR MV6916 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6914 MV6907))
 (:VAR MV6914 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6907 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?" (:VAR MV6929 :ISA POLAR-QUESTION :STATEMENT MV6927)
 (:VAR MV6927 :ISA REGULATE :AGENT MV6922 :AFFECTED-PROCESS MV6925 :RAW-TEXT "regulate")
 (:VAR MV6922 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6925 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6920 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV6920 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV6933 :ISA DECREASE :AGENT MV6932 :AFFECTED-PROCESS MV6935 :PRESENT "PRESENT" :RAW-TEXT
  "decreases")
 (:VAR MV6932 :ISA PROTEIN-FAMILY :PREDICATION MV6931 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6931 :ISA ACTIVE)
 (:VAR MV6935 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6930 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV6930 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV6941 :ISA DECREASE :AGENT MV6940 :AFFECTED-PROCESS-OR-OBJECT MV6943 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6940 :ISA PROTEIN-FAMILY :PREDICATION MV6939 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6939 :ISA ACTIVE)
 (:VAR MV6943 :ISA BIO-AMOUNT :MEASURED-ITEM MV6938 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6938 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV6949 :ISA DECREASE :AGENT MV6948 :AFFECTED-PROCESS-OR-OBJECT MV6951 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6948 :ISA PROTEIN-FAMILY :PREDICATION MV6947 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6947 :ISA ACTIVE)
 (:VAR MV6951 :ISA BIO-AMOUNT :MEASURED-ITEM MV6946 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6946 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e14   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV6956 :ISA INHIBIT :AGENT MV6954 :AFFECTED-PROCESS MV6958 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV6954 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV6958 :ISA BIO-ACTIVITY :PARTICIPANT MV6955 :HAS-DETERMINER "THE" :RAW-TEXT "activity")
 (:VAR MV6955 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e21   DECREASE      1 "Does NG25 decrease the CXCL8 " 8
e18   IN            8 "in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e21   S             1 "Does NG25 decrease the CXCL8 " 8
e18   PP            8 "in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does NG25 decrease CXCL10 " 7
e15   IN            7 "in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e18   S             1 "Does NG25 decrease CXCL10 " 7
e15   PP            7 "in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
662: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV6985 :ISA BIO-ACTIVATE :AGENT MV6984 :OBJECT MV6986 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6984 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6986 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB"))

___________________
663: "I want to find out how tofacitinib decreases IL2"

                    SOURCE-START
e22   WANT          1 "I want to find out how tofacitinib decreases IL2" 11
                    END-OF-SOURCE
("I want to find out how tofacitinib decreases IL2"
 (:VAR MV6992 :ISA WANT :AGENT MV6989 :THEME MV7003 :PRESENT "PRESENT")
 (:VAR MV6989 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7003 :ISA FIND-OUT :AGENT MV6989 :STATEMENT MV7000)
 (:VAR MV7000 :ISA WH-QUESTION :STATEMENT MV6999 :VAR NIL :WH HOW)
 (:VAR MV6999 :ISA DECREASE :AGENT MV6998 :OBJECT MV6988 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6998 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID "NCIT:C95800")
 (:VAR MV6988 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e29   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV7008 :ISA WANT :AGENT MV7005 :THEME MV7025 :PRESENT "PRESENT")
 (:VAR MV7005 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7025 :ISA FIND-OUT :AGENT MV7005 :STATEMENT MV7022)
 (:VAR MV7022 :ISA WH-QUESTION :STATEMENT MV7015 :VAR NIL :WH HOW)
 (:VAR MV7015 :ISA DECREASE :AGENT MV7014 :OBJECT MV7016 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV7014 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622")
 (:VAR MV7016 :ISA PROTEIN :CELL-TYPE MV7020 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7020 :ISA CELL-TYPE :PLURAL T :CELL-LINE MV7004)
 (:VAR MV7004 :ISA CELL-LINE :NAME "BT-20" :UID "CVCL:0178"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV7031 :ISA WANT :AGENT MV7028 :THEME MV7047 :PRESENT "PRESENT")
 (:VAR MV7028 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7047 :ISA FIND-OUT :AGENT MV7028 :STATEMENT MV7044)
 (:VAR MV7044 :ISA WH-QUESTION :STATEMENT MV7037 :VAR NIL :WH HOW)
 (:VAR MV7037 :ISA BIO-ACTIVATE :AGENT MV7026 :OBJECT MV7038 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV7026 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME "ERBB3_HUMAN")
 (:VAR MV7038 :ISA PROTEIN :CELL-TYPE MV7042 :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV7042 :ISA CELL-TYPE :PLURAL T :CELL-LINE MV7027)
 (:VAR MV7027 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?" (:VAR MV7053 :ISA POLAR-QUESTION :STATEMENT MV7052)
 (:VAR MV7052 :ISA PHOSPHORYLATE :AGENT MV7049 :SUBSTRATE MV7051 :RAW-TEXT "phosphorylate")
 (:VAR MV7049 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7051 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does STAT3 inhibit the c-fos gene?" (:VAR MV7061 :ISA POLAR-QUESTION :STATEMENT MV7060)
 (:VAR MV7060 :ISA INHIBIT :AGENT MV7054 :OBJECT MV7059 :RAW-TEXT "inhibit")
 (:VAR MV7054 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV7059 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7055 :RAW-TEXT "gene")
 (:VAR MV7055 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?" (:VAR MV7069 :ISA POLAR-QUESTION :STATEMENT MV7068)
 (:VAR MV7068 :ISA STIMULATE :AGENT MV7062 :OBJECT MV7067 :RAW-TEXT "stimulate")
 (:VAR MV7062 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV7067 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7063 :RAW-TEXT "gene")
 (:VAR MV7063 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV7074 :ISA WANT :AGENT MV7071 :THEME MV7093 :PRESENT "PRESENT")
 (:VAR MV7071 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7093 :ISA FIND-OUT :AGENT MV7071 :STATEMENT MV7090)
 (:VAR MV7090 :ISA WH-QUESTION :STATEMENT MV7081 :VAR NIL :WH HOW)
 (:VAR MV7081 :ISA DECREASE :AGENT MV7080 :OBJECT MV7082 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV7080 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622")
 (:VAR MV7082 :ISA PROTEIN :CELL-TYPE MV7088 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7088 :ISA CELL-TYPE :PLURAL T :CELL-LINE MV7070 :ASSOCIATED-DISEASE MV7084)
 (:VAR MV7070 :ISA CELL-LINE :NAME "SK-MEL-133" :UID "CVCL:6082") (:VAR MV7084 :ISA MELANOMA))

___________________
670: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?" (:VAR MV7098 :ISA POLAR-QUESTION :STATEMENT MV7095)
 (:VAR MV7095 :ISA BE :SUBJECT MV7096 :PREDICATE MV7094)
 (:VAR MV7096 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7094 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT "transcription factor"))

___________________
671: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV7100 :ISA LIST :THEME MV7111 :PRESENT "PRESENT")
 (:VAR MV7111 :ISA GENE :PLURAL T :PREDICATION MV7105 :QUANTIFIER MV7101 :HAS-DETERMINER "THE"
  :RAW-TEXT "genes")
 (:VAR MV7105 :ISA REGULATE :OBJECT MV7111 :AGENT MV7109 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV7109 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV7099 MV7108))
 (:VAR MV7099 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV7108 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV7101 :ISA ALL :WORD "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV7115 :ISA LIST :THEME MV7129 :PRESENT "PRESENT")
 (:VAR MV7129 :ISA GENE :PLURAL T :PREDICATION MV7121 :QUANTIFIER MV7116 :HAS-DETERMINER "THE"
  :RAW-TEXT "genes")
 (:VAR MV7121 :ISA REGULATE :OBJECT MV7129 :AGENT MV7125 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV7125 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV7114 MV7124))
 (:VAR MV7114 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV7124 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV7116 :ISA SOME :WORD "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV7134 :ISA SHOW :STATEMENT-OR-THEME MV7148 :BENEFICIARY MV7135 :PRESENT "PRESENT")
 (:VAR MV7148 :ISA MUTATION :PLURAL T :CONTEXT MV7133 :OBJECT MV7143 :HAS-DETERMINER "THE"
  :RAW-TEXT "mutations")
 (:VAR MV7133 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV7143 :ISA COLLECTION :RAW-TEXT "TP53 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV7132 MV7141))
 (:VAR MV7132 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV7141 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7135 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV7152 :ISA BE :SUBJECT MV7151 :PREDICATE MV7165 :PRESENT "PRESENT") (:VAR MV7151 :ISA WHAT)
 (:VAR MV7165 :ISA MUTATION :PLURAL T :CONTEXT MV7150 :OBJECT MV7160 :HAS-DETERMINER "THE"
  :RAW-TEXT "mutations")
 (:VAR MV7150 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV7160 :ISA COLLECTION :RAW-TEXT "TP53 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV7149 MV7158))
 (:VAR MV7149 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV7158 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:VAR MV7170 :ISA BE :SUBJECT MV7169 :PREDICATE MV7180 :PRESENT "PRESENT") (:VAR MV7169 :ISA WHAT)
 (:VAR MV7180 :ISA GENE :DISEASE MV7168 :HAS-DETERMINER "THE" :PREDICATION MV7166 :RAW-TEXT
  "genes")
 (:VAR MV7168 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV7166 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV7167)
 (:VAR MV7167 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV7185 :ISA BE :SUBJECT MV7184 :PREDICATE MV7195 :PRESENT "PRESENT") (:VAR MV7184 :ISA WHAT)
 (:VAR MV7195 :ISA GENE :DISEASE MV7183 :HAS-DETERMINER "THE" :PREDICATION MV7181 :RAW-TEXT
  "genes")
 (:VAR MV7183 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV7181 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV7182)
 (:VAR MV7182 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME "CADH1_HUMAN"))

___________________
677: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV7197 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV7196 :AFFECTED-PROCESS-OR-OBJECT MV7198 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV7196 :ISA WHAT) (:VAR MV7198 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV7203 :ISA HAVE :POSSESSOR MV7210 :THING-POSSESSED MV7205 :PRESENT "PRESENT")
 (:VAR MV7210 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7205 :ISA EVIDENCE :FACT MV7208 :PREDICATION MV7204)
 (:VAR MV7208 :ISA REGULATE :AGENT MV7199 :PROGRESSIVE MV7207 :RAW-TEXT "regulated")
 (:VAR MV7199 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID "MIMAT0000421")
 (:VAR MV7207 :ISA BE) (:VAR MV7204 :ISA STRONG))

___________________
679: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV7216 :ISA INCREASE :AGENT-OR-CAUSE MV7213 :AFFECTED-PROCESS-OR-OBJECT MV7218 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV7213 :ISA WHAT)
 (:VAR MV7218 :ISA BIO-AMOUNT :MEASURED-ITEM MV7220 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV7220 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV7224 :ISA INHIBIT :AGENT-OR-CAUSE MV7223 :OBJECT MV7222 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV7223 :ISA WHAT)
 (:VAR MV7222 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV7228 :ISA BE :SUBJECT MV7227 :PREDICATE MV7240 :PRESENT "PRESENT") (:VAR MV7227 :ISA WHAT)
 (:VAR MV7240 :ISA QUALITY-PREDICATE :ITEM MV7238 :ATTRIBUTE MV7234)
 (:VAR MV7238 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV7225 MV7236 MV7226))
 (:VAR MV7225 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV7236 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7226 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7234 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV7232 :MODIFIER MV7233)
 (:VAR MV7232 :ISA LIKELY :COMPARATIVE MV7230)
 (:VAR MV7230 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7233 :ISA CELLULAR :NAME "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV7243 :ISA BE :SUBJECT MV7242 :PREDICATE MV7252 :PRESENT "PRESENT") (:VAR MV7242 :ISA WHAT)
 (:VAR MV7252 :ISA QUALITY-PREDICATE :ITEM MV7241 :ATTRIBUTE MV7249)
 (:VAR MV7241 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV7249 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV7247 :MODIFIER MV7248)
 (:VAR MV7247 :ISA LIKELY :COMPARATIVE MV7245)
 (:VAR MV7245 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7248 :ISA CELLULAR :NAME "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV7256 :ISA BE :SUBJECT MV7255 :PREDICATE MV7259 :PRESENT "PRESENT") (:VAR MV7255 :ISA WHAT)
 (:VAR MV7259 :ISA SIGNIFICANCE :CONTEXT MV7254 :AGENT MV7253 :HAS-DETERMINER "THE" :MODIFIER
  MV7258)
 (:VAR MV7254 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV7253 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV7258 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV7271 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV7267 :AGENT MV7264 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV7267 :ISA THOSE :QUANTIFIER MV7265 :WORD "those") (:VAR MV7265 :ISA WHICH)
 (:VAR MV7264 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those genes are in the MAPK signaling pathway?"
 (:VAR MV7291 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7288 :VALUE MV7290 :PREP "IN" :PREDICATE
  MV7280)
 (:VAR MV7288 :ISA GENE :PLURAL T :QUANTIFIER MV7275 :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV7275 :ISA WHICH)
 (:VAR MV7290 :ISA GENE :PLURAL T :CONTEXT MV7274 :QUANTIFIER MV7275 :HAS-DETERMINER "THOSE"
  :RAW-TEXT "genes")
 (:VAR MV7274 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7283 :RAW-TEXT
  "signaling pathway")
 (:VAR MV7283 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV7280 :ISA BE :PRESENT "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in the il-12 pathway?"
 (:VAR MV7302 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7296 :VALUE MV7300 :PREP MV7298 :PREDICATE
  MV7297)
 (:VAR MV7296 :ISA THESE :QUANTIFIER MV7294 :WORD "these") (:VAR MV7294 :ISA WHICH)
 (:VAR MV7300 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7293 :RAW-TEXT "pathway")
 (:VAR MV7293 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV7298 :ISA IN :WORD "in") (:VAR MV7297 :ISA BE :PRESENT "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are expressed in liver?"
 (:VAR MV7311 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7306 :ORGAN MV7310 :PRESENT "PRESENT"
  :RAW-TEXT "expressed")
 (:VAR MV7306 :ISA PRONOUN/PLURAL :QUANTIFIER MV7304 :WORD "them") (:VAR MV7304 :ISA WHICH)
 (:VAR MV7310 :ISA LIVER))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    SOURCE-START
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:VAR MV7326 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV7318 :AGENT MV7325 :PRESENT "PRESENT"
  :SUPERLATIVE MV7320 :ADVERB MV7321 :RAW-TEXT "regulated")
 (:VAR MV7318 :ISA PRONOUN/PLURAL :QUANTIFIER MV7316 :WORD "them") (:VAR MV7316 :ISA WHICH)
 (:VAR MV7325 :ISA COLLECTION :RAW-TEXT "miR-335-5p and miR-155-5p" :TYPE MICRO-RNA :NUMBER 2
  :ITEMS (MV7314 MV7315))
 (:VAR MV7314 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV7315 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV7320 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7321 :ISA FREQUENTLY :NAME "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    SOURCE-START
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors target SMURF2?"
 (:VAR MV7334 :ISA TARGET :AGENT MV7335 :OBJECT MV7331 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV7335 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7331 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    SOURCE-START
e11   TARGET        1 "Which of those target frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those target frizzled8?"
 (:VAR MV7341 :ISA TARGET :AGENT-OR-CAUSE MV7339 :OBJECT MV7336 :PRESENT "PRESENT" :RAW-TEXT
  "target")
 (:VAR MV7339 :ISA THOSE :QUANTIFIER MV7337 :WORD "those") (:VAR MV7337 :ISA WHICH)
 (:VAR MV7336 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
691: "What is Selumetinib?"

                    SOURCE-START
e4    BE            1 "What is Selumetinib" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is Selumetinib?" (:VAR MV7344 :ISA BE :SUBJECT MV7343 :PREDICATE MV7345 :PRESENT "PRESENT")
 (:VAR MV7343 :ISA WHAT)
 (:VAR MV7345 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622"))

___________________
692: "What is MAPK3?"

                    SOURCE-START
e5    BE            1 "What is MAPK3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAPK3?" (:VAR MV7348 :ISA BE :SUBJECT MV7347 :PREDICATE MV7346 :PRESENT "PRESENT")
 (:VAR MV7347 :ISA WHAT)
 (:VAR MV7346 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
693: "What does it do?"

                    SOURCE-START
e6    DO            1 "What does it do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it do?" (:VAR MV7354 :ISA DO :PATIENT MV7349 :PRESENT "PRESENT")
 (:VAR MV7349 :ISA WHAT))

___________________
694: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?" (:VAR MV7364 :ISA POLAR-QUESTION :STATEMENT MV7362)
 (:VAR MV7362 :ISA THERE-EXISTS :VALUE MV7360 :PREDICATE MV7357)
 (:VAR MV7360 :ISA INHIBITOR :PROTEIN MV7355 :HAS-DETERMINER "AN" :RAW-TEXT "inhibitor")
 (:VAR MV7355 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME "MK03_HUMAN")
 (:VAR MV7357 :ISA SYNTACTIC-THERE))

___________________
695: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV7366 :ISA NAME-SOMETHING :PATIENT MV7375 :PRESENT "PRESENT")
 (:VAR MV7375 :ISA DRUG :PLURAL T :PREDICATION MV7373 :QUANTIFIER MV7369 :RAW-TEXT "drugs")
 (:VAR MV7373 :ISA INHIBIT :AGENT MV7375 :THAT-REL T :OBJECT MV7365 :PRESENT "PRESENT" :RAW-TEXT
  "inhibit")
 (:VAR MV7365 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV7369 :ISA SOME :WORD "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e16   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?" (:VAR MV7390 :ISA POLAR-QUESTION :STATEMENT MV7387)
 (:VAR MV7387 :ISA THERE-EXISTS :VALUE MV7389 :PREDICATE MV7378)
 (:VAR MV7389 :ISA INHIBITOR :PLURAL T :QUANTIFIER MV7380 :PROTEIN MV7386 :RAW-TEXT "inhibitors")
 (:VAR MV7380 :ISA ANY :WORD "any")
 (:VAR MV7386 :ISA PROTEIN :RAW-TEXT "Map2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV7378 :ISA SYNTACTIC-THERE))

___________________
697: "Are there targets of Selumetinib?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?" (:VAR MV7402 :ISA POLAR-QUESTION :STATEMENT MV7399)
 (:VAR MV7399 :ISA THERE-EXISTS :VALUE MV7401 :PREDICATE MV7392)
 (:VAR MV7401 :ISA TARGET-PROTEIN :PLURAL T :TREATMENT MV7398 :RAW-TEXT "targets")
 (:VAR MV7398 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622")
 (:VAR MV7392 :ISA SYNTACTIC-THERE))

___________________
698: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV7406 :ISA INHIBIT :AFFECTED-PROCESS-OR-OBJECT MV7403 :AGENT MV7405 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV7403 :ISA WHAT)
 (:VAR MV7405 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622"))

___________________
699: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV7411 :ISA TARGET :AFFECTED-PROCESS-OR-OBJECT MV7407 :AGENT MV7409 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7407 :ISA WHAT)
 (:VAR MV7409 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib" :UID "PCID:10127622"))

___________________
700: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?" (:VAR MV7418 :ISA POLAR-QUESTION :STATEMENT MV7417)
 (:VAR MV7417 :ISA TARGET :AGENT MV7413 :OBJECT MV7416 :RAW-TEXT "target")
 (:VAR MV7413 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID "PCID:42611257")
 (:VAR MV7416 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV7421 :ISA BE :SUBJECT MV7420 :PREDICATE MV7430 :PRESENT "PRESENT") (:VAR MV7420 :ISA WHAT)
 (:VAR MV7430 :ISA TARGET-PROTEIN :PLURAL T :QUANTIFIER MV7422 :TREATMENT MV7427 :RAW-TEXT
  "targets")
 (:VAR MV7422 :ISA SOME :WORD "some")
 (:VAR MV7427 :ISA TREATMENT :DISEASE MV7419 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT "treating")
 (:VAR MV7419 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV7433 :ISA BE :SUBJECT MV7432 :PREDICATE MV7441 :PRESENT "PRESENT") (:VAR MV7432 :ISA WHAT)
 (:VAR MV7441 :ISA TARGET-PROTEIN :PLURAL T :QUANTIFIER MV7434 :DISEASE MV7431 :RAW-TEXT "targets")
 (:VAR MV7434 :ISA SOME :WORD "some")
 (:VAR MV7431 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV7448 :ISA LEAD :AGENT MV7453 :THEME MV7451 :MODAL MV7447 :RAW-TEXT "lead")
 (:VAR MV7453 :ISA TARGET-PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV7451 :ISA DEVELOPMENT :DISEASE MV7442 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV7442 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739") (:VAR MV7447 :ISA COULD))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV7461 :ISA LEAD :AGENT MV7466 :THEME MV7464 :MODAL MV7460 :RAW-TEXT "lead")
 (:VAR MV7466 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV7464 :ISA DEVELOPMENT :DISEASE MV7456 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV7456 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739") (:VAR MV7460 :ISA COULD))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV7475 :ISA LEAD :AGENT MV7478 :THEME MV7469 :MODAL MV7474 :RAW-TEXT "lead")
 (:VAR MV7478 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :PREDICATION MV7471 :RAW-TEXT "genes")
 (:VAR MV7471 :ISA MUTATION :OBJECT MV7478 :RAW-TEXT "mutated")
 (:VAR MV7469 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739") (:VAR MV7474 :ISA COULD))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e23   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV7482 :ISA BE :SUBJECT MV7481 :PREDICATE MV7486 :PRESENT "PRESENT") (:VAR MV7481 :ISA WHAT)
 (:VAR MV7486 :ISA MUTATION :PREDICATION MV7488 :HAS-DETERMINER "THE" :MODIFIER MV7484 :OBJECT
  MV7485 :RAW-TEXT "mutation")
 (:VAR MV7488 :ISA LEAD :AGENT MV7486 :THAT-REL T :THEME MV7480 :PRESENT "PRESENT" :RAW-TEXT
  "leads")
 (:VAR MV7480 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV7484 :ISA TOP-QUA-LOCATION) (:VAR MV7485 :ISA GENE :RAW-TEXT "gene"))

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
 (:VAR MV7518 :ISA BIO-USE :PATIENT MV7508 :MODAL MV7509 :AGENT MV7510 :THEME MV7517 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV7508 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug") (:VAR MV7509 :ISA COULD)
 (:VAR MV7510 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7517 :ISA TREATMENT :DISEASE MV7506 :RAW-TEXT "treat")
 (:VAR MV7506 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV7521 :ISA BE :SUBJECT MV7520 :PREDICATE MV7529 :PRESENT "PRESENT") (:VAR MV7520 :ISA WHAT)
 (:VAR MV7529 :ISA DRUG :PLURAL T :TREATMENT MV7526 :QUANTIFIER MV7522 :RAW-TEXT "drugs")
 (:VAR MV7526 :ISA TREATMENT :DISEASE MV7519 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT "treating")
 (:VAR MV7519 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV7522 :ISA SOME :WORD "some"))

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
("Does MEK act on ERK?" (:VAR MV7557 :ISA POLAR-QUESTION :STATEMENT MV7555)
 (:VAR MV7555 :ISA BIO-ACT :AGENT MV7551 :ACTED-ON MV7554 :RAW-TEXT "act")
 (:VAR MV7551 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7554 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV7562 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7559 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV7559 :ISA BUILD :ARTIFACT MV7561 :PRESENT "PRESENT")
 (:VAR MV7561 :ISA MODEL :HAS-DETERMINER "A"))

___________________
714: "Mek activates MAPK3"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    END-OF-SOURCE
("Mek activates MAPK3"
 (:VAR MV7565 :ISA BIO-ACTIVATE :AGENT MV7564 :OBJECT MV7563 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV7564 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7563 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV7567 :ISA BIO-ACTIVATE :AGENT MV7566 :OBJECT MV7568 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV7566 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV7568 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV7569 :ISA REMOVE :OBJECT MV7576 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7576 :ISA FACT :STATEMENT MV7574 :HAS-DETERMINER "THE")
 (:VAR MV7574 :ISA BIO-ACTIVATE :AGENT MV7573 :OBJECT MV7575 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV7573 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV7575 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
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
("Can you tell me what is in the model?" (:VAR MV7588 :ISA POLAR-QUESTION :STATEMENT MV7579)
 (:VAR MV7579 :ISA TELL :AGENT MV7578 :THEME MV7587 :THEME MV7580 :MODAL "CAN")
 (:VAR MV7578 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV7587 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7581 :VALUE MV7585 :PREP MV7583 :PREDICATE
  MV7582)
 (:VAR MV7581 :ISA WHAT) (:VAR MV7585 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV7583 :ISA IN :WORD "in") (:VAR MV7582 :ISA BE :MODAL "CAN")
 (:VAR MV7580 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
718: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model." (:VAR MV7592 :ISA SUMMARIZE :STATEMENT MV7591 :PRESENT "PRESENT")
 (:VAR MV7591 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
719: "Summarize the current model."

                    SOURCE-START
e7    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model." (:VAR MV7597 :ISA SUMMARIZE :STATEMENT MV7596 :PRESENT "PRESENT")
 (:VAR MV7596 :ISA MODEL :HAS-DETERMINER "THE" :PREDICATION MV7595) (:VAR MV7595 :ISA CURRENT))

___________________
720: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV7599 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV7598 :SUBSTRATE MV7600 :PRESENT "PRESENT"
  :RAW-TEXT "phosphorylates")
 (:VAR MV7598 :ISA WHAT)
 (:VAR MV7600 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
721: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV7602 :ISA BINDING :BINDER MV7601 :DIRECT-BINDEE MV7603 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV7601 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID "PCID:42611257")
 (:VAR MV7603 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
722: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV7608 :ISA BIO-ACTIVATE :OBJECT MV7604 :PRESENT "PRESENT" :RAW-TEXT "activated")
 (:VAR MV7604 :ISA PROTEIN :PREDICATION MV7605 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7605 :ISA PHOSPHORYLATE :SUBSTRATE MV7604 :RAW-TEXT "Phosphorylated"))

___________________
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV7612 :ISA DEPHOSPHORYLATE :AGENT MV7609 :SUBSTRATE MV7610 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV7609 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME "PP2AA_HUMAN")
 (:VAR MV7610 :ISA PROTEIN :PREDICATION MV7618 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7618 :ISA BINDING :DIRECT-BINDEE MV7610 :THAT-REL T :BINDEE MV7611 :PRESENT "PRESENT"
  :NEGATION MV7615 :RAW-TEXT "bound")
 (:VAR MV7611 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7615 :ISA NOT :WORD "not"))

___________________
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV7629 :ISA PHOSPHORYLATE :AGENT MV7620 :SUBSTRATE MV7622 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV7620 :ISA PROTEIN :PREDICATION MV7630 :PREDICATION MV7623 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV7630 :ISA BINDING :DIRECT-BINDEE MV7620 :THAT-REL T :BINDEE MV7621 :PRESENT "PRESENT"
  :NEGATION MV7626 :RAW-TEXT "bound")
 (:VAR MV7621 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME "PP2AA_HUMAN")
 (:VAR MV7626 :ISA NOT :WORD "not") (:VAR MV7623 :ISA ACTIVE)
 (:VAR MV7622 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
725: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV7636 :ISA BIO-ACTIVATE :OBJECT MV7632 :PRESENT "PRESENT" :RAW-TEXT "activated")
 (:VAR MV7632 :ISA PROTEIN :PREDICATION MV7633 :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV7633 :ISA PHOSPHORYLATE :SUBSTRATE MV7632 :RAW-TEXT "Phosphorylated"))

___________________
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV7640 :ISA DEPHOSPHORYLATE :AGENT MV7637 :SUBSTRATE MV7638 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV7637 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV7638 :ISA PROTEIN :PREDICATION MV7646 :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV7646 :ISA BINDING :DIRECT-BINDEE MV7638 :THAT-REL T :BINDEE MV7639 :PRESENT "PRESENT"
  :NEGATION MV7643 :RAW-TEXT "bound")
 (:VAR MV7639 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV7643 :ISA NOT :WORD "not"))

___________________
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV7660 :ISA PHOSPHORYLATE :AGENT MV7649 :SUBSTRATE MV7648 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV7649 :ISA PROTEIN :PREDICATION MV7663 :MUTATION MV7662 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV7663 :ISA BINDING :DIRECT-BINDEE MV7649 :THAT-REL T :BINDEE MV7659 :PRESENT "PRESENT"
  :NEGATION MV7656 :RAW-TEXT "bound")
 (:VAR MV7659 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID "PCID:42611257")
 (:VAR MV7656 :ISA NOT :WORD "not")
 (:VAR MV7662 :ISA POINT-MUTATED-PROTEIN :POSITION MV7651 :NEW-AMINO-ACID MV7653
  :ORIGINAL-AMINO-ACID MV7650)
 (:VAR MV7651 :ISA NUMBER :VALUE 600)
 (:VAR MV7653 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV7650 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV7648 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
728: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV7669 :ISA COPULAR-PREDICATION :ITEM MV7665 :VALUE MV7668 :PREDICATE MV7667)
 (:VAR MV7665 :ISA PROTEIN :PREDICATION MV7666 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV7666 :ISA PHOSPHORYLATE :SUBSTRATE MV7665 :RAW-TEXT "Phosphorylated")
 (:VAR MV7668 :ISA ACTIVE) (:VAR MV7667 :ISA BE :PRESENT "PRESENT"))

___________________
729: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV7672 :ISA PHOSPHORYLATE :AGENT MV7670 :SUBSTRATE MV7671 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV7670 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME "PDPK1_HUMAN")
 (:VAR MV7671 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
730: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV7682 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7676 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV7676 :ISA MOVE-TO :GOAL MV7680 :THEME MV7674 :PRESENT "PRESENT")
 (:VAR MV7680 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV7674 :ISA PROTEIN :PREDICATION MV7677 :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV7677 :ISA PHOSPHORYLATE :SUBSTRATE MV7674 :RAW-TEXT "phosphorylated"))

___________________
731: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV7691 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7686 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV7686 :ISA MOVE-TO :AT-RELATIVE-LOCATION-OR-GOAL MV7689 :THEME MV7684 :PRESENT "PRESENT")
 (:VAR MV7689 :ISA TOP-QUA-LOCATION)
 (:VAR MV7684 :ISA PROTEIN :PREDICATION MV7687 :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV7687 :ISA PHOSPHORYLATE :SUBSTRATE MV7684 :RAW-TEXT "phosphorylated"))

___________________
732: "show AKT1 on top"

                    SOURCE-START
e8    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV7693 :ISA SHOW :AT-RELATIVE-LOCATION MV7695 :STATEMENT-OR-THEME MV7692 :PRESENT "PRESENT")
 (:VAR MV7695 :ISA TOP-QUA-LOCATION)
 (:VAR MV7692 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV7704 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7699 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV7699 :ISA HIGHLIGHT :THEME MV7700 :PRESENT "PRESENT")
 (:VAR MV7700 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV7698 :RAW-TEXT "upstream")
 (:VAR MV7698 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV7716 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7707 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV7707 :ISA MOVE-TO :GOAL MV7713 :THEME MV7714 :PRESENT "PRESENT")
 (:VAR MV7713 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV7714 :ISA ELEMENT :PLURAL T :MODIFIER MV7708)
 (:VAR MV7708 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV7719 :ISA BE :SUBJECT MV7718 :PREDICATE MV7731 :PRESENT "PRESENT") (:VAR MV7718 :ISA WHAT)
 (:VAR MV7731 :ISA DOWNSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV7727 :HAS-DETERMINER "THE"
  :PREDICATION MV7721 :RAW-TEXT "downstreams")
 (:VAR MV7727 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV7717 MV7726))
 (:VAR MV7717 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV7726 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7721 :ISA COMMON))

___________________
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV7748 :ISA POLAR-QUESTION :STATEMENT MV7743)
 (:VAR MV7743 :ISA THERE-EXISTS :VALUE MV7747 :PREDICATE MV7735)
 (:VAR MV7747 :ISA UPSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV7744 :PREDICATION MV7737
  :RAW-TEXT "upstreams")
 (:VAR MV7744 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV7732 MV7741 MV7733))
 (:VAR MV7732 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV7741 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7733 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7737 :ISA COMMON) (:VAR MV7735 :ISA SYNTACTIC-THERE))

___________________
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV7753 :ISA BE :SUBJECT MV7752 :PREDICATE MV7767 :PRESENT "PRESENT") (:VAR MV7752 :ISA WHAT)
 (:VAR MV7767 :ISA REGULATOR :PLURAL T :THEME MV7762 :HAS-DETERMINER "THE" :PREDICATION MV7755
  :CONTEXT MV7756 :RAW-TEXT "regulators")
 (:VAR MV7762 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV7749 MV7750 MV7751))
 (:VAR MV7749 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV7750 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV7751 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV7755 :ISA COMMON) (:VAR MV7756 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV7771 :ISA BE :SUBJECT MV7770 :PREDICATE MV7783 :PRESENT "PRESENT") (:VAR MV7770 :ISA WHAT)
 (:VAR MV7783 :ISA REGULATOR :PLURAL T :THEME MV7779 :PREDICATION MV7772 :CONTEXT MV7773 :RAW-TEXT
  "regulators")
 (:VAR MV7779 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV7768 MV7769))
 (:VAR MV7768 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV7769 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV7772 :ISA COMMON) (:VAR MV7773 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV7790 :ISA BE :SUBJECT MV7789 :PREDICATE MV7800 :PRESENT "PRESENT") (:VAR MV7789 :ISA WHAT)
 (:VAR MV7800 :ISA PROTEIN-FAMILY :PLURAL T :MOLECULE-TYPE MV7796 :PREDICATION MV7791 :CONTEXT
  MV7792 :RAW-TEXT "transcriptional regulators" :UID "XFAM:PF02082" :NAME
  "transcriptional regulator")
 (:VAR MV7796 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV7786 MV7787 MV7788))
 (:VAR MV7786 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV7787 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV7788 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV7791 :ISA COMMON) (:VAR MV7792 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV7804 :ISA BE :SUBJECT MV7803 :PREDICATE MV7818 :PRESENT "PRESENT") (:VAR MV7803 :ISA WHAT)
 (:VAR MV7818 :ISA MUTATION :PLURAL T :CONTEXT MV7802 :OBJECT MV7813 :HAS-DETERMINER "THE"
  :RAW-TEXT "mutations")
 (:VAR MV7802 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV7813 :ISA COLLECTION :RAW-TEXT "PTEN, TP53 and BRAF" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV7809 MV7801 MV7811))
 (:VAR MV7809 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV7801 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV7811 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV7822 :ISA BE :SUBJECT MV7821 :PREDICATE MV7825 :PRESENT "PRESENT") (:VAR MV7821 :ISA WHAT)
 (:VAR MV7825 :ISA FREQUENCY :CONTEXT MV7820 :MEASURED-ITEM MV7819 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV7824 :RAW-TEXT "frequency")
 (:VAR MV7820 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV7819 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV7824 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV7842 :ISA COPULAR-PREDICATION :ITEM MV7839 :VALUE MV7830 :PREDICATE MV7836)
 (:VAR MV7839 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV7830 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV7832 :ALTERNATIVE MV7831)
 (:VAR MV7832 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV7831 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME "CADH1_HUMAN")
 (:VAR MV7836 :ISA BE :PRESENT "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV7855 :ISA COPULAR-PREDICATION :ITEM MV7852 :VALUE MV7843 :PREDICATE MV7849)
 (:VAR MV7852 :ISA GENE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV7843 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV7845 :ALTERNATIVE MV7844)
 (:VAR MV7845 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV7844 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME "CADH1_HUMAN")
 (:VAR MV7849 :ISA BE :PRESENT "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV7858 :ISA BE :SUBJECT MV7857 :PREDICATE MV7864 :PRESENT "PRESENT") (:VAR MV7857 :ISA WHAT)
 (:VAR MV7864 :ISA QUALITY-PREDICATE :ITEM MV7856 :ATTRIBUTE MV7861)
 (:VAR MV7856 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV7861 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV7860)
 (:VAR MV7860 :ISA CELLULAR :NAME "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV7868 :ISA REGULATE :MANNER MV7865 :AGENT MV7867 :OBJECT MV7869 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7865 :ISA HOW)
 (:VAR MV7867 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV7869 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?" (:VAR MV7871 :ISA BE :SUBJECT MV7870 :PREDICATE MV7872 :PRESENT "PRESENT")
 (:VAR MV7870 :ISA WHAT)
 (:VAR MV7872 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?" (:VAR MV7884 :ISA POLAR-QUESTION :STATEMENT MV7873)
 (:VAR MV7873 :ISA BE :SUBJECT MV7874 :PREDICATE MV7876)
 (:VAR MV7874 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7876 :ISA MEMBER :SET MV7882 :HAS-DETERMINER "A")
 (:VAR MV7882 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
748: "What genes are in RAS?"

                    SOURCE-START
e11   COPULAR-PREDICATE 1 "What genes are in RAS" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in RAS?"
 (:VAR MV7896 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7891 :VALUE MV7895 :PREP "IN" :PREDICATE
  MV7888)
 (:VAR MV7891 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7895 :ISA GENE :PLURAL T :IN-FAMILY MV7890 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7890 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV7888 :ISA BE :PRESENT "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV7913 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7907 :VALUE MV7912 :PREP "IN" :PREDICATE
  MV7901)
 (:VAR MV7907 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7912 :ISA GENE :PLURAL T :IN-FAMILY MV7908 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7908 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV7901 :ISA BE :PRESENT "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV7916 :ISA BE :SUBJECT MV7915 :PREDICATE MV7929 :PRESENT "PRESENT") (:VAR MV7915 :ISA WHAT)
 (:VAR MV7929 :ISA HAS-NAME :PLURAL T :ITEM MV7925 :QUANTIFIER MV7917 :MODIFIER MV7918)
 (:VAR MV7925 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7917 :ISA SOME :WORD "some") (:VAR MV7918 :ISA OTHER :NAME "other"))

___________________
751: "What are synonyms for ERK?"

                    SOURCE-START
e9    BE            1 "What are synonyms for ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for ERK?"
 (:VAR MV7931 :ISA BE :SUBJECT MV7930 :PREDICATE MV7937 :PRESENT "PRESENT") (:VAR MV7930 :ISA WHAT)
 (:VAR MV7937 :ISA HAS-SYNONYM :PLURAL T :ITEM MV7935)
 (:VAR MV7935 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
752: "What transcription factors are shared by CXCL8, CXCL10, and IL2?"

                    SOURCE-START
e21   SHARE         1 "What transcription factors are shared by CXCL8, CXCL10, and IL2" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
 (:VAR MV7950 :ISA SHARE :OBJECT MV7949 :PARTICIPANT MV7948 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV7949 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7948 :ISA COLLECTION :RAW-TEXT "CXCL8, CXCL10, and IL2" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV7940 MV7941 MV7942))
 (:VAR MV7940 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV7941 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV7942 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
753: "What are the paths between BRAF and AKT1?"

                    SOURCE-START
e15   BE            1 "What are the paths between BRAF and AKT1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between BRAF and AKT1?"
 (:VAR MV7954 :ISA BE :SUBJECT MV7953 :PREDICATE MV7964 :PRESENT "PRESENT") (:VAR MV7953 :ISA WHAT)
 (:VAR MV7964 :ISA PATH :PLURAL T :ENDPOINTS MV7961 :HAS-DETERMINER "THE")
 (:VAR MV7961 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV7959 MV7952))
 (:VAR MV7959 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7952 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
754: "Is SMAD2 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is SMAD2 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is SMAD2 a transcription factor?" (:VAR MV7969 :ISA POLAR-QUESTION :STATEMENT MV7967)
 (:VAR MV7967 :ISA BE :SUBJECT MV7965 :PREDICATE MV7966)
 (:VAR MV7965 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN")
 (:VAR MV7966 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT "transcription factor"))

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
 (:VAR MV7985 :ISA BIO-ACTIVATE :AGENT MV7984 :OBJECT MV7986 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV7984 :ISA PROTEIN-FAMILY :PREDICATION MV7983 :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7983 :ISA ACTIVE)
 (:VAR MV7986 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV7993 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7987 :VALUE MV7991 :PREP MV7989 :PREDICATE
  MV7988)
 (:VAR MV7987 :ISA WHAT) (:VAR MV7991 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV7989 :ISA IN :WORD "in") (:VAR MV7988 :ISA BE :PRESENT "PRESENT"))

___________________
758: "Is the amount of phosphorylated ERK ever high?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Is the amount of phosphorylated ERK ever high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high?"
 (:VAR MV8004 :ISA POLAR-QUESTION :STATEMENT MV8003)
 (:VAR MV8003 :ISA COPULAR-PREDICATION :ITEM MV7996 :VALUE MV8001 :PREDICATE MV7994)
 (:VAR MV7996 :ISA BIO-AMOUNT :MEASURED-ITEM MV7999 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV7999 :ISA PROTEIN-FAMILY :PREDICATION MV7998 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7998 :ISA PHOSPHORYLATE :SUBSTRATE MV7999 :RAW-TEXT "phosphorylated")
 (:VAR MV8001 :ISA HIGH :ADVERB MV8000) (:VAR MV8000 :ISA EVER :NAME "ever") (:VAR MV7994 :ISA BE))

___________________
759: "What genes are mutually exclusive with PTEN for prostate cancer?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with PTEN for prostate cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with PTEN for prostate cancer?"
 (:VAR MV8017 :ISA COPULAR-PREDICATION :ITEM MV8014 :VALUE MV8005 :PREDICATE MV8010)
 (:VAR MV8014 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8005 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV8006 :ALTERNATIVE MV8012)
 (:VAR MV8006 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224")
 (:VAR MV8012 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV8010 :ISA BE :PRESENT "PRESENT"))

___________________
760: "What signaling pathways are shared by SMAD2 and CXCL8?"

                    SOURCE-START
e17   SHARE         1 "What signaling pathways are shared by SMAD2 and CXCL8" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by SMAD2 and CXCL8?"
 (:VAR MV8029 :ISA SHARE :OBJECT MV8028 :PARTICIPANT MV8027 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV8028 :ISA SIGNALING-PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV8027 :ISA COLLECTION :RAW-TEXT "SMAD2 and CXCL8" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV8020 MV8021))
 (:VAR MV8020 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN")
 (:VAR MV8021 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
761: "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
 (:VAR MV8039 :ISA REGULATE :AGENT MV8042 :OBJECT MV8041 :PRESENT "PRESENT" :ADVERB MV8037 :ADVERB
  MV8038 :RAW-TEXT "regulate")
 (:VAR MV8042 :ISA MICRO-RNA :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV8041 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV8031 MV8032 MV8033))
 (:VAR MV8031 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV8032 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV8033 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV8037 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV8038 :ISA FREQUENTLY :NAME "frequently"))

___________________
762: "What is the most likely cellular location of PTEN?"

                    SOURCE-START
e19   BE            1 "What is the most likely cellular location of PTEN" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of PTEN?"
 (:VAR MV8044 :ISA BE :SUBJECT MV8043 :PREDICATE MV8054 :PRESENT "PRESENT") (:VAR MV8043 :ISA WHAT)
 (:VAR MV8054 :ISA QUALITY-PREDICATE :ITEM MV8052 :ATTRIBUTE MV8050)
 (:VAR MV8052 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV8050 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV8048 :MODIFIER MV8049)
 (:VAR MV8048 :ISA LIKELY :COMPARATIVE MV8046)
 (:VAR MV8046 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV8049 :ISA CELLULAR :NAME "cellular"))

___________________
763: "Is BRAF a kinase?"

                    SOURCE-START
e8    BE            1 "Is BRAF a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase?" (:VAR MV8059 :ISA POLAR-QUESTION :STATEMENT MV8055)
 (:VAR MV8055 :ISA BE :SUBJECT MV8056 :PREDICATE MV8058)
 (:VAR MV8056 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV8058 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
764: "Can you tell me whether BRAF is a kinase?"

                    SOURCE-START
e22   TELL          1 "Can you tell me whether BRAF is a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me whether BRAF is a kinase?" (:VAR MV8071 :ISA POLAR-QUESTION :STATEMENT MV8062)
 (:VAR MV8062 :ISA TELL :AGENT MV8061 :THEME MV8070 :THEME MV8063 :MODAL "CAN")
 (:VAR MV8061 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV8070 :ISA WH-QUESTION :STATEMENT MV8067 :WH WHETHER)
 (:VAR MV8067 :ISA BE :SUBJECT MV8066 :PREDICATE MV8069 :MODAL "CAN")
 (:VAR MV8066 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV8069 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV8063 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
765: "I want to know if BRAF is a kinase."

                    SOURCE-START
e21   WANT          1 "I want to know if BRAF is a kinase" 10
                    PERIOD
                    END-OF-SOURCE
("I want to know if BRAF is a kinase."
 (:VAR MV8075 :ISA WANT :AGENT MV8072 :THEME MV8085 :PRESENT "PRESENT")
 (:VAR MV8072 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV8085 :ISA KNOW :AGENT MV8072 :STATEMENT MV8084)
 (:VAR MV8084 :ISA WH-QUESTION :STATEMENT MV8080 :WH IF)
 (:VAR MV8080 :ISA BE :SUBJECT MV8079 :PREDICATE MV8082 :PRESENT "PRESENT")
 (:VAR MV8079 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV8082 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

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
 (:VAR MV8094 :ISA BE :SUBJECT MV8091 :PREDICATE MV8095 :PRESENT "PRESENT")
 (:VAR MV8091 :ISA TYPE :MOLECULE-TYPE MV8093 :HAS-DETERMINER "WHAT" :RAW-TEXT "type")
 (:VAR MV8093 :ISA PROTEIN :RAW-TEXT "protein")
 (:VAR MV8095 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
768: "What is the activity of the BRAF protein?"

                    SOURCE-START
e17   BE            1 "What is the activity of the BRAF protein" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the activity of the BRAF protein?"
 (:VAR MV8098 :ISA BE :SUBJECT MV8097 :PREDICATE MV8100 :PRESENT "PRESENT") (:VAR MV8097 :ISA WHAT)
 (:VAR MV8100 :ISA BIO-ACTIVITY :PARTICIPANT MV8105 :HAS-DETERMINER "THE" :RAW-TEXT "activity")
 (:VAR MV8105 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
769: "Is BRAF a kinase or a transcription factor?"

                    SOURCE-START
e15   BE            1 "Is BRAF a kinase or a transcription factor" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase or a transcription factor?" (:VAR MV8115 :ISA POLAR-QUESTION :STATEMENT MV8108)
 (:VAR MV8108 :ISA BE :SUBJECT MV8109 :PREDICATE MV8114)
 (:VAR MV8109 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV8114 :ISA COLLECTION :RAW-TEXT "a kinase or a transcription factor" :TYPE KINASE :NUMBER 2
  :ITEMS (MV8111 MV8107))
 (:VAR MV8111 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV8107 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT "transcription factor"))

___________________
770: "What proteins are targeted by NG25?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by NG25?"
 (:VAR MV8124 :ISA TARGET :OBJECT MV8123 :AGENT MV8116 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV8123 :ISA PROTEIN :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV8116 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664"))

___________________
771: "Name transcription factors shared by FN1, MMP3, and SERPINE1."

                    SOURCE-START
e20   NAME-SOMETHING  1 "Name transcription factors shared by FN1, MMP3, and SERPINE1" 15
                    PERIOD
                    END-OF-SOURCE
("Name transcription factors shared by FN1, MMP3, and SERPINE1."
 (:VAR MV8131 :ISA NAME-SOMETHING :PATIENT MV8127 :PRESENT "PRESENT")
 (:VAR MV8127 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV8134 :RAW-TEXT
  "transcription factors")
 (:VAR MV8134 :ISA SHARE :OBJECT MV8127 :PARTICIPANT MV8137 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV8137 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV8128 MV8129 MV8130))
 (:VAR MV8128 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV8129 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV8130 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN"))

___________________
772: "Tell me if STAT3 is a transcription factor"

                    SOURCE-START
e15   TELL          1 "Tell me if STAT3 is a transcription factor" 10
                    END-OF-SOURCE
("Tell me if STAT3 is a transcription factor"
 (:VAR MV8142 :ISA TELL :THEME MV8147 :BENEFICIARY MV8143 :PRESENT "PRESENT")
 (:VAR MV8147 :ISA WH-QUESTION :STATEMENT MV8145 :WH IF)
 (:VAR MV8145 :ISA BE :SUBJECT MV8140 :PREDICATE MV8141 :PRESENT "PRESENT")
 (:VAR MV8140 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV8141 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT "transcription factor")
 (:VAR MV8143 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
773: "Show me signaling pathways shared by MAP3K7 and CXCL8."

                    SOURCE-START
e18   SHOW          1 "Show me signaling pathways shared by MAP3K7 and CXCL8" 14
                    PERIOD
                    END-OF-SOURCE
("Show me signaling pathways shared by MAP3K7 and CXCL8."
 (:VAR MV8152 :ISA SHOW :STATEMENT-OR-THEME MV8159 :BENEFICIARY MV8153 :PRESENT "PRESENT")
 (:VAR MV8159 :ISA SIGNALING-PATHWAY :PLURAL T :PREDICATION MV8154 :RAW-TEXT "signaling pathways")
 (:VAR MV8154 :ISA SHARE :OBJECT MV8159 :PARTICIPANT MV8157 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV8157 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV8150 MV8151))
 (:VAR MV8150 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV8151 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV8153 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
774: "Give me signaling pathways shared by MAP3K7 and CXCL8"

                    SOURCE-START
e18   GIVE          1 "Give me signaling pathways shared by MAP3K7 and CXCL8" 14
                    END-OF-SOURCE
("Give me signaling pathways shared by MAP3K7 and CXCL8"
 (:VAR MV8164 :ISA GIVE :THEME MV8171 :BENEFICIARY MV8165 :PRESENT "PRESENT")
 (:VAR MV8171 :ISA SIGNALING-PATHWAY :PLURAL T :PREDICATION MV8166 :RAW-TEXT "signaling pathways")
 (:VAR MV8166 :ISA SHARE :OBJECT MV8171 :PARTICIPANT MV8169 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV8169 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV8162 MV8163))
 (:VAR MV8162 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV8163 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV8165 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
775: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"

                    SOURCE-START
e47   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
 (:VAR MV8201 :ISA POLAR-QUESTION :STATEMENT MV8200)
 (:VAR MV8200 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV8196 :EVENT MV8198)
 (:VAR MV8196 :ISA WH-QUESTION :STATEMENT MV8183 :WH IF)
 (:VAR MV8183 :ISA INCREASE :AGENT-OR-CAUSE MV8181 :MULTIPLIER-OR-CAUSE MV8193
  :AFFECTED-PROCESS-OR-OBJECT MV8185 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV8181 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV8193 :ISA MEASUREMENT :NUMBER MV8190) (:VAR MV8190 :ISA NUMBER :VALUE 10)
 (:VAR MV8185 :ISA BIO-AMOUNT :MEASURED-ITEM MV8187 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV8187 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV8198 :ISA COPULAR-PREDICATION :ITEM MV8174 :VALUE MV8179 :PREDICATE MV8172)
 (:VAR MV8174 :ISA BIO-AMOUNT :MEASURED-ITEM MV8177 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV8177 :ISA PROTEIN-FAMILY :PREDICATION MV8176 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV8176 :ISA PHOSPHORYLATE :SUBSTRATE MV8177 :RAW-TEXT "phosphorylated")
 (:VAR MV8179 :ISA HIGH :ADVERB MV8178) (:VAR MV8178 :ISA EVER :NAME "ever") (:VAR MV8172 :ISA BE))

___________________
776: "Active MEK phosphorylates ERK"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "Active MEK phosphorylates ERK" 5
                    END-OF-SOURCE
("Active MEK phosphorylates ERK"
 (:VAR MV8204 :ISA PHOSPHORYLATE :AGENT MV8203 :SUBSTRATE MV8205 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV8203 :ISA PROTEIN-FAMILY :PREDICATION MV8202 :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV8202 :ISA ACTIVE)
 (:VAR MV8205 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
e44   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
 (:VAR MV8233 :ISA POLAR-QUESTION :STATEMENT MV8232)
 (:VAR MV8232 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV8228 :EVENT MV8230)
 (:VAR MV8228 :ISA WH-QUESTION :STATEMENT MV8217 :WH IF)
 (:VAR MV8217 :ISA INCREASE :AGENT-OR-CAUSE MV8215 :LEVEL MV8226 :AFFECTED-PROCESS-OR-OBJECT MV8219
  :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV8215 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV8226 :ISA MEASUREMENT :NUMBER MV8223) (:VAR MV8223 :ISA NUMBER :VALUE 10)
 (:VAR MV8219 :ISA BIO-AMOUNT :MEASURED-ITEM MV8221 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV8221 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV8230 :ISA COPULAR-PREDICATION :ITEM MV8208 :VALUE MV8213 :PREDICATE MV8206)
 (:VAR MV8208 :ISA BIO-AMOUNT :MEASURED-ITEM MV8211 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV8211 :ISA PROTEIN-FAMILY :PREDICATION MV8210 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV8210 :ISA PHOSPHORYLATE :SUBSTRATE MV8211 :RAW-TEXT "phosphorylated")
 (:VAR MV8213 :ISA HIGH :ADVERB MV8212) (:VAR MV8212 :ISA EVER :NAME "ever") (:VAR MV8206 :ISA BE))

___________________
778: "What are some pathways that affect BRAF?"

                    SOURCE-START
e14   BE            1 "What are some pathways that affect BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some pathways that affect BRAF?"
 (:VAR MV8235 :ISA BE :SUBJECT MV8234 :PREDICATE MV8243 :PRESENT "PRESENT") (:VAR MV8234 :ISA WHAT)
 (:VAR MV8243 :ISA PATHWAY :PLURAL T :PREDICATION MV8240 :QUANTIFIER MV8236 :RAW-TEXT "pathways")
 (:VAR MV8240 :ISA AFFECT :AGENT MV8243 :THAT-REL T :OBJECT MV8241 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV8241 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV8236 :ISA SOME :WORD "some"))

___________________
779: "What are the pathways that affect BRAF"

                    SOURCE-START
e15   BE            1 "What are the pathways that affect BRAF" 8
                    END-OF-SOURCE
("What are the pathways that affect BRAF"
 (:VAR MV8245 :ISA BE :SUBJECT MV8244 :PREDICATE MV8253 :PRESENT "PRESENT") (:VAR MV8244 :ISA WHAT)
 (:VAR MV8253 :ISA PATHWAY :PLURAL T :PREDICATION MV8250 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV8250 :ISA AFFECT :AGENT MV8253 :THAT-REL T :OBJECT MV8251 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV8251 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    SOURCE-START
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:VAR MV8265 :ISA REGULATE :OBJECT MV8264 :AGENT MV8263 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV8264 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8263 :ISA COLLECTION :RAW-TEXT "miR-20b-5p, and miR-145-5p" :TYPE MICRO-RNA :NUMBER 2
  :ITEMS (MV8254 MV8255))
 (:VAR MV8254 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413")
 (:VAR MV8255 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    SOURCE-START
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are regulated by ELK1?"
 (:VAR MV8269 :ISA BE :SUBJECT MV8268 :PREDICATE MV8280 :PRESENT "PRESENT") (:VAR MV8268 :ISA WHAT)
 (:VAR MV8280 :ISA GENE :PLURAL T :PREDICATION MV8278 :QUANTIFIER MV8270 :RAW-TEXT "genes")
 (:VAR MV8278 :ISA REGULATE :OBJECT MV8280 :THAT-REL T :AGENT MV8267 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV8267 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV8270 :ISA SOME :WORD "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    SOURCE-START
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways contain CXCL8 and CXCL10?"
 (:VAR MV8286 :ISA CONTAIN :THEME MV8289 :PATIENT MV8288 :PRESENT "PRESENT")
 (:VAR MV8289 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV8288 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV8281 MV8282))
 (:VAR MV8281 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV8282 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that IL10 activates STAT3 " 10
e18   IN            10 "in the model" 13
                    END-OF-SOURCE
                    SOURCE-START
e23   VP            1 "Remove the fact that IL10 activates STAT3 " 10
e18   PP            10 "in the model" 13
                    END-OF-SOURCE


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
 (:VAR MV8313 :ISA BE :SUBJECT MV8312 :PREDICATE MV8323 :PRESENT "PRESENT") (:VAR MV8312 :ISA WHAT)
 (:VAR MV8323 :ISA PATH :PLURAL T :ENDPOINTS MV8320 :QUANTIFIER MV8314)
 (:VAR MV8320 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV8318 MV8311))
 (:VAR MV8318 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV8311 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV8314 :ISA SOME :WORD "some"))

___________________
786: "Does MEK1 activate ERK2"

                    SOURCE-START
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    END-OF-SOURCE
("Does MEK1 activate ERK2" (:VAR MV8329 :ISA POLAR-QUESTION :STATEMENT MV8328)
 (:VAR MV8328 :ISA BIO-ACTIVATE :AGENT MV8324 :OBJECT MV8325 :RAW-TEXT "activate")
 (:VAR MV8324 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV8325 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    SOURCE-START
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs tagret BRAF?"
 (:VAR MV8333 :ISA PROTEIN :HAS-DETERMINER "WHAT" :MODIFIER MV8332 :MODIFIER MV8334 :RAW-TEXT
  "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV8332 :ISA DRUG :PLURAL T :RAW-TEXT "drugs") (:VAR MV8334 :ISA BIO-ENTITY :NAME "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signalling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signalling pathway?"
 (:VAR MV8348 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV8343 :VALUE MV8347 :PREP "IN" :PREDICATE
  MV8339)
 (:VAR MV8343 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV8347 :ISA KINASE :PLURAL T :IN-PATHWAY MV8335 :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV8335 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8342 :RAW-TEXT
  "signalling pathway")
 (:VAR MV8342 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
  13 :FAMILY-MEMBERS
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
 (:VAR MV8339 :ISA BE :PRESENT "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    SOURCE-START
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs drugs target BRAF?"
 (:VAR MV8356 :ISA TARGET :AGENT MV8360 :OBJECT MV8357 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV8360 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV8357 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    SOURCE-START
e6    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What rgulates ELLK1?"
 (:VAR MV8364 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :MODIFIER MV8365 :NAME "ELLK1")
 (:VAR MV8365 :ISA BIO-ENTITY :NAME "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase expression of c-fos in liver?"
 (:VAR MV8378 :ISA POLAR-QUESTION :STATEMENT MV8375)
 (:VAR MV8375 :ISA INCREASE :AGENT MV8366 :AFFECTED-PROCESS MV8371 :RAW-TEXT "increase")
 (:VAR MV8366 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV8371 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV8367 :RAW-TEXT "expression")
 (:VAR MV8367 :ISA PROTEIN :ORGAN MV8374 :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV8374 :ISA LIVER))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    SOURCE-START
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect c-fos expression in liver?" (:VAR MV8388 :ISA POLAR-QUESTION :STATEMENT MV8386)
 (:VAR MV8386 :ISA AFFECT :AGENT MV8379 :AFFECTED-PROCESS MV8383 :RAW-TEXT "affect")
 (:VAR MV8379 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV8383 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV8385 :OBJECT MV8380 :RAW-TEXT "expression")
 (:VAR MV8385 :ISA LIVER)
 (:VAR MV8380 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    SOURCE-START
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 alter c-fos expression?" (:VAR MV8395 :ISA POLAR-QUESTION :STATEMENT MV8394)
 (:VAR MV8394 :ISA ALTER :AGENT MV8389 :AFFECTED-PROCESS MV8393 :RAW-TEXT "alter")
 (:VAR MV8389 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV8393 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV8390 :RAW-TEXT "expression")
 (:VAR MV8390 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcriptional regulator of c-fos?"
 (:VAR MV8403 :ISA POLAR-QUESTION :STATEMENT MV8399)
 (:VAR MV8399 :ISA BE :SUBJECT MV8396 :PREDICATE MV8397)
 (:VAR MV8396 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV8397 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV8398 :HAS-DETERMINER "A" :RAW-TEXT
  "transcriptional regulator" :NAME "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV8398 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
795: "Which drugs inhibit BRAF?"

                    SOURCE-START
e6    INHIBIT       1 "Which drugs inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs inhibit BRAF?"
 (:VAR MV8407 :ISA INHIBIT :AGENT MV8409 :OBJECT MV8408 :PRESENT "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV8409 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV8408 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    SOURCE-START
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    PERIOD
                    END-OF-SOURCE
("STAT3 upregulates ELK1."
 (:VAR MV8412 :ISA UPREGULATE :AGENT MV8410 :OBJECT MV8411 :PRESENT "PRESENT" :RAW-TEXT
  "upregulates")
 (:VAR MV8410 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV8411 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    SOURCE-START
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 transcribe?"
 (:VAR MV8416 :ISA TRANSCRIBE :OBJECT MV8414 :AGENT MV8413 :PRESENT "PRESENT" :RAW-TEXT
  "transcribe")
 (:VAR MV8414 :ISA WHAT)
 (:VAR MV8413 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    SOURCE-START
e5    BE            1 "What is PI3K" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PI3K?" (:VAR MV8419 :ISA BE :SUBJECT MV8418 :PREDICATE MV8417 :PRESENT "PRESENT")
 (:VAR MV8418 :ISA WHAT)
 (:VAR MV8417 :ISA PROTEIN-FAMILY :RAW-TEXT "PI3K" :NAME "PI3-kinase" :COUNT 4 :FAMILY-MEMBERS
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
("What is MEK?" (:VAR MV8421 :ISA BE :SUBJECT MV8420 :PREDICATE MV8422 :PRESENT "PRESENT")
 (:VAR MV8420 :ISA WHAT)
 (:VAR MV8422 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV8424 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV8423 :SUBSTRATE MV8425 :PRESENT "PRESENT"
  :RAW-TEXT "phosphorylates")
 (:VAR MV8423 :ISA WHAT)
 (:VAR MV8425 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV8430 :ISA TARGET :AGENT MV8432 :OBJECT MV8431 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV8432 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV8431 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV8435 :ISA REGULATE :AGENT-OR-CAUSE MV8434 :OBJECT MV8433 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV8434 :ISA WHAT) (:VAR MV8433 :ISA BIO-ENTITY :NAME "ELLK1"))

___________________
803: "What regulates ELK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK1?"
 (:VAR MV8438 :ISA REGULATE :AGENT-OR-CAUSE MV8437 :OBJECT MV8436 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV8437 :ISA WHAT)
 (:VAR MV8436 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    SOURCE-START
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5pp target STAT3?" (:VAR MV8449 :ISA POLAR-QUESTION :STATEMENT MV8448)
 (:VAR MV8448 :ISA TARGET :AGENT MV8447 :OBJECT MV8440 :RAW-TEXT "target")
 (:VAR MV8447 :ISA BIO-ENTITY :NAME "miR-20b-5pp")
 (:VAR MV8440 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

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
 (:VAR MV8465 :ISA TARGET :AFFECTED-PROCESS-OR-OBJECT MV8462 :AGENT MV8466 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV8462 :ISA WHAT) (:VAR MV8466 :ISA BIO-ENTITY :NAME "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    SOURCE-START
e9    BE            1 "Is ELLK1 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ELLK1 a kinase?" (:VAR MV8471 :ISA POLAR-QUESTION :STATEMENT MV8468)
 (:VAR MV8468 :ISA BE :SUBJECT MV8467 :PREDICATE MV8470)
 (:VAR MV8467 :ISA BIO-ENTITY :NAME "ELLK1")
 (:VAR MV8470 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
808: "What regulates ELK12?"

                    SOURCE-START
e7    REGULATE      1 "What regulates ELK12" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK12?"
 (:VAR MV8473 :ISA REGULATE :AGENT-OR-CAUSE MV8472 :OBJECT MV8474 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV8472 :ISA WHAT)
 (:VAR MV8474 :ISA PROTEIN :VARIANT-NUMBER MV8476 :RAW-TEXT "ELK" :UID "UP:P54762" :NAME
  "EPHB1_HUMAN")
 (:VAR MV8476 :ISA NUMBER :VALUE 12))

___________________
809: "What does sleumiitibbb target?"

                    SOURCE-START
e6    TARGET        1 "What does sleumiitibbb target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does sleumiitibbb target?"
 (:VAR MV8480 :ISA TARGET :AFFECTED-PROCESS-OR-OBJECT MV8477 :AGENT MV8481 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV8477 :ISA WHAT) (:VAR MV8481 :ISA BIO-ENTITY :NAME "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    SOURCE-START
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:VAR MV8485 :ISA BE :SUBJECT MV8484 :PREDICATE MV8490 :PRESENT "PRESENT") (:VAR MV8484 :ISA WHAT)
 (:VAR MV8490 :ISA EVIDENCE :STATEMENT MV8489 :HAS-DETERMINER "THE")
 (:VAR MV8489 :ISA PHOSPHORYLATE :AGENT MV8482 :SUBSTRATE MV8483 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV8482 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV8483 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME "MK03_HUMAN"))

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
 (:VAR MV8507 :ISA BIO-ACTIVATE :AGENT MV8505 :OBJECT MV8506 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV8505 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME "IL10_HUMAN")
 (:VAR MV8506 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    SOURCE-START
e13   COPULAR-PREDICATION 1 "How many interactions are in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How many interactions are in the model?"
 (:VAR MV8517 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV8515 :VALUE MV8514 :PREP MV8512 :PREDICATE
  MV8511)
 (:VAR MV8515 :ISA INTERACT :PLURAL T :QUANTIFIER HOW-MANY :RAW-TEXT "interactions")
 (:VAR MV8514 :ISA MODEL :HAS-DETERMINER "THE") (:VAR MV8512 :ISA IN :WORD "in")
 (:VAR MV8511 :ISA BE :PRESENT "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    SOURCE-START
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:VAR MV8529 :ISA POLAR-QUESTION :STATEMENT MV8527)
 (:VAR MV8527 :ISA DECREASE :AGENT MV8520 :AFFECTED-PROCESS-OR-OBJECT MV8524 :RAW-TEXT "decrease")
 (:VAR MV8520 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID "NCIT:C95800")
 (:VAR MV8524 :ISA BIO-AMOUNT :MEASURED-ITEM MV8518 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV8518 :ISA PROTEIN :PREDICATION MV8526 :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV8526 :ISA PHOSPHORYLATE :SUBSTRATE MV8518 :RAW-TEXT "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does ERK1 activate?"
 (:VAR MV8535 :ISA BIO-ACTIVATE :OBJECT MV8536 :AGENT MV8530 :PRESENT "PRESENT" :RAW-TEXT
  "activate")
 (:VAR MV8536 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV8530 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does MEK1 activate?"
 (:VAR MV8542 :ISA BIO-ACTIVATE :OBJECT MV8543 :AGENT MV8537 :PRESENT "PRESENT" :RAW-TEXT
  "activate")
 (:VAR MV8543 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV8537 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERK1 activate?"
 (:VAR MV8547 :ISA BIO-ACTIVATE :AFFECTED-PROCESS-OR-OBJECT MV8545 :AGENT MV8544 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV8545 :ISA WHAT)
 (:VAR MV8544 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does JAK1 phosphorylate?"
 (:VAR MV8551 :ISA PHOSPHORYLATE :SUBSTRATE-OR-SITE-OR-AMINO-ACID MV8549 :AGENT MV8548 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV8549 :ISA WHAT)
 (:VAR MV8548 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does STAT3 regulate?"
 (:VAR MV8557 :ISA REGULATE :OBJECT MV8558 :AGENT MV8552 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV8558 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV8552 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    SOURCE-START
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and what does SRF bind?"
 (:VAR MV8570 :ISA COLLECTION :TYPE INVOLVE :NUMBER 2 :ITEMS (MV8562 MV8568))
 (:VAR MV8562 :ISA INVOLVE :THEME MV8569 :OBJECT MV8563 :PRESENT "PRESENT")
 (:VAR MV8569 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV8563 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV8568 :ISA BINDING :DIRECT-BINDEE MV8565 :BINDER MV8567 :PRESENT "PRESENT" :RAW-TEXT
  "bind")
 (:VAR MV8565 :ISA WHAT)
 (:VAR MV8567 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV8574 :ISA INVOLVE :THEME MV8576 :OBJECT MV8575 :PRESENT "PRESENT")
 (:VAR MV8576 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV8575 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    SOURCE-START
e5    BINDING       1 "What does SRF bind" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SRF bind?"
 (:VAR MV8580 :ISA BINDING :DIRECT-BINDEE MV8577 :BINDER MV8579 :PRESENT "PRESENT" :RAW-TEXT
  "bind")
 (:VAR MV8577 :ISA WHAT)
 (:VAR MV8579 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV8603 :ISA POLAR-QUESTION :STATEMENT MV8602)
 (:VAR MV8602 :ISA COLLECTION :TYPE PHOSPHORYLATE :ITEMS
  (((:AGENT (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
    (:SUBSTRATE (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))) (:RAW-TEXT "phosphorylate"))
   ((:AGENT (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
    (:OBJECT (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))) (:RAW-TEXT "activate")))
  :NUMBER 2))

___________________
826: "Does MAP2K1 phosphorylate MAPK3?"

                    SOURCE-START
e10   PHOSPHORYLATE 1 "Does MAP2K1 phosphorylate MAPK3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP2K1 phosphorylate MAPK3?" (:VAR MV8609 :ISA POLAR-QUESTION :STATEMENT MV8608)
 (:VAR MV8608 :ISA PHOSPHORYLATE :AGENT MV8604 :SUBSTRATE MV8605 :RAW-TEXT "phosphorylate")
 (:VAR MV8604 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV8605 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    SOURCE-START
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases activate MEK2?"
 (:VAR MV8614 :ISA BIO-ACTIVATE :AGENT MV8615 :OBJECT MV8610 :PRESENT "PRESENT" :RAW-TEXT
  "activate")
 (:VAR MV8615 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV8610 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:VAR MV8622 :ISA TARGET :AGENT MV8628 :AFFECTED-PROCESS MV8630 :PRESENT "PRESENT" :RAW-TEXT
  "target")
 (:VAR MV8628 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV8630 :ISA UPSTREAM-SEGMENT :PLURAL T :PATHWAYCOMPONENT MV8627 :RAW-TEXT "upstreams")
 (:VAR MV8627 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV8616 MV8617))
 (:VAR MV8616 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV8617 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target CXCL8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target CXCL8?"
 (:VAR MV8636 :ISA TARGET :AGENT MV8637 :OBJECT MV8631 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV8637 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV8631 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target Jak3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target Jak3?"
 (:VAR MV8643 :ISA TARGET :AGENT MV8644 :OBJECT MV8638 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV8644 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV8638 :ISA PROTEIN :RAW-TEXT "Jak3" :UID "UP:P52333" :NAME "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    SOURCE-START
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:VAR MV8653 :ISA TARGET :AGENT MV8658 :OBJECT MV8646 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV8658 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV8646 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV8654 :RAW-TEXT
  "transcription factors")
 (:VAR MV8654 :ISA SHARE :OBJECT MV8646 :PARTICIPANT MV8657 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV8657 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV8647 MV8648))
 (:VAR MV8647 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV8648 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    SOURCE-START
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does miR-20a-5p target?"
 (:VAR MV8667 :ISA TARGET :OBJECT MV8668 :AGENT MV8661 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV8668 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV8661 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm" :UID "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    SOURCE-START
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors does miR-20a-5p target?"
 (:VAR MV8675 :ISA TARGET :OBJECT MV8676 :AGENT MV8671 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV8676 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV8671 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm" :UID "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV8689 :ISA COPULAR-PREDICATION :ITEM MV8686 :VALUE MV8677 :PREDICATE MV8683)
 (:VAR MV8686 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV8677 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV8679 :ALTERNATIVE MV8678)
 (:VAR MV8679 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV8678 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME "CADH1_HUMAN")
 (:VAR MV8683 :ISA BE :PRESENT "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    SOURCE-START
e7    TARGET        1 "What drugs target fakeprotein" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target fakeprotein?"
 (:VAR MV8694 :ISA TARGET :AGENT MV8696 :OBJECT MV8695 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV8696 :ISA DRUG :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV8695 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the FAKE signaling pathway?"
 (:VAR MV8710 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV8705 :VALUE MV8709 :PREP "IN" :PREDICATE
  MV8701)
 (:VAR MV8705 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV8709 :ISA KINASE :PLURAL T :IN-PATHWAY MV8697 :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV8697 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8704 :RAW-TEXT
  "signaling pathway")
 (:VAR MV8704 :ISA BIO-ENTITY :NAME "FAKE") (:VAR MV8701 :ISA BE :PRESENT "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in fictional cancer?"
 (:VAR MV8713 :ISA BE :SUBJECT MV8712 :PREDICATE MV8726 :PRESENT "PRESENT") (:VAR MV8712 :ISA WHAT)
 (:VAR MV8726 :ISA MUTATION :PLURAL T :CONTEXT MV8721 :OBJECT MV8718 :HAS-DETERMINER "THE"
  :RAW-TEXT "mutations")
 (:VAR MV8721 :ISA CANCER :PREDICATION MV8720) (:VAR MV8720 :ISA FICTIONAL)
 (:VAR MV8718 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN"))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in liver cancer?"
 (:VAR MV8728 :ISA BE :SUBJECT MV8727 :PREDICATE MV8741 :PRESENT "PRESENT") (:VAR MV8727 :ISA WHAT)
 (:VAR MV8741 :ISA MUTATION :PLURAL T :CONTEXT MV8736 :OBJECT MV8733 :HAS-DETERMINER "THE"
  :RAW-TEXT "mutations")
 (:VAR MV8736 :ISA CANCER :ORGAN MV8735) (:VAR MV8735 :ISA LIVER)
 (:VAR MV8733 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN"))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    SOURCE-START
e22   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE " 9
e17   IN            9 "in the model" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e22   VP            1 "Remove the fact that ELk1 transcribes FAKE " 9
e17   PP            9 "in the model" 12
                    PERIOD
                    END-OF-SOURCE


___________________
840: "ELK1 transcribes FOS"

                    SOURCE-START
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    END-OF-SOURCE
("ELK1 transcribes FOS"
 (:VAR MV8755 :ISA TRANSCRIBE :AGENT MV8754 :OBJECT MV8756 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV8754 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV8756 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    SOURCE-START
e22   REMOVE        1 "Remove the fact that ELK1 transcribes FOS " 9
e17   IN            9 "in the model" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e22   VP            1 "Remove the fact that ELK1 transcribes FOS " 9
e17   PP            9 "in the model" 12
                    PERIOD
                    END-OF-SOURCE


___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:VAR MV8783 :ISA SHARE :OBJECT MV8782 :PARTICIPANT MV8781 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV8782 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV8781 :ISA COLLECTION :RAW-TEXT "CXCL8 and FAKE10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV8771 MV8780))
 (:VAR MV8771 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV8780 :ISA BIO-ENTITY :NAME "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    SOURCE-START
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:VAR MV8796 :ISA SHARE :OBJECT MV8795 :PARTICIPANT MV8794 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV8795 :ISA TRANSCRIPTION-FACTOR :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV8794 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV8787 MV8788))
 (:VAR MV8787 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV8788 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    SOURCE-START
e6    DATABASE      1 "What databases " 3
e2    DO            3 "do " 4
e7    BIO-USE       4 "you use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e6    NP            1 "What databases " 3
e2    VG            3 "do " 4
e7    TRANSITIVE-CLAUSE-WITHOUT-OBJECT  4 "you use" 6
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
845: "What is the MSA?"

                    SOURCE-START
e7    BE            1 "What is the MSA" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the MSA?" (:VAR MV8807 :ISA BE :SUBJECT MV8806 :PREDICATE MV8809 :PRESENT "PRESENT")
 (:VAR MV8806 :ISA WHAT)
 (:VAR MV8809 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "MSA" :UID "UP:Q9FIB6" :NAME
  "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    SOURCE-START
e11   ASK           1 "What tissues can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues can I ask about?"
 (:VAR MV8820 :ISA ASK :PATIENT MV8819 :MODAL MV8813 :AGENT MV8814 :PRESENT "PRESENT")
 (:VAR MV8819 :ISA TISSUE :PLURAL T :HAS-DETERMINER "WHAT") (:VAR MV8813 :ISA CAN)
 (:VAR MV8814 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
847: "What cancers can I ask about?"

                    SOURCE-START
e11   ASK           1 "What cancers can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What cancers can I ask about?"
 (:VAR MV8831 :ISA ASK :PATIENT MV8830 :MODAL MV8824 :AGENT MV8825 :PRESENT "PRESENT")
 (:VAR MV8830 :ISA CANCER :PLURAL T :HAS-DETERMINER "WHAT") (:VAR MV8824 :ISA CAN)
 (:VAR MV8825 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    SOURCE-START
e11   ASK           1 "What mechanisms can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What mechanisms can I ask about?"
 (:VAR MV8842 :ISA ASK :PATIENT MV8841 :MODAL MV8835 :AGENT MV8836 :PRESENT "PRESENT")
 (:VAR MV8841 :ISA BIO-MECHANISM :PLURAL T :HAS-DETERMINER "WHAT") (:VAR MV8835 :ISA CAN)
 (:VAR MV8836 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
849: "What does STAT3 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does STAT3 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate?"
 (:VAR MV8846 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV8844 :AGENT MV8843 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV8844 :ISA WHAT)
 (:VAR MV8843 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are kinases?"
 (:VAR MV8850 :ISA BE :SUBJECT MV8849 :PREDICATE MV8852 :PRESENT "PRESENT")
 (:VAR MV8849 :ISA THESE :QUANTIFIER MV8847 :WORD "these") (:VAR MV8847 :ISA WHICH)
 (:VAR MV8852 :ISA KINASE :PLURAL T :RAW-TEXT "kinases"))

___________________
851: "What pathways is ERK1 in?"

                    SOURCE-START
e9    BE            1 "What pathways is ERK1 " 6
e6    IN            6 "in" 7
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e9    S             1 "What pathways is ERK1 " 6
e6    PREPOSITION   6 "in" 7
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
e8    PREPOSITION   7 "in" 8
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
e9    PREPOSITION   9 "in" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
854: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV8883 :ISA TARGET :AGENT MV8884 :OBJECT MV8878 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV8884 :ISA MICRO-RNA :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV8878 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    SOURCE-START
e11   TARGET        1 "Which of these target SMAD2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these target SMAD2?"
 (:VAR MV8890 :ISA TARGET :AGENT-OR-CAUSE MV8888 :OBJECT MV8885 :PRESENT "PRESENT" :RAW-TEXT
  "target")
 (:VAR MV8888 :ISA THESE :QUANTIFIER MV8886 :WORD "these") (:VAR MV8886 :ISA WHICH)
 (:VAR MV8885 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
856: "Do any of these regulate IL2?"

                    SOURCE-START
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do any of these regulate IL2?" (:VAR MV8900 :ISA POLAR-QUESTION :STATEMENT MV8898)
 (:VAR MV8898 :ISA REGULATE :AGENT-OR-CAUSE MV8896 :OBJECT MV8892 :RAW-TEXT "regulate")
 (:VAR MV8896 :ISA THESE :QUANTIFIER MV8894 :WORD "these") (:VAR MV8894 :ISA ANY :WORD "any")
 (:VAR MV8892 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    SOURCE-START
e5    REGULATE      1 "What regulates STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates STAT3?"
 (:VAR MV8903 :ISA REGULATE :AGENT-OR-CAUSE MV8902 :OBJECT MV8901 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV8902 :ISA WHAT)
 (:VAR MV8901 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve these?"
 (:VAR MV8907 :ISA INVOLVE :THEME MV8909 :OBJECT MV8908 :PRESENT "PRESENT")
 (:VAR MV8909 :ISA PATHWAY :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV8908 :ISA THESE :WORD "these"))

___________________
859: "What are the targets of NG25?"

                    SOURCE-START
e14   BE            1 "What are the targets of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of NG25?"
 (:VAR MV8912 :ISA BE :SUBJECT MV8911 :PREDICATE MV8920 :PRESENT "PRESENT") (:VAR MV8911 :ISA WHAT)
 (:VAR MV8920 :ISA TARGET-PROTEIN :PLURAL T :TREATMENT MV8910 :HAS-DETERMINER "THE" :RAW-TEXT
  "targets")
 (:VAR MV8910 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664"))

___________________
860: "What is their most likely cellular location?"

                    SOURCE-START
e13   BE            1 "What is their most likely cellular location" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is their most likely cellular location?"
 (:VAR MV8922 :ISA BE :SUBJECT MV8921 :PREDICATE MV8928 :PRESENT "PRESENT") (:VAR MV8921 :ISA WHAT)
 (:VAR MV8928 :ISA LOCATION-OF :THEME MV8923 :PREDICATION MV8926 :MODIFIER MV8927)
 (:VAR MV8923 :ISA PRONOUN/PLURAL :WORD "their") (:VAR MV8926 :ISA LIKELY :COMPARATIVE MV8924)
 (:VAR MV8924 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV8927 :ISA CELLULAR :NAME "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is ERK1 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?" (:VAR MV8933 :ISA POLAR-QUESTION :STATEMENT MV8931)
 (:VAR MV8931 :ISA BE :SUBJECT MV8929 :PREDICATE MV8930)
 (:VAR MV8929 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME "MK03_HUMAN")
 (:VAR MV8930 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT "transcription factor"))

___________________
862: "Is it a kinase?"

                    SOURCE-START
e9    BE            1 "Is it a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is it a kinase?" (:VAR MV8938 :ISA POLAR-QUESTION :STATEMENT MV8934)
 (:VAR MV8934 :ISA BE :SUBJECT MV8935 :PREDICATE MV8937)
 (:VAR MV8935 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV8937 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
863: "What is PLX-4720?"

                    SOURCE-START
e5    BE            1 "What is PLX-4720" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PLX-4720?" (:VAR MV8941 :ISA BE :SUBJECT MV8940 :PREDICATE MV8939 :PRESENT "PRESENT")
 (:VAR MV8940 :ISA WHAT)
 (:VAR MV8939 :ISA DRUG :RAW-TEXT "PLX-4720" :NAME "PLX 4720" :UID "PCID:24180719"))

___________________
864: "What does it target?"

                    SOURCE-START
e7    TARGET        1 "What does it target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it target?"
 (:VAR MV8946 :ISA TARGET :AFFECTED-PROCESS-OR-OBJECT MV8942 :AGENT-OR-CAUSE MV8944 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV8942 :ISA WHAT) (:VAR MV8944 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
865: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV8952 :ISA REGULATE :OBJECT MV8953 :AGENT MV8947 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV8953 :ISA GENE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8947 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
866: "What pathways is it in?"

                    SOURCE-START
e9    BE            1 "What pathways is it " 5
e6    IN            5 "in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e9    S             1 "What pathways is it " 5
e6    PREPOSITION   5 "in" 6
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
867: "What are the targets of PLX-4720?"

                    SOURCE-START
e14   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV8963 :ISA BE :SUBJECT MV8962 :PREDICATE MV8971 :PRESENT "PRESENT") (:VAR MV8962 :ISA WHAT)
 (:VAR MV8971 :ISA TARGET-PROTEIN :PLURAL T :TREATMENT MV8961 :HAS-DETERMINER "THE" :RAW-TEXT
  "targets")
 (:VAR MV8961 :ISA DRUG :RAW-TEXT "PLX-4720" :NAME "PLX 4720" :UID "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    SOURCE-START
e10   TARGET        1 "Does it target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does it target BRAF?" (:VAR MV8978 :ISA POLAR-QUESTION :STATEMENT MV8977)
 (:VAR MV8977 :ISA TARGET :AGENT-OR-CAUSE MV8973 :OBJECT MV8976 :RAW-TEXT "target")
 (:VAR MV8973 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV8976 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

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
 (:VAR MV8990 :ISA BIO-ACTIVATE :AGENT MV8988 :OBJECT MV8989 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV8988 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN")
 (:VAR MV8989 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    SOURCE-START
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    END-OF-SOURCE
("I want to find out how Jak1 activates IL2"
 (:VAR MV8996 :ISA WANT :AGENT MV8993 :THEME MV9006 :PRESENT "PRESENT")
 (:VAR MV8993 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV9006 :ISA FIND-OUT :AGENT MV8993 :STATEMENT MV9003)
 (:VAR MV9003 :ISA WH-QUESTION :STATEMENT MV9002 :VAR NIL :WH HOW)
 (:VAR MV9002 :ISA BIO-ACTIVATE :AGENT MV8991 :OBJECT MV8992 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV8991 :ISA PROTEIN :RAW-TEXT "Jak1" :UID "UP:P23458" :NAME "JAK1_HUMAN")
 (:VAR MV8992 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    PERIOD
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:VAR MV9012 :ISA WANT :AGENT MV9009 :THEME MV9028 :PRESENT "PRESENT")
 (:VAR MV9009 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV9028 :ISA FIND-OUT :AGENT MV9009 :STATEMENT MV9025)
 (:VAR MV9025 :ISA WH-QUESTION :STATEMENT MV9018 :VAR NIL :WH HOW)
 (:VAR MV9018 :ISA BIO-ACTIVATE :AGENT MV9007 :OBJECT MV9019 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV9007 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME "ERBB3_HUMAN")
 (:VAR MV9019 :ISA PROTEIN :CELL-TYPE MV9023 :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV9023 :ISA CELL-TYPE :PLURAL T :CELL-LINE MV9008)
 (:VAR MV9008 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
873: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV9033 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV9030 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV9030 :ISA BUILD :ARTIFACT MV9032 :PRESENT "PRESENT")
 (:VAR MV9032 :ISA MODEL :HAS-DETERMINER "A"))

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
 (:VAR MV9044 :ISA REGULATE :AGENT MV9045 :OBJECT MV9040 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV9045 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV9040 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    SOURCE-START
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What positively regulates IL2?"
 (:VAR MV9046 :ISA UPREGULATE :AGENT-OR-CAUSE MV9048 :OBJECT MV9047 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV9048 :ISA WHAT)
 (:VAR MV9047 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    SOURCE-START
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What can have the effect of activation on STAT3?"
 (:VAR MV9052 :ISA HAVE :POSSESSOR MV9050 :THING-POSSESSED MV9054 :MODAL MV9051)
 (:VAR MV9050 :ISA WHAT)
 (:VAR MV9054 :ISA EFFECT :OBJECT MV9049 :AFFECTED-PROCESS MV9057 :HAS-DETERMINER "THE" :RAW-TEXT
  "effect")
 (:VAR MV9049 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV9057 :ISA BIO-ACTIVATE :RAW-TEXT "activation") (:VAR MV9051 :ISA CAN))

___________________
878: "Are there any drugs for IL10?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for IL10?" (:VAR MV9073 :ISA POLAR-QUESTION :STATEMENT MV9069)
 (:VAR MV9069 :ISA THERE-EXISTS :VALUE MV9072 :PREDICATE MV9063)
 (:VAR MV9072 :ISA DRUG :PLURAL T :TARGET MV9061 :QUANTIFIER MV9065 :RAW-TEXT "drugs")
 (:VAR MV9061 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME "IL10_HUMAN")
 (:VAR MV9065 :ISA ANY :WORD "any") (:VAR MV9063 :ISA SYNTACTIC-THERE))

___________________
879: "Which tissues express STAT3?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which tissues express STAT3?"
 (:VAR MV9078 :ISA GENE-TRANSCRIPT-EXPRESS :AGENT MV9079 :OBJECT MV9074 :PRESENT "PRESENT"
  :RAW-TEXT "express")
 (:VAR MV9079 :ISA TISSUE :PLURAL T :HAS-DETERMINER "WHICH")
 (:VAR MV9074 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    SOURCE-START
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MEK1 regulate ERK1?"
 (:VAR MV9084 :ISA REGULATE :MANNER MV9082 :AGENT MV9080 :OBJECT MV9081 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9082 :ISA HOW)
 (:VAR MV9080 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV9081 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    SOURCE-START
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:VAR MV9090 :ISA BE :SUBJECT MV9089 :PREDICATE MV9100 :PRESENT "PRESENT") (:VAR MV9089 :ISA WHAT)
 (:VAR MV9100 :ISA TRANSCRIPTION-FACTOR :PLURAL T :PREDICATION MV9092 :RAW-TEXT
  "transcription factors")
 (:VAR MV9092 :ISA BINDING :BINDER MV9100 :THAT-REL T :DIRECT-BINDEE MV9099 :PRESENT "PRESENT"
  :RAW-TEXT "bind")
 (:VAR MV9099 :ISA GENE :PLURAL T :HAS-DETERMINER "THE" :EXPRESSES MV9097 :RAW-TEXT "genes")
 (:VAR MV9097 :ISA COLLECTION :RAW-TEXT "IL15 and IL2" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV9087 MV9088))
 (:VAR MV9087 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME "IL15_HUMAN")
 (:VAR MV9088 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    SOURCE-START
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate the IL15 and IL2?"
 (:VAR MV9106 :ISA REGULATE :AGENT MV9110 :OBJECT MV9109 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV9110 :ISA KINASE :PLURAL T :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV9109 :ISA COLLECTION :HAS-DETERMINER "THE" :RAW-TEXT "IL15 and IL2" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV9101 MV9102))
 (:VAR MV9101 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME "IL15_HUMAN")
 (:VAR MV9102 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

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
e18   IN            3 "in the literature match tofacitinib " 8
e17   INHIBIT       8 "inhibits IL15" 11
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   NP            1 "What relations " 3
e18   PP            3 "in the literature match tofacitinib " 8
e17   VP            8 "inhibits IL15" 11
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
885: "What is MAP3K7?"

                    SOURCE-START
e5    BE            1 "What is MAP3K7" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAP3K7?" (:VAR MV9139 :ISA BE :SUBJECT MV9138 :PREDICATE MV9137 :PRESENT "PRESENT")
 (:VAR MV9138 :ISA WHAT)
 (:VAR MV9137 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    SOURCE-START
e9    BE            1 "Is MAP3K7 a protein" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP3K7 a protein?" (:VAR MV9144 :ISA POLAR-QUESTION :STATEMENT MV9141)
 (:VAR MV9141 :ISA BE :SUBJECT MV9140 :PREDICATE MV9143)
 (:VAR MV9140 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV9143 :ISA PROTEIN :HAS-DETERMINER "A" :RAW-TEXT "protein"))

___________________
887: "What does SMAD2 transcribe?"

                    SOURCE-START
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SMAD2 transcribe?"
 (:VAR MV9148 :ISA TRANSCRIBE :OBJECT MV9146 :AGENT MV9145 :PRESENT "PRESENT" :RAW-TEXT
  "transcribe")
 (:VAR MV9146 :ISA WHAT)
 (:VAR MV9145 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there drugs for IL10?" (:VAR MV9159 :ISA POLAR-QUESTION :STATEMENT MV9156)
 (:VAR MV9156 :ISA THERE-EXISTS :VALUE MV9158 :PREDICATE MV9151)
 (:VAR MV9158 :ISA DRUG :PLURAL T :TARGET MV9149 :RAW-TEXT "drugs")
 (:VAR MV9149 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME "IL10_HUMAN")
 (:VAR MV9151 :ISA SYNTACTIC-THERE))

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
