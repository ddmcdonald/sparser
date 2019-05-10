

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
e16   TELL          1 "Tell me about stat3's involvement in apoptosis" 11
                    END-OF-SOURCE
("Tell me about stat3's involvement in apoptosis"
 (:VAR MV13 :ISA TELL :THEME MV17 :THEME MV14 :PRESENT "PRESENT")
 (:VAR MV17 :ISA INVOLVE :THEME MV19 :PARTICIPANT MV16)
 (:VAR MV19 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV16 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV14 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
3: "What are the genes that have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e30   BE            1 "What are the genes that have strong evidence of being regulated by mir-122-5p" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV24 :ISA BE :SUBJECT MV23 :PREDICATE MV26 :PRESENT "PRESENT")
 (:VAR MV23 :ISA WHAT)
 (:VAR MV26 :ISA GENE :PREDICATION MV28 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV28 :ISA HAVE :POSSESSOR MV26 :THAT-REL T :THING-POSSESSED MV30
  :PRESENT "PRESENT")
 (:VAR MV30 :ISA EVIDENCE :FACT MV33 :PREDICATION MV29)
 (:VAR MV33 :ISA REGULATE :AGENT MV22 :PROGRESSIVE MV32 :RAW-TEXT "regulated")
 (:VAR MV22 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID
  "MIMAT0000421")
 (:VAR MV32 :ISA BE) (:VAR MV29 :ISA STRONG))

___________________
4: "What is stat3's involvement in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's involvement in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's involvement in apoptosis?"
 (:VAR MV39 :ISA BE :SUBJECT MV38 :PREDICATE MV41 :PRESENT "PRESENT")
 (:VAR MV38 :ISA WHAT) (:VAR MV41 :ISA INVOLVE :THEME MV43 :PARTICIPANT MV40)
 (:VAR MV43 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV40 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
5: "What is stat3's role in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's role in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptosis?"
 (:VAR MV47 :ISA BE :SUBJECT MV46 :PREDICATE MV49 :PRESENT "PRESENT")
 (:VAR MV46 :ISA WHAT) (:VAR MV49 :ISA ROLE :PROCESS MV51 :PARTICIPANT MV48)
 (:VAR MV51 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV48 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
6: "What is stat3's role in apoptotic regulation?"

                    SOURCE-START
e17   BE            1 "What is stat3's role in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptotic regulation?"
 (:VAR MV55 :ISA BE :SUBJECT MV54 :PREDICATE MV57 :PRESENT "PRESENT")
 (:VAR MV54 :ISA WHAT) (:VAR MV57 :ISA ROLE :PROCESS MV61 :PARTICIPANT MV56)
 (:VAR MV61 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV59 :RAW-TEXT
  "regulation")
 (:VAR MV59 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV56 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
7: "What is the evidence that miR-148a-3p targets DNMT1?"

                    SOURCE-START
e19   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:VAR MV66 :ISA BE :SUBJECT MV65 :PREDICATE MV72 :PRESENT "PRESENT")
 (:VAR MV65 :ISA WHAT)
 (:VAR MV72 :ISA EVIDENCE :STATEMENT MV71 :HAS-DETERMINER "THE")
 (:VAR MV71 :ISA TARGET :AGENT MV63 :OBJECT MV64 :PRESENT "PRESENT" :RAW-TEXT
  "targets")
 (:VAR MV63 :ISA MICRO-RNA :RAW-TEXT "miR-148a-3p" :NAME "microRNA 148a-3p"
  :UID "MIMAT0000243")
 (:VAR MV64 :ISA PROTEIN :RAW-TEXT "DNMT1" :UID "UP:P26358" :NAME
  "DNMT1_HUMAN"))

___________________
8: "what transcription factors does miR-124-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-124-3p regulate?"
 (:VAR MV77 :ISA REGULATE :OBJECT MV73 :AGENT MV74 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV73 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV74 :ISA MICRO-RNA :RAW-TEXT "miR-124-3p" :NAME "microRNA 124-3p" :UID
  "MIMAT0000422"))

___________________
9: "what transcription factors does miR-200c-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c-3p regulate?"
 (:VAR MV82 :ISA REGULATE :OBJECT MV78 :AGENT MV79 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV78 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV79 :ISA MICRO-RNA :RAW-TEXT "miR-200c-3p" :NAME "microRNA 200c-3p"
  :UID "MIMAT0000617"))

___________________
10: "What is the mutation significance of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian cancer?"
 (:VAR MV86 :ISA BE :SUBJECT MV85 :PREDICATE MV89 :PRESENT "PRESENT")
 (:VAR MV85 :ISA WHAT)
 (:VAR MV89 :ISA SIGNIFICANCE :AGENT MV83 :HAS-DETERMINER "THE" :MODIFIER MV88)
 (:VAR MV83 :ISA PROTEIN :CONTEXT MV84 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME
  "P53_HUMAN")
 (:VAR MV84 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV88 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
11: "What is the mutation significance of TP53 for ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for ovarian cancer?"
 (:VAR MV97 :ISA BE :SUBJECT MV96 :PREDICATE MV100 :PRESENT "PRESENT")
 (:VAR MV96 :ISA WHAT)
 (:VAR MV100 :ISA SIGNIFICANCE :RESULT MV95 :AGENT MV94 :HAS-DETERMINER "THE"
  :MODIFIER MV99)
 (:VAR MV95 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV94 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV99 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
12: "What are synonyms for BRAF?"

                    SOURCE-START
e9    BE            1 "What are synonyms for BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for BRAF?"
 (:VAR MV106 :ISA BE :SUBJECT MV105 :PREDICATE MV107 :PRESENT "PRESENT")
 (:VAR MV105 :ISA WHAT) (:VAR MV107 :ISA HAS-SYNONYM :ITEM MV109)
 (:VAR MV109 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
13: "What are some genes that are mutated in breast cancer?"

                    SOURCE-START
e20   BE            1 "What are some genes that are mutated in breast cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are mutated in breast cancer?"
 (:VAR MV113 :ISA BE :SUBJECT MV112 :PREDICATE MV115 :PRESENT "PRESENT")
 (:VAR MV112 :ISA WHAT)
 (:VAR MV115 :ISA GENE :PREDICATION MV120 :QUANTIFIER MV114 :RAW-TEXT "genes")
 (:VAR MV120 :ISA MUTATION :OBJECT MV115 :THAT-REL T :CONTEXT MV111 :PRESENT
  "PRESENT" :RAW-TEXT "mutated")
 (:VAR MV111 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV114 :ISA SOME :WORD "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    SOURCE-START
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are mutated in breast cancer?"
 (:VAR MV128 :ISA MUTATION :OBJECT MV124 :CONTEXT MV122 :PRESENT "PRESENT"
  :RAW-TEXT "mutated")
 (:VAR MV124 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV122 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S221 activate MAP2K2?"
 (:VAR MV141 :ISA POLAR-QUESTION :STATEMENT MV139)
 (:VAR MV139 :ISA BIO-ACTIVATE :AGENT MV132 :OBJECT MV130 :RAW-TEXT "activate")
 (:VAR MV132 :ISA PHOSPHORYLATE :SITE MV138 :RAW-TEXT "phosphorylation")
 (:VAR MV138 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S221" :POSITION MV136
  :AMINO-ACID MV135)
 (:VAR MV136 :ISA NUMBER :VALUE 221)
 (:VAR MV135 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV130 :ISA PROTEIN :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S222 activate MAP2K1?"
 (:VAR MV153 :ISA POLAR-QUESTION :STATEMENT MV151)
 (:VAR MV151 :ISA BIO-ACTIVATE :AGENT MV144 :OBJECT MV142 :RAW-TEXT "activate")
 (:VAR MV144 :ISA PHOSPHORYLATE :SITE MV150 :RAW-TEXT "phosphorylation")
 (:VAR MV150 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S222" :POSITION MV148
  :AMINO-ACID MV147)
 (:VAR MV148 :ISA NUMBER :VALUE 222)
 (:VAR MV147 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV142 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    SOURCE-START
e12   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    END-OF-SOURCE
("Simulate the MAP2K1-MAPK1 complex"
 (:VAR MV156 :ISA SIMULATE :OBJECT MV160 :PRESENT "PRESENT" :RAW-TEXT
  "Simulate")
 (:VAR MV160 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV155 :COMPONENT MV154)
 (:VAR MV155 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV154 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
18: "What are the members of ERK?"

                    SOURCE-START
e12   BE            1 "What are the members of ERK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of ERK?"
 (:VAR MV162 :ISA BE :SUBJECT MV161 :PREDICATE MV164 :PRESENT "PRESENT")
 (:VAR MV161 :ISA WHAT)
 (:VAR MV164 :ISA MEMBER :SET MV166 :HAS-DETERMINER "THE")
 (:VAR MV166 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV169 :ISA BE :SUBJECT MV168 :PREDICATE MV171 :PRESENT "PRESENT")
 (:VAR MV168 :ISA WHAT)
 (:VAR MV171 :ISA MEMBER :SET MV173 :HAS-DETERMINER "THE")
 (:VAR MV173 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV176 :ISA BE :SUBJECT MV175 :PREDICATE MV178 :PRESENT "PRESENT")
 (:VAR MV175 :ISA WHAT)
 (:VAR MV178 :ISA MEMBER :SET MV180 :HAS-DETERMINER "THE")
 (:VAR MV180 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV183 :ISA BE :SUBJECT MV182 :PREDICATE MV185 :PRESENT "PRESENT")
 (:VAR MV182 :ISA WHAT)
 (:VAR MV185 :ISA MEMBER :SET MV191 :HAS-DETERMINER "THE")
 (:VAR MV191 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
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
 (:VAR MV195 :ISA BE :SUBJECT MV194 :PREDICATE MV197 :PRESENT "PRESENT")
 (:VAR MV194 :ISA WHAT)
 (:VAR MV197 :ISA MEMBER :SET MV193 :HAS-DETERMINER "THE")
 (:VAR MV193 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAS family"
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
 (:VAR MV202 :ISA BE :SUBJECT MV201 :PREDICATE MV205 :PRESENT "PRESENT")
 (:VAR MV201 :ISA WHAT)
 (:VAR MV205 :ISA HAS-NAME :ITEM MV208 :QUANTIFIER MV203)
 (:VAR MV208 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV203 :ISA ANOTHER :WORD "another"))

___________________
24: "What is another name for MAP2K1?"

                    SOURCE-START
e14   BE            1 "What is another name for MAP2K1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is another name for MAP2K1?"
 (:VAR MV212 :ISA BE :SUBJECT MV211 :PREDICATE MV215 :PRESENT "PRESENT")
 (:VAR MV211 :ISA WHAT)
 (:VAR MV215 :ISA HAS-NAME :ITEM MV210 :QUANTIFIER MV213)
 (:VAR MV210 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV213 :ISA ANOTHER :WORD "another"))

___________________
25: "How does STAT3 affect c-fos"

                    SOURCE-START
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    END-OF-SOURCE
("How does STAT3 affect c-fos"
 (:VAR MV223 :ISA AFFECT :MANNER MV221 :AGENT MV219 :OBJECT MV220 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV221 :ISA HOW)
 (:VAR MV219 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV220 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    SOURCE-START
e11   LIST          1 "List some genes regulated by elk1" 8
                    END-OF-SOURCE
("List some genes regulated by elk1"
 (:VAR MV225 :ISA LIST :THEME MV227 :PRESENT "PRESENT")
 (:VAR MV227 :ISA GENE :PREDICATION MV228 :QUANTIFIER MV226 :RAW-TEXT "genes")
 (:VAR MV228 :ISA REGULATE :OBJECT MV227 :AGENT MV224 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV224 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV226 :ISA SOME :WORD "some"))

___________________
27: "List some of the genes regulated by elk1"

                    SOURCE-START
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    END-OF-SOURCE
("List some of the genes regulated by elk1"
 (:VAR MV232 :ISA LIST :THEME MV236 :PRESENT "PRESENT")
 (:VAR MV236 :ISA GENE :PREDICATION MV237 :QUANTIFIER MV233 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV237 :ISA REGULATE :OBJECT MV236 :AGENT MV231 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV231 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV233 :ISA SOME :WORD "some"))

___________________
28: "List the genes regulated by elk1"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by elk1" 8
                    END-OF-SOURCE
("List the genes regulated by elk1"
 (:VAR MV243 :ISA LIST :THEME MV245 :PRESENT "PRESENT")
 (:VAR MV245 :ISA GENE :PREDICATION MV246 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV246 :ISA REGULATE :OBJECT MV245 :AGENT MV242 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV242 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    SOURCE-START
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of AKT1 and BRAF?"
 (:VAR MV251 :ISA BE :SUBJECT MV250 :PREDICATE MV256 :PRESENT "PRESENT")
 (:VAR MV250 :ISA WHAT)
 (:VAR MV256 :ISA REGULATOR :THEME MV260 :HAS-DETERMINER "THE" :PREDICATION
  MV253 :CONTEXT MV254 :RAW-TEXT "regulators")
 (:VAR MV260 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV249 MV259))
 (:VAR MV249 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV259 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV253 :ISA COMMON)
 (:VAR MV254 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT and BRAF?"
 (:VAR MV263 :ISA BE :SUBJECT MV262 :PREDICATE MV266 :PRESENT "PRESENT")
 (:VAR MV262 :ISA WHAT)
 (:VAR MV266 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV271 :HAS-DETERMINER
  "THE" :PREDICATION MV265 :RAW-TEXT "upstreams")
 (:VAR MV271 :ISA COLLECTION :RAW-TEXT "AKT and BRAF" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV268 MV270))
 (:VAR MV268 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "AKT3_HUMAN") (:UID "UP:Q9Y243"))
   (PROTEIN (:NAME "AKT2_HUMAN") (:UID "UP:P31751"))
   (PROTEIN (:NAME "AKT1_HUMAN") (:UID "UP:P31749")))
  :UID "FA:03066")
 (:VAR MV270 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV265 :ISA COMMON))

___________________
31: "What are the common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and BRAF?"
 (:VAR MV275 :ISA BE :SUBJECT MV274 :PREDICATE MV278 :PRESENT "PRESENT")
 (:VAR MV274 :ISA WHAT)
 (:VAR MV278 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV282 :HAS-DETERMINER
  "THE" :PREDICATION MV277 :RAW-TEXT "upstreams")
 (:VAR MV282 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV273 MV281))
 (:VAR MV273 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV281 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV277 :ISA COMMON))

___________________
32: "What are the genes that smad2 regulates?"

                    SOURCE-START
e16   BE            1 "What are the genes that smad2 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that smad2 regulates?"
 (:VAR MV286 :ISA BE :SUBJECT MV285 :PREDICATE MV288 :PRESENT "PRESENT")
 (:VAR MV285 :ISA WHAT)
 (:VAR MV288 :ISA GENE :PREDICATION MV290 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV290 :ISA REGULATE :OBJECT MV288 :THAT-REL T :AGENT MV284 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV284 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV295 :ISA BE :SUBJECT MV294 :PREDICATE MV297 :PRESENT "PRESENT")
 (:VAR MV294 :ISA WHAT)
 (:VAR MV297 :ISA MICRO-RNA :PREDICATION MV299 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV299 :ISA REGULATE :AGENT MV297 :THAT-REL T :OBJECT MV303 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV303 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE
  PROTEIN :NUMBER 5 :ITEMS (MV300 MV301 MV291 MV292 MV293))
 (:VAR MV300 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV301 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV291 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV292 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV293 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    SOURCE-START
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:VAR MV306 :ISA BE :SUBJECT MV305 :PREDICATE MV308 :PRESENT "PRESENT")
 (:VAR MV305 :ISA WHAT)
 (:VAR MV308 :ISA MICRO-RNA :PREDICATION MV310 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV310 :ISA REGULATE :AGENT MV308 :THAT-REL T :OBJECT MV314 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV314 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, and STAT3" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV311 MV312 MV304))
 (:VAR MV311 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV312 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV304 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "What are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SRF?"
 (:VAR MV316 :ISA BE :SUBJECT MV315 :PREDICATE MV318 :PRESENT "PRESENT")
 (:VAR MV315 :ISA WHAT)
 (:VAR MV318 :ISA REGULATOR :THEME MV320 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV320 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate in the liver?"
 (:VAR MV325 :ISA REGULATE :OBJECT MV323 :AGENT MV322 :ORGAN MV328 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV323 :ISA WHAT)
 (:VAR MV322 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV328 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
37: "What does it regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does it regulate in the liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it regulate in the liver?"
 (:VAR MV333 :ISA REGULATE :OBJECT MV330 :AGENT-OR-CAUSE MV332 :ORGAN MV336
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV330 :ISA WHAT) (:VAR MV332 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV336 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMAD2?"
 (:VAR MV344 :ISA REGULATE :OBJECT MV340 :AGENT MV338 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV340 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV338 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMDA2?"
 (:VAR MV354 :ISA REGULATE :OBJECT MV347 :AGENT MV353 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV347 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV353 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SRF?"
 (:VAR MV362 :ISA REGULATE :OBJECT MV357 :AGENT MV361 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV357 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV361 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
41: "Which of these are regulated by SMAD2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMAD2?"
 (:VAR MV371 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV367 :AGENT MV364
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV367 :ISA THESE :QUANTIFIER MV365 :WORD "these")
 (:VAR MV365 :ISA WHICH)
 (:VAR MV364 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
42: "Which of these are regulated by SMDA2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMDA2?"
 (:VAR MV381 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV377 :AGENT MV374
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV377 :ISA THESE :QUANTIFIER MV375 :WORD "these")
 (:VAR MV375 :ISA WHICH) (:VAR MV374 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
43: "Which pathways use these?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use these?"
 (:VAR MV387 :ISA BIO-USE :AGENT MV385 :OBJECT MV388 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV385 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV388 :ISA THESE :WORD "these"))

___________________
44: "Where does STAT3 regulate the expression of c-fos?"

                    SOURCE-START
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Where does STAT3 regulate the expression of c-fos?"
 (:VAR MV393 :ISA REGULATE :LOCATION MV391 :AGENT MV389 :AFFECTED-PROCESS MV395
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV391 :ISA WHERE)
 (:VAR MV389 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV395 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV390 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV390 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
45: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e35   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:VAR MV415 :ISA POLAR-QUESTION :STATEMENT MV402)
 (:VAR MV402 :ISA TELL :AGENT MV401 :THEME MV398 :BENEFICIARY MV403 :MODAL
  "CAN")
 (:VAR MV401 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV398 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV413 :QUANTIFIER MV404
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV413 :ISA SHARE :OBJECT MV398 :THAT-REL T :PARTICIPANT MV412 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV412 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV399 MV411))
 (:VAR MV399 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV411 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV404 :ISA ALL :WORD "all")
 (:VAR MV403 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
46: "can you tell me which transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("can you tell me which transcription factors are shared by elk1 and srf"
 (:VAR MV431 :ISA POLAR-QUESTION :STATEMENT MV420)
 (:VAR MV420 :ISA TELL :AGENT MV419 :THEME MV429 :THEME MV421 :MODAL "CAN")
 (:VAR MV419 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV429 :ISA SHARE :OBJECT MV416 :PARTICIPANT MV428 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV416 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV428 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV417 MV427))
 (:VAR MV417 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV427 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV421 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
47: "what are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "what are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what are the regulators of SRF?"
 (:VAR MV433 :ISA BE :SUBJECT MV432 :PREDICATE MV435 :PRESENT "PRESENT")
 (:VAR MV432 :ISA WHAT)
 (:VAR MV435 :ISA REGULATOR :THEME MV437 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV437 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
48: "what does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "what does stat regulate" 5
                    END-OF-SOURCE
("what does stat regulate"
 (:VAR MV442 :ISA REGULATE :OBJECT MV439 :AGENT MV441 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV439 :ISA WHAT)
 (:VAR MV441 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
49: "what is erbb?"

                    SOURCE-START
e4    BE            1 "what is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("what is erbb?"
 (:VAR MV444 :ISA BE :SUBJECT MV443 :PREDICATE MV445 :PRESENT "PRESENT")
 (:VAR MV443 :ISA WHAT)
 (:VAR MV445 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
50: "Is STAT3 involved in apoptosis?"

                    SOURCE-START
e10   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?"
 (:VAR MV452 :ISA POLAR-QUESTION :STATEMENT MV448)
 (:VAR MV448 :ISA INVOLVE :THEME MV446 :THEME MV450 :PAST "PAST")
 (:VAR MV446 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV450 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
51: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?"
 (:VAR MV461 :ISA POLAR-QUESTION :STATEMENT MV455)
 (:VAR MV455 :ISA INVOLVE :THEME MV453 :THEME MV459 :PAST "PAST")
 (:VAR MV453 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV459 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV457 :RAW-TEXT
  "regulation")
 (:VAR MV457 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
52: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e12   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?"
 (:VAR MV469 :ISA POLAR-QUESTION :STATEMENT MV464)
 (:VAR MV464 :ISA INVOLVE :THEME MV462 :THEME MV466 :PAST "PAST")
 (:VAR MV462 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV466 :ISA REGULATE :AFFECTED-PROCESS MV467 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV467 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
53: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV478 :ISA REGULATE :OBJECT MV474 :AGENT MV470 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV474 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV472 :RAW-TEXT
  "genes")
 (:VAR MV472 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV470 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
54: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes"
 (:VAR MV480 :ISA LIST :THEME MV484 :PRESENT "PRESENT")
 (:VAR MV484 :ISA GENE :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV482 :RAW-TEXT
  "genes")
 (:VAR MV482 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
55: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV494 :ISA INVOLVE :THEME MV487 :THEME MV493 :PRESENT "PRESENT")
 (:VAR MV487 :ISA GENE :PREDICATION MV488 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV488 :ISA REGULATE :OBJECT MV487 :AGENT MV485 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV485 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV493 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
56: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3"
 (:VAR MV498 :ISA LIST :THEME MV499 :PRESENT "PRESENT")
 (:VAR MV499 :ISA GENE :PREDICATION MV500 :RAW-TEXT "genes")
 (:VAR MV500 :ISA REGULATE :OBJECT MV499 :AGENT MV497 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV497 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
57: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV509 :ISA INVOLVE :THEME MV504 :THEME MV508 :PRESENT "PRESENT")
 (:VAR MV504 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV508 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
58: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV520 :ISA INVOLVE :THEME MV513 :THEME MV519 :PRESENT "PRESENT")
 (:VAR MV513 :ISA GENE :PREDICATION MV515 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV515 :ISA REGULATE :OBJECT MV513 :THAT-REL T :AGENT MV511 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV511 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV519 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
59: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3"
 (:VAR MV523 :ISA LIST :THEME MV525 :PRESENT "PRESENT")
 (:VAR MV525 :ISA GENE :PREDICATION MV526 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV526 :ISA REGULATE :OBJECT MV525 :AGENT MV522 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV522 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
60: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes"
 (:VAR MV530 :ISA LIST :THEME MV533 :PRESENT "PRESENT")
 (:VAR MV533 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV532 :RAW-TEXT
  "genes")
 (:VAR MV532 :ISA REGULATE :OBJECT MV533 :AGENT MV529 :RAW-TEXT "regulated")
 (:VAR MV529 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
61: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV540 :ISA REGULATE :OBJECT MV536 :AGENT MV534 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV536 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV534 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
62: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV548 :ISA INVOLVE :THEME MV543 :THEME MV547 :PRESENT "PRESENT")
 (:VAR MV543 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV547 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
63: "What STAT3 regulated genes are involved in aptosis"

                    SOURCE-START
e17   IN            1 "What STAT3 regulated genes are involved in aptosis" 10
                    END-OF-SOURCE
("What STAT3 regulated genes are involved in aptosis"
 (:VAR MV560 :ISA WH-QUESTION :STATEMENT MV559 :VAR NIL :WH WHAT)
 (:VAR MV559 :ISA PREPOSITIONAL-PHRASE :POBJ MV557 :PREP "IN")
 (:VAR MV557 :ISA APTOSIS))

___________________
64: "Let me know if any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e31   LET           1 "Let me know if any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know if any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV562 :ISA LET :COMPLEMENT MV579 :PRESENT "PRESENT")
 (:VAR MV579 :ISA KNOW :AGENT MV563 :STATEMENT MV578 :PRESENT "PRESENT")
 (:VAR MV563 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV578 :ISA WH-QUESTION :STATEMENT MV575 :WH IF)
 (:VAR MV575 :ISA INVOLVE :THEME MV569 :THEME MV574 :PRESENT "PRESENT")
 (:VAR MV569 :ISA GENE :QUANTIFIER MV566 :PREDICATION MV570 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV566 :ISA ANY :WORD "any")
 (:VAR MV570 :ISA REGULATE :OBJECT MV569 :AGENT MV561 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV561 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV574 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
65: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV581 :ISA LET :COMPLEMENT MV599 :PRESENT "PRESENT")
 (:VAR MV599 :ISA KNOW :AGENT MV582 :STATEMENT MV598 :PRESENT "PRESENT")
 (:VAR MV582 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV598 :ISA WH-QUESTION :STATEMENT MV595 :WH WHETHER)
 (:VAR MV595 :ISA INVOLVE :THEME MV589 :THEME MV594 :PRESENT "PRESENT")
 (:VAR MV589 :ISA GENE :QUANTIFIER MV586 :PREDICATION MV590 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV586 :ISA ANY :WORD "any")
 (:VAR MV590 :ISA REGULATE :OBJECT MV589 :AGENT MV580 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV580 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV594 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

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
 (:VAR MV629 :ISA TELL :THEME MV638 :BENEFICIARY MV630 :PRESENT "PRESENT")
 (:VAR MV638 :ISA WH-QUESTION :STATEMENT MV636 :WH IF)
 (:VAR MV636 :ISA INVOLVE :THEME MV628 :THEME MV635 :PRESENT "PRESENT")
 (:VAR MV628 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV635 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV630 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
69: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV640 :ISA TELL :THEME MV650 :THEME MV641 :PRESENT "PRESENT")
 (:VAR MV650 :ISA WH-QUESTION :STATEMENT MV648 :WH WHETHER)
 (:VAR MV648 :ISA INVOLVE :THEME MV639 :THEME MV647 :PRESENT "PRESENT")
 (:VAR MV639 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV647 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV641 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
70: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV653 :ISA BE :SUBJECT MV652 :PREDICATE MV655 :PRESENT "PRESENT")
 (:VAR MV652 :ISA WHAT)
 (:VAR MV655 :ISA GENE :PREDICATION MV661 :PREDICATION MV654 :RAW-TEXT "genes")
 (:VAR MV661 :ISA INVOLVE :THEME MV655 :THAT-REL T :THEME MV660 :PRESENT
  "PRESENT")
 (:VAR MV660 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV654 :ISA REGULATE :OBJECT MV655 :AGENT MV651 :RAW-TEXT "regulated")
 (:VAR MV651 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV665 :ISA BE :SUBJECT MV664 :PREDICATE MV667 :PRESENT "PRESENT")
 (:VAR MV664 :ISA WHAT)
 (:VAR MV667 :ISA GENE :PREDICATION MV673 :PREDICATION MV666 :RAW-TEXT "genes")
 (:VAR MV673 :ISA INVOLVE :THEME MV667 :THAT-REL T :THEME MV672 :PRESENT
  "PRESENT")
 (:VAR MV672 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV666 :ISA REGULATE :OBJECT MV667 :AGENT MV663 :RAW-TEXT "regulated")
 (:VAR MV663 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
72: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV685 :ISA INVOLVE :THEME MV678 :THEME MV684 :PRESENT "PRESENT")
 (:VAR MV678 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV675 :HAS-DETERMINER
  "WHAT" :MODIFIER MV677 :RAW-TEXT "downstream")
 (:VAR MV675 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV677 :ISA GENE :RAW-TEXT "genes")
 (:VAR MV684 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
73: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV690 :ISA BE :SUBJECT MV689 :PREDICATE MV692 :PRESENT "PRESENT")
 (:VAR MV689 :ISA WHAT)
 (:VAR MV692 :ISA INVOLVE :THEME MV697 :PARTICIPANT MV688 :HAS-DETERMINER
  "THE")
 (:VAR MV697 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV695 :RAW-TEXT
  "regulation")
 (:VAR MV695 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV688 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
74: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV702 :ISA INVOLVE :THEME MV701 :THEME MV703 :PRESENT "PRESENT")
 (:VAR MV701 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV703 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
75: "What processes involve srf"

                    SOURCE-START
e7    INVOLVE       1 "What processes involve srf" 5
                    END-OF-SOURCE
("What processes involve srf"
 (:VAR MV707 :ISA INVOLVE :THEME MV705 :THEME MV708 :PRESENT "PRESENT")
 (:VAR MV705 :ISA BIO-PROCESS :HAS-DETERMINER "WHAT" :RAW-TEXT "processes")
 (:VAR MV708 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
76: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV717 :ISA INVOLVE :THEME MV712 :THEME MV716 :PRESENT "PRESENT")
 (:VAR MV712 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV711 :RAW-TEXT
  "genes")
 (:VAR MV711 :ISA REGULATE :OBJECT MV712 :AGENT MV709 :RAW-TEXT "regulated")
 (:VAR MV709 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV716 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
77: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV730 :ISA INVOLVE :THEME MV722 :THEME MV729 :PRESENT "PRESENT")
 (:VAR MV722 :ISA GENE :ORGAN MV725 :HAS-DETERMINER "WHICH" :PREDICATION MV721
  :RAW-TEXT "genes")
 (:VAR MV725 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV721 :ISA REGULATE :OBJECT MV722 :AGENT MV719 :RAW-TEXT "regulated")
 (:VAR MV719 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV729 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
78: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3-regulated genes are involved in apoptosis?"
 (:VAR MV741 :ISA INVOLVE :THEME MV736 :THEME MV740 :PRESENT "PRESENT")
 (:VAR MV736 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV735 :RAW-TEXT
  "genes")
 (:VAR MV735 :ISA REGULATE :OBJECT MV736 :AGENT MV733 :RAW-TEXT "regulated")
 (:VAR MV733 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV740 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
79: "Mek activates MAPK1."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK1."
 (:VAR MV745 :ISA BIO-ACTIVATE :AGENT MV744 :OBJECT MV743 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV744 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV743 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
80: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV747 :ISA BIO-ACTIVATE :AGENT MV746 :OBJECT MV748 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV746 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV748 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV751 :ISA PHOSPHORYLATE :AGENT MV749 :SUBSTRATE MV750 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV749 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV750 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
82: "DUSP6 dephosphorylates MAPK1"

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1"
 (:VAR MV754 :ISA DEPHOSPHORYLATE :AGENT MV752 :SUBSTRATE MV753 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV752 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV753 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
83: "ELK1 positively regulates FOS."

                    SOURCE-START
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    PERIOD
                    END-OF-SOURCE
("ELK1 positively regulates FOS."
 (:VAR MV756 :ISA UPREGULATE :AGENT MV755 :OBJECT MV757 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV755 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV757 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
84: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV761 :ISA BINDING :BINDER MV760 :DIRECT-BINDEE MV764 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV760 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV764 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV759 :MODIFIER MV763
  :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV759 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV763 :ISA LIGAND :RAW-TEXT "ligand"))

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
 (:VAR MV771 :ISA BINDING :BINDER MV778 :DIRECT-BINDEE MV779 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV778 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF"
  :COMPONENT MV769 :COMPONENT MV768)
 (:VAR MV769 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV768 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV779 :ISA BIO-COMPLEX :QUANTIFIER MV772 :RAW-TEXT "EGFR-EGF" :COMPONENT
  MV774 :COMPONENT MV773)
 (:VAR MV772 :ISA ANOTHER :WORD "another")
 (:VAR MV774 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV773 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
87: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV785 :ISA BINDING :BINDER MV787 :DIRECT-BINDEE MV780 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV787 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR"
  :COMPONENT MV782 :COMPONENT MV782)
 (:VAR MV782 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV780 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

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
 (:VAR MV794 :ISA BINDING :BINDER MV790 :DIRECT-BINDEE MV791 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV790 :ISA PROTEIN :PREDICATION MV793 :RAW-TEXT "GRB2" :UID "UP:P62993"
  :NAME "GRB2_HUMAN")
 (:VAR MV793 :ISA BINDING :DIRECT-BINDEE MV790 :BINDER MV792 :RAW-TEXT "bound")
 (:VAR MV792 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV791 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN"))

___________________
90: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV798 :ISA BINDING :BINDER MV796 :DIRECT-BINDEE MV799 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV796 :ISA PROTEIN :PREDICATION MV797 :RAW-TEXT "SOS1" :UID "UP:Q07889"
  :NAME "SOS1_HUMAN")
 (:VAR MV797 :ISA BINDING :DIRECT-BINDEE MV796 :BINDER MV795 :RAW-TEXT "bound")
 (:VAR MV795 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV799 :ISA PROTEIN :PREDICATION MV806 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV806 :ISA BINDING :DIRECT-BINDEE MV799 :THAT-REL T :BINDEE MV805
  :PRESENT "PRESENT" :NEGATION MV802 :RAW-TEXT "bound")
 (:VAR MV805 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV802 :ISA NOT :WORD "not"))

___________________
91: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV811 :ISA BINDING :BINDER MV810 :DIRECT-BINDEE MV812 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV810 :ISA PROTEIN :PREDICATION MV809 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV809 :ISA BINDING :DIRECT-BINDEE MV810 :BINDER MV808 :RAW-TEXT "bound")
 (:VAR MV808 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV812 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
92: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV822 :ISA BINDING :BINDER MV816 :DIRECT-BINDEE MV823 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV816 :ISA PROTEIN :PREDICATION MV824 :PREDICATION MV815 :RAW-TEXT
  "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV824 :ISA BINDING :DIRECT-BINDEE MV816 :THAT-REL T :BINDEE MV813
  :PRESENT "PRESENT" :NEGATION MV819 :RAW-TEXT "bound")
 (:VAR MV813 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV819 :ISA NOT :WORD "not")
 (:VAR MV815 :ISA BINDING :DIRECT-BINDEE MV816 :BINDER MV814 :RAW-TEXT "bound")
 (:VAR MV814 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV823 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
93: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV826 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
94: "How does BRAF affect MAP2K1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAP2K1?"
 (:VAR MV831 :ISA AFFECT :MANNER MV828 :AGENT MV830 :OBJECT MV827 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV828 :ISA HOW)
 (:VAR MV830 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV827 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
95: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the downstream of AKT1."
 (:VAR MV840 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV834 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV834 :ISA HIGHLIGHT :THEME MV836 :PRESENT "PRESENT")
 (:VAR MV836 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV833 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV833 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
96: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    PERIOD
                    END-OF-SOURCE
("Let's move phosphorylated MAPK1 to the bottom."
 (:VAR MV849 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV843 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV843 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV847 :THEME MV842 :PRESENT
  "PRESENT")
 (:VAR MV847 :ISA BOTTOM :HAS-DETERMINER "THE")
 (:VAR MV842 :ISA PROTEIN :PREDICATION MV844 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV844 :ISA PHOSPHORYLATE :SUBSTRATE MV842 :RAW-TEXT "phosphorylated"))

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
 (:VAR MV866 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV861 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV861 :ISA SHOW :AT-RELATIVE-LOCATION MV864 :STATEMENT-OR-THEME MV860
  :PRESENT "PRESENT")
 (:VAR MV864 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV860 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
99: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease FOS in the model?"
 (:VAR MV877 :ISA POLAR-QUESTION :STATEMENT MV875)
 (:VAR MV875 :ISA DECREASE :AGENT MV867 :OBJECT MV871 :RAW-TEXT "decrease")
 (:VAR MV867 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV871 :ISA PROTEIN :INFO-CONTEXT MV874 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV874 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
100: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease the amount of FOS in the model?"
 (:VAR MV892 :ISA POLAR-QUESTION :STATEMENT MV889)
 (:VAR MV889 :ISA DECREASE :AGENT MV878 :AFFECTED-PROCESS-OR-OBJECT MV883
  :RAW-TEXT "decrease")
 (:VAR MV878 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV883 :ISA BIO-AMOUNT :MEASURED-ITEM MV885 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV885 :ISA PROTEIN :INFO-CONTEXT MV888 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV888 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
101: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS decrease ELK1 in the model?"
 (:VAR MV903 :ISA POLAR-QUESTION :STATEMENT MV901)
 (:VAR MV901 :ISA DECREASE :AGENT MV895 :OBJECT MV893 :RAW-TEXT "decrease")
 (:VAR MV895 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV893 :ISA PROTEIN :INFO-CONTEXT MV900 :RAW-TEXT "ELK1" :UID "UP:P19419"
  :NAME "ELK1_HUMAN")
 (:VAR MV900 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
102: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Does FOS vanish if we increase the amount " 9
e27   OF            9 "of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e34   S             1 "Does FOS vanish if we increase the amount " 9
e27   PP            9 "of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
103: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 " 12
e28   BY            12 "by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e37   S             1 "Does FOS vanish if we increase the amount of ELK1 " 12
e28   PP            12 "by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 " 11
e26   BY            11 "by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e33   S             1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 " 11
e26   PP            11 "by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 " 14
e32   BY            14 "by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e41   S             1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 " 14
e32   PP            14 "by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1007 :ISA POLAR-QUESTION :STATEMENT MV1005)
 (:VAR MV1005 :ISA INCREASE :CAUSE MV999 :ADVERB MV1002 :RAW-TEXT "increase")
 (:VAR MV999 :ISA BIO-AMOUNT :MEASURED-ITEM MV996 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV996 :ISA PROTEIN :PREDICATION MV1001 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1001 :ISA PHOSPHORYLATE :SUBSTRATE MV996 :RAW-TEXT "phosphorylated")
 (:VAR MV1002 :ISA EVER :NAME "ever"))

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
 (:VAR MV1029 :ISA POLAR-QUESTION :STATEMENT MV1028)
 (:VAR MV1028 :ISA SUSTAINED :PARTICIPANT MV1024 :PAST "PAST")
 (:VAR MV1024 :ISA PROTEIN :PREDICATION MV1026 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1026 :ISA BINDING :DIRECT-BINDEE MV1024 :BINDER MV1023 :RAW-TEXT
  "bound")
 (:VAR MV1023 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?"
 (:VAR MV1036 :ISA POLAR-QUESTION :STATEMENT MV1035)
 (:VAR MV1035 :ISA COPULAR-PREDICATION :ITEM MV1030 :VALUE MV1034 :PREDICATE
  MV1031)
 (:VAR MV1030 :ISA PROTEIN :PREDICATION MV1032 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1032 :ISA PHOSPHORYLATE :SUBSTRATE MV1030 :RAW-TEXT "phosphorylated")
 (:VAR MV1034 :ISA HIGH :ADVERB MV1033)
 (:VAR MV1033 :ISA ALWAYS :NAME "always") (:VAR MV1031 :ISA BE))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?"
 (:VAR MV1043 :ISA POLAR-QUESTION :STATEMENT MV1042)
 (:VAR MV1042 :ISA COPULAR-PREDICATION :ITEM MV1037 :VALUE MV1041 :PREDICATE
  MV1038)
 (:VAR MV1037 :ISA PROTEIN :PREDICATION MV1039 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1039 :ISA PHOSPHORYLATE :SUBSTRATE MV1037 :RAW-TEXT "phosphorylated")
 (:VAR MV1041 :ISA HIGH :ADVERB MV1040)
 (:VAR MV1040 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1038 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?"
 (:VAR MV1050 :ISA POLAR-QUESTION :STATEMENT MV1049)
 (:VAR MV1049 :ISA COPULAR-PREDICATION :ITEM MV1044 :VALUE MV1048 :PREDICATE
  MV1045)
 (:VAR MV1044 :ISA PROTEIN :PREDICATION MV1046 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1046 :ISA PHOSPHORYLATE :SUBSTRATE MV1044 :RAW-TEXT "phosphorylated")
 (:VAR MV1048 :ISA HIGH :ADVERB MV1047) (:VAR MV1047 :ISA EVER :NAME "ever")
 (:VAR MV1045 :ISA BE))

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
 (:VAR MV1066 :ISA POLAR-QUESTION :STATEMENT MV1065)
 (:VAR MV1065 :ISA COPULAR-PREDICATION :ITEM MV1061 :VALUE MV1064 :PREDICATE
  MV1062)
 (:VAR MV1061 :ISA PROTEIN :PREDICATION MV1063 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1063 :ISA PHOSPHORYLATE :SUBSTRATE MV1061 :RAW-TEXT "phosphorylated")
 (:VAR MV1064 :ISA HIGH) (:VAR MV1062 :ISA BE))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e19   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1077 :ISA POLAR-QUESTION :STATEMENT MV1071)
 (:VAR MV1071 :ISA SUSTAINED :PARTICIPANT MV1067 :LEVEL MV1075 :PAST "PAST")
 (:VAR MV1067 :ISA PROTEIN :PREDICATION MV1069 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1069 :ISA PHOSPHORYLATE :SUBSTRATE MV1067 :RAW-TEXT "phosphorylated")
 (:VAR MV1075 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1074 :RAW-TEXT
  "level")
 (:VAR MV1074 :ISA HIGH))

___________________
116: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?"
 (:VAR MV1083 :ISA POLAR-QUESTION :STATEMENT MV1082)
 (:VAR MV1082 :ISA SUSTAINED :PARTICIPANT MV1078 :PAST "PAST")
 (:VAR MV1078 :ISA PROTEIN :PREDICATION MV1080 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1080 :ISA PHOSPHORYLATE :SUBSTRATE MV1078 :RAW-TEXT "phosphorylated"))

___________________
117: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?"
 (:VAR MV1089 :ISA POLAR-QUESTION :STATEMENT MV1088)
 (:VAR MV1088 :ISA COPULAR-PREDICATION :ITEM MV1084 :VALUE MV1087 :PREDICATE
  MV1085)
 (:VAR MV1084 :ISA PROTEIN :PREDICATION MV1086 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1086 :ISA PHOSPHORYLATE :SUBSTRATE MV1084 :RAW-TEXT "phosphorylated")
 (:VAR MV1087 :ISA TRANSIENT) (:VAR MV1085 :ISA BE))

___________________
118: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?"
 (:VAR MV1100 :ISA POLAR-QUESTION :STATEMENT MV1099)
 (:VAR MV1099 :ISA COPULAR-PREDICATION :ITEM MV1098 :VALUE MV1096 :PREDICATE
  MV1092)
 (:VAR MV1098 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1091 :COMPONENT MV1090)
 (:VAR MV1091 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1090 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1096 :ISA HIGH :ADVERB MV1095) (:VAR MV1095 :ISA EVER :NAME "ever")
 (:VAR MV1092 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?"
 (:VAR MV1109 :ISA POLAR-QUESTION :STATEMENT MV1106)
 (:VAR MV1106 :ISA BIO-FORM :AGENT MV1108 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1108 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1102 :COMPONENT MV1101)
 (:VAR MV1102 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1101 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
120: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase " 11
e24   FOLD-ENDURANT 11 "ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e33   S             1 "Is the amount of FOS always low if we increase " 11
e24   NP            11 "ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
121: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 " 13
e26   BY            13 "by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e36   S             1 "Is the amount of FOS always low if we increase ELK1 " 13
e26   PP            13 "by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
122: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount " 13
e31   OF            13 "of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e41   S             1 "Is the amount of FOS ever high if we increase the amount " 13
e31   PP            13 "of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 " 16
e32   BY            16 "by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e44   S             1 "Is the amount of FOS ever high if we increase the amount of ELK1 " 16
e32   PP            16 "by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE


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
 (:VAR MV1230 :ISA POLAR-QUESTION :STATEMENT MV1229)
 (:VAR MV1229 :ISA COPULAR-PREDICATION :ITEM MV1223 :VALUE MV1227 :PREDICATE
  MV1221)
 (:VAR MV1223 :ISA BIO-AMOUNT :MEASURED-ITEM MV1220 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1220 :ISA PROTEIN :PREDICATION MV1225 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1225 :ISA PHOSPHORYLATE :SUBSTRATE MV1220 :RAW-TEXT "phosphorylated")
 (:VAR MV1227 :ISA HIGH :ADVERB MV1226)
 (:VAR MV1226 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1221 :ISA BE))

___________________
126: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1241 :ISA POLAR-QUESTION :STATEMENT MV1240)
 (:VAR MV1240 :ISA COPULAR-PREDICATION :ITEM MV1234 :VALUE MV1238 :PREDICATE
  MV1232)
 (:VAR MV1234 :ISA BIO-AMOUNT :MEASURED-ITEM MV1231 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1231 :ISA PROTEIN :PREDICATION MV1236 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1236 :ISA PHOSPHORYLATE :SUBSTRATE MV1231 :RAW-TEXT "phosphorylated")
 (:VAR MV1238 :ISA HIGH :ADVERB MV1237) (:VAR MV1237 :ISA EVER :NAME "ever")
 (:VAR MV1232 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1252 :ISA POLAR-QUESTION :STATEMENT MV1250)
 (:VAR MV1250 :ISA INCREASE :CAUSE MV1245 :ADVERB MV1248 :RAW-TEXT
  "increasing")
 (:VAR MV1245 :ISA BIO-AMOUNT :MEASURED-ITEM MV1242 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1242 :ISA PROTEIN :PREDICATION MV1247 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1247 :ISA PHOSPHORYLATE :SUBSTRATE MV1242 :RAW-TEXT "phosphorylated")
 (:VAR MV1248 :ISA EVER :NAME "ever"))

___________________
128: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?"
 (:VAR MV1262 :ISA POLAR-QUESTION :STATEMENT MV1261)
 (:VAR MV1261 :ISA COPULAR-PREDICATION :ITEM MV1256 :VALUE MV1259 :PREDICATE
  MV1254)
 (:VAR MV1256 :ISA BIO-AMOUNT :MEASURED-ITEM MV1253 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1253 :ISA PROTEIN :PREDICATION MV1258 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1258 :ISA PHOSPHORYLATE :SUBSTRATE MV1253 :RAW-TEXT "phosphorylated")
 (:VAR MV1259 :ISA HIGH) (:VAR MV1254 :ISA BE))

___________________
129: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1273 :ISA POLAR-QUESTION :STATEMENT MV1272)
 (:VAR MV1272 :ISA COPULAR-PREDICATION :ITEM MV1266 :VALUE MV1270 :PREDICATE
  MV1264)
 (:VAR MV1266 :ISA BIO-AMOUNT :MEASURED-ITEM MV1263 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1263 :ISA PROTEIN :PREDICATION MV1268 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1268 :ISA PHOSPHORYLATE :SUBSTRATE MV1263 :RAW-TEXT "phosphorylated")
 (:VAR MV1270 :ISA HIGH :ADVERB MV1269) (:VAR MV1269 :ISA SOMETIMES)
 (:VAR MV1264 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e27   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1288 :ISA POLAR-QUESTION :STATEMENT MV1281)
 (:VAR MV1281 :ISA SUSTAINED :PARTICIPANT MV1277 :LEVEL MV1285 :PAST "PAST")
 (:VAR MV1277 :ISA BIO-AMOUNT :MEASURED-ITEM MV1274 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1274 :ISA PROTEIN :PREDICATION MV1279 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1279 :ISA PHOSPHORYLATE :SUBSTRATE MV1274 :RAW-TEXT "phosphorylated")
 (:VAR MV1285 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1284 :RAW-TEXT
  "level")
 (:VAR MV1284 :ISA HIGH))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1298 :ISA POLAR-QUESTION :STATEMENT MV1296)
 (:VAR MV1296 :ISA SUSTAINED :PARTICIPANT MV1292 :PAST "PAST")
 (:VAR MV1292 :ISA BIO-AMOUNT :MEASURED-ITEM MV1289 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1289 :ISA PROTEIN :PREDICATION MV1294 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1294 :ISA PHOSPHORYLATE :SUBSTRATE MV1289 :RAW-TEXT "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1308 :ISA POLAR-QUESTION :STATEMENT MV1307)
 (:VAR MV1307 :ISA COPULAR-PREDICATION :ITEM MV1302 :VALUE MV1305 :PREDICATE
  MV1300)
 (:VAR MV1302 :ISA BIO-AMOUNT :MEASURED-ITEM MV1299 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1299 :ISA PROTEIN :PREDICATION MV1304 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1304 :ISA PHOSPHORYLATE :SUBSTRATE MV1299 :RAW-TEXT "phosphorylated")
 (:VAR MV1305 :ISA TRANSIENT) (:VAR MV1300 :ISA BE))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1319 :ISA POLAR-QUESTION :STATEMENT MV1317)
 (:VAR MV1317 :ISA COPULAR-PREDICATION :ITEM MV1312 :VALUE MV1316 :PREDICATE
  MV1315)
 (:VAR MV1312 :ISA BIO-AMOUNT :MEASURED-ITEM MV1309 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1309 :ISA PROTEIN :PREDICATION MV1314 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1314 :ISA PHOSPHORYLATE :SUBSTRATE MV1309 :RAW-TEXT "phosphorylated")
 (:VAR MV1316 :ISA HIGH) (:VAR MV1315 :ISA BE :MODAL "WILL"))

___________________
134: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount " 11
e26   OF            11 "of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e34   S             1 "is TGFBR1 eventually low if we increase the amount " 11
e26   PP            11 "of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
135: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e39   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased " 15
e30   BY            15 "by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e39   S             1 "is active TGFBR1 eventually low if the amount of SB525334 is increased " 15
e30   PP            15 "by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
136: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount " 14
e32   OF            14 "of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e42   S             1 "is the amount of TGFBR1 eventually low if we increase the amount " 14
e32   PP            14 "of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
137: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e44   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount " 15
e34   OF            15 "of SB-525334 100 fold" 21
                    END-OF-SOURCE
                    SOURCE-START
e44   S             1 "is the amount of active TGFBR1 always low if we increase the amount " 15
e34   PP            15 "of SB-525334 100 fold" 21
                    END-OF-SOURCE


___________________
138: "Let's move AKT1 and MAPK1 into mitochondrion."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:VAR MV1430 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1424 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1424 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1427 :THEME
  MV1428 :PRESENT "PRESENT")
 (:VAR MV1427 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1428 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1422 MV1423))
 (:VAR MV1422 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1423 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
139: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1433 :ISA PHOSPHORYLATE :AGENT MV1431 :SUBSTRATE MV1432 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1431 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME
  "FEN1_HUMAN")
 (:VAR MV1432 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
140: "Move all into mitochondrion."

                    SOURCE-START
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1434 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1437 :THEME
  MV1439 :PRESENT "PRESENT")
 (:VAR MV1437 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1439 :ISA ALL :WORD "all"))

___________________
141: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1442 :ISA PHOSPHORYLATE :AGENT MV1440 :SUBSTRATE MV1441 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1440 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1441 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
142: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1452 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1445 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1445 :ISA HIGHLIGHT :THEME MV1447 :PRESENT "PRESENT")
 (:VAR MV1447 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1444 :HAS-DETERMINER
  "THE" :RAW-TEXT "upstream")
 (:VAR MV1444 :ISA PROTEIN :PREDICATION MV1450 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1450 :ISA PHOSPHORYLATE :SUBSTRATE MV1444 :RAW-TEXT "phosphorylated"))

___________________
143: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1461 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1455 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1455 :ISA SHOW :AT-RELATIVE-LOCATION MV1459 :STATEMENT-OR-THEME MV1454
  :PRESENT "PRESENT")
 (:VAR MV1459 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1454 :ISA PROTEIN :PREDICATION MV1456 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1456 :ISA PHOSPHORYLATE :SUBSTRATE MV1454 :RAW-TEXT "phosphorylated"))

___________________
144: "Let's show the downstream of AKT1 on the top."

                    SOURCE-START
e23   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    PERIOD
                    END-OF-SOURCE
("Let's show the downstream of AKT1 on the top."
 (:VAR MV1474 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1464 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1464 :ISA SHOW :AT-RELATIVE-LOCATION MV1471 :STATEMENT-OR-THEME MV1466
  :PRESENT "PRESENT")
 (:VAR MV1471 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1466 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1463 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV1463 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
145: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1483 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1476 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1476 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV1481 :THEME MV1478 :PRESENT
  "PRESENT")
 (:VAR MV1481 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1478 :ISA ELEMENT :MODIFIER MV1477)
 (:VAR MV1477 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173"))

___________________
146: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1488 :ISA AFFECT :MANNER MV1485 :AGENT MV1487 :OBJECT MV1484 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1485 :ISA HOW)
 (:VAR MV1487 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1484 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
147: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1492 :ISA AFFECT :MANNER MV1490 :AGENT MV1489 :OBJECT MV1493 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1490 :ISA HOW)
 (:VAR MV1489 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1493 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
148: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1496 :ISA BE :SUBJECT MV1495 :PREDICATE MV1498 :PRESENT "PRESENT")
 (:VAR MV1495 :ISA WHAT)
 (:VAR MV1498 :ISA PATH :ENDPOINTS MV1502 :HAS-DETERMINER "THE")
 (:VAR MV1502 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1500 MV1494))
 (:VAR MV1500 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1494 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
149: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1507 :ISA AFFECT :MANNER MV1505 :AGENT MV1504 :OBJECT MV1508 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1505 :ISA HOW)
 (:VAR MV1504 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1508 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME
  "JUND_HUMAN"))

___________________
150: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1513 :ISA AFFECT :MANNER MV1511 :AGENT MV1509 :OBJECT MV1510 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1511 :ISA HOW)
 (:VAR MV1509 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME
  "SETB1_HUMAN")
 (:VAR MV1510 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME
  "ADA17_HUMAN"))

___________________
151: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1518 :ISA AFFECT :MANNER MV1515 :AGENT MV1517 :OBJECT MV1514 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1515 :ISA HOW)
 (:VAR MV1517 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1514 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
152: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1522 :ISA AFFECT :MANNER MV1519 :AGENT MV1521 :OBJECT MV1523 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1519 :ISA HOW)
 (:VAR MV1521 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME
  "ITAV_HUMAN")
 (:VAR MV1523 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
153: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does MAPK1 phosphorylate?"
 (:VAR MV1528 :ISA PHOSPHORYLATE :AMINO-ACID MV1526 :AGENT MV1524 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV1526 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1524 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
154: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1531 :ISA AFFECT :AGENT MV1530 :OBJECT MV1532 :PRESENT "PRESENT"
  :RAW-TEXT "affect")
 (:VAR MV1530 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1532 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
155: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1535 :ISA BIO-ACTIVATE :AGENT MV1534 :OBJECT MV1536 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV1534 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1536 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
156: "Let's learn about AKT1 in ovarian cancer."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's learn about AKT1 in ovarian cancer" 11
                    PERIOD
                    END-OF-SOURCE
("Let's learn about AKT1 in ovarian cancer."
 (:VAR MV1545 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1540 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1540 :ISA LEARNING :STATEMENT MV1538 :PRESENT "PRESENT")
 (:VAR MV1538 :ISA PROTEIN :CONTEXT MV1539 :RAW-TEXT "AKT1" :UID "UP:P31749"
  :NAME "AKT1_HUMAN")
 (:VAR MV1539 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223"))

___________________
157: "What is its relationship with BRAF?"

                    SOURCE-START
e10   BE            1 "What is its relationship with BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with BRAF?"
 (:VAR MV1547 :ISA BE :SUBJECT MV1546 :PREDICATE MV1549 :PRESENT "PRESENT")
 (:VAR MV1546 :ISA WHAT)
 (:VAR MV1549 :ISA RELATIONSHIP :PATIENT MV1551 :MODIFIER MV1548)
 (:VAR MV1551 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1548 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
158: "What is its relationship with PTPN1?"

                    SOURCE-START
e11   BE            1 "What is its relationship with PTPN1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with PTPN1?"
 (:VAR MV1555 :ISA BE :SUBJECT MV1554 :PREDICATE MV1557 :PRESENT "PRESENT")
 (:VAR MV1554 :ISA WHAT)
 (:VAR MV1557 :ISA RELATIONSHIP :PATIENT MV1553 :MODIFIER MV1556)
 (:VAR MV1553 :ISA PROTEIN :RAW-TEXT "PTPN1" :UID "UP:P18031" :NAME
  "PTN1_HUMAN")
 (:VAR MV1556 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
159: "AKT1 phosphorylates IFT140. "

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates IFT140."
 (:VAR MV1562 :ISA PHOSPHORYLATE :AGENT MV1560 :SUBSTRATE MV1561 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1560 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1561 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME
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
 (:VAR MV1581 :ISA BE :SUBJECT MV1580 :PREDICATE MV1584 :PRESENT "PRESENT")
 (:VAR MV1580 :ISA WHAT)
 (:VAR MV1584 :ISA RESPONSE :BENEFICIARY MV1586 :HAS-DETERMINER "THE" :MODIFIER
  MV1583 :RAW-TEXT "response")
 (:VAR MV1586 :ISA CELL-TYPE :MUTATION MV1588)
 (:VAR MV1588 :ISA ALTER :OBJECT MV1579 :AGENT-OR-OBJECT MV1579 :RAW-TEXT
  "alterations")
 (:VAR MV1579 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1583 :ISA DRUG :RAW-TEXT "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1593 :ISA BE :SUBJECT MV1592 :PREDICATE MV1596 :PRESENT "PRESENT")
 (:VAR MV1592 :ISA WHAT)
 (:VAR MV1596 :ISA RESPONSE :CELL-TYPE MV1598 :HAS-DETERMINER "THE" :MODIFIER
  MV1595 :RAW-TEXT "response")
 (:VAR MV1598 :ISA CELL-TYPE :MUTATION MV1600)
 (:VAR MV1600 :ISA ALTER :OBJECT MV1591 :AGENT-OR-OBJECT MV1591 :RAW-TEXT
  "alterations")
 (:VAR MV1591 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1595 :ISA DRUG :RAW-TEXT "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1604 :ISA BE :SUBJECT MV1603 :PREDICATE MV1607 :PRESENT "PRESENT")
 (:VAR MV1603 :ISA WHAT)
 (:VAR MV1607 :ISA FREQUENCY :MEASURED-ITEM MV1609 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1606 :RAW-TEXT "frequency")
 (:VAR MV1609 :ISA PROTEIN :CONTEXT MV1611 :RAW-TEXT "EGFR" :UID "UP:P00533"
  :NAME "EGFR_HUMAN")
 (:VAR MV1611 :ISA GLIOBLASTOMA)
 (:VAR MV1606 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1617 :ISA BE :SUBJECT MV1616 :PREDICATE MV1620 :PRESENT "PRESENT")
 (:VAR MV1616 :ISA WHAT)
 (:VAR MV1620 :ISA FREQUENCY :MEASURED-ITEM MV1614 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1619 :RAW-TEXT "frequency")
 (:VAR MV1614 :ISA PROTEIN :CONTEXT MV1615 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1615 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1619 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1626 :ISA SHOW :STATEMENT-OR-THEME MV1629 :BENEFICIARY MV1627 :PRESENT
  "PRESENT")
 (:VAR MV1629 :ISA MUTATION :OBJECT MV1635 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1635 :ISA COLLECTION :CONTEXT MV1625 :RAW-TEXT "PTEN and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV1631 MV1633))
 (:VAR MV1625 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1631 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1633 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1627 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1639 :ISA SHOW :STATEMENT-OR-THEME MV1642 :BENEFICIARY MV1640 :PRESENT
  "PRESENT")
 (:VAR MV1642 :ISA MUTATION :OBJECT MV1644 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1644 :ISA PROTEIN :CONTEXT MV1638 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1638 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1640 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1650 :ISA BE :SUBJECT MV1649 :PREDICATE MV1652 :PRESENT "PRESENT")
 (:VAR MV1649 :ISA WHAT)
 (:VAR MV1652 :ISA MUTATION :OBJECT MV1654 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1654 :ISA PROTEIN :CONTEXT MV1648 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1648 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1660 :ISA BE :SUBJECT MV1659 :PREDICATE MV1672 :PRESENT "PRESENT")
 (:VAR MV1659 :ISA WHAT)
 (:VAR MV1672 :ISA QUALITY-PREDICATE :ITEM MV1670 :ATTRIBUTE MV1666)
 (:VAR MV1670 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1658 MV1669))
 (:VAR MV1658 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1669 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1666 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1664
  :MODIFIER MV1665)
 (:VAR MV1664 :ISA LIKELY :COMPARATIVE MV1662)
 (:VAR MV1662 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV1665 :ISA CELLULAR :NAME "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1685 :ISA POLAR-QUESTION :STATEMENT MV1682)
 (:VAR MV1682 :ISA THERE-EXISTS :VALUE MV1678 :PREDICATE MV1675)
 (:VAR MV1678 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1683 :PREDICATION
  MV1677 :RAW-TEXT "upstreams")
 (:VAR MV1683 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1673 MV1681))
 (:VAR MV1673 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1681 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1677 :ISA COMMON) (:VAR MV1675 :ISA SYNTACTIC-THERE))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1689 :ISA BE :SUBJECT MV1688 :PREDICATE MV1692 :PRESENT "PRESENT")
 (:VAR MV1688 :ISA WHAT)
 (:VAR MV1692 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1696 :HAS-DETERMINER
  "THE" :PREDICATION MV1691 :RAW-TEXT "upstreams")
 (:VAR MV1696 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1686 MV1694 MV1687))
 (:VAR MV1686 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1694 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1687 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1691 :ISA COMMON))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV1708 :ISA COPULAR-PREDICATION :ITEM MV1702 :VALUE MV1698 :PREDICATE
  MV1703)
 (:VAR MV1702 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1698 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV1700 :ALTERNATIVE MV1699)
 (:VAR MV1700 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1699 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV1703 :ISA BE :PRESENT "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:VAR MV1713 :ISA BE :SUBJECT MV1712 :PREDICATE MV1720 :PRESENT "PRESENT")
 (:VAR MV1712 :ISA WHAT)
 (:VAR MV1720 :ISA GENE :DISEASE MV1711 :HAS-DETERMINER "THE" :PREDICATION
  MV1709 :RAW-TEXT "genes")
 (:VAR MV1711 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1709 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV1710)
 (:VAR MV1710 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1724 :ISA BE :SUBJECT MV1723 :PREDICATE MV1727 :PRESENT "PRESENT")
 (:VAR MV1723 :ISA WHAT)
 (:VAR MV1727 :ISA SIGNIFICANCE :RESULT MV1722 :AGENT MV1721 :HAS-DETERMINER
  "THE" :MODIFIER MV1726)
 (:VAR MV1722 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV1721 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1726 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1735 :ISA BE :SUBJECT MV1734 :PREDICATE MV1738 :PRESENT "PRESENT")
 (:VAR MV1734 :ISA WHAT)
 (:VAR MV1738 :ISA SIGNIFICANCE :AGENT MV1732 :HAS-DETERMINER "THE" :MODIFIER
  MV1737)
 (:VAR MV1732 :ISA PROTEIN :CONTEXT MV1733 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1733 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1737 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1744 :ISA BE :SUBJECT MV1743 :PREDICATE MV1747 :PRESENT "PRESENT")
 (:VAR MV1743 :ISA WHAT)
 (:VAR MV1747 :ISA SIGNIFICANCE :AGENT MV1749 :HAS-DETERMINER "THE" :MODIFIER
  MV1746)
 (:VAR MV1749 :ISA PROTEIN :CONTEXT MV1752 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1752 :ISA CANCER :ORGAN MV1751 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1751 :ISA PANCREAS) (:VAR MV1746 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1756 :ISA BE :SUBJECT MV1755 :PREDICATE MV1759 :PRESENT "PRESENT")
 (:VAR MV1755 :ISA WHAT)
 (:VAR MV1759 :ISA SIGNIFICANCE :AGENT MV1761 :HAS-DETERMINER "THE" :MODIFIER
  MV1758)
 (:VAR MV1761 :ISA PROTEIN :CONTEXT MV1764 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV1764 :ISA CANCER :MODIFIER MV1763 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1763 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME
  "KLK2_HUMAN")
 (:VAR MV1758 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1768 :ISA PHOSPHORYLATE :AGENT MV1767 :SUBSTRATE MV1769 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1767 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1769 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV1771 :ISA BINDING :BINDER MV1770 :DIRECT-BINDEE MV1772 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1770 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1772 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1778 :ISA BINDING :BINDER MV1774 :DIRECT-BINDEE MV1773 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1774 :ISA PROTEIN :PREDICATION MV1775 :RAW-TEXT "EGFR" :UID
  "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1775 :ISA BINDING :DIRECT-BINDEE MV1774 :BINDEE MV1777 :PAST "PAST"
  :RAW-TEXT "bound")
 (:VAR MV1777 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1773 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1784 :ISA COPULAR-PREDICATION :ITEM MV1781 :VALUE MV1783 :PREDICATE
  MV1782)
 (:VAR MV1781 :ISA PROTEIN-FAMILY :PREDICATION MV1780 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1780 :ISA PHOSPHORYLATE :SUBSTRATE MV1781 :RAW-TEXT "Phosphorylated")
 (:VAR MV1783 :ISA ACTIVE) (:VAR MV1782 :ISA BE :PRESENT "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1785 :ISA PROTEIN :PREDICATION MV1787 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1787 :ISA PHOSPHORYLATE :SUBSTRATE MV1785 :TARGET MV1786 :PAST "PAST"
  :RAW-TEXT "phosphorylated")
 (:VAR MV1786 :ISA PROTEIN :SITE MV1792 :MODIFIER MV1793 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1792 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1791
  :AMINO-ACID MV1790)
 (:VAR MV1791 :ISA NUMBER :VALUE 220)
 (:VAR MV1790 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1793 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1798 :ISA TRANSCRIBE :AGENT MV1795 :OBJECT MV1796 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV1795 :ISA PROTEIN :PREDICATION MV1797 :RAW-TEXT "TP53" :UID
  "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1797 :ISA ACTIVE)
 (:VAR MV1796 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 " 16
e32   BY            16 "by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e44   S             1 "Is the amount of FOS ever high if we increase the amount of ELK1 " 16
e32   PP            16 "by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1838 :ISA POLAR-QUESTION :STATEMENT MV1836)
 (:VAR MV1836 :ISA DECREASE :AGENT MV1828 :OBJECT MV1832 :RAW-TEXT "decrease")
 (:VAR MV1828 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1832 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1835 :PREDICATION MV1831
  :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1835 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1831 :ISA PHOSPHORYLATE :SUBSTRATE MV1832 :RAW-TEXT "phosphorylated"))

___________________
186: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?"
 (:VAR MV1849 :ISA POLAR-QUESTION :STATEMENT MV1847)
 (:VAR MV1847 :ISA DECREASE :AGENT MV1840 :OBJECT MV1843 :RAW-TEXT "decrease")
 (:VAR MV1840 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV1843 :ISA PROTEIN :INFO-CONTEXT MV1846 :RAW-TEXT "JUN" :UID
  "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1846 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
187: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1854 :ISA REGULATE :MANNER MV1851 :AGENT MV1853 :OBJECT MV1850
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV1851 :ISA HOW)
 (:VAR MV1853 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1850 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1859 :ISA BIO-ACTIVATE :MANNER MV1856 :AGENT MV1858 :OBJECT MV1855
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV1856 :ISA HOW)
 (:VAR MV1858 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1855 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?"
 (:VAR MV1865 :ISA POLAR-QUESTION :STATEMENT MV1864)
 (:VAR MV1864 :ISA INHIBIT :AGENT MV1861 :OBJECT MV1863 :RAW-TEXT "inhibit")
 (:VAR MV1861 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1863 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1876 :ISA SHARE :OBJECT MV1866 :PARTICIPANT MV1875 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV1866 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1875 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1872 MV1873 MV1867))
 (:VAR MV1872 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1873 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1867 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
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
 (:VAR MV1888 :ISA BE :SUBJECT MV1887 :PREDICATE MV1889 :PRESENT "PRESENT")
 (:VAR MV1887 :ISA WHAT)
 (:VAR MV1889 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1886 :RAW-TEXT
  "upstream")
 (:VAR MV1886 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME
  "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1897 :ISA WANT :AGENT MV1894 :THEME MV1905 :PRESENT "PRESENT")
 (:VAR MV1894 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1905 :ISA BIO-FIND :AGENT MV1894 :OBJECT MV1902 :PRESENT "PRESENT"
  :RAW-TEXT "find")
 (:VAR MV1902 :ISA TREATMENT :DISEASE MV1893 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV1893 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
194: "What drug could I use?"

                    SOURCE-START
e11   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV1914 :ISA BIO-USE :OBJECT MV1907 :MODAL MV1908 :AGENT MV1909 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV1907 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV1908 :ISA COULD) (:VAR MV1909 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1924 :ISA POLAR-QUESTION :STATEMENT MV1922)
 (:VAR MV1922 :ISA THERE-EXISTS :VALUE MV1919 :PREDICATE MV1916)
 (:VAR MV1919 :ISA DRUG :TARGET MV1921 :QUANTIFIER MV1918 :RAW-TEXT "drugs")
 (:VAR MV1921 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1918 :ISA ANY :WORD "any") (:VAR MV1916 :ISA SYNTACTIC-THERE))

___________________
196: "Are they kinases?"

                    SOURCE-START
e5    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are they kinases?" (:VAR MV1928 :ISA POLAR-QUESTION :STATEMENT MV1925)
 (:VAR MV1925 :ISA BE :SUBJECT MV1926 :PREDICATE MV1927)
 (:VAR MV1926 :ISA PRONOUN/PLURAL :WORD "they")
 (:VAR MV1927 :ISA KINASE :RAW-TEXT "kinases"))

___________________
197: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV1938 :ISA POLAR-QUESTION :STATEMENT MV1932)
 (:VAR MV1932 :ISA BIO-FIND :AGENT MV1930 :OBJECT MV1934 :MODAL "CAN" :RAW-TEXT
  "find")
 (:VAR MV1930 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1934 :ISA DRUG :TARGET MV1936 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1936 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1956 :ISA POLAR-QUESTION :STATEMENT MV1943)
 (:VAR MV1943 :ISA TELL :AGENT MV1942 :THEME MV1939 :BENEFICIARY MV1944 :MODAL
  "CAN")
 (:VAR MV1942 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1939 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1954 :QUANTIFIER MV1945
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1954 :ISA SHARE :OBJECT MV1939 :THAT-REL T :PARTICIPANT MV1953 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV1953 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1940 MV1952))
 (:VAR MV1940 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1952 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1945 :ISA ALL :WORD "all")
 (:VAR MV1944 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1972 :ISA POLAR-QUESTION :STATEMENT MV1961)
 (:VAR MV1961 :ISA TELL :AGENT MV1960 :THEME MV1970 :THEME MV1962 :MODAL "CAN")
 (:VAR MV1960 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1970 :ISA SHARE :OBJECT MV1957 :PARTICIPANT MV1969 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV1957 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1969 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1958 MV1968))
 (:VAR MV1958 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1968 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1962 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV1983 :ISA POLAR-QUESTION :STATEMENT MV1982)
 (:VAR MV1982 :ISA KNOW :AGENT MV1974 :STATEMENT MV1977)
 (:VAR MV1974 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1977 :ISA DRUG :TARGET MV1979 :QUANTIFIER MV1976 :RAW-TEXT "drugs")
 (:VAR MV1979 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1976 :ISA ANY :WORD "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV1995 :ISA POLAR-QUESTION :STATEMENT MV1993)
 (:VAR MV1993 :ISA REGULATE :AGENT MV1984 :OBJECT MV1989 :RAW-TEXT "regulate")
 (:VAR MV1984 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1989 :ISA GENE :ORGAN MV1992 :HAS-DETERMINER "THE" :EXPRESSES MV1988
  :RAW-TEXT "gene")
 (:VAR MV1992 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV1988 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV2006 :ISA POLAR-QUESTION :STATEMENT MV2004)
 (:VAR MV2004 :ISA REGULATE :AGENT MV1996 :OBJECT MV2001 :RAW-TEXT "regulate")
 (:VAR MV1996 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2001 :ISA GENE :ORGAN MV2003 :HAS-DETERMINER "THE" :EXPRESSES MV1997
  :RAW-TEXT "gene")
 (:VAR MV2003 :ISA LIVER)
 (:VAR MV1997 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV2014 :ISA POLAR-QUESTION :STATEMENT MV2013)
 (:VAR MV2013 :ISA REGULATE :AGENT MV2007 :OBJECT MV2012 :RAW-TEXT "regulate")
 (:VAR MV2007 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2012 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2008 :RAW-TEXT
  "gene")
 (:VAR MV2008 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2026 :ISA POLAR-QUESTION :STATEMENT MV2024)
 (:VAR MV2024 :ISA REGULATE :AGENT MV2015 :OBJECT MV2020 :RAW-TEXT "regulate")
 (:VAR MV2015 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2020 :ISA GENE :ORGAN MV2023 :HAS-DETERMINER "THE" :EXPRESSES MV2019
  :RAW-TEXT "gene")
 (:VAR MV2023 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2019 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2033 :ISA POLAR-QUESTION :STATEMENT MV2032)
 (:VAR MV2032 :ISA TARGET :AGENT MV2027 :OBJECT MV2028 :RAW-TEXT "target")
 (:VAR MV2027 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2028 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV2040 :ISA POLAR-QUESTION :STATEMENT MV2039)
 (:VAR MV2039 :ISA TARGET :AGENT MV2034 :OBJECT MV2035 :RAW-TEXT "target")
 (:VAR MV2034 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV2035 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV2047 :ISA POLAR-QUESTION :STATEMENT MV2046)
 (:VAR MV2046 :ISA TARGET :AGENT MV2041 :OBJECT MV2042 :RAW-TEXT "target")
 (:VAR MV2041 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV2042 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV2054 :ISA POLAR-QUESTION :STATEMENT MV2053)
 (:VAR MV2053 :ISA TARGET :AGENT MV2048 :OBJECT MV2049 :RAW-TEXT "target")
 (:VAR MV2048 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV2049 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV2063 :ISA POLAR-QUESTION :STATEMENT MV2061)
 (:VAR MV2061 :ISA REGULATE :AGENT MV2055 :OBJECT MV2060 :RAW-TEXT "regulate")
 (:VAR MV2055 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2060 :ISA BIO-ENTITY :ORGAN MV2059 :NAME "cfors")
 (:VAR MV2059 :ISA LIVER))

___________________
210: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV2072 :ISA POLAR-QUESTION :STATEMENT MV2070)
 (:VAR MV2070 :ISA REGULATE :AGENT MV2064 :OBJECT MV2067 :RAW-TEXT "regulate")
 (:VAR MV2064 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2067 :ISA PROTEIN :ORGAN MV2069 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2069 :ISA LIVER))

___________________
211: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV2081 :ISA POLAR-QUESTION :STATEMENT MV2079)
 (:VAR MV2079 :ISA REGULATE :AGENT-OR-CAUSE MV2074 :OBJECT MV2076 :RAW-TEXT
  "regulate")
 (:VAR MV2074 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2076 :ISA PROTEIN :ORGAN MV2078 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2078 :ISA BRAIN))

___________________
212: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV2087 :ISA POLAR-QUESTION :STATEMENT MV2086)
 (:VAR MV2086 :ISA REGULATE :AGENT MV2082 :OBJECT MV2085 :RAW-TEXT "regulate")
 (:VAR MV2082 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2085 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2099 :ISA POLAR-QUESTION :STATEMENT MV2097)
 (:VAR MV2097 :ISA REGULATE :AGENT MV2088 :OBJECT MV2093 :RAW-TEXT "regulate")
 (:VAR MV2088 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2093 :ISA GENE :CELL-TYPE MV2096 :HAS-DETERMINER "THE" :EXPRESSES
  MV2092 :RAW-TEXT "gene")
 (:VAR MV2096 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2095)
 (:VAR MV2095 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2092 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV2109 :ISA POLAR-QUESTION :STATEMENT MV2108)
 (:VAR MV2108 :ISA UTILIZE :PARTICIPANT MV2105 :OBJECT MV2100 :RAW-TEXT
  "utilize")
 (:VAR MV2105 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2107 :RAW-TEXT
  "pathway")
 (:VAR MV2107 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2100 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV2119 :ISA POLAR-QUESTION :STATEMENT MV2118)
 (:VAR MV2118 :ISA UTILIZE :PARTICIPANT MV2116 :OBJECT MV2110 :RAW-TEXT
  "utilize")
 (:VAR MV2116 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2113 :RAW-TEXT
  "pathway")
 (:VAR MV2113 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV2110 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2121 :ISA GIVE :THEME MV2128 :BENEFICIARY MV2122 :PRESENT "PRESENT")
 (:VAR MV2128 :ISA EVIDENCE :STATEMENT MV2127 :HAS-DETERMINER "THE")
 (:VAR MV2127 :ISA DECREASE :AGENT MV2126 :OBJECT MV2120 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2126 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2120 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2122 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2130 :ISA GIVE :THEME MV2137 :BENEFICIARY MV2131 :PRESENT "PRESENT")
 (:VAR MV2137 :ISA EVIDENCE :STATEMENT MV2136 :HAS-DETERMINER "THE")
 (:VAR MV2136 :ISA REGULATE :AGENT MV2135 :OBJECT MV2129 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2135 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2129 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2131 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?" (:VAR MV2142 :ISA POLAR-QUESTION :STATEMENT MV2138)
 (:VAR MV2138 :ISA BE :SUBJECT MV2139 :PREDICATE MV2141)
 (:VAR MV2139 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2141 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e10   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV2149 :ISA POLAR-QUESTION :STATEMENT MV2145)
 (:VAR MV2145 :ISA INHIBIT :OBJECT MV2143 :AGENT MV2147 :PAST "PAST" :RAW-TEXT
  "inhibited")
 (:VAR MV2143 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV2147 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2158 :ISA POLAR-QUESTION :STATEMENT MV2153)
 (:VAR MV2153 :ISA BE :SUBJECT MV2150 :PREDICATE MV2151)
 (:VAR MV2150 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2151 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV2156 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV2156 :ISA GENE :EXPRESSES MV2152 :RAW-TEXT "gene")
 (:VAR MV2152 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
221: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2173 :ISA POLAR-QUESTION :STATEMENT MV2161)
 (:VAR MV2161 :ISA BE :SUBJECT MV2159 :PREDICATE MV2167)
 (:VAR MV2159 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2167 :ISA REGULATOR :QUANTIFIER MV2164 :THEME MV2170 :HAS-DETERMINER
  "THE" :RAW-TEXT "regulators")
 (:VAR MV2164 :ISA NUMBER :VALUE 1)
 (:VAR MV2170 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2160 :RAW-TEXT
  "gene")
 (:VAR MV2160 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
222: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e13   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV2181 :ISA POLAR-QUESTION :STATEMENT MV2175)
 (:VAR MV2175 :ISA BE :SUBJECT MV2176 :PREDICATE MV2178)
 (:VAR MV2176 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV2178 :ISA INHIBITOR :PROTEIN MV2174 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV2174 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2189 :ISA POLAR-QUESTION :STATEMENT MV2182)
 (:VAR MV2182 :ISA BE :SUBJECT MV2183 :PREDICATE MV2185)
 (:VAR MV2183 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV2185 :ISA INHIBITOR :TARGET-OR-PROTEIN MV2187 :HAS-DETERMINER "AN"
  :RAW-TEXT "inhibitor")
 (:VAR MV2187 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
224: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase" (:VAR MV2194 :ISA POLAR-QUESTION :STATEMENT MV2190)
 (:VAR MV2190 :ISA BE :SUBJECT MV2193 :PREDICATE MV2192)
 (:VAR MV2193 :ISA BIO-ENTITY :NAME "fakeprotein")
 (:VAR MV2192 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
225: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase" (:VAR MV2199 :ISA POLAR-QUESTION :STATEMENT MV2196)
 (:VAR MV2196 :ISA BE :SUBJECT MV2195 :PREDICATE MV2198)
 (:VAR MV2195 :ISA PROTEIN :RAW-TEXT "hmga2" :UID "UP:P52926" :NAME
  "HMGA2_HUMAN")
 (:VAR MV2198 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
226: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2206 :ISA POLAR-QUESTION :STATEMENT MV2201)
 (:VAR MV2201 :ISA BE :SUBJECT MV2200 :PREDICATE MV2205)
 (:VAR MV2200 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2205 :ISA REGULATOR :HAS-DETERMINER "AN" :CELLULAR-PROCESS MV2203
  :RAW-TEXT "regulator")
 (:VAR MV2203 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e15   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV2217 :ISA POLAR-QUESTION :STATEMENT MV2216)
 (:VAR MV2216 :ISA INVOLVE :THEME MV2207 :CONTEXT MV2214 :PAST "PAST")
 (:VAR MV2207 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2214 :ISA PATHWAY :QUANTIFIER MV2211 :CELLULAR-PROCESS MV2212
  :RAW-TEXT "pathways")
 (:VAR MV2211 :ISA ANY :WORD "any")
 (:VAR MV2212 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV2226 :ISA POLAR-QUESTION :STATEMENT MV2220)
 (:VAR MV2220 :ISA INVOLVE :THEME MV2218 :THEME MV2224 :PAST "PAST")
 (:VAR MV2218 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2224 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV2222 :RAW-TEXT
  "regulation")
 (:VAR MV2222 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e12   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV2234 :ISA POLAR-QUESTION :STATEMENT MV2229)
 (:VAR MV2229 :ISA INVOLVE :THEME MV2227 :THEME MV2231 :PAST "PAST")
 (:VAR MV2227 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2231 :ISA REGULATE :AFFECTED-PROCESS MV2232 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV2232 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2239 :ISA PHOSPHORYLATE :AMINO-ACID MV2236 :AGENT MV2238 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV2236 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2238 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV2248 :ISA POLAR-QUESTION :STATEMENT MV2240)
 (:VAR MV2240 :ISA BE :SUBJECT MV2245 :PREDICATE MV2247)
 (:VAR MV2245 :ISA NUMBER :QUANTIFIER MV2242 :VALUE 1)
 (:VAR MV2242 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV2247 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
232: "Is there a drug that targets BRAF?"

                    SOURCE-START
e19   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2259 :ISA POLAR-QUESTION :STATEMENT MV2258)
 (:VAR MV2258 :ISA THERE-EXISTS :VALUE MV2253 :PREDICATE MV2250)
 (:VAR MV2253 :ISA DRUG :PREDICATION MV2256 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV2256 :ISA TARGET :AGENT MV2253 :THAT-REL T :OBJECT MV2257 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV2257 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2250 :ISA SYNTACTIC-THERE))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2272 :ISA POLAR-QUESTION :STATEMENT MV2270)
 (:VAR MV2270 :ISA THERE-EXISTS :VALUE MV2267 :PREDICATE MV2262)
 (:VAR MV2267 :ISA PATHWAY :PREDICATION MV2268 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2265 :RAW-TEXT "pathway")
 (:VAR MV2268 :ISA REGULATE :AFFECTED-PROCESS MV2267 :AGENT MV2260 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV2260 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2265 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2262 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2288 :ISA POLAR-QUESTION :STATEMENT MV2285)
 (:VAR MV2285 :ISA THERE-EXISTS :VALUE MV2280 :PREDICATE MV2275)
 (:VAR MV2280 :ISA PATHWAY :PREDICATION MV2286 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2278 :RAW-TEXT "pathway")
 (:VAR MV2286 :ISA REGULATE :AFFECTED-PROCESS MV2280 :THAT-REL T :AGENT MV2273
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2273 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2278 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2275 :ISA SYNTACTIC-THERE))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2290 :ISA LET :COMPLEMENT MV2304 :PRESENT "PRESENT")
 (:VAR MV2304 :ISA KNOW :AGENT MV2291 :STATEMENT MV2303 :PRESENT "PRESENT")
 (:VAR MV2291 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2303 :ISA WH-QUESTION :STATEMENT MV2302 :WH IF)
 (:VAR MV2302 :ISA THERE-EXISTS :VALUE MV2300 :PREDICATE MV2296)
 (:VAR MV2300 :ISA GENE :PREDICATION MV2301 :QUANTIFIER MV2297
  :CELLULAR-PROCESS MV2298 :RAW-TEXT "genes")
 (:VAR MV2301 :ISA REGULATE :OBJECT MV2300 :AGENT MV2289 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2289 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2297 :ISA ANY :WORD "any")
 (:VAR MV2298 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2296 :ISA BE))

___________________
236: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2306 :ISA LET :COMPLEMENT MV2312 :PRESENT "PRESENT")
 (:VAR MV2312 :ISA KNOW :AGENT MV2307 :STATEMENT MV2310 :PRESENT "PRESENT")
 (:VAR MV2307 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2310 :ISA GENE :PREDICATION MV2311 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV2311 :ISA REGULATE :OBJECT MV2310 :AGENT MV2305 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2305 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2314 :ISA LIST :THEME MV2317 :PRESENT "PRESENT")
 (:VAR MV2317 :ISA GENE :PREDICATION MV2318 :QUANTIFIER MV2315 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV2318 :ISA REGULATE :OBJECT MV2317 :AGENT MV2322 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2322 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2313 MV2321))
 (:VAR MV2313 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2321 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2315 :ISA ALL :WORD "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf"
 (:VAR MV2325 :ISA LIST :THEME MV2326 :PRESENT "PRESENT")
 (:VAR MV2326 :ISA GENE :PREDICATION MV2327 :RAW-TEXT "genes")
 (:VAR MV2327 :ISA REGULATE :OBJECT MV2326 :AGENT MV2331 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2331 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2324 MV2330))
 (:VAR MV2324 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2330 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2334 :ISA LIST :THEME MV2336 :PRESENT "PRESENT")
 (:VAR MV2336 :ISA GENE :PREDICATION MV2344 :QUANTIFIER MV2335 :RAW-TEXT
  "genes")
 (:VAR MV2344 :ISA REGULATE :OBJECT MV2336 :THAT-REL T :AGENT MV2343 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2343 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2333 MV2342))
 (:VAR MV2333 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2342 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2335 :ISA SOME :WORD "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2347 :ISA LIST :THEME MV2353 :PRESENT "PRESENT")
 (:VAR MV2353 :ISA EVIDENCE :STATEMENT MV2352 :HAS-DETERMINER "THE")
 (:VAR MV2352 :ISA DECREASE :AGENT MV2351 :OBJECT MV2346 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2351 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2346 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2355 :ISA NAME-SOMETHING :PATIENT MV2358 :PRESENT "PRESENT")
 (:VAR MV2358 :ISA GENE :PREDICATION MV2359 :RAW-TEXT "genes")
 (:VAR MV2359 :ISA REGULATE :OBJECT MV2358 :AGENT MV2363 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2363 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2354 MV2362))
 (:VAR MV2354 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2362 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e34   COPULAR-PREDICATION 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2380 :ISA COPULAR-PREDICATION :ITEM MV2370 :VALUE MV2375 :PREDICATE
  MV2374)
 (:VAR MV2370 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2371
  :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV2368 :RAW-TEXT "genes")
 (:VAR MV2371 :ISA REGULATE :OBJECT MV2370 :AGENT MV2365 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2365 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2368 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2375 :ISA ACTIVE :ORGAN MV2378)
 (:VAR MV2378 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2374 :ISA BE :PRESENT "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2398 :ISA COPULAR-PREDICATION :ITEM MV2389 :VALUE MV2393 :PREDICATE
  MV2392)
 (:VAR MV2389 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2390
  :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV2387 :RAW-TEXT "genes")
 (:VAR MV2390 :ISA REGULATE :OBJECT MV2389 :AGENT MV2384 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2384 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2387 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2393 :ISA ACTIVE :ORGAN MV2396)
 (:VAR MV2396 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2392 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e29   COPULAR-PREDICATION 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2413 :ISA COPULAR-PREDICATION :ITEM MV2404 :VALUE MV2411 :PREDICATE
  MV2410)
 (:VAR MV2404 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2405
  :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV2405 :ISA REGULATE :OBJECT MV2404 :AGENT MV2401 :ORGAN MV2408 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2401 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2408 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2411 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2410 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2427 :ISA COPULAR-PREDICATION :ITEM MV2421 :VALUE MV2425 :PREDICATE
  MV2424)
 (:VAR MV2421 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2422
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2420 :RAW-TEXT "genes")
 (:VAR MV2422 :ISA REGULATE :OBJECT MV2421 :AGENT MV2417 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2417 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2420 :ISA LIVER) (:VAR MV2425 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2424 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2440 :ISA COPULAR-PREDICATION :ITEM MV2434 :VALUE MV2438 :PREDICATE
  MV2437)
 (:VAR MV2434 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2435
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2433 :RAW-TEXT "genes")
 (:VAR MV2435 :ISA REGULATE :OBJECT MV2434 :AGENT MV2430 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2430 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2433 :ISA LIVER) (:VAR MV2438 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2437 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV2450 :ISA SHOW :STATEMENT-OR-THEME MV2453 :BENEFICIARY MV2451 :PRESENT
  "PRESENT" :ADVERB MV2449)
 (:VAR MV2453 :ISA PATHWAY :PREDICATION MV2454 :MODIFIER MV2452 :RAW-TEXT
  "pathways")
 (:VAR MV2454 :ISA INVOLVE :THEME MV2453 :THEME MV2455 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2455 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2452 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2451 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2449 :ISA PLEASE :NAME "please"))

___________________
249: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2457 :ISA SHOW :STATEMENT-OR-THEME MV2459 :BENEFICIARY MV2458 :PRESENT
  "PRESENT" :ADVERB MV2456)
 (:VAR MV2459 :ISA PATHWAY :PREDICATION MV2460 :RAW-TEXT "pathways")
 (:VAR MV2460 :ISA INVOLVE :THEME MV2459 :THEME MV2461 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2461 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2458 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2456 :ISA PLEASE :NAME "please"))

___________________
250: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2463 :ISA BIO-ACTIVATE :AGENT MV2462 :OBJECT MV2464 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2462 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2464 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2465 :ISA REMOVE :OBJECT MV2472 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2472 :ISA FACT :STATEMENT MV2470 :HAS-DETERMINER "THE")
 (:VAR MV2470 :ISA BIO-ACTIVATE :AGENT MV2469 :OBJECT MV2471 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2469 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2471 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2475 :ISA BIO-ACTIVATE :AGENT MV2474 :OBJECT MV2476 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2474 :ISA PROTEIN-FAMILY :PREDICATION MV2473 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2473 :ISA INACTIVE)
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
253: "Remove the fact that inactive MEK activates ERK"

                    SOURCE-START
e16   REMOVE        1 "Remove the fact that inactive MEK activates ERK" 9
                    END-OF-SOURCE
("Remove the fact that inactive MEK activates ERK"
 (:VAR MV2477 :ISA REMOVE :OBJECT MV2485 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2485 :ISA FACT :STATEMENT MV2483 :HAS-DETERMINER "THE")
 (:VAR MV2483 :ISA BIO-ACTIVATE :AGENT MV2482 :OBJECT MV2484 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2482 :ISA PROTEIN-FAMILY :PREDICATION MV2481 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2481 :ISA INACTIVE)
 (:VAR MV2484 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2487 :ISA SHOW :STATEMENT-OR-THEME MV2488 :PRESENT "PRESENT")
 (:VAR MV2488 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2486 :RAW-TEXT "pathways")
 (:VAR MV2486 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2489 :ISA SHOW :STATEMENT-OR-THEME MV2491 :BENEFICIARY MV2490 :PRESENT
  "PRESENT")
 (:VAR MV2491 :ISA PATHWAY :PREDICATION MV2492 :RAW-TEXT "pathways")
 (:VAR MV2492 :ISA INVOLVE :THEME MV2491 :THEME MV2493 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2493 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2490 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2494 :ISA SHOW :STATEMENT-OR-THEME MV2496 :BENEFICIARY MV2495 :PRESENT
  "PRESENT")
 (:VAR MV2496 :ISA PATHWAY :PATHWAYCOMPONENT MV2498 :RAW-TEXT "pathways")
 (:VAR MV2498 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2500 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2500 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV2495 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
257: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2503 :ISA SHOW :STATEMENT-OR-THEME MV2505 :BENEFICIARY MV2504 :PRESENT
  "PRESENT")
 (:VAR MV2505 :ISA PATHWAY :PATHWAYCOMPONENT MV2507 :RAW-TEXT "pathways")
 (:VAR MV2507 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2504 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2510 :ISA SHOW :STATEMENT-OR-THEME MV2517 :BENEFICIARY MV2511 :PRESENT
  "PRESENT")
 (:VAR MV2517 :ISA EVIDENCE :STATEMENT MV2516 :HAS-DETERMINER "THE")
 (:VAR MV2516 :ISA DECREASE :AGENT MV2515 :OBJECT MV2509 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2515 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2509 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2511 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2519 :ISA SHOW :STATEMENT-OR-THEME MV2530 :BENEFICIARY MV2520 :PRESENT
  "PRESENT")
 (:VAR MV2530 :ISA EVIDENCE :STATEMENT MV2525 :HAS-DETERMINER "THE")
 (:VAR MV2525 :ISA DECREASE :AGENT MV2524 :AFFECTED-PROCESS-OR-OBJECT MV2527
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2524 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2527 :ISA BIO-AMOUNT :MEASURED-ITEM MV2518 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV2518 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2520 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2532 :ISA SHOW :STATEMENT-OR-THEME MV2539 :BENEFICIARY MV2533 :PRESENT
  "PRESENT")
 (:VAR MV2539 :ISA EVIDENCE :STATEMENT MV2538 :HAS-DETERMINER "THE")
 (:VAR MV2538 :ISA REGULATE :AGENT MV2537 :OBJECT MV2531 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2537 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2531 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2533 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2542 :ISA SHOW :STATEMENT-OR-THEME MV2540 :PRESENT "PRESENT")
 (:VAR MV2540 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2543 :RAW-TEXT
  "transcription factors")
 (:VAR MV2543 :ISA SHARE :OBJECT MV2540 :PARTICIPANT MV2547 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV2547 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2541 MV2546))
 (:VAR MV2541 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2546 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV2557 :ISA TELL :THEME MV2569 :THEME MV2558 :PRESENT "PRESENT")
 (:VAR MV2569 :ISA REGULATE :AFFECTED-PROCESS MV2562 :AGENT MV2556 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2562 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2560
  :RAW-TEXT "pathways")
 (:VAR MV2560 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2556 :ISA PROTEIN :ORGAN MV2568 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2568 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2558 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2573 :ISA TELL :THEME MV2576 :BENEFICIARY MV2574 :PRESENT "PRESENT")
 (:VAR MV2576 :ISA GENE :PREDICATION MV2579 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2579 :ISA REGULATE :OBJECT MV2576 :AGENT MV2580 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2580 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2572 MV2578))
 (:VAR MV2572 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2578 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2574 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2582 :ISA TELL :THEME MV2592 :THEME MV2583 :PRESENT "PRESENT")
 (:VAR MV2592 :ISA REGULATE :AFFECTED-PROCESS MV2585 :AGENT MV2581 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2585 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2581 :ISA PROTEIN :ORGAN MV2591 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2591 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2583 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2598 :ISA INVOLVE :THEME MV2597 :THEME MV2600 :PRESENT "PRESENT")
 (:VAR MV2597 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2596 :RAW-TEXT
  "pathways")
 (:VAR MV2596 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2600 :ISA SIGNAL :MODIFIER MV2599 :RAW-TEXT "signaling")
 (:VAR MV2599 :ISA IMMUNE :NAME "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2608 :ISA REGULATE :OBJECT MV2604 :AGENT MV2602 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2604 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2601 :RAW-TEXT
  "phosphatases")
 (:VAR MV2601 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV2602 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2615 :ISA BE :SUBJECT MV2614 :PREDICATE MV2616 :PRESENT "PRESENT")
 (:VAR MV2614 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2612
  :RAW-TEXT "genes")
 (:VAR MV2612 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2616 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2610 :RAW-TEXT
  "downstream")
 (:VAR MV2610 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2626 :ISA REGULATE :OBJECT MV2624 :AGENT MV2620 :ORGAN MV2629 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2624 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2622
  :RAW-TEXT "genes")
 (:VAR MV2622 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2620 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2629 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2637 :ISA REGULATE :OBJECT MV2635 :AGENT MV2631 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2635 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2633
  :RAW-TEXT "genes")
 (:VAR MV2633 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2631 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2643 :ISA BE :SUBJECT MV2642 :PREDICATE MV2644 :PRESENT "PRESENT")
 (:VAR MV2642 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2640
  :RAW-TEXT "genes")
 (:VAR MV2640 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2644 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2642 :MODIFIER MV2638
  :RAW-TEXT "upstream")
 (:VAR MV2638 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2652 :ISA INVOLVE :THEME MV2651 :THEME MV2647 :PRESENT "PRESENT")
 (:VAR MV2651 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2649
  :RAW-TEXT "pathways")
 (:VAR MV2649 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2647 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2654 :ISA BE :SUBJECT MV2653 :PREDICATE MV2657 :PRESENT "PRESENT")
 (:VAR MV2653 :ISA WHAT)
 (:VAR MV2657 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV2656 :RAW-TEXT "targets")
 (:VAR MV2656 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
274: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2661 :ISA BE :SUBJECT MV2660 :PREDICATE MV2663 :PRESENT "PRESENT")
 (:VAR MV2660 :ISA WHAT)
 (:VAR MV2663 :ISA INHIBITOR :QUANTIFIER MV2662 :PROTEIN MV2659 :RAW-TEXT
  "inhibitors")
 (:VAR MV2662 :ISA SOME :WORD "some")
 (:VAR MV2659 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2665 :ISA BE :SUBJECT MV2664 :PREDICATE MV2667 :PRESENT "PRESENT")
 (:VAR MV2664 :ISA WHAT)
 (:VAR MV2667 :ISA DRUG :PREDICATION MV2669 :QUANTIFIER MV2666 :RAW-TEXT
  "drugs")
 (:VAR MV2669 :ISA INHIBIT :AGENT MV2667 :THAT-REL T :OBJECT MV2670 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2670 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2666 :ISA SOME :WORD "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2673 :ISA BE :SUBJECT MV2672 :PREDICATE MV2675 :PRESENT "PRESENT")
 (:VAR MV2672 :ISA WHAT)
 (:VAR MV2675 :ISA GENE :CONTEXT MV2671 :QUANTIFIER MV2674 :RAW-TEXT "genes")
 (:VAR MV2671 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2678
  :RAW-TEXT "signaling pathway")
 (:VAR MV2678 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2674 :ISA SOME :WORD "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2682 :ISA BE :SUBJECT MV2681 :PREDICATE MV2684 :PRESENT "PRESENT")
 (:VAR MV2681 :ISA WHAT)
 (:VAR MV2684 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2680 :QUANTIFIER MV2683
  :RAW-TEXT "proteins")
 (:VAR MV2680 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2687
  :RAW-TEXT "signaling pathway")
 (:VAR MV2687 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2683 :ISA SOME :WORD "some"))

___________________
278: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2690 :ISA BE :SUBJECT MV2689 :PREDICATE MV2692 :PRESENT "PRESENT")
 (:VAR MV2689 :ISA WHAT)
 (:VAR MV2692 :ISA MEMBER :SET MV2694 :HAS-DETERMINER "THE")
 (:VAR MV2694 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
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
 (:VAR MV2700 :ISA BE :SUBJECT MV2699 :PREDICATE MV2702 :PRESENT "PRESENT")
 (:VAR MV2699 :ISA WHAT)
 (:VAR MV2702 :ISA MICRO-RNA :PREDICATION MV2704 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAS")
 (:VAR MV2704 :ISA REGULATE :AGENT MV2702 :THAT-REL T :OBJECT MV2708 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2708 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2705 MV2706 MV2696 MV2697 MV2698))
 (:VAR MV2705 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2706 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2696 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2697 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2698 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2710 :ISA BE :SUBJECT MV2709 :PREDICATE MV2712 :PRESENT "PRESENT")
 (:VAR MV2709 :ISA WHAT)
 (:VAR MV2712 :ISA REGULATOR :THEME MV2718 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2718 :ISA BIO-ENTITY :ORGAN MV2717 :NAME "MAPPK14")
 (:VAR MV2717 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2723 :ISA BE :SUBJECT MV2722 :PREDICATE MV2725 :PRESENT "PRESENT")
 (:VAR MV2722 :ISA WHAT)
 (:VAR MV2725 :ISA REGULATOR :THEME MV2721 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2721 :ISA PROTEIN :ORGAN MV2728 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV2728 :ISA LIVER))

___________________
282: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2733 :ISA BE :SUBJECT MV2732 :PREDICATE MV2735 :PRESENT "PRESENT")
 (:VAR MV2732 :ISA WHAT)
 (:VAR MV2735 :ISA REGULATOR :THEME MV2731 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2731 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2740 :ISA BE :SUBJECT MV2739 :PREDICATE MV2742 :PRESENT "PRESENT")
 (:VAR MV2739 :ISA WHAT)
 (:VAR MV2742 :ISA REGULATOR :THEME MV2738 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2738 :ISA PROTEIN :ORGAN MV2745 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2745 :ISA LUNG))

___________________
284: "What are the regulators of mapk14 in bladeeer"

                    SOURCE-START
e20   IN            1 "What are the regulators of mapk14 in bladeeer" 10
                    END-OF-SOURCE
("What are the regulators of mapk14 in bladeeer"
 (:VAR MV2761 :ISA WH-QUESTION :STATEMENT MV2759 :WH WHAT)
 (:VAR MV2759 :ISA PREPOSITIONAL-PHRASE :POBJ MV2758 :PREP "IN")
 (:VAR MV2758 :ISA BIO-ENTITY :NAME "bladeeer"))

___________________
285: "What are the regulators of mapk14"

                    SOURCE-START
e13   BE            1 "What are the regulators of mapk14" 8
                    END-OF-SOURCE
("What are the regulators of mapk14"
 (:VAR MV2764 :ISA BE :SUBJECT MV2763 :PREDICATE MV2766 :PRESENT "PRESENT")
 (:VAR MV2763 :ISA WHAT)
 (:VAR MV2766 :ISA REGULATOR :THEME MV2762 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2762 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2783 :ISA COPULAR-PREDICATION :ITEM MV2772 :VALUE MV2770 :PREDICATE
  MV2773)
 (:VAR MV2772 :ISA WHAT) (:VAR MV2770 :ISA IN-COMMON :THEME MV2780)
 (:VAR MV2780 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2781 :RAW-TEXT
  "genes")
 (:VAR MV2781 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV2777 MV2778 MV2771))
 (:VAR MV2777 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2778 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV2771 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2773 :ISA BE :PREDICATE MV2769 :PRESENT "PRESENT")
 (:VAR MV2769 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2786 :ISA BE :SUBJECT MV2785 :PREDICATE MV2784 :PRESENT "PRESENT")
 (:VAR MV2785 :ISA WHAT)
 (:VAR MV2784 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2789 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2789 :ISA REGULATE :AGENT MV2784 :THAT-REL T :OBJECT MV2795 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2795 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2794 MV2793))
 (:VAR MV2794 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2793 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2800 :ISA BE :SUBJECT MV2799 :PREDICATE MV2796 :PRESENT "PRESENT")
 (:VAR MV2799 :ISA WHAT)
 (:VAR MV2796 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2803 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2803 :ISA REGULATE :AGENT MV2796 :THAT-REL T :OBJECT MV2810 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2810 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2804 MV2805 MV2809 MV2797 MV2798))
 (:VAR MV2804 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2805 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2809 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2797 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2798 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2816 :ISA BE :SUBJECT MV2815 :PREDICATE MV2811 :PRESENT "PRESENT")
 (:VAR MV2815 :ISA WHAT)
 (:VAR MV2811 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2819 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2819 :ISA REGULATE :AGENT MV2811 :THAT-REL T :OBJECT MV2823 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2823 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2820 MV2821 MV2812 MV2813 MV2814))
 (:VAR MV2820 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2821 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2812 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2813 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2814 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2828 :ISA BE :SUBJECT MV2827 :PREDICATE MV2832 :PRESENT "PRESENT")
 (:VAR MV2827 :ISA WHAT)
 (:VAR MV2832 :ISA REGULATOR :THEME MV2836 :HAS-DETERMINER "THE" :CONTEXT
  MV2830 :RAW-TEXT "regulators")
 (:VAR MV2836 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS (MV2824 MV2825 MV2834 MV2826))
 (:VAR MV2824 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME
  "CCND1_HUMAN")
 (:VAR MV2825 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME
  "FOXM1_HUMAN")
 (:VAR MV2834 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2826 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME
  "KLF4_HUMAN")
 (:VAR MV2830 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2845 :ISA REGULATE :OBJECT MV2840 :AGENT MV2844 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2840 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2838
  :RAW-TEXT "genes")
 (:VAR MV2838 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :NAME "cell cycle"
  :UID "GO:0007049")
 (:VAR MV2844 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2850 :ISA REGULATE :OBJECT MV2847 :AGENT MV2849 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2847 :ISA WHAT)
 (:VAR MV2849 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2854 :ISA REGULATE :OBJECT MV2851 :AGENT-OR-CAUSE MV2853 :ORGAN MV2856
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2851 :ISA WHAT) (:VAR MV2853 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2856 :ISA LIVER))

___________________
294: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2862 :ISA TARGET :OBJECT MV2859 :AGENT MV2858 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2859 :ISA WHAT)
 (:VAR MV2858 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2866 :ISA REGULATE :OBJECT MV2864 :AGENT MV2863 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2864 :ISA WHAT)
 (:VAR MV2863 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2870 :ISA REGULATE :OBJECT MV2868 :AGENT MV2867 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2868 :ISA WHAT)
 (:VAR MV2867 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2874 :ISA REGULATE :OBJECT MV2872 :AGENT MV2871 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2872 :ISA WHAT)
 (:VAR MV2871 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2878 :ISA REGULATE :OBJECT MV2875 :AGENT MV2877 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2875 :ISA WHAT)
 (:VAR MV2877 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2881 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2880 :OBJECT MV2879 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV2880 :ISA WHAT)
 (:VAR MV2879 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2895 :ISA BIO-USE :PATIENT MV2884 :MODAL MV2885 :AGENT MV2886 :THEME
  MV2894 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2884 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2885 :ISA COULD) (:VAR MV2886 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2894 :ISA TARGET :OBJECT MV2882 :RAW-TEXT "target")
 (:VAR MV2882 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV2907 :ISA BIO-USE :OBJECT MV2898 :MODAL MV2899 :AGENT MV2900 :DISEASE
  MV2896 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2898 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2899 :ISA SHOULD) (:VAR MV2900 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2896 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2911 :ISA BE :SUBJECT MV2910 :PREDICATE MV2912 :PRESENT "PRESENT")
 (:VAR MV2910 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2912 :ISA INHIBITOR :PROTEIN MV2908 :RAW-TEXT "inhibitors")
 (:VAR MV2908 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2918 :ISA INHIBIT :AGENT MV2917 :OBJECT MV2915 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV2917 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2915 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2921 :ISA REGULATE :AGENT MV2920 :OBJECT MV2922 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2920 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2922 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2926 :ISA TARGET :AGENT MV2924 :OBJECT MV2927 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2924 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2927 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2931 :ISA BE :SUBJECT MV2930 :PREDICATE MV2932 :PRESENT "PRESENT")
 (:VAR MV2930 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2932 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2928 :RAW-TEXT
  "downstream")
 (:VAR MV2928 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2946 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2938 :VALUE MV2945 :PREP
  "IN" :PREDICATE MV2939)
 (:VAR MV2938 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2945 :ISA GENE :CONTEXT MV2936 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2936 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2942
  :RAW-TEXT "signaling pathway")
 (:VAR MV2942 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2939 :ISA BE :PRESENT "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2958 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2950 :VALUE MV2957 :PREP
  "IN" :PREDICATE MV2951)
 (:VAR MV2950 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2957 :ISA GENE :CONTEXT MV2948 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2948 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2954
  :RAW-TEXT "signaling pathways")
 (:VAR MV2954 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2951 :ISA BE :PRESENT "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2970 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2962 :VALUE MV2969 :PREP
  "IN" :PREDICATE MV2963)
 (:VAR MV2962 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2969 :ISA GENE :CONTEXT MV2966 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2966 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2960
  :RAW-TEXT "pathway")
 (:VAR MV2960 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV2963 :ISA BE :PRESENT "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV2982 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2974 :VALUE MV2981 :PREP
  "IN" :PREDICATE MV2975)
 (:VAR MV2974 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2981 :ISA GENE :CONTEXT MV2972 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2972 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2978
  :RAW-TEXT "signaling pathway")
 (:VAR MV2978 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV2975 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV2995 :ISA INVOLVE :THEME MV2987 :CONTEXT MV2992 :PRESENT "PRESENT")
 (:VAR MV2987 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2992 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2985 :RAW-TEXT
  "pathway")
 (:VAR MV2985 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3006 :ISA INVOLVE :THEME MV2997 :CONTEXT MV3003 :PRESENT "PRESENT")
 (:VAR MV2997 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3003 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3002 :RAW-TEXT
  "pathway")
 (:VAR MV3002 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3017 :ISA INVOLVE :THEME MV3009 :CONTEXT MV3014 :PRESENT "PRESENT")
 (:VAR MV3009 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3014 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3007 :RAW-TEXT
  "pathway")
 (:VAR MV3007 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
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
 (:VAR MV3028 :ISA INVOLVE :THEME MV3020 :CONTEXT MV3025 :PRESENT "PRESENT")
 (:VAR MV3020 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3025 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3018
  :RAW-TEXT "pathway")
 (:VAR MV3018 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3041 :ISA REGULATE :OBJECT MV3033 :AGENT MV3040 :PRESENT "PRESENT"
  :SUPERLATIVE MV3035 :ADVERB MV3036 :RAW-TEXT "regulated")
 (:VAR MV3033 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3040 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS (MV3029 MV3030 MV3031))
 (:VAR MV3029 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3030 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3031 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3035 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3036 :ISA FREQUENTLY :NAME "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3056 :ISA REGULATE :OBJECT MV3048 :AGENT MV3055 :PRESENT "PRESENT"
  :SUPERLATIVE MV3050 :ADVERB MV3051 :RAW-TEXT "regulated")
 (:VAR MV3048 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3055 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS (MV3043 MV3044 MV3045 MV3046))
 (:VAR MV3043 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3044 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3045 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3046 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3050 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3051 :ISA FREQUENTLY :NAME "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3071 :ISA REGULATE :OBJECT MV3063 :AGENT MV3070 :PRESENT "PRESENT"
  :SUPERLATIVE MV3065 :ADVERB MV3066 :RAW-TEXT "regulated")
 (:VAR MV3063 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3070 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS (MV3058 MV3059 MV3060 MV3061))
 (:VAR MV3058 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3059 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3060 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3061 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3065 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3066 :ISA FREQUENTLY :NAME "frequently"))

___________________
318: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3079 :ISA REGULATE :OBJECT MV3074 :AGENT MV3078 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3074 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3078 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3090 :ISA REGULATE :OBJECT MV3083 :AGENT MV3089 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3083 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3089 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3081 MV3088))
 (:VAR MV3081 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV3088 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3101 :ISA REGULATE :OBJECT MV3095 :AGENT MV3100 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3095 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3100 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV3092 MV3093))
 (:VAR MV3092 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV3093 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME
  "microRNA 29b-1-5pm" :UID "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3111 :ISA REGULATE :OBJECT MV3104 :AGENT MV3110 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3104 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3110 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3119 :ISA REGULATE :OBJECT MV3114 :AGENT MV3118 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3114 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3118 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3130 :ISA REGULATE :OBJECT MV3123 :AGENT MV3129 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3123 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3129 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3121 MV3128))
 (:VAR MV3121 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3128 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3138 :ISA TARGET :OBJECT MV3134 :CAUSE MV3132 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3134 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3132 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3152 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3142 :VALUE MV3151 :PREP
  "IN" :PREDICATE MV3143)
 (:VAR MV3142 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3151 :ISA GENE :CONTEXT MV3140 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3140 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3148
  :RAW-TEXT "signaling pathway")
 (:VAR MV3148 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3143 :ISA BE :PRESENT "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3162 :ISA BIO-USE :OBJECT MV3156 :CONTEXT MV3154 :PRESENT "PRESENT"
  :RAW-TEXT "used")
 (:VAR MV3156 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3154 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3161
  :RAW-TEXT "signaling pathway")
 (:VAR MV3161 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3169 :ISA TARGET :OBJECT MV3166 :CAUSE MV3164 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3166 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3164 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3175 :ISA TARGET :OBJECT MV3172 :AGENT MV3170 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3172 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3170 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3181 :ISA TARGET :OBJECT MV3178 :AGENT MV3176 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3178 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3176 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3186 :ISA UPREGULATE :OBJECT MV3184 :AGENT MV3182 :PRESENT "PRESENT"
  :RAW-TEXT "upregulate")
 (:VAR MV3184 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3182 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3191 :ISA REGULATE :OBJECT MV3189 :AGENT MV3187 :CELL-TYPE MV3194
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3189 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3187 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3194 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3193)
 (:VAR MV3193 :ISA LIVER))

___________________
332: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3200 :ISA REGULATE :OBJECT MV3198 :AGENT MV3196 :ORGAN MV3202 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3198 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3196 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3202 :ISA LIVER))

___________________
333: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3208 :ISA REGULATE :OBJECT MV3206 :AGENT MV3204 :ORGAN MV3210 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3206 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3204 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3210 :ISA LUNG))

___________________
334: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3216 :ISA REGULATE :OBJECT MV3214 :AGENT MV3212 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3214 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3212 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3224 :ISA REGULATE :OBJECT MV3219 :AGENT MV3217 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3219 :ISA GENE :ORGAN MV3222 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3222 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3217 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
336: "What genes is stat3 upstream from?"

                    SOURCE-START
e12   FROM          1 "What genes is stat3 upstream from" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream from?"
 (:VAR MV3233 :ISA WH-QUESTION :STATEMENT MV3232 :VAR NIL :WH WHAT)
 (:VAR MV3232 :ISA FROM :WORD "from"))

___________________
337: "What genes is stat3 upstream of?"

                    SOURCE-START
e12   BE            1 "What genes is stat3 upstream of" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream of?"
 (:VAR MV3237 :ISA BE :SUBJECT MV3236 :PREDICATE MV3238 :PRESENT "PRESENT")
 (:VAR MV3236 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3238 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3236 :MODIFIER MV3234
  :RAW-TEXT "upstream")
 (:VAR MV3234 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3246 :ISA BE :SUBJECT MV3242 :PREDICATE MV3247 :PRESENT "PRESENT")
 (:VAR MV3242 :ISA GENE :PREDICATION MV3243 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3243 :ISA REGULATE :OBJECT MV3242 :AGENT MV3245 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3245 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3247 :ISA KINASE :RAW-TEXT "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3254 :ISA BE :SUBJECT MV3251 :PREDICATE MV3255 :PRESENT "PRESENT")
 (:VAR MV3251 :ISA GENE :PREDICATION MV3252 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3252 :ISA REGULATE :OBJECT MV3251 :AGENT MV3249 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3249 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3255 :ISA KINASE :RAW-TEXT "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3261 :ISA INVOLVE :THEME MV3260 :THEME MV3264 :PRESENT "PRESENT")
 (:VAR MV3260 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3259 :RAW-TEXT
  "pathways")
 (:VAR MV3259 :ISA IMMUNE :NAME "immune")
 (:VAR MV3264 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3262 MV3257))
 (:VAR MV3262 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3257 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3268 :ISA INVOLVE :THEME MV3267 :THEME MV3269 :PRESENT "PRESENT")
 (:VAR MV3267 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3266 :RAW-TEXT
  "pathways")
 (:VAR MV3266 :ISA IMMUNE :NAME "immune")
 (:VAR MV3269 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3274 :ISA INVOLVE :THEME MV3273 :THEME MV3277 :PRESENT "PRESENT")
 (:VAR MV3273 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3272 :RAW-TEXT
  "pathways")
 (:VAR MV3272 :ISA IMMUNE :NAME "immune")
 (:VAR MV3277 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3275 MV3270))
 (:VAR MV3275 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3270 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3281 :ISA INVOLVE :THEME MV3280 :THEME MV3291 :PRESENT "PRESENT")
 (:VAR MV3280 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3279 :RAW-TEXT
  "pathways")
 (:VAR MV3279 :ISA IMMUNE :NAME "immune")
 (:VAR MV3291 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3289 MV3290))
 (:VAR MV3289 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3290 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3293 :ISA INHIBIT :AGENT-OR-CAUSE MV3292 :OBJECT MV3294 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV3292 :ISA WHAT)
 (:VAR MV3294 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?"
 (:VAR MV3297 :ISA BE :SUBJECT MV3296 :PREDICATE MV3295 :PRESENT "PRESENT")
 (:VAR MV3296 :ISA WHAT)
 (:VAR MV3295 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?"
 (:VAR MV3299 :ISA BE :SUBJECT MV3298 :PREDICATE MV3300 :PRESENT "PRESENT")
 (:VAR MV3298 :ISA WHAT)
 (:VAR MV3300 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3303 :ISA BE :SUBJECT MV3302 :PREDICATE MV3304 :PRESENT "PRESENT")
 (:VAR MV3302 :ISA WHAT)
 (:VAR MV3304 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3301 :RAW-TEXT
  "downstream")
 (:VAR MV3301 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?"
 (:VAR MV3309 :ISA BE :SUBJECT MV3308 :PREDICATE MV3310 :PRESENT "PRESENT")
 (:VAR MV3308 :ISA WHAT)
 (:VAR MV3310 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?"
 (:VAR MV3312 :ISA BE :SUBJECT MV3311 :PREDICATE MV3313 :PRESENT "PRESENT")
 (:VAR MV3311 :ISA WHAT) (:VAR MV3313 :ISA BIO-ENTITY :NAME "errb"))

___________________
350: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3319 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3315 :AGENT MV3314
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3315 :ISA WHAT)
 (:VAR MV3314 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3323 :ISA BE :SUBJECT MV3322 :PREDICATE MV3329 :PRESENT "PRESENT")
 (:VAR MV3322 :ISA WHAT)
 (:VAR MV3329 :ISA EVIDENCE :STATEMENT MV3328 :HAS-DETERMINER "THE")
 (:VAR MV3328 :ISA DECREASE :AGENT MV3327 :OBJECT MV3321 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3327 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3321 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3332 :ISA BE :SUBJECT MV3331 :PREDICATE MV3342 :PRESENT "PRESENT")
 (:VAR MV3331 :ISA WHAT)
 (:VAR MV3342 :ISA EVIDENCE :STATEMENT MV3337 :HAS-DETERMINER "THE")
 (:VAR MV3337 :ISA DECREASE :AGENT MV3336 :AFFECTED-PROCESS-OR-OBJECT MV3339
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3336 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3339 :ISA BIO-AMOUNT :MEASURED-ITEM MV3330 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV3330 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3344 :ISA BE :SUBJECT MV3343 :PREDICATE MV3346 :PRESENT "PRESENT")
 (:VAR MV3343 :ISA WHAT)
 (:VAR MV3346 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV3349 :HAS-DETERMINER "THE"
  :RAW-TEXT "target")
 (:VAR MV3349 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
354: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3355 :ISA REGULATE :OBJECT MV3353 :AGENT MV3351 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3353 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3351 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3363 :ISA REGULATE :AGENT MV3360 :OBJECT MV3367 :PRESENT "PRESENT"
  :ADVERB MV3361 :ADVERB MV3362 :RAW-TEXT "regulate")
 (:VAR MV3360 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3367 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3364 MV3365 MV3356 MV3357 MV3358))
 (:VAR MV3364 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3365 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3356 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3357 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3358 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV3361 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3362 :ISA FREQUENTLY :NAME "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3373 :ISA REGULATE :AGENT MV3372 :OBJECT MV3377 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3372 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3377 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3374 MV3375 MV3368 MV3369 MV3370))
 (:VAR MV3374 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3375 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3368 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3369 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3370 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3384 :ISA REGULATE :OBJECT MV3380 :AGENT MV3378 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3380 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3378 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3389 :ISA REGULATE :AGENT MV3388 :OBJECT MV3390 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3388 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3390 :ISA GENE :CONTEXT MV3386 :RAW-TEXT "genes")
 (:VAR MV3386 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3393
  :RAW-TEXT "signaling pathways")
 (:VAR MV3393 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3396 :ISA INVOLVE :THEME MV3398 :THEME MV3397 :PRESENT "PRESENT")
 (:VAR MV3398 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3397 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
360: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3409 :ISA COPULAR-PREDICATION :ITEM MV3401 :VALUE MV3403 :PREDICATE
  MV3402)
 (:VAR MV3401 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3403 :ISA COMMON :THEME MV3407)
 (:VAR MV3407 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3399 MV3406))
 (:VAR MV3399 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3406 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3402 :ISA BE :PRESENT "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3412 :ISA INVOLVE :THEME MV3411 :THEME MV3413 :PRESENT "PRESENT")
 (:VAR MV3411 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3413 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3417 :ISA INVOLVE :THEME MV3416 :THEME MV3420 :PRESENT "PRESENT")
 (:VAR MV3416 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3420 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3418 MV3414))
 (:VAR MV3418 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3414 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3424 :ISA INVOLVE :THEME MV3423 :THEME MV3421 :PRESENT "PRESENT")
 (:VAR MV3423 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3421 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3426
  :RAW-TEXT "transcription factor")
 (:VAR MV3426 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "What pathways utilize srf and is srf a kinase"

                    SOURCE-START
e16   KINASE        1 "What pathways utilize srf and is srf a kinase" 10
                    END-OF-SOURCE
("What pathways utilize srf and is srf a kinase"
 (:VAR MV3437 :ISA WH-QUESTION :STATEMENT MV3435 :VAR NIL :WH WHAT)
 (:VAR MV3435 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
365: "What proteins are in the MAPK family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What proteins are in the MAPK family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are in the MAPK family?"
 (:VAR MV3448 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3439 :VALUE MV3446 :PREP
  MV3441 :PREDICATE MV3440)
 (:VAR MV3439 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3446 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3441 :ISA IN :WORD "in") (:VAR MV3440 :ISA BE :PRESENT "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3455 :ISA TARGET :OBJECT MV3451 :CAUSE MV3449 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3451 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3449 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3462 :ISA TARGET :OBJECT MV3459 :AGENT MV3457 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3459 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3457 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3468 :ISA TARGET :OBJECT MV3465 :CAUSE MV3463 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3465 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3463 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3474 :ISA TARGET :OBJECT MV3470 :AGENT MV3472 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3470 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3472 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3479 :ISA LEAD :AGENT MV3477 :THEME MV3482 :MODAL MV3478 :RAW-TEXT
  "lead")
 (:VAR MV3477 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3482 :ISA DEVELOPMENT :DISEASE MV3475 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3475 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV3478 :ISA MIGHT))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3490 :ISA LEAD :AGENT MV3488 :THEME MV3493 :MODAL MV3489 :RAW-TEXT
  "lead")
 (:VAR MV3488 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3493 :ISA DEVELOPMENT :DISEASE MV3486 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3486 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV3489 :ISA MIGHT))

___________________
372: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3500 :ISA INVOLVE :THEME MV3499 :THEME MV3502 :PRESENT "PRESENT")
 (:VAR MV3499 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3498 :RAW-TEXT
  "pathways")
 (:VAR MV3498 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3502 :ISA SIGNAL :MODIFIER MV3501 :RAW-TEXT "signaling")
 (:VAR MV3501 :ISA IMMUNE :NAME "immune"))

___________________
373: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3504 :ISA REGULATE :AGENT-OR-CAUSE MV3503 :OBJECT MV3505 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3503 :ISA WHAT)
 (:VAR MV3505 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3508 :ISA REGULATE :AGENT-OR-CAUSE MV3507 :OBJECT MV3506 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3507 :ISA WHAT)
 (:VAR MV3506 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3511 :ISA REGULATE :AGENT-OR-CAUSE MV3510 :OBJECT MV3509 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3510 :ISA WHAT)
 (:VAR MV3509 :ISA PROTEIN :ORGAN MV3513 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3513 :ISA LIVER))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3524 :ISA SHARE :OBJECT MV3515 :PARTICIPANT MV3523 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3515 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3523 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3521 MV3516))
 (:VAR MV3521 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME
  "TF65_HUMAN")
 (:VAR MV3516 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3535 :ISA SHARE :OBJECT MV3526 :PARTICIPANT MV3534 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3526 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3534 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3527 MV3533))
 (:VAR MV3527 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3533 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3547 :ISA SHARE :OBJECT MV3537 :PARTICIPANT MV3546 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3537 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3546 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3538 MV3539 MV3545))
 (:VAR MV3538 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3539 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3545 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3558 :ISA BIO-PRODUCE :AGENT MV3555 :OBJECT MV3556 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV3555 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3556 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3562 :ISA TRANSCRIBE :AGENT MV3559 :OBJECT MV3560 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV3559 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3560 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3578 :ISA COPULAR-PREDICATION :ITEM MV3563 :VALUE MV3570 :PREDICATE
  MV3569)
 (:VAR MV3563 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3570 :ISA COMMON :THEME MV3575)
 (:VAR MV3575 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3576 :RAW-TEXT
  "genes")
 (:VAR MV3576 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3564 MV3565 MV3573 MV3566 MV3567))
 (:VAR MV3564 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3565 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3573 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3566 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3567 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3569 :ISA BE :PRESENT "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3592 :ISA COPULAR-PREDICATION :ITEM MV3579 :VALUE MV3585 :PREDICATE
  MV3584)
 (:VAR MV3579 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3585 :ISA COMMON :THEME MV3589)
 (:VAR MV3589 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3590 :RAW-TEXT
  "genes")
 (:VAR MV3590 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3580 MV3581 MV3582))
 (:VAR MV3580 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3581 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3582 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3584 :ISA BE :PRESENT "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3597 :ISA REGULATE :OBJECT MV3595 :AGENT MV3593 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3595 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3593 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3606 :ISA COPULAR-PREDICATION :ITEM MV3598 :VALUE MV3601 :PREDICATE
  MV3600)
 (:VAR MV3598 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3601 :ISA COMMON :THEME MV3604)
 (:VAR MV3604 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3600 :ISA BE :PRESENT "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3622 :ISA COPULAR-PREDICATION :ITEM MV3607 :VALUE MV3608 :PREDICATE
  MV3614)
 (:VAR MV3607 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3608 :ISA IN-COMMON :THEME MV3619)
 (:VAR MV3619 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3620 :RAW-TEXT
  "genes")
 (:VAR MV3620 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3609 MV3610 MV3617 MV3611 MV3612))
 (:VAR MV3609 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3610 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3617 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3611 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3612 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3614 :ISA BE :PRESENT "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3636 :ISA COPULAR-PREDICATION :ITEM MV3623 :VALUE MV3624 :PREDICATE
  MV3629)
 (:VAR MV3623 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3624 :ISA IN-COMMON :THEME MV3633)
 (:VAR MV3633 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3634 :RAW-TEXT
  "genes")
 (:VAR MV3634 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3625 MV3626 MV3627))
 (:VAR MV3625 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3626 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3627 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3629 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3640 :ISA BE :SUBJECT MV3637 :PREDICATE MV3641 :PRESENT "PRESENT")
 (:VAR MV3637 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3641 :ISA REGULATOR :THEME MV3638 :RAW-TEXT "regulators")
 (:VAR MV3638 :ISA PROTEIN :ORGAN MV3644 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3644 :ISA LIVER))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3650 :ISA BE :SUBJECT MV3647 :PREDICATE MV3651 :PRESENT "PRESENT")
 (:VAR MV3647 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3651 :ISA REGULATOR :THEME MV3648 :RAW-TEXT "regulators")
 (:VAR MV3648 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3666 :ISA SHARE :OBJECT MV3654 :PARTICIPANT MV3664 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3654 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3664 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3665 :RAW-TEXT
  "genes")
 (:VAR MV3665 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3661 MV3662 MV3655))
 (:VAR MV3661 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3662 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV3655 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3671 :ISA REGULATE :AGENT MV3668 :OBJECT MV3669 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3668 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3669 :ISA PROTEIN :ORGAN MV3673 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3673 :ISA LIVER))

___________________
392: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3678 :ISA REGULATE :AGENT MV3675 :OBJECT MV3676 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3675 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3676 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3681 :ISA REGULATE :AGENT MV3679 :OBJECT MV3682 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3679 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3682 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV3685 :ISA REGULATE :AGENT MV3683 :THEME MV3691 :OBJECT MV3686 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3683 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3691 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3689
  :CELLULAR-PROCESS MV3690 :NAME "pathwya")
 (:VAR MV3689 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3690 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV3686 :ISA GENE :RAW-TEXT "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3694 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3696 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3696 :ISA REGULATE :OBJECT MV3694 :AGENT MV3693 :RAW-TEXT "regulated")
 (:VAR MV3693 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3700 :ISA TRANSCRIBE :AGENT MV3697 :OBJECT MV3698 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV3697 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3698 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3703 :ISA UPREGULATE :AGENT-OR-CAUSE MV3702 :OBJECT MV3701 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV3702 :ISA WHAT)
 (:VAR MV3701 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3709 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3705 :OBJECT MV3704
  :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV3705 :ISA WHERE)
 (:VAR MV3704 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3713 :ISA INVOLVE :THEME MV3712 :THEME MV3714 :PRESENT "PRESENT")
 (:VAR MV3712 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3711 :RAW-TEXT
  "pathways")
 (:VAR MV3711 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3714 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3719 :ISA BIO-USE :AGENT MV3717 :OBJECT MV3720 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3717 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3716 :RAW-TEXT
  "pathways")
 (:VAR MV3716 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3720 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3724 :ISA REGULATE :AGENT MV3721 :OBJECT MV3722 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3721 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3722 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3728 :ISA REGULATE :AGENT-OR-CAUSE MV3725 :OBJECT MV3729 :PRESENT
  "PRESENT" :ADVERB MV3726 :RAW-TEXT "regulate")
 (:VAR MV3725 :ISA WHICH)
 (:VAR MV3729 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3726 :ISA ALSO :NAME "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3738 :ISA REGULATE :OBJECT MV3734 :AGENT MV3730 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3734 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3732
  :RAW-TEXT "genes")
 (:VAR MV3732 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3730 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3745 :ISA BE :SUBJECT MV3744 :PREDICATE MV3746 :PRESENT "PRESENT")
 (:VAR MV3744 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3742
  :RAW-TEXT "genes")
 (:VAR MV3742 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3746 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3744 :MODIFIER MV3740
  :RAW-TEXT "upstream")
 (:VAR MV3740 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3755 :ISA TARGET :OBJECT MV3751 :AGENT MV3749 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3751 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3749 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3762 :ISA BE :SUBJECT MV3759 :PREDICATE MV3763 :PRESENT "PRESENT")
 (:VAR MV3759 :ISA GENE :PREDICATION MV3760 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV3760 :ISA REGULATE :OBJECT MV3759 :AGENT MV3757 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3757 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3763 :ISA KINASE :RAW-TEXT "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3779 :ISA SHARE :OBJECT MV3771 :PARTICIPANT MV3777 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3771 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3770 :RAW-TEXT
  "pathways")
 (:VAR MV3770 :ISA IMMUNE :NAME "immune")
 (:VAR MV3777 :ISA GENE :EXPRESSES MV3778 :RAW-TEXT "genes")
 (:VAR MV3778 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3765 MV3766 MV3775 MV3767 MV3768))
 (:VAR MV3765 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3766 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3775 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3767 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3768 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3794 :ISA SHARE :OBJECT MV3786 :PARTICIPANT MV3792 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3786 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3785 :RAW-TEXT
  "pathways")
 (:VAR MV3785 :ISA IMMUNE :NAME "immune")
 (:VAR MV3792 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3793 :RAW-TEXT
  "genes")
 (:VAR MV3793 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3781 MV3782 MV3783))
 (:VAR MV3781 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3782 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3783 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3800 :ISA UTILIZE :PARTICIPANT MV3799 :OBJECT MV3801 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3799 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3798 :RAW-TEXT
  "pathways")
 (:VAR MV3798 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3801 :ISA GENE :PREDICATION MV3802 :RAW-TEXT "genes")
 (:VAR MV3802 :ISA REGULATE :OBJECT MV3801 :AGENT MV3796 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3796 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3808 :ISA UTILIZE :PARTICIPANT MV3807 :OBJECT MV3809 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3807 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3806 :RAW-TEXT
  "pathways")
 (:VAR MV3806 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3809 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3813 :ISA UTILIZE :PARTICIPANT MV3812 :OBJECT MV3814 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3812 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3811 :RAW-TEXT
  "pathways")
 (:VAR MV3811 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3814 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
412: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3822 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3818 :AGENT MV3815
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3818 :ISA PRONOUN/PLURAL :QUANTIFIER MV3816 :WORD "them")
 (:VAR MV3816 :ISA WHICH)
 (:VAR MV3815 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3832 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3827 :ORGAN MV3831
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV3827 :ISA THESE :QUANTIFIER MV3825 :WORD "these")
 (:VAR MV3825 :ISA WHICH) (:VAR MV3831 :ISA LIVER))

___________________
414: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3843 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3837 :VALUE MV3841 :PREP
  MV3839 :PREDICATE MV3838)
 (:VAR MV3837 :ISA THESE :QUANTIFIER MV3835 :WORD "these")
 (:VAR MV3835 :ISA WHICH)
 (:VAR MV3841 :ISA PATHWAY :MODIFIER MV3840 :RAW-TEXT "pathways")
 (:VAR MV3840 :ISA IMMUNE :NAME "immune") (:VAR MV3839 :ISA IN :WORD "in")
 (:VAR MV3838 :ISA BE :PRESENT "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3849 :ISA PHOSPHORYLATE :AMINO-ACID MV3846 :AGENT MV3848 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV3846 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3848 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV3853 :ISA BE :SUBJECT MV3852 :PREDICATE MV3854 :PRESENT "PRESENT")
 (:VAR MV3852 :ISA THESE :QUANTIFIER MV3850 :WORD "these")
 (:VAR MV3850 :ISA WHICH) (:VAR MV3854 :ISA KINASE :RAW-TEXT "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3863 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3859 :AGENT MV3856
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3859 :ISA THOSE :QUANTIFIER MV3857 :WORD "those")
 (:VAR MV3857 :ISA WHICH)
 (:VAR MV3856 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3873 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3869 :AGENT MV3866
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3869 :ISA THESE :QUANTIFIER MV3867 :WORD "these")
 (:VAR MV3867 :ISA WHICH)
 (:VAR MV3866 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3883 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3878 :AGENT MV3882
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3878 :ISA THESE :QUANTIFIER MV3876 :WORD "these")
 (:VAR MV3876 :ISA WHICH) (:VAR MV3882 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3899 :ISA SHARE :OBJECT MV3891 :PARTICIPANT MV3897 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3891 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3897 :ISA GENE :EXPRESSES MV3898 :RAW-TEXT "genes")
 (:VAR MV3898 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3886 MV3887 MV3895 MV3888 MV3889))
 (:VAR MV3886 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3887 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3895 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3888 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3889 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3913 :ISA SHARE :OBJECT MV3904 :PARTICIPANT MV3912 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3904 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3912 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3901 MV3902 MV3911))
 (:VAR MV3901 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3902 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3911 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3929 :ISA SHARE :OBJECT MV3920 :PARTICIPANT MV3927 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3920 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3927 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3928 :RAW-TEXT
  "genes")
 (:VAR MV3928 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3915 MV3916 MV3925 MV3917 MV3918))
 (:VAR MV3915 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3916 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3925 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3917 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3918 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3935 :ISA INVOLVE :THEME MV3934 :THEME MV3937 :PRESENT "PRESENT")
 (:VAR MV3934 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3937 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3931 MV3932))
 (:VAR MV3931 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3932 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3940 :ISA INVOLVE :THEME MV3939 :THEME MV3941 :PRESENT "PRESENT")
 (:VAR MV3939 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3941 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
425: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3945 :ISA BIO-USE :AGENT MV3943 :OBJECT MV3946 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3943 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3946 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3950 :ISA BIO-USE :AGENT MV3948 :OBJECT MV3951 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3948 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3951 :ISA THESE :WORD "these"))

___________________
427: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3954 :ISA UTILIZE :PARTICIPANT MV3953 :OBJECT MV3955 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3953 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3955 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3958 :ISA UTILIZE :PARTICIPANT MV3957 :OBJECT MV3960 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3957 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3960 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3967 :ISA TARGET :OBJECT MV3963 :AGENT MV3961 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3963 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3961 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV3972 :ISA UTILIZE :PARTICIPANT MV3971 :OBJECT MV3973 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3971 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3970 :RAW-TEXT
  "pathways")
 (:VAR MV3970 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3973 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV3984 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3974 :VALUE MV3983 :PREP
  "IN" :PREDICATE MV3977)
 (:VAR MV3974 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3983 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV3975
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV3975 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3980
  :RAW-TEXT "signaling pathway")
 (:VAR MV3980 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3977 :ISA BE :PRESENT "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV3989 :ISA REGULATE :AGENT MV3986 :OBJECT MV3987 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3986 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3987 :ISA PROTEIN :ORGAN MV3992 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV3992 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV3997 :ISA REGULATE :AGENT MV3994 :OBJECT MV3995 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3994 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3995 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    SOURCE-START
e11   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV4004 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4000 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4000 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV4002 :THEME
  MV3999 :PRESENT "PRESENT")
 (:VAR MV4002 :ISA TOP-QUA-LOCATION)
 (:VAR MV3999 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4013 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4007 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4007 :ISA SHOW :AT-RELATIVE-LOCATION MV4011 :STATEMENT-OR-THEME MV4006
  :PRESENT "PRESENT")
 (:VAR MV4011 :ISA TOP-QUA-LOCATION)
 (:VAR MV4006 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4009 :RAW-TEXT
  "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4009 :ISA PHOSPHORYLATE :SUBSTRATE MV4006 :RAW-TEXT "phosphorylated"))

___________________
436: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4016 :ISA BE :SUBJECT MV4015 :PREDICATE MV4019 :PRESENT "PRESENT")
 (:VAR MV4015 :ISA WHAT)
 (:VAR MV4019 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4023 :HAS-DETERMINER
  "THE" :PREDICATION MV4018 :RAW-TEXT "upstreams")
 (:VAR MV4023 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV4014 MV4022))
 (:VAR MV4014 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4022 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV4018 :ISA COMMON))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
ERROR -- encountered failure during parse

___________________
438: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
ERROR -- encountered failure during parse

___________________
439: "Show phosphorylated akt1 on top."

                    SOURCE-START
e11   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4039 :ISA SHOW :AT-RELATIVE-LOCATION MV4042 :STATEMENT-OR-THEME MV4038
  :PRESENT "PRESENT")
 (:VAR MV4042 :ISA TOP-QUA-LOCATION)
 (:VAR MV4038 :ISA PROTEIN :PREDICATION MV4040 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4040 :ISA PHOSPHORYLATE :SUBSTRATE MV4038 :RAW-TEXT "phosphorylated"))

___________________
440: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4046 :ISA BE :SUBJECT MV4045 :PREDICATE MV4049 :PRESENT "PRESENT")
 (:VAR MV4045 :ISA WHAT)
 (:VAR MV4049 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4053 :HAS-DETERMINER
  "THE" :PREDICATION MV4048 :RAW-TEXT "upstreams")
 (:VAR MV4053 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4044 MV4052))
 (:VAR MV4044 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4052 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4048 :ISA COMMON))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4062 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV4056 MV4060))
 (:VAR MV4056 :ISA BIO-ACTIVATE :AGENT MV4055 :OBJECT MV4057 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4055 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4057 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4060 :ISA BIO-ACTIVATE :AGENT MV4059 :OBJECT MV4061 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4059 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4061 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV4064 :ISA BE :SUBJECT MV4063 :PREDICATE MV4066 :PRESENT "PRESENT")
 (:VAR MV4063 :ISA WHAT)
 (:VAR MV4066 :ISA PATH :END MV4070 :START MV4068 :HAS-DETERMINER "THE")
 (:VAR MV4070 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4068 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV4073 :ISA REMOVE :OBJECT MV4080 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4080 :ISA FACT :STATEMENT MV4078 :HAS-DETERMINER "THE")
 (:VAR MV4078 :ISA BIO-ACTIVATE :AGENT MV4077 :OBJECT MV4079 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4077 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4079 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
e14   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 on top" 10
                    PERIOD
                    END-OF-SOURCE
("let's show phosphorylated akt1 on top."
 (:VAR MV4088 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4083 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4083 :ISA SHOW :AT-RELATIVE-LOCATION MV4086 :STATEMENT-OR-THEME MV4082
  :PRESENT "PRESENT")
 (:VAR MV4086 :ISA TOP-QUA-LOCATION)
 (:VAR MV4082 :ISA PROTEIN :PREDICATION MV4084 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4084 :ISA PHOSPHORYLATE :SUBSTRATE MV4082 :RAW-TEXT "phosphorylated"))

___________________
445: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4091 :ISA BE :SUBJECT MV4090 :PREDICATE MV4089 :PRESENT "PRESENT")
 (:VAR MV4090 :ISA WHAT)
 (:VAR MV4089 :ISA POSITIVE-REGULATOR :THEME MV4095 :RAW-TEXT
  "positive regulators")
 (:VAR MV4095 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4094 :RAW-TEXT
  "gene")
 (:VAR MV4094 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4100 :ISA REGULATE :AGENT MV4097 :OBJECT MV4101 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4097 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4101 :ISA PROTEIN :ORGAN MV4098 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV4098 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4112 :ISA POLAR-QUESTION :STATEMENT MV4111)
 (:VAR MV4111 :ISA THERE-EXISTS :VALUE MV4108 :PREDICATE MV4105)
 (:VAR MV4108 :ISA DRUG :PREDICATION MV4109 :QUANTIFIER MV4107 :RAW-TEXT
  "drugs")
 (:VAR MV4109 :ISA INHIBIT :AGENT MV4108 :OBJECT MV4110 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV4110 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4107 :ISA ANY :WORD "any") (:VAR MV4105 :ISA SYNTACTIC-THERE))

___________________
448: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4121 :ISA POLAR-QUESTION :STATEMENT MV4120)
 (:VAR MV4120 :ISA THERE-EXISTS :VALUE MV4117 :PREDICATE MV4114)
 (:VAR MV4117 :ISA DRUG :PREDICATION MV4118 :QUANTIFIER MV4116 :RAW-TEXT
  "drugs")
 (:VAR MV4118 :ISA TARGET :AGENT MV4117 :OBJECT MV4119 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV4119 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4116 :ISA ANY :WORD "any") (:VAR MV4114 :ISA SYNTACTIC-THERE))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4139 :ISA POLAR-QUESTION :STATEMENT MV4135)
 (:VAR MV4135 :ISA THERE-EXISTS :VALUE MV4127 :PREDICATE MV4124)
 (:VAR MV4127 :ISA GENE :PREDICATION MV4136 :ORGAN MV4130 :QUANTIFIER MV4126
  :RAW-TEXT "genes")
 (:VAR MV4136 :ISA REGULATE :OBJECT MV4127 :THAT-REL T :AGENT MV4122 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4122 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4130 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4126 :ISA ANY :WORD "any") (:VAR MV4124 :ISA SYNTACTIC-THERE))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4157 :ISA POLAR-QUESTION :STATEMENT MV4153)
 (:VAR MV4153 :ISA THERE-EXISTS :VALUE MV4145 :PREDICATE MV4142)
 (:VAR MV4145 :ISA GENE :PREDICATION MV4146 :QUANTIFIER MV4144 :RAW-TEXT
  "genes")
 (:VAR MV4146 :ISA INVOLVE :THEME MV4145 :THEME MV4148 :PAST "PAST")
 (:VAR MV4148 :ISA APOPTOSIS :PREDICATION MV4154 :RAW-TEXT "apoptosis")
 (:VAR MV4154 :ISA REGULATE :AFFECTED-PROCESS MV4148 :THAT-REL T :AGENT MV4140
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4140 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4144 :ISA ANY :WORD "any") (:VAR MV4142 :ISA SYNTACTIC-THERE))

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
("Are there any inhibitors for JAK1?"
 (:VAR MV4178 :ISA POLAR-QUESTION :STATEMENT MV4176)
 (:VAR MV4176 :ISA THERE-EXISTS :VALUE MV4174 :PREDICATE MV4171)
 (:VAR MV4174 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4169 :QUANTIFIER MV4173
  :RAW-TEXT "inhibitors")
 (:VAR MV4169 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV4173 :ISA ANY :WORD "any") (:VAR MV4171 :ISA SYNTACTIC-THERE))

___________________
453: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e19   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4191 :ISA POLAR-QUESTION :STATEMENT MV4188)
 (:VAR MV4188 :ISA THERE-EXISTS :VALUE MV4183 :PREDICATE MV4181)
 (:VAR MV4183 :ISA GENE :PREDICATION MV4184 :RAW-TEXT "genes")
 (:VAR MV4184 :ISA REGULATE :OBJECT MV4183 :AGENT MV4189 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4189 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4179 MV4187))
 (:VAR MV4179 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4187 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4181 :ISA SYNTACTIC-THERE))

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
e28   BIO-FIND      1 "Can you find any apoptotic pathways that stat3 is involved " 12
e15   IN            12 "in" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e28   S             1 "Can you find any apoptotic pathways that stat3 is involved " 12
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
("Can you show me genes regulated by ELK1"
 (:VAR MV4251 :ISA POLAR-QUESTION :STATEMENT MV4245)
 (:VAR MV4245 :ISA SHOW :AGENT MV4244 :STATEMENT-OR-THEME MV4247 :BENEFICIARY
  MV4246 :MODAL "CAN")
 (:VAR MV4244 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4247 :ISA GENE :PREDICATION MV4248 :RAW-TEXT "genes")
 (:VAR MV4248 :ISA REGULATE :OBJECT MV4247 :AGENT MV4242 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4242 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4246 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4264 :ISA POLAR-QUESTION :STATEMENT MV4255)
 (:VAR MV4255 :ISA SHOW :AGENT MV4254 :STATEMENT-OR-THEME MV4257 :BENEFICIARY
  MV4256 :MODAL "CAN")
 (:VAR MV4254 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4257 :ISA GENE :PREDICATION MV4262 :RAW-TEXT "genes")
 (:VAR MV4262 :ISA REGULATE :OBJECT MV4257 :THAT-REL T :AGENT MV4252 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4252 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4256 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4274 :ISA POLAR-QUESTION :STATEMENT MV4267)
 (:VAR MV4267 :ISA SHOW :AGENT MV4266 :STATEMENT-OR-THEME MV4270 :BENEFICIARY
  MV4268 :MODAL "CAN")
 (:VAR MV4266 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4270 :ISA BIO-ENTITY :PREDICATION MV4272 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4272 :ISA INVOLVE :THEME MV4270 :THAT-REL T :THEME MV4273 :MODAL
  "CAN")
 (:VAR MV4273 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4268 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
460: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3"
 (:VAR MV4285 :ISA POLAR-QUESTION :STATEMENT MV4278)
 (:VAR MV4278 :ISA TELL :AGENT MV4277 :THEME MV4281 :BENEFICIARY MV4279 :MODAL
  "CAN")
 (:VAR MV4277 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4281 :ISA GENE :PREDICATION MV4282 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4282 :ISA REGULATE :OBJECT MV4281 :AGENT MV4275 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4275 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4279 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV4295 :ISA POLAR-QUESTION :STATEMENT MV4289)
 (:VAR MV4289 :ISA TELL :AGENT MV4288 :THEME MV4292 :BENEFICIARY MV4290 :MODAL
  "CAN")
 (:VAR MV4288 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4292 :ISA GENE :PREDICATION MV4294 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4294 :ISA REGULATE :OBJECT MV4292 :THAT-REL T :AGENT MV4286 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4286 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4290 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV4309 :ISA POLAR-QUESTION :STATEMENT MV4299)
 (:VAR MV4299 :ISA TELL :AGENT MV4298 :THEME MV4302 :BENEFICIARY MV4300 :MODAL
  "CAN")
 (:VAR MV4298 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4302 :ISA GENE :PREDICATION MV4307 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4307 :ISA REGULATE :OBJECT MV4302 :THAT-REL T :AGENT MV4296 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4296 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4300 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV4324 :ISA POLAR-QUESTION :STATEMENT MV4313)
 (:VAR MV4313 :ISA TELL :AGENT MV4312 :THEME MV4316 :BENEFICIARY MV4314 :MODAL
  "CAN")
 (:VAR MV4312 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4316 :ISA GENE :PREDICATION MV4323 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4323 :ISA REGULATE :OBJECT MV4316 :AGENT MV4310 :MODAL MV4311
  :RAW-TEXT "regulated")
 (:VAR MV4310 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4311 :ISA CAN) (:VAR MV4314 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4340 :ISA POLAR-QUESTION :STATEMENT MV4329)
 (:VAR MV4329 :ISA TELL :AGENT MV4328 :THEME MV4338 :THEME MV4330 :MODAL "CAN")
 (:VAR MV4328 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4338 :ISA SHARE :OBJECT MV4325 :PARTICIPANT MV4337 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV4325 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4337 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4326 MV4336))
 (:VAR MV4326 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4336 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4330 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4353 :ISA POLAR-QUESTION :STATEMENT MV4344)
 (:VAR MV4344 :ISA TELL :AGENT MV4343 :THEME MV4351 :THEME MV4345 :MODAL "CAN")
 (:VAR MV4343 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4351 :ISA REGULATE :OBJECT MV4347 :AGENT MV4341 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4347 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4341 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4345 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4370 :ISA POLAR-QUESTION :STATEMENT MV4357)
 (:VAR MV4357 :ISA TELL :AGENT MV4356 :THEME MV4367 :THEME MV4358 :MODAL "CAN")
 (:VAR MV4356 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4367 :ISA REGULATE :OBJECT MV4360 :AGENT MV4354 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4360 :ISA GENE :ORGAN MV4363 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4363 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4354 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4358 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?"
 (:VAR MV4379 :ISA POLAR-QUESTION :STATEMENT MV4374)
 (:VAR MV4374 :ISA TELL :AGENT MV4373 :THEME MV4377 :BENEFICIARY MV4375 :MODAL
  "CAN")
 (:VAR MV4373 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4377 :ISA GENE :PREDICATION MV4378 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4378 :ISA REGULATE :OBJECT MV4377 :AGENT MV4371 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4371 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4375 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?"
 (:VAR MV4389 :ISA POLAR-QUESTION :STATEMENT MV4387)
 (:VAR MV4387 :ISA AFFECT :AGENT MV4380 :AFFECTED-PROCESS MV4385 :RAW-TEXT
  "affect")
 (:VAR MV4380 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4385 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4381 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4381 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4401 :ISA POLAR-QUESTION :STATEMENT MV4399)
 (:VAR MV4399 :ISA AFFECT :AGENT MV4390 :AFFECTED-PROCESS MV4395 :RAW-TEXT
  "affect")
 (:VAR MV4390 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4395 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4398 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4398 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4391 :RAW-TEXT
  "gene")
 (:VAR MV4391 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4414 :ISA POLAR-QUESTION :STATEMENT MV4412)
 (:VAR MV4412 :ISA INCREASE :AGENT MV4402 :AFFECTED-PROCESS MV4408 :RAW-TEXT
  "increase")
 (:VAR MV4402 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4408 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4411 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4411 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4403 :RAW-TEXT
  "gene")
 (:VAR MV4403 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4426 :ISA POLAR-QUESTION :STATEMENT MV4424)
 (:VAR MV4424 :ISA INCREASE :AGENT MV4415 :AFFECTED-PROCESS MV4420 :RAW-TEXT
  "increase")
 (:VAR MV4415 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4420 :ISA TRANSCRIBE :OBJECT MV4423 :RAW-TEXT "transcription")
 (:VAR MV4423 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4416 :RAW-TEXT
  "gene")
 (:VAR MV4416 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?"
 (:VAR MV4436 :ISA POLAR-QUESTION :STATEMENT MV4434)
 (:VAR MV4434 :ISA AFFECT :AGENT MV4427 :AFFECTED-PROCESS MV4431 :RAW-TEXT
  "affect")
 (:VAR MV4427 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4431 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4433 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4433 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?"
 (:VAR MV4446 :ISA POLAR-QUESTION :STATEMENT MV4445)
 (:VAR MV4445 :ISA CONTAIN :THEME MV4443 :PATIENT MV4437)
 (:VAR MV4443 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4440 :RAW-TEXT
  "pathway")
 (:VAR MV4440 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV4437 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4449 :ISA BIO-FIND :OBJECT MV4451 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4451 :ISA TREATMENT :DISEASE MV4447 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV4447 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4456 :ISA BIO-FIND :OBJECT MV4457 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4457 :ISA GENE :PREDICATION MV4461 :ORGAN MV4460 :RAW-TEXT "genes")
 (:VAR MV4461 :ISA REGULATE :OBJECT MV4457 :AGENT MV4454 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4454 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4460 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
476: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4467 :ISA BIO-FIND :OBJECT MV4468 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4468 :ISA GENE :PREDICATION MV4470 :RAW-TEXT "genes")
 (:VAR MV4470 :ISA REGULATE :OBJECT MV4468 :THAT-REL T :AGENT MV4465 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4465 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4474 :ISA BIO-FIND :OBJECT MV4471 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4471 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4475 :RAW-TEXT
  "transcription factors")
 (:VAR MV4475 :ISA SHARE :OBJECT MV4471 :PARTICIPANT MV4479 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV4479 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4472 MV4478))
 (:VAR MV4472 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4478 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4485 :ISA BIO-ACTIVATE :MANNER MV4482 :AGENT MV4484 :OBJECT MV4481
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV4482 :ISA HOW)
 (:VAR MV4484 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4481 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4490 :ISA REGULATE :MANNER MV4488 :AGENT MV4486 :OBJECT MV4492
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4488 :ISA HOW)
 (:VAR MV4486 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4492 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4487 :RAW-TEXT
  "gene")
 (:VAR MV4487 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
480: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    SOURCE-START
e26   KNOCK-OUT     1 "How does knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("How does knocking out p53 cause cancer via its effect on miRNAs?"
 (:VAR MV4507 :ISA KNOCK-OUT :RAW-TEXT "knocking out" :CAUSE MV4494 :OBJECT
  MV4511)
 (:VAR MV4494 :ISA HOW)
 (:VAR MV4511 :ISA CANCER :MODIFIER MV4498 :MODIFIER MV4498)
 (:VAR MV4498 :ISA CAUSE :BY-MEANS-OF MV4509 :RAW-TEXT "cause")
 (:VAR MV4509 :ISA EFFECT :OBJECT MV4506 :PARTICIPANT MV4502 :RAW-TEXT
  "effect")
 (:VAR MV4506 :ISA MICRO-RNA :RAW-TEXT "miRNAs")
 (:VAR MV4502 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
481: "How does stat3 regulate apoptosis in the liver?"

                    SOURCE-START
e16   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis in the liver?"
 (:VAR MV4515 :ISA REGULATE :MANNER MV4513 :AGENT MV4512 :AFFECTED-PROCESS
  MV4516 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4513 :ISA HOW)
 (:VAR MV4512 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4516 :ISA APOPTOSIS :ORGAN MV4519 :RAW-TEXT "apoptosis")
 (:VAR MV4519 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4524 :ISA REGULATE :MANNER MV4522 :AGENT MV4521 :AFFECTED-PROCESS
  MV4525 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4522 :ISA HOW)
 (:VAR MV4521 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4525 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4529 :ISA REGULATE :MANNER MV4527 :AGENT MV4526 :OBJECT MV4532
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4527 :ISA HOW)
 (:VAR MV4526 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4532 :ISA GENE :CELLULAR-PROCESS MV4530 :RAW-TEXT "genes")
 (:VAR MV4530 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e16   BE            1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4542 :ISA WH-QUESTION :STATEMENT MV4535 :WH HOW)
 (:VAR MV4535 :ISA BE :PREDICATE MV4533 :PRESENT "PRESENT")
 (:VAR MV4533 :ISA PROTEIN :PREDICATION MV4536 :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4536 :ISA INVOLVE :THEME MV4533 :THEME MV4540 :PAST "PAST")
 (:VAR MV4540 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV4538 :RAW-TEXT
  "regulation")
 (:VAR MV4538 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e23   BE            1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4555 :ISA WH-QUESTION :STATEMENT MV4545 :WH HOW)
 (:VAR MV4545 :ISA BE :PREDICATE MV4543 :PRESENT "PRESENT")
 (:VAR MV4543 :ISA PROTEIN :PREDICATION MV4546 :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4546 :ISA INVOLVE :THEME MV4543 :THEME MV4548 :PAST "PAST")
 (:VAR MV4548 :ISA REGULATE :OBJECT MV4552 :ORGAN MV4551 :AGENT-OR-OBJECT
  MV4552 :RAW-TEXT "regulation")
 (:VAR MV4552 :ISA BIO-ENTITY :NAME "apoptotis")
 (:VAR MV4551 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e15   BE            1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4564 :ISA WH-QUESTION :STATEMENT MV4558 :WH HOW)
 (:VAR MV4558 :ISA BE :PREDICATE MV4556 :PRESENT "PRESENT")
 (:VAR MV4556 :ISA PROTEIN :PREDICATION MV4559 :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4559 :ISA INVOLVE :THEME MV4556 :THEME MV4561 :PAST "PAST")
 (:VAR MV4561 :ISA REGULATE :AFFECTED-PROCESS MV4562 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV4562 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e15   BE            1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4573 :ISA WH-QUESTION :STATEMENT MV4567 :WH HOW)
 (:VAR MV4567 :ISA BE :PREDICATE MV4565 :PRESENT "PRESENT")
 (:VAR MV4565 :ISA PROTEIN :PREDICATION MV4568 :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4568 :ISA BIO-USE :OBJECT MV4565 :THEME MV4572 :PAST "PAST" :RAW-TEXT
  "used")
 (:VAR MV4572 :ISA REGULATE :AFFECTED-PROCESS MV4571 :RAW-TEXT "regulate")
 (:VAR MV4571 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4585 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4577 :VALUE MV4584 :PREP
  "IN" :PREDICATE MV4578)
 (:VAR MV4577 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4576 :RAW-TEXT
  "genes")
 (:VAR MV4576 :ISA MANY :WORD "many")
 (:VAR MV4584 :ISA GENE :CONTEXT MV4574 :HAS-DETERMINER "HOW" :QUANTIFIER
  MV4576 :RAW-TEXT "genes")
 (:VAR MV4574 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4581
  :RAW-TEXT "signaling pathway")
 (:VAR MV4581 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV4578 :ISA BE :PRESENT "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4594 :ISA AFFECT :MANNER MV4589 :MODAL MV4590 :AGENT MV4592 :OBJECT
  MV4588 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4589 :ISA HOW) (:VAR MV4590 :ISA MIGHT)
 (:VAR MV4592 :ISA MUTATION :OBJECT MV4587 :HAS-DETERMINER "A" :AGENT-OR-OBJECT
  MV4587 :RAW-TEXT "mutation")
 (:VAR MV4587 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4588 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4602 :ISA POLAR-QUESTION :STATEMENT MV4597)
 (:VAR MV4597 :ISA BE :SUBJECT MV4595 :PREDICATE MV4599)
 (:VAR MV4595 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4599 :ISA REGULATOR :THEME MV4596 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4596 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
491: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4610 :ISA POLAR-QUESTION :STATEMENT MV4605)
 (:VAR MV4605 :ISA BE :SUBJECT MV4603 :PREDICATE MV4607)
 (:VAR MV4603 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4607 :ISA REGULATOR :THEME MV4604 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4604 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4620 :ISA POLAR-QUESTION :STATEMENT MV4613)
 (:VAR MV4613 :ISA BE :SUBJECT MV4611 :PREDICATE MV4615)
 (:VAR MV4611 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4615 :ISA REGULATOR :THEME MV4618 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4618 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4612 :RAW-TEXT
  "gene")
 (:VAR MV4612 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
493: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV4630 :ISA POLAR-QUESTION :STATEMENT MV4623)
 (:VAR MV4623 :ISA BE :SUBJECT MV4621 :PREDICATE MV4625)
 (:VAR MV4621 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4625 :ISA REGULATOR :THEME MV4628 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4628 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4622 :RAW-TEXT
  "gene")
 (:VAR MV4622 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4639 :ISA POLAR-QUESTION :STATEMENT MV4634)
 (:VAR MV4634 :ISA BE :SUBJECT MV4631 :PREDICATE MV4632)
 (:VAR MV4631 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4632 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4637 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4637 :ISA GENE :EXPRESSES MV4633 :RAW-TEXT "gene")
 (:VAR MV4633 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
495: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV4647 :ISA POLAR-QUESTION :STATEMENT MV4643)
 (:VAR MV4643 :ISA BE :SUBJECT MV4640 :PREDICATE MV4641)
 (:VAR MV4640 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4641 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4642 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4642 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
496: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV4655 :ISA POLAR-QUESTION :STATEMENT MV4651)
 (:VAR MV4651 :ISA BE :SUBJECT MV4648 :PREDICATE MV4649)
 (:VAR MV4648 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4649 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4650 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4650 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
497: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV4665 :ISA POLAR-QUESTION :STATEMENT MV4659)
 (:VAR MV4659 :ISA BE :SUBJECT MV4656 :PREDICATE MV4657)
 (:VAR MV4656 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4657 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4663 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4663 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4658 :RAW-TEXT
  "gene")
 (:VAR MV4658 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
498: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e11   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?"
 (:VAR MV4672 :ISA POLAR-QUESTION :STATEMENT MV4669)
 (:VAR MV4669 :ISA REGULATE :OBJECT MV4666 :AGENT MV4667 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4666 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4667 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4682 :ISA POLAR-QUESTION :STATEMENT MV4676)
 (:VAR MV4676 :ISA BE :SUBJECT MV4673 :PREDICATE MV4674)
 (:VAR MV4673 :ISA PROTEIN :RAW-TEXT "Stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4674 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4680 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4680 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4675 :RAW-TEXT
  "gene")
 (:VAR MV4675 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
500: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1"
 (:VAR MV4684 :ISA LIST :THEME MV4685 :PRESENT "PRESENT")
 (:VAR MV4685 :ISA GENE :PREDICATION MV4686 :RAW-TEXT "genes")
 (:VAR MV4686 :ISA REGULATE :OBJECT MV4685 :AGENT MV4683 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4683 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1"
 (:VAR MV4690 :ISA LIST :THEME MV4691 :PRESENT "PRESENT")
 (:VAR MV4691 :ISA GENE :PREDICATION MV4696 :RAW-TEXT "genes")
 (:VAR MV4696 :ISA REGULATE :OBJECT MV4691 :THAT-REL T :AGENT MV4689 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4689 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates"
 (:VAR MV4699 :ISA LIST :THEME MV4701 :PRESENT "PRESENT")
 (:VAR MV4701 :ISA GENE :PREDICATION MV4703 :QUANTIFIER MV4700 :RAW-TEXT
  "genes")
 (:VAR MV4703 :ISA REGULATE :OBJECT MV4701 :THAT-REL T :AGENT MV4698 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4698 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4700 :ISA SOME :WORD "some"))

___________________
503: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates"
 (:VAR MV4705 :ISA LIST :THEME MV4707 :PRESENT "PRESENT")
 (:VAR MV4707 :ISA GENE :PREDICATION MV4708 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4708 :ISA REGULATE :OBJECT MV4707 :AGENT MV4704 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4704 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4710 :ISA LIST :THEME MV4712 :PRESENT "PRESENT")
 (:VAR MV4712 :ISA GENE :PREDICATION MV4717 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4717 :ISA REGULATE :OBJECT MV4712 :THAT-REL T :AGENT MV4709 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4709 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates"
 (:VAR MV4720 :ISA LIST :THEME MV4722 :PRESENT "PRESENT")
 (:VAR MV4722 :ISA GENE :PREDICATION MV4724 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4724 :ISA REGULATE :OBJECT MV4722 :AGENT MV4719 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4719 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF"
 (:VAR MV4725 :ISA LIST :THEME MV4727 :PRESENT "PRESENT")
 (:VAR MV4727 :ISA BIO-ENTITY :PREDICATION MV4729 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4729 :ISA INVOLVE :THEME MV4727 :THAT-REL T :THEME MV4730 :PRESENT
  "PRESENT")
 (:VAR MV4730 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
507: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4732 :ISA SHOW :STATEMENT-OR-THEME MV4734 :BENEFICIARY MV4733 :PRESENT
  "PRESENT")
 (:VAR MV4734 :ISA GENE :PREDICATION MV4735 :RAW-TEXT "genes")
 (:VAR MV4735 :ISA REGULATE :OBJECT MV4734 :AGENT MV4731 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4731 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4733 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4739 :ISA SHOW :STATEMENT-OR-THEME MV4741 :BENEFICIARY MV4740 :PRESENT
  "PRESENT")
 (:VAR MV4741 :ISA GENE :PREDICATION MV4746 :RAW-TEXT "genes")
 (:VAR MV4746 :ISA REGULATE :OBJECT MV4741 :THAT-REL T :AGENT MV4738 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4738 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4740 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4749 :ISA SHOW :STATEMENT-OR-THEME MV4751 :BENEFICIARY MV4750 :PRESENT
  "PRESENT")
 (:VAR MV4751 :ISA GENE :PREDICATION MV4753 :RAW-TEXT "genes")
 (:VAR MV4753 :ISA REGULATE :OBJECT MV4751 :THAT-REL T :AGENT MV4748 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4748 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4750 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4754 :ISA SHOW :STATEMENT-OR-THEME MV4757 :BENEFICIARY MV4755 :PRESENT
  "PRESENT")
 (:VAR MV4757 :ISA BIO-ENTITY :PREDICATION MV4759 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4759 :ISA INVOLVE :THEME MV4757 :THAT-REL T :THEME MV4760 :PRESENT
  "PRESENT")
 (:VAR MV4760 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4755 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4774 :ISA SHOW :STATEMENT MV4772 :THEME MV4764 :PRESENT "PRESENT")
 (:VAR MV4772 :ISA SHARE :OBJECT MV4761 :PARTICIPANT MV4771 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4761 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4771 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4762 MV4770))
 (:VAR MV4762 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4770 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4764 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4785 :ISA SHOW :STATEMENT MV4783 :THEME MV4777 :PRESENT "PRESENT")
 (:VAR MV4783 :ISA REGULATE :OBJECT MV4779 :AGENT MV4775 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4779 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4775 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4777 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4787 :ISA SHOW :STATEMENT-OR-THEME MV4789 :PRESENT "PRESENT")
 (:VAR MV4789 :ISA GENE :PREDICATION MV4791 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4791 :ISA REGULATE :OBJECT MV4789 :AGENT MV4786 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4786 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4792 :ISA SHOW :STATEMENT-OR-THEME MV4794 :PRESENT "PRESENT")
 (:VAR MV4794 :ISA BIO-ENTITY :PREDICATION MV4796 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4796 :ISA INVOLVE :THEME MV4794 :THAT-REL T :THEME MV4797 :PRESENT
  "PRESENT")
 (:VAR MV4797 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4800 :ISA SHOW :STATEMENT-OR-THEME MV4798 :PRESENT "PRESENT")
 (:VAR MV4798 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4808 :RAW-TEXT
  "transcription factors")
 (:VAR MV4808 :ISA SHARE :OBJECT MV4798 :THAT-REL T :PARTICIPANT MV4807
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4807 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4799 MV4806))
 (:VAR MV4799 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4806 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV4811 :ISA TELL :THEME MV4814 :BENEFICIARY MV4812 :PRESENT "PRESENT")
 (:VAR MV4814 :ISA GENE :PREDICATION MV4821 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4821 :ISA REGULATE :OBJECT MV4814 :AGENT MV4810 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4810 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4812 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4823 :ISA TELL :THEME MV4833 :THEME MV4824 :PRESENT "PRESENT")
 (:VAR MV4833 :ISA REGULATE :OBJECT MV4826 :AGENT MV4832 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4826 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4832 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4822 MV4831))
 (:VAR MV4822 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4831 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4824 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4836 :ISA TELL :THEME MV4843 :THEME MV4837 :PRESENT "PRESENT")
 (:VAR MV4843 :ISA REGULATE :OBJECT MV4839 :AGENT MV4835 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4839 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4835 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4837 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4847 :ISA BE :SUBJECT MV4846 :PREDICATE MV4845 :PRESENT "PRESENT")
 (:VAR MV4846 :ISA WHAT)
 (:VAR MV4845 :ISA POSITIVE-REGULATOR :THEME MV4849 :RAW-TEXT
  "positive regulators")
 (:VAR MV4849 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4853 :ISA BE :SUBJECT MV4852 :PREDICATE MV4855 :PRESENT "PRESENT")
 (:VAR MV4852 :ISA WHAT)
 (:VAR MV4855 :ISA REGULATOR :THEME MV4851 :QUANTIFIER MV4854 :RAW-TEXT
  "regulators")
 (:VAR MV4851 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV4854 :ISA SOME :WORD "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4864 :ISA BE :SUBJECT MV4863 :PREDICATE MV4867 :PRESENT "PRESENT")
 (:VAR MV4863 :ISA WHAT)
 (:VAR MV4867 :ISA REGULATOR :THEME MV4871 :HAS-DETERMINER "THE" :PREDICATION
  MV4866 :RAW-TEXT "regulators")
 (:VAR MV4871 :ISA COLLECTION :RAW-TEXT
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE PROTEIN :NUMBER 6 :ITEMS
  (MV4858 MV4859 MV4869 MV4860 MV4861 MV4862))
 (:VAR MV4858 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME
  "ABI2_HUMAN")
 (:VAR MV4859 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME
  "ABL1_HUMAN")
 (:VAR MV4869 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME
  "ACDSB_HUMAN")
 (:VAR MV4860 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME
  "AGRL1_HUMAN")
 (:VAR MV4861 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME
  "ADRM1_HUMAN")
 (:VAR MV4862 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME
  "AGAP1_HUMAN")
 (:VAR MV4866 :ISA COMMON))

___________________
522: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4875 :ISA BE :SUBJECT MV4874 :PREDICATE MV4878 :PRESENT "PRESENT")
 (:VAR MV4874 :ISA WHAT)
 (:VAR MV4878 :ISA REGULATOR :THEME MV4882 :HAS-DETERMINER "THE" :PREDICATION
  MV4877 :RAW-TEXT "regulators")
 (:VAR MV4882 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4873 MV4881))
 (:VAR MV4873 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4881 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4877 :ISA COMMON))

___________________
523: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4886 :ISA BE :SUBJECT MV4885 :PREDICATE MV4889 :PRESENT "PRESENT")
 (:VAR MV4885 :ISA WHAT)
 (:VAR MV4889 :ISA REGULATOR :THEME MV4893 :HAS-DETERMINER "THE" :PREDICATION
  MV4888 :RAW-TEXT "regulators")
 (:VAR MV4893 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4884 MV4892))
 (:VAR MV4884 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4892 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4888 :ISA COMMON))

___________________
524: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4896 :ISA BE :SUBJECT MV4895 :PREDICATE MV4899 :PRESENT "PRESENT")
 (:VAR MV4895 :ISA WHAT)
 (:VAR MV4899 :ISA REGULATOR :THEME MV4902 :HAS-DETERMINER "THE" :PREDICATION
  MV4898 :RAW-TEXT "regulators")
 (:VAR MV4902 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV4898 :ISA COMMON))

___________________
525: "What are the genes regulated by STAT3?"

                    SOURCE-START
e16   BE            1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4906 :ISA BE :SUBJECT MV4905 :PREDICATE MV4908 :PRESENT "PRESENT")
 (:VAR MV4905 :ISA WHAT)
 (:VAR MV4908 :ISA GENE :PREDICATION MV4909 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4909 :ISA REGULATE :OBJECT MV4908 :AGENT MV4904 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4904 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4914 :ISA BE :SUBJECT MV4913 :PREDICATE MV4916 :PRESENT "PRESENT")
 (:VAR MV4913 :ISA WHAT)
 (:VAR MV4916 :ISA GENE :PREDICATION MV4918 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4918 :ISA REGULATE :OBJECT MV4916 :AGENT MV4912 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4912 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4923 :ISA BE :SUBJECT MV4922 :PREDICATE MV4927 :PRESENT "PRESENT")
 (:VAR MV4922 :ISA WHAT)
 (:VAR MV4927 :ISA REGULATOR :THEME MV4932 :HAS-DETERMINER "THE" :MODIFIER
  MV4926 :RAW-TEXT "regulators")
 (:VAR MV4932 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4929 MV4930 MV4919 MV4920 MV4921))
 (:VAR MV4929 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4930 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4919 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4920 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4921 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV4926 :ISA FREQUENT :COMPARATIVE MV4925 :NAME "frequent")
 (:VAR MV4925 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV4939 :ISA BE :SUBJECT MV4938 :PREDICATE MV4934 :PRESENT "PRESENT")
 (:VAR MV4938 :ISA WHAT)
 (:VAR MV4934 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4942 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV4942 :ISA REGULATE :AGENT MV4934 :THAT-REL T :OBJECT MV4946 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4946 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4943 MV4944 MV4935 MV4936 MV4937))
 (:VAR MV4943 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4944 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4935 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4936 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4937 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV4958 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4949 :VALUE MV4957 :PREP
  "IN" :PREDICATE MV4950)
 (:VAR MV4949 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV4948 :RAW-TEXT
  "genes")
 (:VAR MV4948 :ISA OTHER :WORD "other")
 (:VAR MV4957 :ISA GENE :CONTEXT MV4954 :HAS-DETERMINER "WHAT" :QUANTIFIER
  MV4948 :RAW-TEXT "genes")
 (:VAR MV4954 :ISA PATHWAY :QUANTIFIER MV4953 :RAW-TEXT "pathway")
 (:VAR MV4953 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4950 :ISA BE :PRESENT "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV4971 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4962 :VALUE MV4970 :PREP
  "IN" :PREDICATE MV4963)
 (:VAR MV4962 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV4961 :RAW-TEXT
  "proteins")
 (:VAR MV4961 :ISA OTHER :WORD "other")
 (:VAR MV4970 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4967 :HAS-DETERMINER "WHAT"
  :QUANTIFIER MV4961 :RAW-TEXT "proteins")
 (:VAR MV4967 :ISA PATHWAY :QUANTIFIER MV4966 :RAW-TEXT "pathway")
 (:VAR MV4966 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4963 :ISA BE :PRESENT "PRESENT"))

___________________
531: "What pathways are they in?"

                    SOURCE-START
e9    IN            1 "What pathways are they in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are they in?"
 (:VAR MV4978 :ISA WH-QUESTION :STATEMENT MV4977 :VAR NIL :WH WHAT)
 (:VAR MV4977 :ISA IN :WORD "in"))

___________________
532: "What pathways involve SOARING?"

                    SOURCE-START
e6    SOAR          1 "What pathways involve SOARING" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SOARING?"
 (:VAR MV4982 :ISA WH-QUESTION :STATEMENT
  (#<soar 93540> (PRESENT #<ref-category PRESENT>)) :VAR NIL :WH WHAT))

___________________
533: "What proteins are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    END-OF-SOURCE
("What proteins are in the first pathway"
 (:VAR MV4993 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4984 :VALUE MV4992 :PREP
  "IN" :PREDICATE MV4985)
 (:VAR MV4984 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV4992 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4989 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "proteins")
 (:VAR MV4989 :ISA PATHWAY :QUANTIFIER MV4988 :RAW-TEXT "pathway")
 (:VAR MV4988 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4985 :ISA BE :PRESENT "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV4998 :ISA INVOLVE :THEME MV4997 :THEME MV4995 :PRESENT "PRESENT")
 (:VAR MV4997 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV4995 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5009 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5000 :VALUE MV5008 :PREP
  "IN" :PREDICATE MV5001)
 (:VAR MV5000 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5008 :ISA GENE :CONTEXT MV5005 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV5005 :ISA PATHWAY :QUANTIFIER MV5004 :RAW-TEXT "pathway")
 (:VAR MV5004 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV5001 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    SOURCE-START
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5021 :ISA ANSWER :PATIENT MV5012 :MODAL MV5014 :AGENT MV5015 :THEME
  MV5019 :PRESENT "PRESENT")
 (:VAR MV5012 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5014 :ISA CAN)
 (:VAR MV5015 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5019 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5025 :ISA REGULATE :AGENT MV5022 :OBJECT MV5023 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5022 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5023 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
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
 (:VAR MV5029 :ISA REGULATE :LOCATION MV5027 :AGENT MV5026 :OBJECT MV5030
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5027 :ISA WHERE)
 (:VAR MV5026 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5030 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5034 :ISA INVOLVE :THEME MV5033 :THEME MV5035 :PRESENT "PRESENT")
 (:VAR MV5033 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5032 :RAW-TEXT
  "pathways")
 (:VAR MV5032 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5035 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :NAME "adenosine 5'-triphosphate"
  :UID "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5046 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5038 :VALUE MV5045 :PREP
  "IN" :PREDICATE MV5039)
 (:VAR MV5038 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5045 :ISA GENE :CONTEXT MV5036 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV5036 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5042
  :RAW-TEXT "signaling pathway")
 (:VAR MV5042 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5039 :ISA BE :PRESENT "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5059 :ISA INVOLVE :THEME MV5050 :CONTEXT MV5048 :PRESENT "PRESENT")
 (:VAR MV5050 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5048 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5055
  :MODIFIER MV5056 :RAW-TEXT "signaling pathway")
 (:VAR MV5055 :ISA ONCOGENIC)
 (:VAR MV5056 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5062 :ISA REGULATE :AGENT MV5061 :OBJECT MV5063 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5061 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5063 :ISA BIO-ENTITY :NAME "x"))

___________________
543: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5064 :ISA DOWNREGULATE :AGENT MV5066 :OBJECT MV5067 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5066 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5067 :ISA BIO-ENTITY :NAME "x"))

___________________
544: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5068 :ISA UPREGULATE :AGENT MV5070 :OBJECT MV5071 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulate")
 (:VAR MV5070 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5071 :ISA BIO-ENTITY :NAME "x"))

___________________
545: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5080 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5074 :VALUE MV5078 :PREP
  MV5076 :PREDICATE MV5075)
 (:VAR MV5074 :ISA THESE :QUANTIFIER MV5072 :WORD "these")
 (:VAR MV5072 :ISA WHICH)
 (:VAR MV5078 :ISA PATHWAY :MODIFIER MV5077 :RAW-TEXT "pathways")
 (:VAR MV5077 :ISA IMMUNE :NAME "immune") (:VAR MV5076 :ISA IN :WORD "in")
 (:VAR MV5075 :ISA BE :PRESENT "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5090 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5085 :VALUE MV5088 :PREP
  MV5087 :PREDICATE MV5086)
 (:VAR MV5085 :ISA THESE :QUANTIFIER MV5083 :WORD "these")
 (:VAR MV5083 :ISA WHICH)
 (:VAR MV5088 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5082 :RAW-TEXT "pathways")
 (:VAR MV5082 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV5087 :ISA IN :WORD "in") (:VAR MV5086 :ISA BE :PRESENT "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5094 :ISA BE :SUBJECT MV5093 :PREDICATE MV5096 :PRESENT "PRESENT")
 (:VAR MV5093 :ISA WHAT)
 (:VAR MV5096 :ISA GENE :PREDICATION MV5097 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV5097 :ISA REGULATE :OBJECT MV5096 :AGENT MV5092 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5092 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5107 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5100 :VALUE MV5105 :PREP
  MV5102 :PREDICATE MV5101)
 (:VAR MV5100 :ISA THOSE :QUANTIFIER MV5098 :WORD "those")
 (:VAR MV5098 :ISA WHICH)
 (:VAR MV5105 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5104 :RAW-TEXT
  "pathway")
 (:VAR MV5104 :ISA IMMUNE :NAME "immune") (:VAR MV5102 :ISA IN :WORD "in")
 (:VAR MV5101 :ISA BE :PRESENT "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5112 :ISA INVOLVE :THEME MV5111 :THEME MV5109 :PRESENT "PRESENT")
 (:VAR MV5111 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5109 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5122 :ISA POLAR-QUESTION :STATEMENT MV5115)
 (:VAR MV5115 :ISA SHOW :AGENT MV5114 :STATEMENT-OR-THEME MV5118 :BENEFICIARY
  MV5116 :MODAL "CAN")
 (:VAR MV5114 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5118 :ISA BIO-ENTITY :PREDICATION MV5120 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV5120 :ISA INVOLVE :THEME MV5118 :THAT-REL T :THEME MV5121 :MODAL
  "CAN")
 (:VAR MV5121 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5116 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV5128 :ISA POLAR-QUESTION :STATEMENT MV5127)
 (:VAR MV5127 :ISA INHIBIT :AGENT MV5125 :OBJECT MV5123 :RAW-TEXT "inhibit")
 (:VAR MV5125 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV5123 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5138 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5130 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5130 :ISA BUILD :ARTIFACT MV5132 :PRESENT "PRESENT")
 (:VAR MV5132 :ISA MODEL :OBJECT MV5136 :HAS-DETERMINER "A")
 (:VAR MV5136 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5135)
 (:VAR MV5135 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5156 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5154 MV5155))
 (:VAR MV5154 :ISA KNOW :AGENT MV5139 :STATEMENT MV5145 :PRESENT "PRESENT")
 (:VAR MV5139 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5145 :ISA BIO-ACTIVATE :AGENT MV5144 :OBJECT MV5146 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5144 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5146 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5155 :ISA COLLECTION :RAW-TEXT
  "Raf activates Mek and Mek activates Erk" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV5148 MV5152))
 (:VAR MV5148 :ISA BIO-ACTIVATE :AGENT MV5147 :OBJECT MV5149 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5147 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5149 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5152 :ISA BIO-ACTIVATE :AGENT MV5151 :OBJECT MV5153 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5151 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5153 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV5159 :ISA PHOSPHORYLATE :AGENT MV5157 :SUBSTRATE MV5158 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV5157 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV5158 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5162 :ISA DEPHOSPHORYLATE :AGENT MV5160 :SUBSTRATE MV5161 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV5160 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5161 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5173 :ISA POLAR-QUESTION :STATEMENT MV5172)
 (:VAR MV5172 :ISA COPULAR-PREDICATION :ITEM MV5166 :VALUE MV5170 :PREDICATE
  MV5164)
 (:VAR MV5166 :ISA BIO-AMOUNT :MEASURED-ITEM MV5163 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5163 :ISA PROTEIN :PREDICATION MV5168 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5168 :ISA PHOSPHORYLATE :SUBSTRATE MV5163 :RAW-TEXT "phosphorylated")
 (:VAR MV5170 :ISA HIGH :ADVERB MV5169)
 (:VAR MV5169 :ISA ALWAYS :NAME "always") (:VAR MV5164 :ISA BE))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5184 :ISA POLAR-QUESTION :STATEMENT MV5183)
 (:VAR MV5183 :ISA COPULAR-PREDICATION :ITEM MV5177 :VALUE MV5181 :PREDICATE
  MV5175)
 (:VAR MV5177 :ISA BIO-AMOUNT :MEASURED-ITEM MV5174 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5174 :ISA PROTEIN :PREDICATION MV5179 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5179 :ISA PHOSPHORYLATE :SUBSTRATE MV5174 :RAW-TEXT "phosphorylated")
 (:VAR MV5181 :ISA LOW :ADVERB MV5180) (:VAR MV5180 :ISA ALWAYS :NAME "always")
 (:VAR MV5175 :ISA BE))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV5194 :ISA POLAR-QUESTION :STATEMENT MV5193)
 (:VAR MV5193 :ISA VANISH :AGENT MV5192 :RAW-TEXT "vanish")
 (:VAR MV5192 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV5186 :COMPONENT MV5185)
 (:VAR MV5186 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5185 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV5204 :ISA POLAR-QUESTION :STATEMENT MV5203)
 (:VAR MV5203 :ISA VANISH :AGENT MV5202 :RAW-TEXT "vanish")
 (:VAR MV5202 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV5196 :COMPONENT MV5195)
 (:VAR MV5196 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5195 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 " 17
e38   BY            17 "by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e49   S             1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 " 17
e38   PP            17 "by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
561: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5235 :ISA SHOW :STATEMENT-OR-THEME MV5242 :BENEFICIARY MV5236 :PRESENT
  "PRESENT")
 (:VAR MV5242 :ISA EVIDENCE :STATEMENT MV5241 :HAS-DETERMINER "THE")
 (:VAR MV5241 :ISA REGULATE :AGENT MV5240 :OBJECT MV5234 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5240 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5234 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV5236 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5246 :ISA INCREASE :AGENT-OR-CAUSE MV5244 :AFFECTED-PROCESS-OR-OBJECT
  MV5248 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5244 :ISA WHAT)
 (:VAR MV5248 :ISA BIO-AMOUNT :MEASURED-ITEM MV5243 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5243 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5261 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5253 :VALUE MV5260 :PREP
  "IN" :PREDICATE MV5254)
 (:VAR MV5253 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5260 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5251 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV5251 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5257
  :RAW-TEXT "signaling pathway")
 (:VAR MV5257 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5254 :ISA BE :PRESENT "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5274 :ISA POLAR-QUESTION :STATEMENT MV5272)
 (:VAR MV5272 :ISA REGULATE :AGENT MV5263 :OBJECT MV5268 :RAW-TEXT "regulate")
 (:VAR MV5263 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5268 :ISA GENE :ORGAN MV5271 :HAS-DETERMINER "THE" :EXPRESSES MV5264
  :RAW-TEXT "gene")
 (:VAR MV5271 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5264 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5281 :ISA REGULATE :OBJECT MV5277 :AGENT MV5275 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5277 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5275 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5290 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5286 :AGENT MV5283
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5286 :ISA THESE :QUANTIFIER MV5284 :WORD "these")
 (:VAR MV5284 :ISA WHICH)
 (:VAR MV5283 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5298 :ISA REGULATE :AGENT-OR-CAUSE MV5295 :OBJECT MV5299 :PRESENT
  "PRESENT" :ADVERB MV5296 :RAW-TEXT "regulate")
 (:VAR MV5295 :ISA THESE :QUANTIFIER MV5293 :WORD "these")
 (:VAR MV5293 :ISA WHICH)
 (:VAR MV5299 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5296 :ISA ALSO :NAME "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5304 :ISA TRANSCRIBE :AGENT MV5301 :OBJECT MV5302 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV5301 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5302 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5308 :ISA TRANSCRIBE :AGENT MV5305 :OBJECT MV5306 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV5305 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV5306 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5312 :ISA UTILIZE :PARTICIPANT MV5311 :OBJECT MV5313 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV5311 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5310 :RAW-TEXT
  "pathways")
 (:VAR MV5310 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5313 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
571: "What transcription factors are in the calcium regulated pathways?"

                    SOURCE-START
e17   REGULATE      1 "What transcription factors are in the calcium regulated pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in the calcium regulated pathways?"
 (:VAR MV5324 :ISA WH-QUESTION :STATEMENT MV5320 :VAR NIL :WH WHAT)
 (:VAR MV5320 :ISA REGULATE :AFFECTED-PROCESS MV5321 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV5321 :ISA PATHWAY :RAW-TEXT "pathways"))

___________________
572: "What pathways involve the immune system?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the immune system?"
 (:VAR MV5328 :ISA INVOLVE :THEME MV5327 :THEME MV5325 :PRESENT "PRESENT")
 (:VAR MV5327 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5325 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :NAME "immune system" :UID
  "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5335 :ISA INVOLVE :THEME MV5334 :THEME MV5338 :PRESENT "PRESENT")
 (:VAR MV5334 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5333 :RAW-TEXT
  "pathways")
 (:VAR MV5333 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5338 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5330 MV5336 MV5331))
 (:VAR MV5330 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME
  "ERBB2_HUMAN")
 (:VAR MV5336 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5331 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME
  "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5346 :ISA SHARE :OBJECT MV5340 :PARTICIPANT MV5345 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5340 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5345 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
575: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5354 :ISA REGULATE :OBJECT MV5349 :AGENT MV5353 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5349 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5353 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5357 :ISA BE :SUBJECT MV5356 :PREDICATE MV5359 :PRESENT "PRESENT")
 (:VAR MV5356 :ISA WHAT)
 (:VAR MV5359 :ISA PATHWAY :PATHWAYCOMPONENT MV5362 :PREDICATION MV5358
  :RAW-TEXT "pathways")
 (:VAR MV5362 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV5358 :ISA COMMON))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5376 :ISA SHARE :OBJECT MV5369 :PARTICIPANT MV5374 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5369 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5368 :RAW-TEXT
  "pathways")
 (:VAR MV5368 :ISA IMMUNE :NAME "immune")
 (:VAR MV5374 :ISA GENE :EXPRESSES MV5375 :RAW-TEXT "genes")
 (:VAR MV5375 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5364 MV5365 MV5366))
 (:VAR MV5364 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5365 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV5366 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5385 :ISA REGULATE :OBJECT MV5381 :AGENT MV5379 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5381 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5378 :RAW-TEXT
  "phosphatase")
 (:VAR MV5378 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV5379 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5391 :ISA INVOLVE :THEME MV5390 :THEME MV5387 :PRESENT "PRESENT")
 (:VAR MV5390 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5389 :RAW-TEXT
  "pathways")
 (:VAR MV5389 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV5387 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?" (:VAR MV5396 :ISA POLAR-QUESTION :STATEMENT MV5393)
 (:VAR MV5393 :ISA BE :SUBJECT MV5392 :PREDICATE MV5395)
 (:VAR MV5392 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5395 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
581: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5401 :ISA POLAR-QUESTION :STATEMENT MV5399)
 (:VAR MV5399 :ISA BE :SUBJECT MV5397 :PREDICATE MV5398)
 (:VAR MV5397 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5398 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
582: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5405 :ISA BE :SUBJECT MV5404 :PREDICATE MV5407 :PRESENT "PRESENT")
 (:VAR MV5404 :ISA THESE :QUANTIFIER MV5402 :WORD "these")
 (:VAR MV5402 :ISA WHICH)
 (:VAR MV5407 :ISA KINASE :ENZYME MV5406 :RAW-TEXT "kinases")
 (:VAR MV5406 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5413 :ISA BE :SUBJECT MV5412 :PREDICATE MV5409 :PRESENT "PRESENT")
 (:VAR MV5412 :ISA THESE :QUANTIFIER MV5410 :WORD "these")
 (:VAR MV5410 :ISA WHICH)
 (:VAR MV5409 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinases" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
584: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5418 :ISA BE :SUBJECT MV5417 :PREDICATE MV5421 :PRESENT "PRESENT")
 (:VAR MV5417 :ISA THESE :QUANTIFIER MV5415 :WORD "these")
 (:VAR MV5415 :ISA WHICH)
 (:VAR MV5421 :ISA KINASE :AMINO-ACID MV5422 :RAW-TEXT "kinases")
 (:VAR MV5422 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5419 MV5420))
 (:VAR MV5419 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5420 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
585: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5427 :ISA BE :SUBJECT MV5426 :PREDICATE MV5428 :PRESENT "PRESENT")
 (:VAR MV5426 :ISA THESE :QUANTIFIER MV5424 :WORD "these")
 (:VAR MV5424 :ISA WHICH)
 (:VAR MV5428 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
586: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5433 :ISA BE :SUBJECT MV5432 :PREDICATE MV5434 :PRESENT "PRESENT")
 (:VAR MV5432 :ISA THESE :QUANTIFIER MV5430 :WORD "these")
 (:VAR MV5430 :ISA WHICH)
 (:VAR MV5434 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME
  "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5439 :ISA BE :SUBJECT MV5438 :PREDICATE MV5440 :PRESENT "PRESENT")
 (:VAR MV5438 :ISA THESE :QUANTIFIER MV5436 :WORD "these")
 (:VAR MV5436 :ISA WHICH) (:VAR MV5440 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e12   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5446 :ISA BE :SUBJECT MV5445 :PREDICATE MV5447 :PRESENT "PRESENT")
 (:VAR MV5445 :ISA THESE :QUANTIFIER MV5443 :WORD "these")
 (:VAR MV5443 :ISA WHICH)
 (:VAR MV5447 :ISA RECEPTOR :MODIFIER MV5442 :RAW-TEXT "receptors")
 (:VAR MV5442 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinase" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
589: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5453 :ISA BE :SUBJECT MV5452 :PREDICATE MV5449 :PRESENT "PRESENT")
 (:VAR MV5452 :ISA THESE :QUANTIFIER MV5450 :WORD "these")
 (:VAR MV5450 :ISA WHICH)
 (:VAR MV5449 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
590: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5459 :ISA BE :SUBJECT MV5458 :PREDICATE MV5455 :PRESENT "PRESENT")
 (:VAR MV5458 :ISA THESE :QUANTIFIER MV5456 :WORD "these")
 (:VAR MV5456 :ISA WHICH)
 (:VAR MV5455 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
591: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5465 :ISA BE :SUBJECT MV5464 :PREDICATE MV5461 :PRESENT "PRESENT")
 (:VAR MV5464 :ISA THESE :QUANTIFIER MV5462 :WORD "these")
 (:VAR MV5462 :ISA WHICH)
 (:VAR MV5461 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
592: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5470 :ISA BE :SUBJECT MV5469 :PREDICATE MV5471 :PRESENT "PRESENT")
 (:VAR MV5469 :ISA THESE :QUANTIFIER MV5467 :WORD "these")
 (:VAR MV5467 :ISA WHICH)
 (:VAR MV5471 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
593: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5476 :ISA BE :SUBJECT MV5475 :PREDICATE MV5477 :PRESENT "PRESENT")
 (:VAR MV5475 :ISA THESE :QUANTIFIER MV5473 :WORD "these")
 (:VAR MV5473 :ISA WHICH)
 (:VAR MV5477 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
594: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5482 :ISA BE :SUBJECT MV5481 :PREDICATE MV5483 :PRESENT "PRESENT")
 (:VAR MV5481 :ISA THESE :QUANTIFIER MV5479 :WORD "these")
 (:VAR MV5479 :ISA WHICH)
 (:VAR MV5483 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
595: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5488 :ISA BE :SUBJECT MV5487 :PREDICATE MV5490 :PRESENT "PRESENT")
 (:VAR MV5487 :ISA THESE :QUANTIFIER MV5485 :WORD "these")
 (:VAR MV5485 :ISA WHICH)
 (:VAR MV5490 :ISA RECEPTOR :MODIFIER MV5489 :RAW-TEXT "receptors")
 (:VAR MV5489 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5496 :ISA BE :SUBJECT MV5495 :PREDICATE MV5492 :PRESENT "PRESENT")
 (:VAR MV5495 :ISA THESE :QUANTIFIER MV5493 :WORD "these")
 (:VAR MV5493 :ISA WHICH)
 (:VAR MV5492 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
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
 (:VAR MV5502 :ISA BE :SUBJECT MV5501 :PREDICATE MV5498 :PRESENT "PRESENT")
 (:VAR MV5501 :ISA THESE :QUANTIFIER MV5499 :WORD "these")
 (:VAR MV5499 :ISA WHICH)
 (:VAR MV5498 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5508 :ISA BE :SUBJECT MV5507 :PREDICATE MV5509 :PRESENT "PRESENT")
 (:VAR MV5507 :ISA THESE :QUANTIFIER MV5505 :WORD "these")
 (:VAR MV5505 :ISA WHICH)
 (:VAR MV5509 :ISA PROTEIN :MODIFIER MV5504 :RAW-TEXT "proteins")
 (:VAR MV5504 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5514 :ISA BE :SUBJECT MV5513 :PREDICATE MV5517 :PRESENT "PRESENT")
 (:VAR MV5513 :ISA THESE :QUANTIFIER MV5511 :WORD "these")
 (:VAR MV5511 :ISA WHICH)
 (:VAR MV5517 :ISA PHOSPHATASE :MODIFIER MV5518 :RAW-TEXT "phosphatases")
 (:VAR MV5518 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5515 MV5516))
 (:VAR MV5515 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5516 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5523 :ISA BE :SUBJECT MV5522 :PREDICATE MV5525 :PRESENT "PRESENT")
 (:VAR MV5522 :ISA THESE :QUANTIFIER MV5520 :WORD "these")
 (:VAR MV5520 :ISA WHICH)
 (:VAR MV5525 :ISA PHOSPHATASE :MODIFIER MV5524 :RAW-TEXT "phosphatases")
 (:VAR MV5524 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5530 :ISA PHOSPHORYLATE :AMINO-ACID MV5527 :AGENT MV5529 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV5527 :ISA WHAT)
 (:VAR MV5529 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV5539 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5533 :ORGAN MV5538
  :PRESENT "PRESENT" :ADVERB MV5535 :RAW-TEXT "expressed")
 (:VAR MV5533 :ISA THESE :QUANTIFIER MV5531 :WORD "these")
 (:VAR MV5531 :ISA WHICH) (:VAR MV5538 :ISA LIVER)
 (:VAR MV5535 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
603: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5544 :ISA REGULATE :AGENT-OR-CAUSE MV5543 :OBJECT MV5542 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5543 :ISA WHAT)
 (:VAR MV5542 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5547 :ISA INCREASE :AGENT-OR-CAUSE MV5545 :AFFECTED-PROCESS-OR-OBJECT
  MV5549 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5545 :ISA WHAT)
 (:VAR MV5549 :ISA BIO-AMOUNT :MEASURED-ITEM MV5551 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5551 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5554 :ISA UPREGULATE :AGENT-OR-CAUSE MV5553 :OBJECT MV5555 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV5553 :ISA WHAT)
 (:VAR MV5555 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5557 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5556 :OBJECT MV5558 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV5556 :ISA WHAT)
 (:VAR MV5558 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5560 :ISA DECREASE :AGENT-OR-CAUSE MV5559 :AFFECTED-PROCESS-OR-OBJECT
  MV5562 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5559 :ISA WHAT)
 (:VAR MV5562 :ISA BIO-AMOUNT :MEASURED-ITEM MV5564 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5564 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5567 :ISA REGULATE :AGENT-OR-CAUSE MV5566 :OBJECT MV5568 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5566 :ISA WHAT)
 (:VAR MV5568 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
  "GLNA_HUMAN"))

___________________
609: "What regulates GLUL from the literature?"

                    SOURCE-START
e11   FROM          1 "What regulates GLUL from the literature" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the literature?"
 (:VAR MV5576 :ISA WH-QUESTION :STATEMENT MV5575 :WH WHAT)
 (:VAR MV5575 :ISA PREPOSITIONAL-PHRASE :POBJ MV5574 :PREP "FROM")
 (:VAR MV5574 :ISA LITERATURE :HAS-DETERMINER "THE"))

___________________
610: "What regulates GLUL from the GEO RNAi database?"

                    SOURCE-START
e12   FROM          1 "What regulates GLUL from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the GEO RNAi database?"
 (:VAR MV5584 :ISA WH-QUESTION :STATEMENT MV5583 :WH WHAT)
 (:VAR MV5583 :ISA PREPOSITIONAL-PHRASE :POBJ MV5577 :PREP "FROM")
 (:VAR MV5577 :ISA DATABASE :HAS-DETERMINER "THE" :NAME "GEO RNAi database"
  :UID "GEO-RNAi"))

___________________
611: "Which kinases regulate the cfos gene?"

                    SOURCE-START
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate the cfos gene?"
 (:VAR MV5587 :ISA REGULATE :AGENT MV5586 :OBJECT MV5590 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5586 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5590 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5589 :RAW-TEXT
  "gene")
 (:VAR MV5589 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5591 :ISA DOWNREGULATE :AGENT MV5593 :OBJECT MV5596 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5593 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5596 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5595 :RAW-TEXT
  "gene")
 (:VAR MV5595 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5599 :ISA BE :SUBJECT MV5598 :PREDICATE MV5597 :PRESENT "PRESENT")
 (:VAR MV5598 :ISA WHAT)
 (:VAR MV5597 :ISA POSITIVE-REGULATOR :THEME MV5603 :RAW-TEXT
  "positive regulators")
 (:VAR MV5603 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5602 :RAW-TEXT
  "gene")
 (:VAR MV5602 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5607 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5606 :OBJECT MV5605 :PRESENT
  "PRESENT" :RAW-TEXT "transcribes")
 (:VAR MV5606 :ISA WHAT)
 (:VAR MV5605 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5610 :ISA SHOW :STATEMENT-OR-THEME MV5621 :BENEFICIARY MV5611 :PRESENT
  "PRESENT")
 (:VAR MV5621 :ISA EVIDENCE :STATEMENT MV5616 :HAS-DETERMINER "THE")
 (:VAR MV5616 :ISA INCREASE :AGENT MV5608 :AFFECTED-PROCESS-OR-OBJECT MV5618
  :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5608 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5618 :ISA BIO-AMOUNT :MEASURED-ITEM MV5609 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5609 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME
  "SOCS1_HUMAN")
 (:VAR MV5611 :ISA INTERLOCUTOR :NAME "speaker"))

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
 (:VAR MV5636 :ISA BE :SUBJECT MV5635 :PREDICATE MV5642 :PRESENT "PRESENT")
 (:VAR MV5635 :ISA WHAT)
 (:VAR MV5642 :ISA EVIDENCE :STATEMENT MV5641 :HAS-DETERMINER "THE")
 (:VAR MV5641 :ISA REGULATE :AGENT MV5640 :OBJECT MV5634 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5640 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5634 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5644 :ISA BE :SUBJECT MV5643 :PREDICATE MV5653 :PRESENT "PRESENT")
 (:VAR MV5643 :ISA WHAT)
 (:VAR MV5653 :ISA EVIDENCE :STATEMENT MV5649 :HAS-DETERMINER "THE")
 (:VAR MV5649 :ISA BINDING :BINDER MV5648 :DIRECT-BINDEE MV5652 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV5648 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5652 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5651 :RAW-TEXT
  "gene")
 (:VAR MV5651 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5661 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5655 :ORGAN MV5660
  :PRESENT "PRESENT" :ADVERB MV5657 :RAW-TEXT "expressed")
 (:VAR MV5655 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5660 :ISA LIVER) (:VAR MV5657 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
ERROR -- encountered failure during parse

___________________
621: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV5677 :ISA POLAR-QUESTION :STATEMENT MV5675)
 (:VAR MV5675 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5669 :ORGAN MV5674 :ADVERB
  MV5671 :RAW-TEXT "expressed")
 (:VAR MV5669 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5674 :ISA LIVER) (:VAR MV5671 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5682 :ISA AFFECT :MANNER MV5680 :AGENT MV5678 :OBJECT MV5679 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5680 :ISA HOW)
 (:VAR MV5678 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME
  "M4K2_HUMAN")
 (:VAR MV5679 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5687 :ISA AFFECT :MANNER MV5684 :AGENT MV5686 :OBJECT MV5683 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5684 :ISA HOW)
 (:VAR MV5686 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5683 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5691 :ISA BE :SUBJECT MV5690 :PREDICATE MV5696 :PRESENT "PRESENT")
 (:VAR MV5690 :ISA WHAT)
 (:VAR MV5696 :ISA REGULATOR :THEME MV5699 :HAS-DETERMINER "THE" :PREDICATION
  MV5693 :CONTEXT MV5694 :RAW-TEXT "regulators")
 (:VAR MV5699 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5688 MV5689))
 (:VAR MV5688 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5689 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5693 :ISA COMMON)
 (:VAR MV5694 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5704 :ISA BE :SUBJECT MV5703 :PREDICATE MV5706 :PRESENT "PRESENT")
 (:VAR MV5703 :ISA WHAT)
 (:VAR MV5706 :ISA PATH :ENDPOINTS MV5709 :HAS-DETERMINER "THE")
 (:VAR MV5709 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5701 MV5702))
 (:VAR MV5701 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5702 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5716 :ISA POLAR-QUESTION :STATEMENT MV5715)
 (:VAR MV5715 :ISA AFFECT :AGENT MV5711 :OBJECT MV5714 :RAW-TEXT "affect")
 (:VAR MV5711 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5714 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5718 :ISA REGULATE :AGENT MV5717 :OBJECT MV5719 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5717 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5719 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5721 :ISA UPREGULATE :AGENT MV5720 :OBJECT MV5722 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5720 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5722 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5723 :ISA UPREGULATE :AGENT MV5725 :OBJECT MV5724 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5725 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5724 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?"
 (:VAR MV5735 :ISA POLAR-QUESTION :STATEMENT MV5734)
 (:VAR MV5734 :ISA REGULATE :AGENT MV5729 :OBJECT MV5733 :RAW-TEXT "regulate")
 (:VAR MV5729 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5733 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5727 :RAW-TEXT
  "gene")
 (:VAR MV5727 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5737 :ISA SHOW :STATEMENT-OR-THEME MV5745 :BENEFICIARY MV5738 :PRESENT
  "PRESENT")
 (:VAR MV5745 :ISA EVIDENCE :STATEMENT MV5744 :HAS-DETERMINER "THE")
 (:VAR MV5744 :ISA REGULATE :AGENT MV5742 :OBJECT MV5736 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5742 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5736 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5738 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?"
 (:VAR MV5753 :ISA POLAR-QUESTION :STATEMENT MV5752)
 (:VAR MV5752 :ISA REGULATE :AGENT MV5748 :OBJECT MV5751 :RAW-TEXT "regulate")
 (:VAR MV5748 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5751 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5746 :RAW-TEXT
  "gene")
 (:VAR MV5746 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5756 :ISA DECREASE :AGENT MV5755 :AFFECTED-PROCESS-OR-OBJECT MV5758
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5755 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5758 :ISA BIO-AMOUNT :MEASURED-ITEM MV5754 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5754 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5766 :ISA POLAR-QUESTION :STATEMENT MV5765)
 (:VAR MV5765 :ISA REGULATE :AGENT MV5764 :OBJECT MV5763 :RAW-TEXT "regulate")
 (:VAR MV5764 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5763 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5774 :ISA POLAR-QUESTION :STATEMENT MV5773)
 (:VAR MV5773 :ISA REGULATE :AGENT MV5768 :OBJECT MV5772 :RAW-TEXT "regulate")
 (:VAR MV5768 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5772 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5771 :RAW-TEXT
  "gene")
 (:VAR MV5771 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5776 :ISA BE :SUBJECT MV5775 :PREDICATE MV5778 :PRESENT "PRESENT")
 (:VAR MV5775 :ISA WHAT)
 (:VAR MV5778 :ISA PATHWAY :PATHWAYCOMPONENT MV5783 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5783 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5780 MV5782))
 (:VAR MV5780 :ISA BIO-ENTITY :NAME "TNG")
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
637: "What are the pathways between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the pathways between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the pathways between TNF and ERK?"
 (:VAR MV5786 :ISA BE :SUBJECT MV5785 :PREDICATE MV5788 :PRESENT "PRESENT")
 (:VAR MV5785 :ISA WHAT)
 (:VAR MV5788 :ISA PATHWAY :PATHWAYCOMPONENT MV5793 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5793 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5790 MV5792))
 (:VAR MV5790 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5792 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5801 :ISA POLAR-QUESTION :STATEMENT MV5800)
 (:VAR MV5800 :ISA REGULATE :AGENT MV5796 :OBJECT MV5799 :RAW-TEXT "regulate")
 (:VAR MV5796 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5799 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5810 :ISA POLAR-QUESTION :STATEMENT MV5809)
 (:VAR MV5809 :ISA REGULATE :AGENT MV5803 :OBJECT MV5808 :RAW-TEXT "regulate")
 (:VAR MV5803 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5808 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5807 :RAW-TEXT
  "gene")
 (:VAR MV5807 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5823 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5812 :VALUE MV5822 :PREP
  "BETWEEN" :PREDICATE MV5813)
 (:VAR MV5812 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5822 :ISA PATHWAY :PATHWAYCOMPONENT MV5819 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "pathways")
 (:VAR MV5819 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5816 MV5818))
 (:VAR MV5816 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5818 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5813 :ISA EXIST :PRESENT "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5829 :ISA AFFECT :MANNER MV5825 :AGENT MV5827 :OBJECT MV5830 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5825 :ISA HOW)
 (:VAR MV5827 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5830 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5832 :ISA BIO-ACTIVATE :AGENT MV5831 :OBJECT MV5833 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5831 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5833 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5835 :ISA BIO-ACTIVATE :AGENT MV5834 :OBJECT MV5836 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5834 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5836 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5838 :ISA BE :SUBJECT MV5837 :PREDICATE MV5840 :PRESENT "PRESENT")
 (:VAR MV5837 :ISA WHAT)
 (:VAR MV5840 :ISA PATH :ENDPOINTS MV5845 :HAS-DETERMINER "THE")
 (:VAR MV5845 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5842 MV5844))
 (:VAR MV5842 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5844 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
("Does TNF regulate ERK?" (:VAR MV5852 :ISA POLAR-QUESTION :STATEMENT MV5851)
 (:VAR MV5851 :ISA REGULATE :AGENT MV5848 :OBJECT MV5850 :RAW-TEXT "regulate")
 (:VAR MV5848 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
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
646: "How does MAP3K7 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3K7 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3K7 affect CXCL8?"
 (:VAR MV5857 :ISA AFFECT :MANNER MV5855 :AGENT MV5853 :OBJECT MV5854 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5855 :ISA HOW)
 (:VAR MV5853 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5854 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5859 :ISA BIO-ACTIVATE :AGENT MV5858 :OBJECT MV5860 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5858 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5860 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5864 :ISA DECREASE :AGENT MV5863 :AFFECTED-PROCESS-OR-OBJECT MV5866
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5863 :ISA PROTEIN-FAMILY :PREDICATION MV5862 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5862 :ISA ACTIVE)
 (:VAR MV5866 :ISA BIO-AMOUNT :MEASURED-ITEM MV5861 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5861 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5872 :ISA BE :SUBJECT MV5871 :PREDICATE MV5875 :PRESENT "PRESENT")
 (:VAR MV5871 :ISA WHAT)
 (:VAR MV5875 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5878 :HAS-DETERMINER
  "THE" :PREDICATION MV5874 :RAW-TEXT "upstreams")
 (:VAR MV5878 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5869 MV5870))
 (:VAR MV5869 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5870 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5874 :ISA COMMON))

___________________
650: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5884 :ISA AFFECT :MANNER MV5882 :AGENT MV5880 :OBJECT MV5881 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5882 :ISA HOW)
 (:VAR MV5880 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5881 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?"
 (:VAR MV5890 :ISA POLAR-QUESTION :STATEMENT MV5889)
 (:VAR MV5889 :ISA REGULATE :AGENT MV5885 :OBJECT MV5886 :RAW-TEXT "regulate")
 (:VAR MV5885 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5886 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?"
 (:VAR MV5898 :ISA POLAR-QUESTION :STATEMENT MV5897)
 (:VAR MV5897 :ISA REGULATE :AGENT MV5891 :OBJECT MV5896 :RAW-TEXT "regulate")
 (:VAR MV5891 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5896 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5892 :RAW-TEXT
  "gene")
 (:VAR MV5892 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5903 :ISA AFFECT :MANNER MV5901 :AGENT MV5899 :OBJECT MV5900 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5901 :ISA HOW)
 (:VAR MV5899 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5900 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5906 :ISA BE :SUBJECT MV5905 :PREDICATE MV5908 :PRESENT "PRESENT")
 (:VAR MV5905 :ISA WHAT)
 (:VAR MV5908 :ISA PATH :ENDPOINTS MV5912 :HAS-DETERMINER "THE")
 (:VAR MV5912 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV5910 MV5904))
 (:VAR MV5910 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5904 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?"
 (:VAR MV5923 :ISA POLAR-QUESTION :STATEMENT MV5921)
 (:VAR MV5921 :ISA REGULATE :AGENT MV5916 :AFFECTED-PROCESS MV5919 :RAW-TEXT
  "regulate")
 (:VAR MV5916 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5919 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5914 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5914 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5927 :ISA DECREASE :AGENT MV5926 :AFFECTED-PROCESS MV5929 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5926 :ISA PROTEIN-FAMILY :PREDICATION MV5925 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5925 :ISA ACTIVE)
 (:VAR MV5929 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5924 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5924 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5935 :ISA DECREASE :AGENT MV5934 :AFFECTED-PROCESS-OR-OBJECT MV5937
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5934 :ISA PROTEIN-FAMILY :PREDICATION MV5933 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5933 :ISA ACTIVE)
 (:VAR MV5937 :ISA BIO-AMOUNT :MEASURED-ITEM MV5932 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5932 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5943 :ISA DECREASE :AGENT MV5942 :AFFECTED-PROCESS-OR-OBJECT MV5945
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5942 :ISA PROTEIN-FAMILY :PREDICATION MV5941 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5941 :ISA ACTIVE)
 (:VAR MV5945 :ISA BIO-AMOUNT :MEASURED-ITEM MV5940 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5940 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e14   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV5950 :ISA INHIBIT :AGENT MV5948 :AFFECTED-PROCESS MV5952 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV5948 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV5952 :ISA BIO-ACTIVITY :PARTICIPANT MV5949 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV5949 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?"
 (:VAR MV5966 :ISA POLAR-QUESTION :STATEMENT MV5964)
 (:VAR MV5964 :ISA DECREASE :AGENT MV5955 :OBJECT MV5956 :RAW-TEXT "decrease")
 (:VAR MV5955 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV5956 :ISA PROTEIN :INFO-CONTEXT MV5963 :HAS-DETERMINER "THE" :RAW-TEXT
  "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5963 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?"
 (:VAR MV5977 :ISA POLAR-QUESTION :STATEMENT MV5975)
 (:VAR MV5975 :ISA DECREASE :AGENT MV5967 :OBJECT MV5968 :RAW-TEXT "decrease")
 (:VAR MV5967 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV5968 :ISA PROTEIN :INFO-CONTEXT MV5974 :RAW-TEXT "CXCL10" :UID
  "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5974 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
662: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV5979 :ISA BIO-ACTIVATE :AGENT MV5978 :OBJECT MV5980 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5978 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5980 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
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
 (:VAR MV5986 :ISA WANT :AGENT MV5983 :THEME MV5997 :PRESENT "PRESENT")
 (:VAR MV5983 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5997 :ISA FIND-OUT :AGENT MV5983 :STATEMENT MV5994)
 (:VAR MV5994 :ISA WH-QUESTION :STATEMENT MV5993 :VAR NIL :WH HOW)
 (:VAR MV5993 :ISA DECREASE :AGENT MV5992 :OBJECT MV5982 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5992 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV5982 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e29   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6002 :ISA WANT :AGENT MV5999 :THEME MV6017 :PRESENT "PRESENT")
 (:VAR MV5999 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6017 :ISA FIND-OUT :AGENT MV5999 :STATEMENT MV6014)
 (:VAR MV6014 :ISA WH-QUESTION :STATEMENT MV6009 :VAR NIL :WH HOW)
 (:VAR MV6009 :ISA DECREASE :AGENT MV6008 :OBJECT MV6010 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6008 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6010 :ISA PROTEIN :CELL-TYPE MV6012 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6012 :ISA CELL-TYPE :CELL-LINE MV5998)
 (:VAR MV5998 :ISA CELL-LINE :NAME "BT-20" :UID "CVCL:0178"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6023 :ISA WANT :AGENT MV6020 :THEME MV6037 :PRESENT "PRESENT")
 (:VAR MV6020 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6037 :ISA FIND-OUT :AGENT MV6020 :STATEMENT MV6034)
 (:VAR MV6034 :ISA WH-QUESTION :STATEMENT MV6029 :VAR NIL :WH HOW)
 (:VAR MV6029 :ISA BIO-ACTIVATE :AGENT MV6018 :OBJECT MV6030 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6018 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV6030 :ISA PROTEIN :CELL-TYPE MV6032 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV6032 :ISA CELL-TYPE :CELL-LINE MV6019)
 (:VAR MV6019 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?"
 (:VAR MV6043 :ISA POLAR-QUESTION :STATEMENT MV6042)
 (:VAR MV6042 :ISA PHOSPHORYLATE :AGENT MV6039 :SUBSTRATE MV6041 :RAW-TEXT
  "phosphorylate")
 (:VAR MV6039 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6041 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6051 :ISA POLAR-QUESTION :STATEMENT MV6050)
 (:VAR MV6050 :ISA INHIBIT :AGENT MV6044 :OBJECT MV6049 :RAW-TEXT "inhibit")
 (:VAR MV6044 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6049 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6045 :RAW-TEXT
  "gene")
 (:VAR MV6045 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?"
 (:VAR MV6059 :ISA POLAR-QUESTION :STATEMENT MV6058)
 (:VAR MV6058 :ISA STIMULATE :AGENT MV6052 :OBJECT MV6057 :RAW-TEXT
  "stimulate")
 (:VAR MV6052 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6057 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6053 :RAW-TEXT
  "gene")
 (:VAR MV6053 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6064 :ISA WANT :AGENT MV6061 :THEME MV6080 :PRESENT "PRESENT")
 (:VAR MV6061 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6080 :ISA FIND-OUT :AGENT MV6061 :STATEMENT MV6077)
 (:VAR MV6077 :ISA WH-QUESTION :STATEMENT MV6071 :VAR NIL :WH HOW)
 (:VAR MV6071 :ISA DECREASE :AGENT MV6070 :OBJECT MV6072 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6070 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6072 :ISA PROTEIN :CELL-TYPE MV6075 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6075 :ISA CELL-TYPE :CELL-LINE MV6060 :CONTEXT-OR-ASSOCIATED-DISEASE
  MV6074)
 (:VAR MV6060 :ISA CELL-LINE :NAME "SK-MEL-133" :UID "CVCL:6082")
 (:VAR MV6074 :ISA MELANOMA))

___________________
670: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6085 :ISA POLAR-QUESTION :STATEMENT MV6082)
 (:VAR MV6082 :ISA BE :SUBJECT MV6083 :PREDICATE MV6081)
 (:VAR MV6083 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6081 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
671: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6087 :ISA LIST :THEME MV6090 :PRESENT "PRESENT")
 (:VAR MV6090 :ISA GENE :PREDICATION MV6091 :QUANTIFIER MV6088 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6091 :ISA REGULATE :OBJECT MV6090 :AGENT MV6095 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6095 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6086 MV6094))
 (:VAR MV6086 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6094 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6088 :ISA ALL :WORD "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6098 :ISA LIST :THEME MV6102 :PRESENT "PRESENT")
 (:VAR MV6102 :ISA GENE :PREDICATION MV6103 :QUANTIFIER MV6099 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6103 :ISA REGULATE :OBJECT MV6102 :AGENT MV6107 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6107 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6097 MV6106))
 (:VAR MV6097 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6106 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6099 :ISA SOME :WORD "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6113 :ISA SHOW :STATEMENT-OR-THEME MV6116 :BENEFICIARY MV6114 :PRESENT
  "PRESENT")
 (:VAR MV6116 :ISA MUTATION :OBJECT MV6121 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6121 :ISA COLLECTION :CONTEXT MV6112 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6111 MV6119))
 (:VAR MV6112 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6111 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6119 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6114 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6127 :ISA BE :SUBJECT MV6126 :PREDICATE MV6129 :PRESENT "PRESENT")
 (:VAR MV6126 :ISA WHAT)
 (:VAR MV6129 :ISA MUTATION :OBJECT MV6134 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6134 :ISA COLLECTION :CONTEXT MV6125 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6124 MV6132))
 (:VAR MV6125 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6124 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6132 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:VAR MV6141 :ISA BE :SUBJECT MV6140 :PREDICATE MV6148 :PRESENT "PRESENT")
 (:VAR MV6140 :ISA WHAT)
 (:VAR MV6148 :ISA GENE :DISEASE MV6139 :HAS-DETERMINER "THE" :PREDICATION
  MV6137 :RAW-TEXT "genes")
 (:VAR MV6139 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6137 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6138)
 (:VAR MV6138 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV6153 :ISA BE :SUBJECT MV6152 :PREDICATE MV6160 :PRESENT "PRESENT")
 (:VAR MV6152 :ISA WHAT)
 (:VAR MV6160 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6149 :RAW-TEXT
  "genes")
 (:VAR MV6149 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6150)
 (:VAR MV6150 :ISA PROTEIN :CONTEXT MV6151 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6151 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
677: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6162 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6161
  :AFFECTED-PROCESS-OR-OBJECT MV6163 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6161 :ISA WHAT) (:VAR MV6163 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6167 :ISA HAVE :POSSESSOR MV6166 :THING-POSSESSED MV6169 :PRESENT
  "PRESENT")
 (:VAR MV6166 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6169 :ISA EVIDENCE :FACT MV6172 :PREDICATION MV6168)
 (:VAR MV6172 :ISA REGULATE :AGENT MV6164 :PROGRESSIVE MV6171 :RAW-TEXT
  "regulated")
 (:VAR MV6164 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p"
  :UID "MIMAT0000421")
 (:VAR MV6171 :ISA BE) (:VAR MV6168 :ISA STRONG))

___________________
679: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6178 :ISA INCREASE :AGENT-OR-CAUSE MV6176 :AFFECTED-PROCESS-OR-OBJECT
  MV6180 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6176 :ISA WHAT)
 (:VAR MV6180 :ISA BIO-AMOUNT :MEASURED-ITEM MV6182 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6182 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6186 :ISA INHIBIT :AGENT-OR-CAUSE MV6185 :OBJECT MV6184 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6185 :ISA WHAT)
 (:VAR MV6184 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6190 :ISA BE :SUBJECT MV6189 :PREDICATE MV6202 :PRESENT "PRESENT")
 (:VAR MV6189 :ISA WHAT)
 (:VAR MV6202 :ISA QUALITY-PREDICATE :ITEM MV6200 :ATTRIBUTE MV6196)
 (:VAR MV6200 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6187 MV6198 MV6188))
 (:VAR MV6187 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6198 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6188 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6196 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6194
  :MODIFIER MV6195)
 (:VAR MV6194 :ISA LIKELY :COMPARATIVE MV6192)
 (:VAR MV6192 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6195 :ISA CELLULAR :NAME "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6205 :ISA BE :SUBJECT MV6204 :PREDICATE MV6214 :PRESENT "PRESENT")
 (:VAR MV6204 :ISA WHAT)
 (:VAR MV6214 :ISA QUALITY-PREDICATE :ITEM MV6203 :ATTRIBUTE MV6211)
 (:VAR MV6203 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6211 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6209
  :MODIFIER MV6210)
 (:VAR MV6209 :ISA LIKELY :COMPARATIVE MV6207)
 (:VAR MV6207 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6210 :ISA CELLULAR :NAME "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6218 :ISA BE :SUBJECT MV6217 :PREDICATE MV6221 :PRESENT "PRESENT")
 (:VAR MV6217 :ISA WHAT)
 (:VAR MV6221 :ISA SIGNIFICANCE :AGENT MV6215 :HAS-DETERMINER "THE" :MODIFIER
  MV6220)
 (:VAR MV6215 :ISA PROTEIN :CONTEXT MV6216 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6216 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV6220 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6233 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6229 :AGENT MV6226
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6229 :ISA THOSE :QUANTIFIER MV6227 :WORD "those")
 (:VAR MV6227 :ISA WHICH)
 (:VAR MV6226 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those genes are in the MAPK signaling pathway?"
 (:VAR MV6249 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6240 :VALUE MV6248 :PREP
  "IN" :PREDICATE MV6241)
 (:VAR MV6240 :ISA GENE :QUANTIFIER MV6237 :HAS-DETERMINER "THOSE" :RAW-TEXT
  "genes")
 (:VAR MV6237 :ISA WHICH)
 (:VAR MV6248 :ISA GENE :CONTEXT MV6236 :QUANTIFIER MV6237 :HAS-DETERMINER
  "THOSE" :RAW-TEXT "genes")
 (:VAR MV6236 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6244
  :RAW-TEXT "signaling pathway")
 (:VAR MV6244 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6241 :ISA BE :PRESENT "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in the il-12 pathway?"
 (:VAR MV6260 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6254 :VALUE MV6258 :PREP
  MV6256 :PREDICATE MV6255)
 (:VAR MV6254 :ISA THESE :QUANTIFIER MV6252 :WORD "these")
 (:VAR MV6252 :ISA WHICH)
 (:VAR MV6258 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6251 :RAW-TEXT
  "pathway")
 (:VAR MV6251 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV6256 :ISA IN :WORD "in") (:VAR MV6255 :ISA BE :PRESENT "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are expressed in liver?"
 (:VAR MV6269 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6264 :ORGAN MV6268
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV6264 :ISA PRONOUN/PLURAL :QUANTIFIER MV6262 :WORD "them")
 (:VAR MV6262 :ISA WHICH) (:VAR MV6268 :ISA LIVER))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    SOURCE-START
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:VAR MV6284 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6276 :AGENT MV6283
  :PRESENT "PRESENT" :SUPERLATIVE MV6278 :ADVERB MV6279 :RAW-TEXT "regulated")
 (:VAR MV6276 :ISA PRONOUN/PLURAL :QUANTIFIER MV6274 :WORD "them")
 (:VAR MV6274 :ISA WHICH)
 (:VAR MV6283 :ISA COLLECTION :RAW-TEXT "miR-335-5p and miR-155-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV6272 MV6273))
 (:VAR MV6272 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV6273 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV6278 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6279 :ISA FREQUENTLY :NAME "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    SOURCE-START
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors target SMURF2?"
 (:VAR MV6291 :ISA TARGET :AGENT MV6287 :OBJECT MV6288 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6287 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6288 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    SOURCE-START
e11   TARGET        1 "Which of those target frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those target frizzled8?"
 (:VAR MV6297 :ISA TARGET :AGENT-OR-CAUSE MV6295 :OBJECT MV6292 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV6295 :ISA THOSE :QUANTIFIER MV6293 :WORD "those")
 (:VAR MV6293 :ISA WHICH)
 (:VAR MV6292 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
691: "What is Selumetinib?"

                    SOURCE-START
e4    BE            1 "What is Selumetinib" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is Selumetinib?"
 (:VAR MV6300 :ISA BE :SUBJECT MV6299 :PREDICATE MV6301 :PRESENT "PRESENT")
 (:VAR MV6299 :ISA WHAT)
 (:VAR MV6301 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
692: "What is MAPK3?"

                    SOURCE-START
e5    BE            1 "What is MAPK3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAPK3?"
 (:VAR MV6304 :ISA BE :SUBJECT MV6303 :PREDICATE MV6302 :PRESENT "PRESENT")
 (:VAR MV6303 :ISA WHAT)
 (:VAR MV6302 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
693: "What does it do?"

                    SOURCE-START
e6    DO            1 "What does it do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it do?" (:VAR MV6310 :ISA DO :PATIENT MV6305 :PRESENT "PRESENT")
 (:VAR MV6305 :ISA WHAT))

___________________
694: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?"
 (:VAR MV6320 :ISA POLAR-QUESTION :STATEMENT MV6318)
 (:VAR MV6318 :ISA THERE-EXISTS :VALUE MV6316 :PREDICATE MV6313)
 (:VAR MV6316 :ISA INHIBITOR :PROTEIN MV6311 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV6311 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV6313 :ISA SYNTACTIC-THERE))

___________________
695: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6322 :ISA NAME-SOMETHING :PATIENT MV6326 :PRESENT "PRESENT")
 (:VAR MV6326 :ISA DRUG :PREDICATION MV6328 :QUANTIFIER MV6325 :RAW-TEXT
  "drugs")
 (:VAR MV6328 :ISA INHIBIT :AGENT MV6326 :THAT-REL T :OBJECT MV6321 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6321 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6325 :ISA SOME :WORD "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e16   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?"
 (:VAR MV6340 :ISA POLAR-QUESTION :STATEMENT MV6339)
 (:VAR MV6339 :ISA THERE-EXISTS :VALUE MV6337 :PREDICATE MV6331)
 (:VAR MV6337 :ISA INHIBITOR :QUANTIFIER MV6333 :PROTEIN MV6338 :RAW-TEXT
  "inhibitors")
 (:VAR MV6333 :ISA ANY :WORD "any")
 (:VAR MV6338 :ISA PROTEIN :RAW-TEXT "Map2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6331 :ISA SYNTACTIC-THERE))

___________________
697: "Are there targets of Selumetinib?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6350 :ISA POLAR-QUESTION :STATEMENT MV6348)
 (:VAR MV6348 :ISA THERE-EXISTS :VALUE MV6344 :PREDICATE MV6342)
 (:VAR MV6344 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV6347 :RAW-TEXT "targets")
 (:VAR MV6347 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6342 :ISA SYNTACTIC-THERE))

___________________
698: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6354 :ISA INHIBIT :OBJECT MV6351 :AGENT MV6353 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV6351 :ISA WHAT)
 (:VAR MV6353 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
699: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6359 :ISA TARGET :OBJECT MV6355 :AGENT MV6357 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6355 :ISA WHAT)
 (:VAR MV6357 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
700: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?"
 (:VAR MV6366 :ISA POLAR-QUESTION :STATEMENT MV6365)
 (:VAR MV6365 :ISA TARGET :AGENT MV6361 :OBJECT MV6364 :RAW-TEXT "target")
 (:VAR MV6361 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6364 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV6369 :ISA BE :SUBJECT MV6368 :PREDICATE MV6371 :PRESENT "PRESENT")
 (:VAR MV6368 :ISA WHAT)
 (:VAR MV6371 :ISA TARGET-PROTEIN :QUANTIFIER MV6370 :TREATMENT MV6374
  :RAW-TEXT "targets")
 (:VAR MV6370 :ISA SOME :WORD "some")
 (:VAR MV6374 :ISA TREATMENT :DISEASE MV6367 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6367 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6378 :ISA BE :SUBJECT MV6377 :PREDICATE MV6380 :PRESENT "PRESENT")
 (:VAR MV6377 :ISA WHAT)
 (:VAR MV6380 :ISA TARGET-PROTEIN :QUANTIFIER MV6379 :DISEASE MV6376 :RAW-TEXT
  "targets")
 (:VAR MV6379 :ISA SOME :WORD "some")
 (:VAR MV6376 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6389 :ISA LEAD :AGENT MV6386 :THEME MV6392 :MODAL MV6388 :RAW-TEXT
  "lead")
 (:VAR MV6386 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6392 :ISA DEVELOPMENT :DISEASE MV6384 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6384 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6388 :ISA COULD))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6400 :ISA LEAD :AGENT MV6398 :THEME MV6403 :MODAL MV6399 :RAW-TEXT
  "lead")
 (:VAR MV6398 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6403 :ISA DEVELOPMENT :DISEASE MV6396 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6396 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6399 :ISA COULD))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6412 :ISA LEAD :AGENT MV6410 :THEME MV6407 :MODAL MV6411 :RAW-TEXT
  "lead")
 (:VAR MV6410 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6409 :RAW-TEXT
  "genes")
 (:VAR MV6409 :ISA MUTATION :OBJECT MV6410 :RAW-TEXT "mutated")
 (:VAR MV6407 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6411 :ISA COULD))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e23   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6417 :ISA BE :SUBJECT MV6416 :PREDICATE MV6421 :PRESENT "PRESENT")
 (:VAR MV6416 :ISA WHAT)
 (:VAR MV6421 :ISA MUTATION :OBJECT MV6420 :PREDICATION MV6423 :HAS-DETERMINER
  "THE" :MODIFIER MV6419 :AGENT-OR-OBJECT MV6420 :RAW-TEXT "mutation")
 (:VAR MV6420 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6423 :ISA LEAD :AGENT MV6421 :THAT-REL T :THEME MV6415 :PRESENT
  "PRESENT" :RAW-TEXT "leads")
 (:VAR MV6415 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6419 :ISA TOP-QUA-LOCATION))

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
 (:VAR MV6453 :ISA BIO-USE :PATIENT MV6443 :MODAL MV6444 :AGENT MV6445 :THEME
  MV6452 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV6443 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV6444 :ISA COULD) (:VAR MV6445 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6452 :ISA TREATMENT :DISEASE MV6441 :RAW-TEXT "treat")
 (:VAR MV6441 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV6456 :ISA BE :SUBJECT MV6455 :PREDICATE MV6458 :PRESENT "PRESENT")
 (:VAR MV6455 :ISA WHAT)
 (:VAR MV6458 :ISA DRUG :TREATMENT MV6460 :QUANTIFIER MV6457 :RAW-TEXT "drugs")
 (:VAR MV6460 :ISA TREATMENT :DISEASE MV6454 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6454 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6457 :ISA SOME :WORD "some"))

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
("Does MEK act on ERK?" (:VAR MV6489 :ISA POLAR-QUESTION :STATEMENT MV6487)
 (:VAR MV6487 :ISA BIO-ACT :AGENT MV6483 :ACTED-ON MV6486 :RAW-TEXT "act")
 (:VAR MV6483 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6486 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6494 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6491 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6491 :ISA BUILD :ARTIFACT MV6493 :PRESENT "PRESENT")
 (:VAR MV6493 :ISA MODEL :HAS-DETERMINER "A"))

___________________
714: "Mek activates MAPK3"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    END-OF-SOURCE
("Mek activates MAPK3"
 (:VAR MV6497 :ISA BIO-ACTIVATE :AGENT MV6496 :OBJECT MV6495 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6496 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6495 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6499 :ISA BIO-ACTIVATE :AGENT MV6498 :OBJECT MV6500 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6498 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6500 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV6501 :ISA REMOVE :OBJECT MV6508 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6508 :ISA FACT :STATEMENT MV6506 :HAS-DETERMINER "THE")
 (:VAR MV6506 :ISA BIO-ACTIVATE :AGENT MV6505 :OBJECT MV6507 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6505 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6507 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3
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
 (:VAR MV6520 :ISA POLAR-QUESTION :STATEMENT MV6511)
 (:VAR MV6511 :ISA TELL :AGENT MV6510 :THEME MV6519 :THEME MV6512 :MODAL "CAN")
 (:VAR MV6510 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6519 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6513 :VALUE MV6517 :PREP
  MV6515 :PREDICATE MV6514)
 (:VAR MV6513 :ISA WHAT) (:VAR MV6517 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6515 :ISA IN :WORD "in") (:VAR MV6514 :ISA BE :MODAL "CAN")
 (:VAR MV6512 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
718: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model."
 (:VAR MV6524 :ISA SUMMARIZE :STATEMENT MV6523 :PRESENT "PRESENT")
 (:VAR MV6523 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
719: "Summarize the current model."

                    SOURCE-START
e7    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model."
 (:VAR MV6529 :ISA SUMMARIZE :STATEMENT MV6528 :PRESENT "PRESENT")
 (:VAR MV6528 :ISA MODEL :HAS-DETERMINER "THE" :PREDICATION MV6527)
 (:VAR MV6527 :ISA CURRENT))

___________________
720: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV6531 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV6530 :SUBSTRATE MV6532
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6530 :ISA WHAT)
 (:VAR MV6532 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
721: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6534 :ISA BINDING :BINDER MV6533 :DIRECT-BINDEE MV6535 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6533 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6535 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
722: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6540 :ISA BIO-ACTIVATE :OBJECT MV6536 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6536 :ISA PROTEIN :PREDICATION MV6537 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6537 :ISA PHOSPHORYLATE :SUBSTRATE MV6536 :RAW-TEXT "Phosphorylated"))

___________________
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6544 :ISA DEPHOSPHORYLATE :AGENT MV6541 :SUBSTRATE MV6542 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6541 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6542 :ISA PROTEIN :PREDICATION MV6550 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6550 :ISA BINDING :DIRECT-BINDEE MV6542 :THAT-REL T :BINDEE MV6543
  :PRESENT "PRESENT" :NEGATION MV6547 :RAW-TEXT "bound")
 (:VAR MV6543 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6547 :ISA NOT :WORD "not"))

___________________
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6561 :ISA PHOSPHORYLATE :AGENT MV6552 :SUBSTRATE MV6554 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6552 :ISA PROTEIN :PREDICATION MV6562 :PREDICATION MV6555 :RAW-TEXT
  "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6562 :ISA BINDING :DIRECT-BINDEE MV6552 :THAT-REL T :BINDEE MV6553
  :PRESENT "PRESENT" :NEGATION MV6558 :RAW-TEXT "bound")
 (:VAR MV6553 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6558 :ISA NOT :WORD "not") (:VAR MV6555 :ISA ACTIVE)
 (:VAR MV6554 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
725: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6568 :ISA BIO-ACTIVATE :OBJECT MV6564 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6564 :ISA PROTEIN :PREDICATION MV6565 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6565 :ISA PHOSPHORYLATE :SUBSTRATE MV6564 :RAW-TEXT "Phosphorylated"))

___________________
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6572 :ISA DEPHOSPHORYLATE :AGENT MV6569 :SUBSTRATE MV6570 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6569 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV6570 :ISA PROTEIN :PREDICATION MV6578 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6578 :ISA BINDING :DIRECT-BINDEE MV6570 :THAT-REL T :BINDEE MV6571
  :PRESENT "PRESENT" :NEGATION MV6575 :RAW-TEXT "bound")
 (:VAR MV6571 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6575 :ISA NOT :WORD "not"))

___________________
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6592 :ISA PHOSPHORYLATE :AGENT MV6581 :SUBSTRATE MV6580 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6581 :ISA PROTEIN :PREDICATION MV6595 :MUTATION MV6594 :RAW-TEXT
  "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6595 :ISA BINDING :DIRECT-BINDEE MV6581 :THAT-REL T :BINDEE MV6591
  :PRESENT "PRESENT" :NEGATION MV6588 :RAW-TEXT "bound")
 (:VAR MV6591 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6588 :ISA NOT :WORD "not")
 (:VAR MV6594 :ISA POINT-MUTATED-PROTEIN :POSITION MV6583 :NEW-AMINO-ACID
  MV6585 :ORIGINAL-AMINO-ACID MV6582)
 (:VAR MV6583 :ISA NUMBER :VALUE 600)
 (:VAR MV6585 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6582 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6580 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
728: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6601 :ISA COPULAR-PREDICATION :ITEM MV6597 :VALUE MV6600 :PREDICATE
  MV6599)
 (:VAR MV6597 :ISA PROTEIN :PREDICATION MV6598 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6598 :ISA PHOSPHORYLATE :SUBSTRATE MV6597 :RAW-TEXT "Phosphorylated")
 (:VAR MV6600 :ISA ACTIVE) (:VAR MV6599 :ISA BE :PRESENT "PRESENT"))

___________________
729: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV6604 :ISA PHOSPHORYLATE :AGENT MV6602 :SUBSTRATE MV6603 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6602 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME
  "PDPK1_HUMAN")
 (:VAR MV6603 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
730: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV6613 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6607 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6607 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6611 :THEME MV6606 :PRESENT
  "PRESENT")
 (:VAR MV6611 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6606 :ISA PROTEIN :PREDICATION MV6608 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6608 :ISA PHOSPHORYLATE :SUBSTRATE MV6606 :RAW-TEXT "phosphorylated"))

___________________
731: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6621 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6616 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6616 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV6619 :THEME
  MV6615 :PRESENT "PRESENT")
 (:VAR MV6619 :ISA TOP-QUA-LOCATION)
 (:VAR MV6615 :ISA PROTEIN :PREDICATION MV6617 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6617 :ISA PHOSPHORYLATE :SUBSTRATE MV6615 :RAW-TEXT "phosphorylated"))

___________________
732: "show AKT1 on top"

                    SOURCE-START
e8    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV6623 :ISA SHOW :AT-RELATIVE-LOCATION MV6625 :STATEMENT-OR-THEME MV6622
  :PRESENT "PRESENT")
 (:VAR MV6625 :ISA TOP-QUA-LOCATION)
 (:VAR MV6622 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6634 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6629 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6629 :ISA HIGHLIGHT :THEME MV6630 :PRESENT "PRESENT")
 (:VAR MV6630 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6628 :RAW-TEXT
  "upstream")
 (:VAR MV6628 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6643 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6636 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6636 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6641 :THEME MV6638 :PRESENT
  "PRESENT")
 (:VAR MV6641 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6638 :ISA ELEMENT :MODIFIER MV6637)
 (:VAR MV6637 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV6646 :ISA BE :SUBJECT MV6645 :PREDICATE MV6649 :PRESENT "PRESENT")
 (:VAR MV6645 :ISA WHAT)
 (:VAR MV6649 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV6653 :HAS-DETERMINER
  "THE" :PREDICATION MV6648 :RAW-TEXT "downstreams")
 (:VAR MV6653 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6644 MV6652))
 (:VAR MV6644 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6652 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6648 :ISA COMMON))

___________________
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6668 :ISA POLAR-QUESTION :STATEMENT MV6665)
 (:VAR MV6665 :ISA THERE-EXISTS :VALUE MV6661 :PREDICATE MV6658)
 (:VAR MV6661 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6666 :PREDICATION
  MV6660 :RAW-TEXT "upstreams")
 (:VAR MV6666 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6655 MV6663 MV6656))
 (:VAR MV6655 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6663 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6656 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6660 :ISA COMMON) (:VAR MV6658 :ISA SYNTACTIC-THERE))

___________________
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6673 :ISA BE :SUBJECT MV6672 :PREDICATE MV6678 :PRESENT "PRESENT")
 (:VAR MV6672 :ISA WHAT)
 (:VAR MV6678 :ISA REGULATOR :THEME MV6681 :HAS-DETERMINER "THE" :PREDICATION
  MV6675 :CONTEXT MV6676 :RAW-TEXT "regulators")
 (:VAR MV6681 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6669 MV6670 MV6671))
 (:VAR MV6669 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6670 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6671 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6675 :ISA COMMON)
 (:VAR MV6676 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6686 :ISA BE :SUBJECT MV6685 :PREDICATE MV6690 :PRESENT "PRESENT")
 (:VAR MV6685 :ISA WHAT)
 (:VAR MV6690 :ISA REGULATOR :THEME MV6693 :PREDICATION MV6687 :CONTEXT MV6688
  :RAW-TEXT "regulators")
 (:VAR MV6693 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6683 MV6684))
 (:VAR MV6683 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6684 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6687 :ISA COMMON)
 (:VAR MV6688 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6700 :ISA BE :SUBJECT MV6699 :PREDICATE MV6695 :PRESENT "PRESENT")
 (:VAR MV6699 :ISA WHAT)
 (:VAR MV6695 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6706 :PREDICATION MV6701
  :CONTEXT MV6702 :RAW-TEXT "transcriptional regulators" :NAME
  "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV6706 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6696 MV6697 MV6698))
 (:VAR MV6696 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6697 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6698 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6701 :ISA COMMON)
 (:VAR MV6702 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6711 :ISA BE :SUBJECT MV6710 :PREDICATE MV6713 :PRESENT "PRESENT")
 (:VAR MV6710 :ISA WHAT)
 (:VAR MV6713 :ISA MUTATION :OBJECT MV6719 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6719 :ISA COLLECTION :CONTEXT MV6709 :RAW-TEXT "PTEN, TP53 and BRAF"
  :TYPE PROTEIN :NUMBER 3 :ITEMS (MV6715 MV6708 MV6717))
 (:VAR MV6709 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6715 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6708 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6717 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6725 :ISA BE :SUBJECT MV6724 :PREDICATE MV6728 :PRESENT "PRESENT")
 (:VAR MV6724 :ISA WHAT)
 (:VAR MV6728 :ISA FREQUENCY :MEASURED-ITEM MV6722 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV6727 :RAW-TEXT "frequency")
 (:VAR MV6722 :ISA PROTEIN :CONTEXT MV6723 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6723 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6727 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV6743 :ISA COPULAR-PREDICATION :ITEM MV6737 :VALUE MV6733 :PREDICATE
  MV6738)
 (:VAR MV6737 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6733 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6735 :ALTERNATIVE MV6734)
 (:VAR MV6735 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6734 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV6738 :ISA BE :PRESENT "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6754 :ISA COPULAR-PREDICATION :ITEM MV6748 :VALUE MV6744 :PREDICATE
  MV6749)
 (:VAR MV6748 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6744 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6745)
 (:VAR MV6745 :ISA PROTEIN :CONTEXT MV6746 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6746 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6749 :ISA BE :PRESENT "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6757 :ISA BE :SUBJECT MV6756 :PREDICATE MV6763 :PRESENT "PRESENT")
 (:VAR MV6756 :ISA WHAT)
 (:VAR MV6763 :ISA QUALITY-PREDICATE :ITEM MV6755 :ATTRIBUTE MV6760)
 (:VAR MV6755 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6760 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6759)
 (:VAR MV6759 :ISA CELLULAR :NAME "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6767 :ISA REGULATE :MANNER MV6764 :AGENT MV6766 :OBJECT MV6768
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6764 :ISA HOW)
 (:VAR MV6766 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6768 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?"
 (:VAR MV6770 :ISA BE :SUBJECT MV6769 :PREDICATE MV6771 :PRESENT "PRESENT")
 (:VAR MV6769 :ISA WHAT)
 (:VAR MV6771 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6783 :ISA POLAR-QUESTION :STATEMENT MV6772)
 (:VAR MV6772 :ISA BE :SUBJECT MV6773 :PREDICATE MV6775)
 (:VAR MV6773 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6775 :ISA MEMBER :SET MV6781 :HAS-DETERMINER "A")
 (:VAR MV6781 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
748: "What genes are in RAS?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "What genes are in RAS" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in RAS?"
 (:VAR MV6790 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6785 :VALUE MV6788 :PREP
  MV6787 :PREDICATE MV6786)
 (:VAR MV6785 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6788 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6787 :ISA IN :WORD "in") (:VAR MV6786 :ISA BE :PRESENT "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6801 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6792 :VALUE MV6799 :PREP
  MV6794 :PREDICATE MV6793)
 (:VAR MV6792 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6799 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6794 :ISA IN :WORD "in") (:VAR MV6793 :ISA BE :PRESENT "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6803 :ISA BE :SUBJECT MV6802 :PREDICATE MV6807 :PRESENT "PRESENT")
 (:VAR MV6802 :ISA WHAT)
 (:VAR MV6807 :ISA HAS-NAME :QUANTIFIER MV6804 :QUANTIFIER MV6805 :ITEM MV6810)
 (:VAR MV6804 :ISA SOME :WORD "some") (:VAR MV6805 :ISA OTHER :WORD "other")
 (:VAR MV6810 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
751: "What are synonyms for ERK?"

                    SOURCE-START
e9    BE            1 "What are synonyms for ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for ERK?"
 (:VAR MV6813 :ISA BE :SUBJECT MV6812 :PREDICATE MV6814 :PRESENT "PRESENT")
 (:VAR MV6812 :ISA WHAT) (:VAR MV6814 :ISA HAS-SYNONYM :ITEM MV6816)
 (:VAR MV6816 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
752: "What transcription factors are shared by CXCL8, CXCL10, and IL2?"

                    SOURCE-START
e21   SHARE         1 "What transcription factors are shared by CXCL8, CXCL10, and IL2" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
 (:VAR MV6828 :ISA SHARE :OBJECT MV6818 :PARTICIPANT MV6827 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6818 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6827 :ISA COLLECTION :RAW-TEXT "CXCL8, CXCL10, and IL2" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6819 MV6820 MV6821))
 (:VAR MV6819 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV6820 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV6821 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
753: "What are the paths between BRAF and AKT1?"

                    SOURCE-START
e15   BE            1 "What are the paths between BRAF and AKT1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between BRAF and AKT1?"
 (:VAR MV6832 :ISA BE :SUBJECT MV6831 :PREDICATE MV6834 :PRESENT "PRESENT")
 (:VAR MV6831 :ISA WHAT)
 (:VAR MV6834 :ISA PATH :ENDPOINTS MV6838 :HAS-DETERMINER "THE")
 (:VAR MV6838 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6836 MV6830))
 (:VAR MV6836 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6830 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
754: "Is SMAD2 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is SMAD2 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is SMAD2 a transcription factor?"
 (:VAR MV6844 :ISA POLAR-QUESTION :STATEMENT MV6842)
 (:VAR MV6842 :ISA BE :SUBJECT MV6840 :PREDICATE MV6841)
 (:VAR MV6840 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6841 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

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
 (:VAR MV6860 :ISA BIO-ACTIVATE :AGENT MV6859 :OBJECT MV6861 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6859 :ISA PROTEIN-FAMILY :PREDICATION MV6858 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6858 :ISA ACTIVE)
 (:VAR MV6861 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6868 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6862 :VALUE MV6866 :PREP
  MV6864 :PREDICATE MV6863)
 (:VAR MV6862 :ISA WHAT) (:VAR MV6866 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6864 :ISA IN :WORD "in") (:VAR MV6863 :ISA BE :PRESENT "PRESENT"))

___________________
758: "Is the amount of phosphorylated ERK ever high?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Is the amount of phosphorylated ERK ever high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high?"
 (:VAR MV6879 :ISA POLAR-QUESTION :STATEMENT MV6878)
 (:VAR MV6878 :ISA COPULAR-PREDICATION :ITEM MV6871 :VALUE MV6876 :PREDICATE
  MV6869)
 (:VAR MV6871 :ISA BIO-AMOUNT :MEASURED-ITEM MV6874 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6874 :ISA PROTEIN-FAMILY :PREDICATION MV6873 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6873 :ISA PHOSPHORYLATE :SUBSTRATE MV6874 :RAW-TEXT "phosphorylated")
 (:VAR MV6876 :ISA HIGH :ADVERB MV6875) (:VAR MV6875 :ISA EVER :NAME "ever")
 (:VAR MV6869 :ISA BE))

___________________
759: "What genes are mutually exclusive with PTEN for prostate cancer?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with PTEN for prostate cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with PTEN for prostate cancer?"
 (:VAR MV6890 :ISA COPULAR-PREDICATION :ITEM MV6883 :VALUE MV6880 :PREDICATE
  MV6884)
 (:VAR MV6883 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6880 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6881 :ALTERNATIVE MV6886)
 (:VAR MV6881 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224")
 (:VAR MV6886 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6884 :ISA BE :PRESENT "PRESENT"))

___________________
760: "What signaling pathways are shared by SMAD2 and CXCL8?"

                    SOURCE-START
e17   SHARE         1 "What signaling pathways are shared by SMAD2 and CXCL8" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by SMAD2 and CXCL8?"
 (:VAR MV6900 :ISA SHARE :OBJECT MV6891 :PARTICIPANT MV6899 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6891 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV6899 :ISA COLLECTION :RAW-TEXT "SMAD2 and CXCL8" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6892 MV6893))
 (:VAR MV6892 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6893 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
761: "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
 (:VAR MV6909 :ISA REGULATE :AGENT MV6906 :OBJECT MV6911 :PRESENT "PRESENT"
  :ADVERB MV6907 :ADVERB MV6908 :RAW-TEXT "regulate")
 (:VAR MV6906 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV6911 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6902 MV6903 MV6904))
 (:VAR MV6902 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6903 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6904 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6907 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6908 :ISA FREQUENTLY :NAME "frequently"))

___________________
762: "What is the most likely cellular location of PTEN?"

                    SOURCE-START
e19   BE            1 "What is the most likely cellular location of PTEN" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of PTEN?"
 (:VAR MV6913 :ISA BE :SUBJECT MV6912 :PREDICATE MV6923 :PRESENT "PRESENT")
 (:VAR MV6912 :ISA WHAT)
 (:VAR MV6923 :ISA QUALITY-PREDICATE :ITEM MV6921 :ATTRIBUTE MV6919)
 (:VAR MV6921 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6919 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6917
  :MODIFIER MV6918)
 (:VAR MV6917 :ISA LIKELY :COMPARATIVE MV6915)
 (:VAR MV6915 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6918 :ISA CELLULAR :NAME "cellular"))

___________________
763: "Is BRAF a kinase?"

                    SOURCE-START
e8    BE            1 "Is BRAF a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase?" (:VAR MV6928 :ISA POLAR-QUESTION :STATEMENT MV6924)
 (:VAR MV6924 :ISA BE :SUBJECT MV6925 :PREDICATE MV6927)
 (:VAR MV6925 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6927 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
764: "Can you tell me whether BRAF is a kinase?"

                    SOURCE-START
e22   TELL          1 "Can you tell me whether BRAF is a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me whether BRAF is a kinase?"
 (:VAR MV6940 :ISA POLAR-QUESTION :STATEMENT MV6931)
 (:VAR MV6931 :ISA TELL :AGENT MV6930 :THEME MV6939 :THEME MV6932 :MODAL "CAN")
 (:VAR MV6930 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6939 :ISA WH-QUESTION :STATEMENT MV6936 :WH WHETHER)
 (:VAR MV6936 :ISA BE :SUBJECT MV6935 :PREDICATE MV6938 :MODAL "CAN")
 (:VAR MV6935 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6938 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6932 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
765: "I want to know if BRAF is a kinase."

                    SOURCE-START
e21   WANT          1 "I want to know if BRAF is a kinase" 10
                    PERIOD
                    END-OF-SOURCE
("I want to know if BRAF is a kinase."
 (:VAR MV6944 :ISA WANT :AGENT MV6941 :THEME MV6954 :PRESENT "PRESENT")
 (:VAR MV6941 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6954 :ISA KNOW :AGENT MV6941 :STATEMENT MV6953)
 (:VAR MV6953 :ISA WH-QUESTION :STATEMENT MV6949 :WH IF)
 (:VAR MV6949 :ISA BE :SUBJECT MV6948 :PREDICATE MV6951 :PRESENT "PRESENT")
 (:VAR MV6948 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6951 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

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
 (:VAR MV6963 :ISA BE :SUBJECT MV6960 :PREDICATE MV6964 :PRESENT "PRESENT")
 (:VAR MV6960 :ISA TYPE :MOLECULE-TYPE MV6962 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "type")
 (:VAR MV6962 :ISA PROTEIN :RAW-TEXT "protein")
 (:VAR MV6964 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
768: "What is the activity of the BRAF protein?"

                    SOURCE-START
e17   BE            1 "What is the activity of the BRAF protein" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the activity of the BRAF protein?"
 (:VAR MV6967 :ISA BE :SUBJECT MV6966 :PREDICATE MV6969 :PRESENT "PRESENT")
 (:VAR MV6966 :ISA WHAT)
 (:VAR MV6969 :ISA BIO-ACTIVITY :PARTICIPANT MV6974 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV6974 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "BRAF" :UID
  "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
769: "Is BRAF a kinase or a transcription factor?"

                    SOURCE-START
e15   BE            1 "Is BRAF a kinase or a transcription factor" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase or a transcription factor?"
 (:VAR MV6984 :ISA POLAR-QUESTION :STATEMENT MV6977)
 (:VAR MV6977 :ISA BE :SUBJECT MV6978 :PREDICATE MV6983)
 (:VAR MV6978 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6983 :ISA COLLECTION :RAW-TEXT "a kinase or a transcription factor"
  :TYPE KINASE :NUMBER 2 :ITEMS (MV6980 MV6976))
 (:VAR MV6980 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6976 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
770: "What proteins are targeted by NG25?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by NG25?"
 (:VAR MV6991 :ISA TARGET :OBJECT MV6987 :AGENT MV6985 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV6987 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6985 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664"))

___________________
771: "Name transcription factors shared by FN1, MMP3, and SERPINE1."

                    SOURCE-START
e20   NAME-SOMETHING  1 "Name transcription factors shared by FN1, MMP3, and SERPINE1" 15
                    PERIOD
                    END-OF-SOURCE
("Name transcription factors shared by FN1, MMP3, and SERPINE1."
 (:VAR MV6997 :ISA NAME-SOMETHING :PATIENT MV6993 :PRESENT "PRESENT")
 (:VAR MV6993 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7000 :RAW-TEXT
  "transcription factors")
 (:VAR MV7000 :ISA SHARE :OBJECT MV6993 :PARTICIPANT MV7003 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7003 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6994 MV6995 MV6996))
 (:VAR MV6994 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6995 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6996 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN"))

___________________
772: "Tell me if STAT3 is a transcription factor"

                    SOURCE-START
e15   TELL          1 "Tell me if STAT3 is a transcription factor" 10
                    END-OF-SOURCE
("Tell me if STAT3 is a transcription factor"
 (:VAR MV7007 :ISA TELL :THEME MV7012 :BENEFICIARY MV7008 :PRESENT "PRESENT")
 (:VAR MV7012 :ISA WH-QUESTION :STATEMENT MV7010 :WH IF)
 (:VAR MV7010 :ISA BE :SUBJECT MV7005 :PREDICATE MV7006 :PRESENT "PRESENT")
 (:VAR MV7005 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7006 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV7008 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
773: "Show me signaling pathways shared by MAP3K7 and CXCL8."

                    SOURCE-START
e18   SHOW          1 "Show me signaling pathways shared by MAP3K7 and CXCL8" 14
                    PERIOD
                    END-OF-SOURCE
("Show me signaling pathways shared by MAP3K7 and CXCL8."
 (:VAR MV7016 :ISA SHOW :STATEMENT-OR-THEME MV7013 :BENEFICIARY MV7017 :PRESENT
  "PRESENT")
 (:VAR MV7013 :ISA SIGNALING-PATHWAY :PREDICATION MV7018 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7018 :ISA SHARE :OBJECT MV7013 :PARTICIPANT MV7021 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7021 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7014 MV7015))
 (:VAR MV7014 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7015 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7017 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
774: "Give me signaling pathways shared by MAP3K7 and CXCL8"

                    SOURCE-START
e18   GIVE          1 "Give me signaling pathways shared by MAP3K7 and CXCL8" 14
                    END-OF-SOURCE
("Give me signaling pathways shared by MAP3K7 and CXCL8"
 (:VAR MV7026 :ISA GIVE :THEME MV7023 :BENEFICIARY MV7027 :PRESENT "PRESENT")
 (:VAR MV7023 :ISA SIGNALING-PATHWAY :PREDICATION MV7028 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7028 :ISA SHARE :OBJECT MV7023 :PARTICIPANT MV7031 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7031 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7024 MV7025))
 (:VAR MV7024 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7025 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7027 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
775: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"

                    SOURCE-START
e46   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK " 16
e34   BY            16 "by ten fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e46   S             1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK " 16
e34   PP            16 "by ten fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
776: "Active MEK phosphorylates ERK"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "Active MEK phosphorylates ERK" 5
                    END-OF-SOURCE
("Active MEK phosphorylates ERK"
 (:VAR MV7064 :ISA PHOSPHORYLATE :AGENT MV7063 :SUBSTRATE MV7065 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7063 :ISA PROTEIN-FAMILY :PREDICATION MV7062 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7062 :ISA ACTIVE)
 (:VAR MV7065 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
e43   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount " 14
e33   OF            14 "of MEK ten fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e43   S             1 "Is the amount of phosphorylated ERK ever high if we increase the amount " 14
e33   PP            14 "of MEK ten fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
778: "What are some pathways that affect BRAF?"

                    SOURCE-START
e14   BE            1 "What are some pathways that affect BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some pathways that affect BRAF?"
 (:VAR MV7094 :ISA BE :SUBJECT MV7093 :PREDICATE MV7096 :PRESENT "PRESENT")
 (:VAR MV7093 :ISA WHAT)
 (:VAR MV7096 :ISA PATHWAY :PREDICATION MV7098 :QUANTIFIER MV7095 :RAW-TEXT
  "pathways")
 (:VAR MV7098 :ISA AFFECT :AGENT MV7096 :THAT-REL T :OBJECT MV7099 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7099 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7095 :ISA SOME :WORD "some"))

___________________
779: "What are the pathways that affect BRAF"

                    SOURCE-START
e15   BE            1 "What are the pathways that affect BRAF" 8
                    END-OF-SOURCE
("What are the pathways that affect BRAF"
 (:VAR MV7101 :ISA BE :SUBJECT MV7100 :PREDICATE MV7103 :PRESENT "PRESENT")
 (:VAR MV7100 :ISA WHAT)
 (:VAR MV7103 :ISA PATHWAY :PREDICATION MV7105 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV7105 :ISA AFFECT :AGENT MV7103 :THAT-REL T :OBJECT MV7106 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7106 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    SOURCE-START
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:VAR MV7116 :ISA REGULATE :OBJECT MV7110 :AGENT MV7115 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV7110 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7115 :ISA COLLECTION :RAW-TEXT "miR-20b-5p, and miR-145-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV7107 MV7108))
 (:VAR MV7107 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV7108 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    SOURCE-START
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are regulated by ELK1?"
 (:VAR MV7120 :ISA BE :SUBJECT MV7119 :PREDICATE MV7122 :PRESENT "PRESENT")
 (:VAR MV7119 :ISA WHAT)
 (:VAR MV7122 :ISA GENE :PREDICATION MV7127 :QUANTIFIER MV7121 :RAW-TEXT
  "genes")
 (:VAR MV7127 :ISA REGULATE :OBJECT MV7122 :THAT-REL T :AGENT MV7118 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV7118 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7121 :ISA SOME :WORD "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    SOURCE-START
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways contain CXCL8 and CXCL10?"
 (:VAR MV7133 :ISA CONTAIN :THEME MV7132 :PATIENT MV7135 :PRESENT "PRESENT")
 (:VAR MV7132 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7135 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7129 MV7130))
 (:VAR MV7129 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7130 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    SOURCE-START
e24   REMOVE        1 "Remove the fact that IL10 activates STAT3 in the model" 13
                    END-OF-SOURCE
("Remove the fact that IL10 activates STAT3 in the model"
 (:VAR MV7138 :ISA REMOVE :OBJECT MV7147 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7147 :ISA FACT :STATEMENT MV7142 :HAS-DETERMINER "THE")
 (:VAR MV7142 :ISA BIO-ACTIVATE :AGENT MV7136 :OBJECT MV7137 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7136 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7137 :ISA PROTEIN :INFO-CONTEXT MV7145 :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV7145 :ISA MODEL :HAS-DETERMINER "THE"))

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
 (:VAR MV7159 :ISA BE :SUBJECT MV7158 :PREDICATE MV7161 :PRESENT "PRESENT")
 (:VAR MV7158 :ISA WHAT)
 (:VAR MV7161 :ISA PATH :ENDPOINTS MV7165 :QUANTIFIER MV7160)
 (:VAR MV7165 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7163 MV7157))
 (:VAR MV7163 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7157 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV7160 :ISA SOME :WORD "some"))

___________________
786: "Does MEK1 activate ERK2"

                    SOURCE-START
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    END-OF-SOURCE
("Does MEK1 activate ERK2" (:VAR MV7172 :ISA POLAR-QUESTION :STATEMENT MV7171)
 (:VAR MV7171 :ISA BIO-ACTIVATE :AGENT MV7167 :OBJECT MV7168 :RAW-TEXT
  "activate")
 (:VAR MV7167 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7168 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    SOURCE-START
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs tagret BRAF?"
 (:VAR MV7175 :ISA PROTEIN :HAS-DETERMINER "WHAT" :MODIFIER MV7174 :MODIFIER
  MV7176 :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7174 :ISA DRUG :RAW-TEXT "drugs")
 (:VAR MV7176 :ISA BIO-ENTITY :NAME "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which kinases are in the MAPK signalling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signalling pathway?"
 (:VAR MV7185 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7179 :VALUE MV7177 :PREP
  MV7181 :PREDICATE MV7180)
 (:VAR MV7179 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7177 :ISA CELLULAR-PROCESS :HAS-DETERMINER "THE" :MODIFIER MV7183
  :RAW-TEXT "signalling pathway" :NAME "signalling cascade" :UID "GO:0007165")
 (:VAR MV7183 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV7181 :ISA IN :WORD "in") (:VAR MV7180 :ISA BE :PRESENT "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    SOURCE-START
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs drugs target BRAF?"
 (:VAR MV7190 :ISA TARGET :AGENT MV7192 :OBJECT MV7191 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7192 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7191 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    SOURCE-START
e6    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What rgulates ELLK1?"
 (:VAR MV7196 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :MODIFIER MV7197 :NAME
  "ELLK1")
 (:VAR MV7197 :ISA BIO-ENTITY :NAME "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase expression of c-fos in liver?"
 (:VAR MV7210 :ISA POLAR-QUESTION :STATEMENT MV7207)
 (:VAR MV7207 :ISA INCREASE :AGENT MV7198 :AFFECTED-PROCESS MV7203 :RAW-TEXT
  "increase")
 (:VAR MV7198 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7203 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7199 :RAW-TEXT
  "expression")
 (:VAR MV7199 :ISA PROTEIN :ORGAN MV7206 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV7206 :ISA LIVER))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    SOURCE-START
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect c-fos expression in liver?"
 (:VAR MV7220 :ISA POLAR-QUESTION :STATEMENT MV7218)
 (:VAR MV7218 :ISA AFFECT :AGENT MV7211 :AFFECTED-PROCESS MV7215 :RAW-TEXT
  "affect")
 (:VAR MV7211 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7215 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV7217 :OBJECT MV7212
  :RAW-TEXT "expression")
 (:VAR MV7217 :ISA LIVER)
 (:VAR MV7212 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    SOURCE-START
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 alter c-fos expression?"
 (:VAR MV7227 :ISA POLAR-QUESTION :STATEMENT MV7226)
 (:VAR MV7226 :ISA ALTER :AGENT MV7221 :AFFECTED-PROCESS MV7225 :RAW-TEXT
  "alter")
 (:VAR MV7221 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7225 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7222 :RAW-TEXT
  "expression")
 (:VAR MV7222 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcriptional regulator of c-fos?"
 (:VAR MV7235 :ISA POLAR-QUESTION :STATEMENT MV7231)
 (:VAR MV7231 :ISA BE :SUBJECT MV7228 :PREDICATE MV7229)
 (:VAR MV7228 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7229 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV7230 :HAS-DETERMINER "A"
  :RAW-TEXT "transcriptional regulator" :NAME "transcriptional regulator" :UID
  "XFAM:PF02082")
 (:VAR MV7230 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
795: "Which drugs inhibit BRAF?"

                    SOURCE-START
e6    INHIBIT       1 "Which drugs inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs inhibit BRAF?"
 (:VAR MV7238 :ISA INHIBIT :AGENT MV7237 :OBJECT MV7239 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV7237 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7239 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    SOURCE-START
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    PERIOD
                    END-OF-SOURCE
("STAT3 upregulates ELK1."
 (:VAR MV7242 :ISA UPREGULATE :AGENT MV7240 :OBJECT MV7241 :PRESENT "PRESENT"
  :RAW-TEXT "upregulates")
 (:VAR MV7240 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7241 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    SOURCE-START
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 transcribe?"
 (:VAR MV7246 :ISA TRANSCRIBE :OBJECT MV7244 :AGENT MV7243 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7244 :ISA WHAT)
 (:VAR MV7243 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    SOURCE-START
e5    BE            1 "What is PI3K" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PI3K?"
 (:VAR MV7249 :ISA BE :SUBJECT MV7248 :PREDICATE MV7247 :PRESENT "PRESENT")
 (:VAR MV7248 :ISA WHAT)
 (:VAR MV7247 :ISA PROTEIN-FAMILY :RAW-TEXT "PI3K" :NAME "PI3-kinase" :COUNT 4
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
 (:VAR MV7251 :ISA BE :SUBJECT MV7250 :PREDICATE MV7252 :PRESENT "PRESENT")
 (:VAR MV7250 :ISA WHAT)
 (:VAR MV7252 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV7254 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV7253 :SUBSTRATE MV7255
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7253 :ISA WHAT)
 (:VAR MV7255 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV7259 :ISA TARGET :AGENT MV7257 :OBJECT MV7260 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7257 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7260 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
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
 (:VAR MV7263 :ISA REGULATE :AGENT-OR-CAUSE MV7262 :OBJECT MV7261 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7262 :ISA WHAT) (:VAR MV7261 :ISA BIO-ENTITY :NAME "ELLK1"))

___________________
803: "What regulates ELK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK1?"
 (:VAR MV7266 :ISA REGULATE :AGENT-OR-CAUSE MV7265 :OBJECT MV7264 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7265 :ISA WHAT)
 (:VAR MV7264 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    SOURCE-START
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5pp target STAT3?"
 (:VAR MV7277 :ISA POLAR-QUESTION :STATEMENT MV7276)
 (:VAR MV7276 :ISA TARGET :AGENT MV7275 :OBJECT MV7268 :RAW-TEXT "target")
 (:VAR MV7275 :ISA BIO-ENTITY :NAME "miR-20b-5pp")
 (:VAR MV7268 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
805: "What are the mutations of PTEEN in prostate cancer?"

                    SOURCE-START
e18   OF            1 "What are the mutations of PTEEN in prostate cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEEN in prostate cancer?"
 (:VAR MV7288 :ISA WH-QUESTION :STATEMENT MV7287 :WH WHAT)
 (:VAR MV7287 :ISA PREPOSITIONAL-PHRASE :POBJ MV7285 :PREP "OF")
 (:VAR MV7285 :ISA BIO-ENTITY :CONTEXT MV7278 :NAME "PTEEN")
 (:VAR MV7278 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224"))

___________________
806: "What does selumitinibib target?"

                    SOURCE-START
e6    TARGET        1 "What does selumitinibib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does selumitinibib target?"
 (:VAR MV7292 :ISA TARGET :OBJECT MV7289 :AGENT MV7293 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7289 :ISA WHAT) (:VAR MV7293 :ISA BIO-ENTITY :NAME "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    SOURCE-START
e9    BE            1 "Is ELLK1 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ELLK1 a kinase?" (:VAR MV7298 :ISA POLAR-QUESTION :STATEMENT MV7295)
 (:VAR MV7295 :ISA BE :SUBJECT MV7294 :PREDICATE MV7297)
 (:VAR MV7294 :ISA BIO-ENTITY :NAME "ELLK1")
 (:VAR MV7297 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
808: "What regulates ELK12?"

                    SOURCE-START
e7    REGULATE      1 "What regulates ELK12" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK12?"
 (:VAR MV7300 :ISA REGULATE :AGENT-OR-CAUSE MV7299 :OBJECT MV7301 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7299 :ISA WHAT)
 (:VAR MV7301 :ISA PROTEIN :VARIANT-NUMBER MV7303 :RAW-TEXT "ELK" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV7303 :ISA NUMBER :VALUE 12))

___________________
809: "What does sleumiitibbb target?"

                    SOURCE-START
e6    TARGET        1 "What does sleumiitibbb target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does sleumiitibbb target?"
 (:VAR MV7307 :ISA TARGET :OBJECT MV7304 :AGENT MV7308 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7304 :ISA WHAT) (:VAR MV7308 :ISA BIO-ENTITY :NAME "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    SOURCE-START
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:VAR MV7312 :ISA BE :SUBJECT MV7311 :PREDICATE MV7317 :PRESENT "PRESENT")
 (:VAR MV7311 :ISA WHAT)
 (:VAR MV7317 :ISA EVIDENCE :STATEMENT MV7316 :HAS-DETERMINER "THE")
 (:VAR MV7316 :ISA PHOSPHORYLATE :AGENT MV7309 :SUBSTRATE MV7310 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7309 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7310 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
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
 (:VAR MV7334 :ISA BIO-ACTIVATE :AGENT MV7332 :OBJECT MV7333 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7332 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7333 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "How many interactions are in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How many interactions are in the model?"
 (:VAR MV7345 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7337 :VALUE MV7344 :PREP
  "IN" :PREDICATE MV7338)
 (:VAR MV7337 :ISA INTERACT :HAS-DETERMINER "HOW" :QUANTIFIER MV7336 :RAW-TEXT
  "interactions")
 (:VAR MV7336 :ISA MANY :WORD "many")
 (:VAR MV7344 :ISA INTERACT :INFO-CONTEXT MV7341 :HAS-DETERMINER "HOW"
  :QUANTIFIER MV7336 :RAW-TEXT "interactions")
 (:VAR MV7341 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV7338 :ISA BE :PRESENT "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    SOURCE-START
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:VAR MV7358 :ISA POLAR-QUESTION :STATEMENT MV7356)
 (:VAR MV7356 :ISA DECREASE :AGENT MV7349 :AFFECTED-PROCESS-OR-OBJECT MV7353
  :RAW-TEXT "decrease")
 (:VAR MV7349 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV7353 :ISA BIO-AMOUNT :MEASURED-ITEM MV7347 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7347 :ISA PROTEIN :PREDICATION MV7355 :RAW-TEXT "MAP2K2" :UID
  "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV7355 :ISA PHOSPHORYLATE :SUBSTRATE MV7347 :RAW-TEXT "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does ERK1 activate?"
 (:VAR MV7363 :ISA BIO-ACTIVATE :OBJECT MV7361 :AGENT MV7359 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7361 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7359 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does MEK1 activate?"
 (:VAR MV7368 :ISA BIO-ACTIVATE :OBJECT MV7366 :AGENT MV7364 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7366 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7364 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERK1 activate?"
 (:VAR MV7372 :ISA BIO-ACTIVATE :OBJECT MV7370 :AGENT MV7369 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7370 :ISA WHAT)
 (:VAR MV7369 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does JAK1 phosphorylate?"
 (:VAR MV7376 :ISA PHOSPHORYLATE :AMINO-ACID MV7374 :AGENT MV7373 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV7374 :ISA WHAT)
 (:VAR MV7373 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does STAT3 regulate?"
 (:VAR MV7381 :ISA REGULATE :OBJECT MV7379 :AGENT MV7377 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7379 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7377 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    SOURCE-START
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and what does SRF bind?"
 (:VAR MV7391 :ISA COLLECTION :TYPE INVOLVE :NUMBER 2 :ITEMS (MV7384 MV7390))
 (:VAR MV7384 :ISA INVOLVE :THEME MV7383 :THEME MV7385 :PRESENT "PRESENT")
 (:VAR MV7383 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7385 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV7390 :ISA BINDING :DIRECT-BINDEE MV7387 :BINDER MV7389 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7387 :ISA WHAT)
 (:VAR MV7389 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV7394 :ISA INVOLVE :THEME MV7393 :THEME MV7395 :PRESENT "PRESENT")
 (:VAR MV7393 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7395 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    SOURCE-START
e5    BINDING       1 "What does SRF bind" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SRF bind?"
 (:VAR MV7399 :ISA BINDING :DIRECT-BINDEE MV7396 :BINDER MV7398 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7396 :ISA WHAT)
 (:VAR MV7398 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
824: "What pathways involve SRF and is SRF a kinase?"

                    SOURCE-START
e16   KINASE        1 "What pathways involve SRF and is SRF a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and is SRF a kinase?"
 (:VAR MV7410 :ISA WH-QUESTION :STATEMENT MV7408 :VAR NIL :WH WHAT)
 (:VAR MV7408 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
825: "Does MAP2K1 phosphorylate and activate MAPK1?"

                    SOURCE-START
e13   COLLECTION    1 "Does MAP2K1 phosphorylate and activate MAPK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP2K1 phosphorylate and activate MAPK1?"
 (:VAR MV7421 :ISA POLAR-QUESTION :STATEMENT MV7420)
 (:VAR MV7420 :ISA COLLECTION :TYPE PHOSPHORYLATE :ITEMS
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
 (:VAR MV7427 :ISA POLAR-QUESTION :STATEMENT MV7426)
 (:VAR MV7426 :ISA PHOSPHORYLATE :AGENT MV7422 :SUBSTRATE MV7423 :RAW-TEXT
  "phosphorylate")
 (:VAR MV7422 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7423 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    SOURCE-START
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases activate MEK2?"
 (:VAR MV7431 :ISA BIO-ACTIVATE :AGENT MV7430 :OBJECT MV7428 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7430 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7428 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:VAR MV7437 :ISA TARGET :AGENT MV7435 :AFFECTED-PROCESS MV7438 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7435 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7438 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV7441 :RAW-TEXT
  "upstreams")
 (:VAR MV7441 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7432 MV7433))
 (:VAR MV7432 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7433 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target CXCL8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target CXCL8?"
 (:VAR MV7447 :ISA TARGET :AGENT MV7445 :OBJECT MV7443 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7445 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7443 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target Jak3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target Jak3?"
 (:VAR MV7452 :ISA TARGET :AGENT MV7450 :OBJECT MV7448 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7450 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7448 :ISA PROTEIN :RAW-TEXT "Jak3" :UID "UP:P52333" :NAME
  "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    SOURCE-START
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:VAR MV7459 :ISA TARGET :AGENT MV7457 :OBJECT MV7453 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7457 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7453 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7460 :RAW-TEXT
  "transcription factors")
 (:VAR MV7460 :ISA SHARE :OBJECT MV7453 :PARTICIPANT MV7463 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7463 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7454 MV7455))
 (:VAR MV7454 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7455 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    SOURCE-START
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does miR-20a-5p target?"
 (:VAR MV7470 :ISA TARGET :OBJECT MV7467 :AGENT MV7465 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7467 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7465 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    SOURCE-START
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors does miR-20a-5p target?"
 (:VAR MV7476 :ISA TARGET :OBJECT MV7471 :AGENT MV7472 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7471 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7472 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV7487 :ISA COPULAR-PREDICATION :ITEM MV7481 :VALUE MV7477 :PREDICATE
  MV7482)
 (:VAR MV7481 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7477 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV7479 :ALTERNATIVE MV7478)
 (:VAR MV7479 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV7478 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV7482 :ISA BE :PRESENT "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    SOURCE-START
e7    TARGET        1 "What drugs target fakeprotein" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target fakeprotein?"
 (:VAR MV7491 :ISA TARGET :AGENT MV7489 :OBJECT MV7492 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7489 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7492 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the FAKE signaling pathway?"
 (:VAR MV7503 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7495 :VALUE MV7502 :PREP
  "IN" :PREDICATE MV7496)
 (:VAR MV7495 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7502 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV7493 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV7493 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7499
  :RAW-TEXT "signaling pathway")
 (:VAR MV7499 :ISA BIO-ENTITY :NAME "FAKE")
 (:VAR MV7496 :ISA BE :PRESENT "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in fictional cancer?"
 (:VAR MV7506 :ISA BE :SUBJECT MV7505 :PREDICATE MV7508 :PRESENT "PRESENT")
 (:VAR MV7505 :ISA WHAT)
 (:VAR MV7508 :ISA MUTATION :OBJECT MV7510 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7510 :ISA PROTEIN :CONTEXT MV7513 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7513 :ISA CANCER :PREDICATION MV7512) (:VAR MV7512 :ISA FICTIONAL))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in liver cancer?"
 (:VAR MV7517 :ISA BE :SUBJECT MV7516 :PREDICATE MV7519 :PRESENT "PRESENT")
 (:VAR MV7516 :ISA WHAT)
 (:VAR MV7519 :ISA MUTATION :OBJECT MV7521 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7521 :ISA PROTEIN :CONTEXT MV7524 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7524 :ISA CANCER :ORGAN MV7523) (:VAR MV7523 :ISA LIVER))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELk1 transcribes FAKE in the model."
 (:VAR MV7528 :ISA REMOVE :OBJECT MV7538 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7538 :ISA FACT :STATEMENT MV7532 :HAS-DETERMINER "THE")
 (:VAR MV7532 :ISA TRANSCRIBE :AGENT MV7527 :OBJECT MV7533 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7527 :ISA PROTEIN :RAW-TEXT "ELk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7533 :ISA BIO-ENTITY :INFO-CONTEXT MV7536 :NAME "FAKE")
 (:VAR MV7536 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
840: "ELK1 transcribes FOS"

                    SOURCE-START
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    END-OF-SOURCE
("ELK1 transcribes FOS"
 (:VAR MV7540 :ISA TRANSCRIBE :AGENT MV7539 :OBJECT MV7541 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7539 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7541 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELK1 transcribes FOS in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELK1 transcribes FOS in the model."
 (:VAR MV7543 :ISA REMOVE :OBJECT MV7553 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7553 :ISA FACT :STATEMENT MV7547 :HAS-DETERMINER "THE")
 (:VAR MV7547 :ISA TRANSCRIBE :AGENT MV7542 :OBJECT MV7548 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7542 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7548 :ISA PROTEIN :INFO-CONTEXT MV7551 :RAW-TEXT "FOS" :UID
  "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7551 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:VAR MV7566 :ISA SHARE :OBJECT MV7554 :PARTICIPANT MV7565 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7554 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7565 :ISA COLLECTION :RAW-TEXT "CXCL8 and FAKE10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7555 MV7564))
 (:VAR MV7555 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7564 :ISA BIO-ENTITY :NAME "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    SOURCE-START
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:VAR MV7577 :ISA SHARE :OBJECT MV7568 :PARTICIPANT MV7576 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7568 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7576 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7569 MV7570))
 (:VAR MV7569 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7570 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    SOURCE-START
e8    BIO-USE       1 "What databases do you use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What databases do you use?"
 (:VAR MV7584 :ISA BIO-USE :OBJECT MV7580 :AGENT MV7582 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV7580 :ISA DATABASE :HAS-DETERMINER "WHAT")
 (:VAR MV7582 :ISA INTERLOCUTOR :NAME "hearer"))

___________________
845: "What is the MSA?"

                    SOURCE-START
e7    BE            1 "What is the MSA" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the MSA?"
 (:VAR MV7586 :ISA BE :SUBJECT MV7585 :PREDICATE MV7588 :PRESENT "PRESENT")
 (:VAR MV7585 :ISA WHAT)
 (:VAR MV7588 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "MSA" :UID
  "UP:Q9FIB6" :NAME "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    SOURCE-START
e11   ASK           1 "What tissues can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues can I ask about?"
 (:VAR MV7597 :ISA ASK :PATIENT MV7590 :MODAL MV7591 :AGENT MV7592 :PRESENT
  "PRESENT")
 (:VAR MV7590 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV7591 :ISA CAN)
 (:VAR MV7592 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
847: "What cancers can I ask about?"

                    SOURCE-START
e11   ASK           1 "What cancers can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What cancers can I ask about?"
 (:VAR MV7606 :ISA ASK :PATIENT MV7599 :MODAL MV7600 :AGENT MV7601 :PRESENT
  "PRESENT")
 (:VAR MV7599 :ISA CANCER :HAS-DETERMINER "WHAT") (:VAR MV7600 :ISA CAN)
 (:VAR MV7601 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    SOURCE-START
e11   ASK           1 "What mechanisms can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What mechanisms can I ask about?"
 (:VAR MV7615 :ISA ASK :PATIENT MV7608 :MODAL MV7609 :AGENT MV7610 :PRESENT
  "PRESENT")
 (:VAR MV7608 :ISA BIO-MECHANISM :HAS-DETERMINER "WHAT") (:VAR MV7609 :ISA CAN)
 (:VAR MV7610 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
849: "What does STAT3 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does STAT3 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate?"
 (:VAR MV7619 :ISA REGULATE :OBJECT MV7617 :AGENT MV7616 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7617 :ISA WHAT)
 (:VAR MV7616 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are kinases?"
 (:VAR MV7623 :ISA BE :SUBJECT MV7622 :PREDICATE MV7624 :PRESENT "PRESENT")
 (:VAR MV7622 :ISA THESE :QUANTIFIER MV7620 :WORD "these")
 (:VAR MV7620 :ISA WHICH) (:VAR MV7624 :ISA KINASE :RAW-TEXT "kinases"))

___________________
851: "What pathways is ERK1 in?"

                    SOURCE-START
e10   IN            1 "What pathways is ERK1 in" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways is ERK1 in?"
 (:VAR MV7631 :ISA WH-QUESTION :STATEMENT MV7630 :VAR NIL :WH WHAT)
 (:VAR MV7630 :ISA IN :WORD "in"))

___________________
852: "Which of these is AKT1 in?"

                    SOURCE-START
e13   IN            1 "Which of these is AKT1 in" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these is AKT1 in?"
 (:VAR MV7639 :ISA WH-QUESTION :STATEMENT MV7637 :WH WHICH)
 (:VAR MV7637 :ISA IN :WORD "in"))

___________________
853: "What pathways are ERK1 and AKT1 in?"

                    SOURCE-START
e14   IN            1 "What pathways are ERK1 and AKT1 in" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are ERK1 and AKT1 in?"
 (:VAR MV7648 :ISA WH-QUESTION :STATEMENT MV7646 :VAR NIL :WH WHAT)
 (:VAR MV7646 :ISA IN :WORD "in"))

___________________
854: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV7653 :ISA TARGET :AGENT MV7651 :OBJECT MV7649 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7651 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV7649 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    SOURCE-START
e11   TARGET        1 "Which of these target SMAD2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these target SMAD2?"
 (:VAR MV7659 :ISA TARGET :AGENT-OR-CAUSE MV7657 :OBJECT MV7654 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7657 :ISA THESE :QUANTIFIER MV7655 :WORD "these")
 (:VAR MV7655 :ISA WHICH)
 (:VAR MV7654 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
856: "Do any of these regulate IL2?"

                    SOURCE-START
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do any of these regulate IL2?"
 (:VAR MV7669 :ISA POLAR-QUESTION :STATEMENT MV7667)
 (:VAR MV7667 :ISA REGULATE :AGENT-OR-CAUSE MV7665 :OBJECT MV7661 :RAW-TEXT
  "regulate")
 (:VAR MV7665 :ISA THESE :QUANTIFIER MV7663 :WORD "these")
 (:VAR MV7663 :ISA ANY :WORD "any")
 (:VAR MV7661 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    SOURCE-START
e5    REGULATE      1 "What regulates STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates STAT3?"
 (:VAR MV7672 :ISA REGULATE :AGENT-OR-CAUSE MV7671 :OBJECT MV7670 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7671 :ISA WHAT)
 (:VAR MV7670 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve these?"
 (:VAR MV7675 :ISA INVOLVE :THEME MV7674 :THEME MV7676 :PRESENT "PRESENT")
 (:VAR MV7674 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7676 :ISA THESE :WORD "these"))

___________________
859: "What are the targets of NG25?"

                    SOURCE-START
e14   BE            1 "What are the targets of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of NG25?"
 (:VAR MV7679 :ISA BE :SUBJECT MV7678 :PREDICATE MV7681 :PRESENT "PRESENT")
 (:VAR MV7678 :ISA WHAT)
 (:VAR MV7681 :ISA TARGET-PROTEIN :AGENT MV7677 :HAS-DETERMINER "THE" :RAW-TEXT
  "targets")
 (:VAR MV7677 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664"))

___________________
860: "What is their most likely cellular location?"

                    SOURCE-START
e13   BE            1 "What is their most likely cellular location" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is their most likely cellular location?"
 (:VAR MV7686 :ISA BE :SUBJECT MV7685 :PREDICATE MV7692 :PRESENT "PRESENT")
 (:VAR MV7685 :ISA WHAT)
 (:VAR MV7692 :ISA LOCATION-OF :THEME MV7687 :PREDICATION MV7690 :MODIFIER
  MV7691)
 (:VAR MV7687 :ISA PRONOUN/PLURAL :WORD "their")
 (:VAR MV7690 :ISA LIKELY :COMPARATIVE MV7688)
 (:VAR MV7688 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7691 :ISA CELLULAR :NAME "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is ERK1 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?"
 (:VAR MV7697 :ISA POLAR-QUESTION :STATEMENT MV7695)
 (:VAR MV7695 :ISA BE :SUBJECT MV7693 :PREDICATE MV7694)
 (:VAR MV7693 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV7694 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
862: "Is it a kinase?"

                    SOURCE-START
e9    BE            1 "Is it a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is it a kinase?" (:VAR MV7702 :ISA POLAR-QUESTION :STATEMENT MV7698)
 (:VAR MV7698 :ISA BE :SUBJECT MV7699 :PREDICATE MV7701)
 (:VAR MV7699 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7701 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
863: "What is PLX-4720?"

                    SOURCE-START
e5    BE            1 "What is PLX-4720" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PLX-4720?"
 (:VAR MV7705 :ISA BE :SUBJECT MV7704 :PREDICATE MV7703 :PRESENT "PRESENT")
 (:VAR MV7704 :ISA WHAT)
 (:VAR MV7703 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
864: "What does it target?"

                    SOURCE-START
e7    TARGET        1 "What does it target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it target?"
 (:VAR MV7710 :ISA TARGET :OBJECT MV7706 :AGENT-OR-CAUSE MV7708 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7706 :ISA WHAT) (:VAR MV7708 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
865: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV7715 :ISA REGULATE :OBJECT MV7713 :AGENT MV7711 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7713 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7711 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
866: "What pathways is it in?"

                    SOURCE-START
e10   IN            1 "What pathways is it in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways is it in?"
 (:VAR MV7721 :ISA WH-QUESTION :STATEMENT MV7720 :VAR NIL :WH WHAT)
 (:VAR MV7720 :ISA IN :WORD "in"))

___________________
867: "What are the targets of PLX-4720?"

                    SOURCE-START
e14   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV7724 :ISA BE :SUBJECT MV7723 :PREDICATE MV7726 :PRESENT "PRESENT")
 (:VAR MV7723 :ISA WHAT)
 (:VAR MV7726 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV7722 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV7722 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    SOURCE-START
e10   TARGET        1 "Does it target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does it target BRAF?" (:VAR MV7736 :ISA POLAR-QUESTION :STATEMENT MV7735)
 (:VAR MV7735 :ISA TARGET :AGENT-OR-CAUSE MV7731 :OBJECT MV7734 :RAW-TEXT
  "target")
 (:VAR MV7731 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7734 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
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
 (:VAR MV7748 :ISA BIO-ACTIVATE :AGENT MV7746 :OBJECT MV7747 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7746 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7747 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    SOURCE-START
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    END-OF-SOURCE
("I want to find out how Jak1 activates IL2"
 (:VAR MV7754 :ISA WANT :AGENT MV7751 :THEME MV7764 :PRESENT "PRESENT")
 (:VAR MV7751 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7764 :ISA FIND-OUT :AGENT MV7751 :STATEMENT MV7761)
 (:VAR MV7761 :ISA WH-QUESTION :STATEMENT MV7760 :VAR NIL :WH HOW)
 (:VAR MV7760 :ISA BIO-ACTIVATE :AGENT MV7749 :OBJECT MV7750 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7749 :ISA PROTEIN :RAW-TEXT "Jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7750 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    PERIOD
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:VAR MV7770 :ISA WANT :AGENT MV7767 :THEME MV7784 :PRESENT "PRESENT")
 (:VAR MV7767 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7784 :ISA FIND-OUT :AGENT MV7767 :STATEMENT MV7781)
 (:VAR MV7781 :ISA WH-QUESTION :STATEMENT MV7776 :VAR NIL :WH HOW)
 (:VAR MV7776 :ISA BIO-ACTIVATE :AGENT MV7765 :OBJECT MV7777 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7765 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV7777 :ISA PROTEIN :CELL-TYPE MV7779 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV7779 :ISA CELL-TYPE :CELL-LINE MV7766)
 (:VAR MV7766 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
873: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV7789 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7786 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV7786 :ISA BUILD :ARTIFACT MV7788 :PRESENT "PRESENT")
 (:VAR MV7788 :ISA MODEL :HAS-DETERMINER "A"))

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
 (:VAR MV7799 :ISA REGULATE :AGENT MV7798 :OBJECT MV7796 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7798 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7796 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    SOURCE-START
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What positively regulates IL2?"
 (:VAR MV7800 :ISA UPREGULATE :AGENT-OR-CAUSE MV7802 :OBJECT MV7801 :PRESENT
  "PRESENT" :RAW-TEXT "positively regulates")
 (:VAR MV7802 :ISA WHAT)
 (:VAR MV7801 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    SOURCE-START
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What can have the effect of activation on STAT3?"
 (:VAR MV7806 :ISA HAVE :POSSESSOR MV7804 :THING-POSSESSED MV7808 :MODAL
  MV7805)
 (:VAR MV7804 :ISA WHAT)
 (:VAR MV7808 :ISA EFFECT :OBJECT MV7803 :AFFECTED-PROCESS MV7811
  :HAS-DETERMINER "THE" :RAW-TEXT "effect")
 (:VAR MV7803 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7811 :ISA BIO-ACTIVATE :RAW-TEXT "activation") (:VAR MV7805 :ISA CAN))

___________________
878: "Are there any drugs for IL10?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for IL10?"
 (:VAR MV7824 :ISA POLAR-QUESTION :STATEMENT MV7822)
 (:VAR MV7822 :ISA THERE-EXISTS :VALUE MV7820 :PREDICATE MV7817)
 (:VAR MV7820 :ISA DRUG :TARGET MV7815 :QUANTIFIER MV7819 :RAW-TEXT "drugs")
 (:VAR MV7815 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7819 :ISA ANY :WORD "any") (:VAR MV7817 :ISA SYNTACTIC-THERE))

___________________
879: "Which tissues express STAT3?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which tissues express STAT3?"
 (:VAR MV7828 :ISA GENE-TRANSCRIPT-EXPRESS :AGENT MV7827 :OBJECT MV7825
  :PRESENT "PRESENT" :RAW-TEXT "express")
 (:VAR MV7827 :ISA TISSUE :HAS-DETERMINER "WHICH")
 (:VAR MV7825 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    SOURCE-START
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MEK1 regulate ERK1?"
 (:VAR MV7833 :ISA REGULATE :MANNER MV7831 :AGENT MV7829 :OBJECT MV7830
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV7831 :ISA HOW)
 (:VAR MV7829 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7830 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    SOURCE-START
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:VAR MV7838 :ISA BE :SUBJECT MV7837 :PREDICATE MV7834 :PRESENT "PRESENT")
 (:VAR MV7837 :ISA WHAT)
 (:VAR MV7834 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7840 :RAW-TEXT
  "transcription factors")
 (:VAR MV7840 :ISA BINDING :BINDER MV7834 :THAT-REL T :DIRECT-BINDEE MV7843
  :PRESENT "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7843 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7844 :RAW-TEXT
  "genes")
 (:VAR MV7844 :ISA COLLECTION :RAW-TEXT "IL15 and IL2" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7835 MV7836))
 (:VAR MV7835 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7836 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    SOURCE-START
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate the IL15 and IL2?"
 (:VAR MV7849 :ISA REGULATE :AGENT MV7848 :OBJECT MV7852 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7848 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7852 :ISA COLLECTION :HAS-DETERMINER "THE" :RAW-TEXT "IL15 and IL2"
  :TYPE PROTEIN :NUMBER 2 :ITEMS (MV7845 MV7846))
 (:VAR MV7845 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7846 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

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
("What is MAP3K7?"
 (:VAR MV7877 :ISA BE :SUBJECT MV7876 :PREDICATE MV7875 :PRESENT "PRESENT")
 (:VAR MV7876 :ISA WHAT)
 (:VAR MV7875 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    SOURCE-START
e9    BE            1 "Is MAP3K7 a protein" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP3K7 a protein?" (:VAR MV7882 :ISA POLAR-QUESTION :STATEMENT MV7879)
 (:VAR MV7879 :ISA BE :SUBJECT MV7878 :PREDICATE MV7881)
 (:VAR MV7878 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7881 :ISA PROTEIN :HAS-DETERMINER "A" :RAW-TEXT "protein"))

___________________
887: "What does SMAD2 transcribe?"

                    SOURCE-START
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SMAD2 transcribe?"
 (:VAR MV7886 :ISA TRANSCRIBE :OBJECT MV7884 :AGENT MV7883 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7884 :ISA WHAT)
 (:VAR MV7883 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there drugs for IL10?"
 (:VAR MV7895 :ISA POLAR-QUESTION :STATEMENT MV7893)
 (:VAR MV7893 :ISA THERE-EXISTS :VALUE MV7891 :PREDICATE MV7889)
 (:VAR MV7891 :ISA DRUG :TARGET MV7887 :RAW-TEXT "drugs")
 (:VAR MV7887 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7889 :ISA SYNTACTIC-THERE))

___________________
889: "What relations in the literature match tofacitinib?"

                    SOURCE-START
e15   IN            1 "What relations in the literature match tofacitinib" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What relations in the literature match tofacitinib?"
 (:VAR MV7905 :ISA WH-QUESTION :STATEMENT MV7904 :VAR NIL :WH WHAT)
 (:VAR MV7904 :ISA PREPOSITIONAL-PHRASE :POBJ MV7903 :PREP "IN")
 (:VAR MV7903 :ISA DRUG :HAS-DETERMINER "THE" :MODIFIER MV7900 :MODIFIER MV7902
  :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID "NCIT:C95800")
 (:VAR MV7900 :ISA LITERATURE) (:VAR MV7902 :ISA MATCH-ENDURANT))

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
